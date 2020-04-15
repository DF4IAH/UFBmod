// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 15 16:48:00 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_SC0712_0_0/msys_SC0712_0_0_sim_netlist.v
// Design      : msys_SC0712_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_SC0712_0_0,SC0712,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SC0712,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_SC0712_0_0
   (mcs_clk_out,
    mcs_clk_in,
    reset_out,
    GPIO1_O,
    GPIO1_I,
    ext_sda,
    ext_scl_o,
    mon_GPIO1_O,
    mon_GPIO1_I,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 MCS_CLK_OUT CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME MCS_CLK_OUT, FREQ_HZ 100000000, ASSOCIATED_RESET reset_out, PHASE 0.000, CLK_DOMAIN msys_SC0712_0_0_mcs_clk_out, INSERT_VIP 0" *) output mcs_clk_out;
  input mcs_clk_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_out RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_out;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 MCS_GPIO TRI_O" *) input [31:0]GPIO1_O;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 MCS_GPIO TRI_I" *) output [31:0]GPIO1_I;
  inout ext_sda;
  output ext_scl_o;
  output [31:0]mon_GPIO1_O;
  output [31:0]mon_GPIO1_I;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_I" *) output sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_O" *) input sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C SDA_T" *) input sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_I" *) output scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_O" *) input scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 EMIO_I2C SCL_T" *) input scl_t;

  wire \<const0> ;
  wire [31:0]GPIO1_O;
  wire ext_scl_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire ext_sda;
  wire mcs_clk_in;
  wire reset_out;
  wire scl_t;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sda_i;
  wire sda_t;

  assign GPIO1_I[31] = \<const0> ;
  assign GPIO1_I[30] = \<const0> ;
  assign GPIO1_I[29] = \<const0> ;
  assign GPIO1_I[28] = \<const0> ;
  assign GPIO1_I[27] = \<const0> ;
  assign GPIO1_I[26] = \<const0> ;
  assign GPIO1_I[25] = \<const0> ;
  assign GPIO1_I[24] = \<const0> ;
  assign GPIO1_I[23] = \<const0> ;
  assign GPIO1_I[22] = \<const0> ;
  assign GPIO1_I[21] = \<const0> ;
  assign GPIO1_I[20] = \<const0> ;
  assign GPIO1_I[19] = \<const0> ;
  assign GPIO1_I[18] = \<const0> ;
  assign GPIO1_I[17] = \<const0> ;
  assign GPIO1_I[16] = \<const0> ;
  assign GPIO1_I[15] = \<const0> ;
  assign GPIO1_I[14] = \<const0> ;
  assign GPIO1_I[13] = \<const0> ;
  assign GPIO1_I[12] = \<const0> ;
  assign GPIO1_I[11] = \<const0> ;
  assign GPIO1_I[10] = \<const0> ;
  assign GPIO1_I[9] = \<const0> ;
  assign GPIO1_I[8] = \<const0> ;
  assign GPIO1_I[7] = \<const0> ;
  assign GPIO1_I[6] = \<const0> ;
  assign GPIO1_I[5] = \<const0> ;
  assign GPIO1_I[4] = \<const0> ;
  assign GPIO1_I[3] = \<const0> ;
  assign GPIO1_I[2] = \<const0> ;
  assign GPIO1_I[1] = GPIO1_O[1];
  assign GPIO1_I[0] = sda_i;
  assign mcs_clk_out = mcs_clk_in;
  assign mon_GPIO1_I[31] = \<const0> ;
  assign mon_GPIO1_I[30] = \<const0> ;
  assign mon_GPIO1_I[29] = \<const0> ;
  assign mon_GPIO1_I[28] = \<const0> ;
  assign mon_GPIO1_I[27] = \<const0> ;
  assign mon_GPIO1_I[26] = \<const0> ;
  assign mon_GPIO1_I[25] = \<const0> ;
  assign mon_GPIO1_I[24] = \<const0> ;
  assign mon_GPIO1_I[23] = \<const0> ;
  assign mon_GPIO1_I[22] = \<const0> ;
  assign mon_GPIO1_I[21] = \<const0> ;
  assign mon_GPIO1_I[20] = \<const0> ;
  assign mon_GPIO1_I[19] = \<const0> ;
  assign mon_GPIO1_I[18] = \<const0> ;
  assign mon_GPIO1_I[17] = \<const0> ;
  assign mon_GPIO1_I[16] = \<const0> ;
  assign mon_GPIO1_I[15] = \<const0> ;
  assign mon_GPIO1_I[14] = \<const0> ;
  assign mon_GPIO1_I[13] = \<const0> ;
  assign mon_GPIO1_I[12] = \<const0> ;
  assign mon_GPIO1_I[11] = \<const0> ;
  assign mon_GPIO1_I[10] = \<const0> ;
  assign mon_GPIO1_I[9] = \<const0> ;
  assign mon_GPIO1_I[8] = \<const0> ;
  assign mon_GPIO1_I[7] = \<const0> ;
  assign mon_GPIO1_I[6] = \<const0> ;
  assign mon_GPIO1_I[5] = \<const0> ;
  assign mon_GPIO1_I[4] = \<const0> ;
  assign mon_GPIO1_I[3] = \<const0> ;
  assign mon_GPIO1_I[2] = \<const0> ;
  assign mon_GPIO1_I[1] = GPIO1_O[1];
  assign mon_GPIO1_I[0] = sda_i;
  assign mon_GPIO1_O[31:0] = GPIO1_O;
  assign scl_i = scl_t;
  GND GND
       (.G(\<const0> ));
  msys_SC0712_0_0_SC0712 U0
       (.GPIO1_O({GPIO1_O[31],GPIO1_O[0]}),
        .ext_sda(ext_sda),
        .mcs_clk_in(mcs_clk_in),
        .reset_out(reset_out),
        .sda_i(sda_i),
        .sda_t(sda_t));
  LUT2 #(
    .INIT(4'h8)) 
    ext_scl_o_INST_0
       (.I0(scl_t),
        .I1(GPIO1_O[1]),
        .O(ext_scl_o));
endmodule

(* ORIG_REF_NAME = "SC0712" *) 
module msys_SC0712_0_0_SC0712
   (sda_i,
    reset_out,
    ext_sda,
    GPIO1_O,
    mcs_clk_in,
    sda_t);
  output sda_i;
  output reset_out;
  inout ext_sda;
  input [1:0]GPIO1_O;
  input mcs_clk_in;
  input sda_t;

  wire [1:0]GPIO1_O;
  wire T;
  wire ext_sda;
  wire mcs_clk_in;
  wire reset_out;
  wire \rst_delay_i_reg[2]_srl2_n_0 ;
  wire sda_i;
  wire sda_t;

  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    IOBUF_inst
       (.I(T),
        .IO(ext_sda),
        .O(sda_i),
        .T(T));
  LUT2 #(
    .INIT(4'h8)) 
    IOBUF_inst_i_1
       (.I0(sda_t),
        .I1(GPIO1_O[0]),
        .O(T));
  (* srl_bus_name = "\U0/rst_delay_i_reg " *) 
  (* srl_name = "\U0/rst_delay_i_reg[2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rst_delay_i_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(mcs_clk_in),
        .D(GPIO1_O[1]),
        .Q(\rst_delay_i_reg[2]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rst_delay_i_reg[3] 
       (.C(mcs_clk_in),
        .CE(1'b1),
        .D(\rst_delay_i_reg[2]_srl2_n_0 ),
        .Q(reset_out),
        .R(1'b0));
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
