//Verilog block level netlist file for vco_dtype_12_hierarchical
//Generated by UMN for ALIGN project 


module vco_dtype_12_hierarchical ( on<1>, on<2>, on<3>, on<4>, on<5>, on<6>, on<7>, on<8>, oo<1>, oo<2>, oo<3>, oo<4>, oo<5>, oo<6>, oo<7>, oo<8>, op<1>, op<2>, op<3>, op<4>, op<5>, op<6>, op<7>, op<8>, vbias ); 
input on<1>, on<2>, on<3>, on<4>, on<5>, on<6>, on<7>, on<8>, oo<1>, oo<2>, oo<3>, oo<4>, oo<5>, oo<6>, oo<7>, oo<8>, op<1>, op<2>, op<3>, op<4>, op<5>, op<6>, op<7>, op<8>, vbias;

diff2sing_v1 I6<1> ( .B(VSS), .in1(on<1>), .in2(op<1>), .o(oo<1>) ); 
diff2sing_v1 I6<2> ( .B(VSS), .in1(on<2>), .in2(op<2>), .o(oo<2>) ); 
diff2sing_v1 I6<3> ( .B(VSS), .in1(on<3>), .in2(op<3>), .o(oo<3>) ); 
diff2sing_v1 I6<4> ( .B(VSS), .in1(on<4>), .in2(op<4>), .o(oo<4>) ); 
diff2sing_v1 I6<5> ( .B(VSS), .in1(on<5>), .in2(op<5>), .o(oo<5>) ); 
diff2sing_v1 I6<6> ( .B(VSS), .in1(on<6>), .in2(op<6>), .o(oo<6>) ); 
diff2sing_v1 I6<7> ( .B(VSS), .in1(on<7>), .in2(op<7>), .o(oo<7>) ); 
diff2sing_v1 I6<8> ( .B(VSS), .in1(on<8>), .in2(op<8>), .o(oo<8>) ); 
VCO_type2_65 I1 ( .o<1>(op<1>), .o<2>(op<2>), .o<3>(op<3>), .o<4>(op<4>), .o<5>(op<5>), .o<6>(op<6>), .o<7>(op<7>), .o<8>(op<8>), .op<1>(on<1>), .VBIAS(vbias) ); 
VCO_type2_65 I0 ( .o<1>(on<1>), .o<2>(on<2>), .o<3>(on<3>), .o<4>(on<4>), .o<5>(on<5>), .o<6>(on<6>), .o<7>(on<7>), .o<8>(on<8>), .op<1>(op<1>), .VBIAS(vbias) ); 

endmodule

module diff2sing_v1 ( B, in1, in2, o ); 
input B, in1, in2, o;

Switch_PMOS_n12_X4_Y2 P2 ( .B(VDD), .D(net3), .G(B), .S(VDD) ); 
SCM_NMOS_n8_X5_Y1 N1_N0 ( .B(VSS), .DA(net8), .S(VSS), .DB(o) ); 
DP_PMOS_n12_X4_Y2 P1_P0 ( .B(VDD), .DA(o), .GA(in2), .S(net3), .DB(net8), .GB(in1) ); 

endmodule

module VCO_type2_65 ( VBIAS, o<1>, o<2>, o<3>, o<4>, o<5>, o<6>, o<7>, o<8>, op<1> ); 
input VBIAS, o<1>, o<2>, o<3>, o<4>, o<5>, o<6>, o<7>, o<8>, op<1>;

three_terminal_inv I1<1> ( .VBIAS(VBIAS), .VIN(o<1>), .VOUT(o<2>) ); 
three_terminal_inv I1<2> ( .VBIAS(VBIAS), .VIN(o<2>), .VOUT(o<3>) ); 
three_terminal_inv I1<3> ( .VBIAS(VBIAS), .VIN(o<3>), .VOUT(o<4>) ); 
three_terminal_inv I1<4> ( .VBIAS(VBIAS), .VIN(o<4>), .VOUT(o<5>) ); 
three_terminal_inv I1<5> ( .VBIAS(VBIAS), .VIN(o<5>), .VOUT(o<6>) ); 
three_terminal_inv I1<6> ( .VBIAS(VBIAS), .VIN(o<6>), .VOUT(o<7>) ); 
three_terminal_inv I1<7> ( .VBIAS(VBIAS), .VIN(o<7>), .VOUT(o<8>) ); 
three_terminal_inv I1<8> ( .VBIAS(VBIAS), .VIN(o<8>), .VOUT(op<1>) ); 

endmodule

module three_terminal_inv ( VBIAS, VIN, VOUT ); 
input VBIAS, VIN, VOUT;

Switch_NMOS_n8_X13_Y1 N34 ( .B(VSS), .D(VOUT), .G(VIN), .S(VSS) ); 
Switch_PMOS_n12_X2_Y1 P34 ( .B(VDD), .D(VOUT), .G(VBIAS), .S(VDD) ); 

endmodule

`celldefine
module global_power;
supply0 VSS;
supply1 VDD;
endmodule
`endcelldefine
