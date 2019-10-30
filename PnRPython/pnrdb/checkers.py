from cell_fabric import transformation
import json
import importlib
import sys
import pathlib
import re

import logging
logger = logging.getLogger(__name__)

def rational_scaling( d, *, mul=1, div=1):
    assert all( (mul*c) % div == 0 for c in d['bbox'])
    d['bbox'] = [ (mul*c) //div for c in d['bbox']]
    for term in d['terminals']:
        if not all( (mul*c) % div == 0 for c in term['rect']):
            logger.error( f"Terminal {term} not a multiple of {div} (mul={mul}).")
        term['rect'] = [ (mul*c)//div for c in term['rect']]

def gen_viewer_json( hN, *, pdk="../PDK_Abstraction/FinFET14nm_Mock_PDK", draw_grid=False, global_route_json=None, json_dir=None, checkOnly=False, input_dir=None, markers=False):

    sys.path.append(str(pathlib.Path(pdk).parent.resolve()))
    pdkpkg = pathlib.Path(pdk).name
    canvas = importlib.import_module(f'{pdkpkg}.canvas')
    # TODO: Remove these hardcoded widths & heights from __init__()
    #       (Height may be okay since it defines UnitCellHeight)
    cnv = getattr(canvas, f'{pdkpkg}_Canvas')(12, 4, 2, 3)

    d = {}

    d["bbox"] = [0,0,hN.width,hN.height]

    d["globalRoutes"] = []

    d["globalRouteGrid"] = []

    terminals = []

    t_tbl = { "M1": "m1", "M2": "m2", "M3": "m3",
              "M4": "m4", "M5": "m5", "M6": "m6"}

    def add_terminal( netName, layer, b):

        r = [ b.LL.x, b.LL.y, b.UR.x, b.UR.y]
        terminals.append( { "netName": netName, "layer": layer, "rect": r})

        def f( gen, value, tag=""):
            # value is in 2x units
            if value%2 != 0:
                logger.error( f"Off grid:{tag} {layer} {netName} {r} {r[2]-r[0]} {r[3]-r[1]}: {value} (in 2x units) is not divisible by two.")
            else:
                p = gen.clg.inverseBounds( value//2)
                if p[0] != p[1]:
                    logger.error( f"Off grid:{tag} {layer} {netName} {r} {r[2]-r[0]} {r[3]-r[1]}: {value} doesn't land on grid, lb and ub are: {p}")

        if layer == "cellarea":
            f( cnv.m1, b.LL.x, "LL.x")
            f( cnv.m1, b.UR.x, "UR.x")
            f( cnv.m2, b.LL.y, "LL.y")
            f( cnv.m2, b.UR.y, "UR.y")
        else:
            if   layer in ["M1", "M3", "M5"]:
                center = (b.LL.x + b.UR.x)//2
            elif layer in ["M2", "M4", "M6"]:
                center = (b.LL.y + b.UR.y)//2
            else:
                center = None
            if center is not None:
                f( cnv.generators[t_tbl[layer]], center)

    if not checkOnly and draw_grid:
        m1_pitch = 2*cnv.pdk['M1']['Pitch']
        m2_pitch = 2*cnv.pdk['M2']['Pitch']
        for ix in range( (hN.width+m1_pitch-1)//m1_pitch):
            x = m1_pitch*ix
            r = [ x-2, 0, x+2, hN.height]
            terminals.append( { "netName": 'm1_grid', "layer": 'M1', "rect": r})

        for iy in range( (hN.height+m2_pitch-1)//m2_pitch):
            y = m2_pitch*iy
            r = [ 0, y-2, hN.width, y+2]
            terminals.append( { "netName": 'm2_grid', "layer": 'M2', "rect": r})

    fa_map = {}
    for n in hN.Nets:
        for c in n.connected:
            if c.type == 'Block':
                cblk = hN.Blocks[c.iter2]
                blk = cblk.instance[cblk.selectedInstance]
                block_name = blk.name
                master_name = blk.master
                pin = blk.blockPins[c.iter]
                formal_name = f"{blk.name}/{pin.name}"
                assert formal_name not in fa_map
                fa_map[formal_name] = n.name

            else:
                term = hN.Terminals[c.iter]
                terminal_name = term.name
                assert terminal_name == n.name

    for cblk in hN.Blocks:
        blk = cblk.instance[cblk.selectedInstance]
        found = False
        if json_dir is not None:
            pth = pathlib.Path( json_dir + "/" + blk.master + ".json") 
            if not pth.is_file():
                logger.warning( f"{pth} is not available; not importing subblock rectangles")
            else:
                found = True
        if not found and input_dir is not None:
            p = re.compile( r"^\./Results/(\S+)\.gds$")
            m = p.match( blk.gdsFile)
            if m:
                pth = pathlib.Path( input_dir + "/" + m.groups()[0] + ".json")
                if not pth.is_file():
                    logger.warning( f"{pth} not found in input_dir")
                else:
                    logger.warning( f"{pth} found in input_dir")
                    found = True
            else:
                logger.warning( f"{blk.gdsFile} does not end in .gds")

        if found:
            with pth.open( "rt") as fp:
                d = json.load( fp)
            # Scale to PnRDB coords (seems like 10x um, but PnRDB is 2x um, so divide by 5
            rational_scaling( d, div=5)

            tr = transformation.Transformation.genTr( blk.orient, w=blk.width, h=blk.height)

            tr2 = transformation.Transformation( oX=blk.placedBox.UR.x - blk.originBox.LL.x,
                                                 oY=blk.placedBox.UR.y - blk.originBox.LL.y)

            tr3 = tr.preMult(tr2)

            logger.info( f"TRANS {blk.master} {blk.orient} {tr} {tr2} {tr3}")

            for term in d['terminals']:
                term['rect'] = tr3.hitRect( transformation.Rect( *term['rect'])).canonical().toList()

            for term in d['terminals']:
                nm = term['netName']
                if nm is not None:
                    formal_name = f"{blk.name}/{nm}"
                    term['netName'] = fa_map.get( formal_name, formal_name)
                if 'pin' in term:
                    del term['pin']
                if 'terminal' in term:
                    term['netName'] = f"{blk.name}/{':'.join(term['terminal'])}"
                if term['layer'] not in ["boundary"]:
                    terminals.append( term)

        if not checkOnly:
            for con in blk.interMetals:
                add_terminal( '!interMetals', con.metal, con.placedBox)

            for via in blk.interVias:
                for con in [via.UpperMetalRect,via.LowerMetalRect,via.ViaRect]:
                    add_terminal( '!interVias', con.metal, con.placedBox)

            add_terminal( f"{blk.master}:{blk.name}", 'cellarea', blk.placedBox)

    for n in hN.Nets:
        print( f"Net: {n.name}")

        def addt( obj, con):
            b = con.placedBox
            if obj == n:
                add_terminal( obj.name, con.metal, b)
            else:
                add_terminal( obj, con.metal, b)

        for c in n.connected:
            if c.type == 'Block':
                cblk = hN.Blocks[c.iter2]
                blk = cblk.instance[cblk.selectedInstance]
                block_name = blk.name
                master_name = blk.master
                pin = blk.blockPins[c.iter]
                formal_name = pin.name

                tag = f'Block formal_index: {c.iter},{formal_name} block_index: {c.iter2},{block_name},{master_name}'
                print( f'\t{tag}')
                for con in pin.pinContacts:
                    addt( n, con)
            else:
                term = hN.Terminals[c.iter]
                terminal_name = term.name
                assert terminal_name == n.name
                tag = f'Terminal formal_index: {c.iter},{terminal_name}'
                print( f'\t{tag}')
                for con in term.termContacts:
                    pass
#                    addt( n, con)

        for metal in n.path_metal:
            con = metal.MetalRect
            add_terminal( n.name, con.metal, con.placedBox)

        for via in n.path_via:
            for con in [via.UpperMetalRect,via.LowerMetalRect,via.ViaRect]:
                addt( n, con)

        for via in n.interVias:
            for con in [via.UpperMetalRect,via.LowerMetalRect,via.ViaRect]:
                addt( n, con)

    if global_route_json is not None:
        with open(global_route_json, "rt") as fp:
            gr_json = json.load( fp)
        tbl = {}
        for wire in gr_json['wires']:
            nm = wire['net_name']
            if nm not in tbl:
                tbl[nm] = []
            tbl[nm].append(wire)

        for (k,vv) in tbl.items():
            for v in vv:
                for conn in v['connected_pins']:
                    ly = conn['layer']
                    r = conn['rect'][:]
                    for q in [0,1]:
                        r[q], r[q+2] = min(r[q],r[q+2]), max(r[q],r[q+2])

                    if ly != "":
                        d0 = {"netName": k+"_tm", "layer": ly, "rect": r}
                        d1 = {"netName": conn['sink_name'], "layer": ly, "rect": r}
                        logger.info( f"Add two terminals: {d0} {d1}")
                        terminals.append( d0)
                        terminals.append( d1)

                ly = v['layer']
                if 'rect' not in v:
                    logger.error( f"No global route 'rect' in {v}")
                    continue

                r = v['rect'][:]
                for q in [0,1]:
                    r[q], r[q+2] = min(r[q],r[q+2]), max(r[q],r[q+2])

                if  r[0] < r[2] and r[1] < r[3]:
                    logger.error( f"2-dimensional global route {v} {r}")
                if r[0] == r[2] and r[1] == r[3]:
                    logger.error( f"0-dimensional global route {v} {r}")

                logger.info( f"Global route: {k} {ly} {r}")

                for q in [0,1]:
                    if r[q] == r[q+2]:
                        r[q]   -= 20
                        r[q+2] += 20

                terminals.append( {"netName": k+"_gr", "layer": ly, "rect": r})

        if draw_grid:
            m1_pitch = 2*10*cnv.pdk['M1']['Pitch']
            m2_pitch = 2*10*cnv.pdk['M2']['Pitch']
            for ix in range( (hN.width+m1_pitch-1)//m1_pitch):
                x = m1_pitch*ix
                r = [ x-2, 0, x+2, hN.height]
                terminals.append( { "netName": 'm1_bin', "layer": 'M1', "rect": r})

            for iy in range( (hN.height+m2_pitch-1)//m2_pitch):
                y = m2_pitch*iy
                r = [ 0, y-2, hN.width, y+2]
                terminals.append( { "netName": 'm2_bin', "layer": 'M2', "rect": r})

    d["terminals"] = terminals

    if checkOnly:
        # divide by two be make it be in CellFabric units (nanometer)
        rational_scaling( d, div=2)
        cnv.bbox = transformation.Rect( *d["bbox"])
        cnv.terminals = d["terminals"]
        cnv.gen_data(run_pex=False)

#        with open('tmp.cir', 'wt') as fp:
#            cnv.pex.writePex(fp)

        d['bbox'] = cnv.bbox.toList()
        d['terminals'] = cnv.terminals

        for (idx,sh) in enumerate(cnv.rd.shorts):
            if isinstance( sh, tuple) and len(sh) == 2:
                p0, p1 = sh
                logger.info( f"SH: {p0} {p1}")
                term = { "layer": "M0", "netName": f"SH{idx}_{p0.netName}", "rect": p0.rect}
                d['terminals'].append( term)
                term = { "layer": "M0", "netName": f"SH{idx}_{p1.netName}", "rect": p1.rect}
                d['terminals'].append( term)
            else:
                logger.error( f"Unknown short type: {sh}")


        for (nm,lst) in cnv.rd.opens:
            logger.info( f"OP: {nm} {lst}")            
            for (jdx,l) in enumerate(lst):
                for (ly,r) in l:
                    term = { "layer": ly, "netName": f"OP_{nm}_{jdx}", "rect": r}
                    d['terminals'].append( term)

        # multiply by ten make it be in JSON file units (angstroms) This is a mess!
        rational_scaling( d, mul=10)

        return (cnv, d)
    else:
        # multiply by five make it be in JSON file units (angstroms) This is a mess!
        rational_scaling( d, mul=5)
        return d