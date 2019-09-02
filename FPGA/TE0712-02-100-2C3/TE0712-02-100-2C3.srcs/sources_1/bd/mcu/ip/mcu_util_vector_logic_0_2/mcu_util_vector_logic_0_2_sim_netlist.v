// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Sun Sep  1 20:51:03 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_util_vector_logic_0_2/mcu_util_vector_logic_0_2_sim_netlist.v
// Design      : mcu_util_vector_logic_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_util_vector_logic_0_2,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1.2" *) 
(* NotValidForBitStream *)
module mcu_util_vector_logic_0_2
   (Op1,
    Op2,
    Res);
  input [10:0]Op1;
  input [10:0]Op2;
  output [10:0]Res;

  wire [10:0]Op1;
  wire [10:0]Op2;
  wire [10:0]Res;

  mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic inst
       (.Op1(Op1),
        .Op2(Op2),
        .Res(Res));
endmodule

(* ORIG_REF_NAME = "util_vector_logic_v2_0_1_util_vector_logic" *) 
module mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic
   (Res,
    Op2,
    Op1);
  output [10:0]Res;
  input [10:0]Op2;
  input [10:0]Op1;

  wire [10:0]Op1;
  wire [10:0]Op2;
  wire [10:0]Res;

  LUT2 #(
    .INIT(4'h6)) 
    \Res[0]_INST_0 
       (.I0(Op2[0]),
        .I1(Op1[0]),
        .O(Res[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[10]_INST_0 
       (.I0(Op2[10]),
        .I1(Op1[10]),
        .O(Res[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[1]_INST_0 
       (.I0(Op2[1]),
        .I1(Op1[1]),
        .O(Res[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[2]_INST_0 
       (.I0(Op2[2]),
        .I1(Op1[2]),
        .O(Res[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[3]_INST_0 
       (.I0(Op2[3]),
        .I1(Op1[3]),
        .O(Res[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[4]_INST_0 
       (.I0(Op2[4]),
        .I1(Op1[4]),
        .O(Res[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[5]_INST_0 
       (.I0(Op2[5]),
        .I1(Op1[5]),
        .O(Res[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[6]_INST_0 
       (.I0(Op2[6]),
        .I1(Op1[6]),
        .O(Res[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[7]_INST_0 
       (.I0(Op2[7]),
        .I1(Op1[7]),
        .O(Res[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[8]_INST_0 
       (.I0(Op2[8]),
        .I1(Op1[8]),
        .O(Res[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Res[9]_INST_0 
       (.I0(Op2[9]),
        .I1(Op1[9]),
        .O(Res[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
