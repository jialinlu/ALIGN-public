//Verilog block level netlist file for Santized_BTSW
//Generated by UMN for ALIGN project 


module Santized_BTSW ( AVDD, AVSS, CKSBT, CKSBTB, VBTSW, VIN ); 
input AVDD, AVSS, CKSBT, CKSBTB, VBTSW, VIN;

Switch_PMOS_n12_X1_Y1 MM9 ( .B(net12), .D(VBTSW), .G(net7), .S(net12) ); 
Switch_PMOS_n12_X1_Y1 MM8 ( .B(net12), .D(AVDD), .G(VBTSW), .S(net12) ); 
Switch_PMOS_n12_X1_Y1 MM7 ( .B(AVDD), .D(net7), .G(CKSBT), .S(AVDD) ); 
Dcap_NMOS_n12_X1_Y1 MM10 ( .B(AVSS), .S(net013), .G(net12) ); 
Switch_NMOS_n12_X1_Y1 MM6 ( .B(AVSS), .D(net27), .G(CKSBTB), .S(AVSS) ); 
Switch_NMOS_n12_X1_Y1 MM5 ( .B(AVSS), .D(VBTSW), .G(AVDD), .S(net27) ); 
Switch_NMOS_n12_X1_Y1 MM3 ( .B(AVSS), .D(VIN), .G(VBTSW), .S(net013) ); 
Switch_NMOS_n12_X1_Y1 MM2 ( .B(AVSS), .D(net7), .G(VBTSW), .S(net013) ); 
Switch_NMOS_n12_X1_Y1 MM1 ( .B(AVSS), .D(net013), .G(CKSBTB), .S(AVSS) ); 
Switch_NMOS_n12_X1_Y1 MM0 ( .B(AVSS), .D(net7), .G(CKSBT), .S(net013) ); 

endmodule