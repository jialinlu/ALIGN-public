************************************************************************
* auCdl Netlist:
* 
* Library Name:  OTA_class
* Top Cell Name: single_ended_telescopic_pmos
* View Name:     schematic
* Netlisted on:  Sep 11 21:39:52 2019
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM

*.GLOBAL vdd!
+        gnd!

*.PIN vdd!
*+    gnd!

************************************************************************
* Library Name: OTA_class
* Cell Name:    single_ended_telescopic_pmos
* View Name:    schematic
************************************************************************

.SUBCKT single_ended_telescopic_pmos Vbiasn2 Vbiasp Vinn Vinp Voutp
*.PININFO Vbiasn2:I Vbiasp:I Vinn:I Vinp:I Voutp:O
MM1 net14 Vbiasn2 net013 gnd! nmos w=WA l=LA nfin=nA
MM0 Voutp Vbiasn2 net10 gnd! nmos w=WA l=LA nfin=nA
MM9 net10 net14 gnd! gnd! nmos w=WA l=LA nfin=nA
MM8 net013 net14 gnd! gnd! nmos w=WA l=LA nfin=nA
MM5 net12 Vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM7 Voutp Vinn net12 net19 pmos w=WA l=LA nfin=nA
MM6 net14 Vinp net12 net19 pmos w=WA l=LA nfin=nA
.ENDS


.SUBCKT LG_load_biasn_LV Vbiasn2 Biasp
*.PININFO Biasp:I Vbiasn2:O
MM13 net9 Vbiasn2 gnd! gnd! nmos w=WA l=LA nfin=nA
MM15 Vbiasn2 Vbiasn2 net9 gnd! nmos w=WA l=LA nfin=nA
MM14 Vbiasn2 Biasp vdd! vdd! pmos w=WA l=LA nfin=nA
.ENDS

.SUBCKT CR3_2 Vbiasn Vbiasp
*.PININFO Vbiasn:O Vbiasp:O
MM3 Vbiasp Vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
MM1 Vbiasn Vbiasp vdd! vdd! pmos w=WA l=LA nfin=nA
RR0 net15 gnd! res=rK
MM0 Vbiasn Vbiasn gnd! gnd! nmos w=WA l=LA nfin=nA
MM2 Vbiasp Vbiasn net15 gnd! nmos w=WA l=LA nfin=nA
.ENDS


xiota LG_Vbiasn2 LG_Vbiasp Vinn Vinp Voutp single_ended_telescopic_pmos
xiLG_load_biasn_LV Biasp LG_Vbiasn2 LG_load_biasn_LV
xibCR3_2 Biasn Biasp CR3_2
.END