.subckt BUFFER_VREFP_ud gnd ibias1 ibias2 vdd vref vrefp
m60 vrefp vrefp vrefp vdd pfet_lvt w=w0 l=l0
m37 vdd net057 vdd vdd pfet_lvt w=w1 l=l1
m29 net052 net057 vrefp vdd pfet_lvt w=w2 l=l0
m27 net057 net057 net050 vdd pfet_lvt w=w3 l=l0
m28 vrefp net052 vdd vdd pfet_lvt w=w4 l=l0
m15 net050 net036 vdd vdd pfet_lvt w=w5 l=l0
m59 net057 net057 net057 vdd pfet_lvt w=w6 l=l0
m57 vdd vdd vdd vdd pfet_lvt w=w7 l=l0
m58 net050 net050 net050 vdd pfet_lvt w=w6 l=l0
m55 vdd vdd vdd vdd pfet_lvt w=w8 l=l0
m54 net050 net050 net050 vdd pfet_lvt w=w8 l=l0
m38 vdd net036 vdd vdd pfet_lvt w=w6 l=l2
m65 ibias2 ibias2 ibias2 gnd nfet w=w9 l=l0
m64 ibias2 ibias2 gnd gnd nfet w=w10 l=l0
m63 gnd gnd gnd gnd nfet w=w11 l=l0
m62 gnd gnd gnd gnd nfet w=w11 l=l0
m61 gnd gnd gnd gnd nfet w=w9 l=l0
m56 net057 net057 net057 gnd nfet w=w9 l=l0
m30 net052 ibias2 gnd gnd nfet w=w12 l=l0
m21 net057 ibias2 gnd gnd nfet w=w10 l=l0
m12 net051 vref net212 gnd nfet w=w13 l=l0
m11 net211 vref net212 gnd nfet w=w13 l=l0
m10 net054 net050 net212 gnd nfet w=w13 l=l0
m8 net215 net050 net212 gnd nfet w=w13 l=l0
m5 net204 ibias1 gnd gnd nfet w=w10 l=l0
m4 ibias1 ibias1 gnd gnd nfet w=w10 l=l0
m3 net212 ibias1 gnd gnd nfet w=w11 l=l0
m1 net207 net207 gnd gnd nfet w=w10 l=l3
m6 net036 net207 gnd gnd nfet w=w10 l=l3
m43 net211 net211 net211 gnd nfet w=w14 l=l0
m53 gnd gnd gnd gnd nfet w=w10 l=l3
m52 net036 net036 net036 gnd nfet w=w10 l=l3
m51 gnd gnd gnd gnd nfet w=w10 l=l3
m47 net212 net212 net212 gnd nfet w=w14 l=l0
m50 net207 net207 net207 gnd nfet w=w10 l=l3
m45 net051 net051 net051 gnd nfet w=w14 l=l0
m49 gnd gnd gnd gnd nfet w=w11 l=l0
m48 net212 net212 net212 gnd nfet w=w14 l=l0
m40 net204 net204 net204 gnd nfet w=w9 l=l0
m46 net054 net054 net054 gnd nfet w=w14 l=l0
m44 net215 net215 net215 gnd nfet w=w14 l=l0
m39 ibias1 ibias1 ibias1 gnd nfet w=w9 l=l0
m42 net051 net051 net051 vdd pfet w=w15 l=l0
m35 net211 net211 net211 vdd pfet w=w16 l=l0
m33 vdd vdd vdd vdd pfet w=w17 l=l0
m26 net054 net211 vdd vdd pfet w=w17 l=l0
m25 net211 net211 vdd vdd pfet w=w14 l=l0
m24 net051 net215 vdd vdd pfet w=w17 l=l0
m23 net215 net215 vdd vdd pfet w=w14 l=l0
m22 net204 net204 vdd vdd pfet w=w18 l=l4
m41 net054 net054 net054 vdd pfet w=w15 l=l0
m32 vdd vdd vdd vdd pfet w=w18 l=l4
m14 net207 net204 net054 vdd pfet w=w11 l=l0
m13 net036 net204 net051 vdd pfet w=w11 l=l0
m34 vdd vdd vdd vdd pfet w=w17 l=l0
m36 net215 net215 net215 vdd pfet w=w16 l=l0
m31 net204 net204 net204 vdd pfet w=w18 l=l4
.ends BUFFER_VREFP_ud
