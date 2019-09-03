// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Tue Sep  3 21:22:20 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mcu_clk_32mhz_LVDS_0 -prefix
//               mcu_clk_32mhz_LVDS_0_ mcu_clk_32mhz_LVDS_0_sim_netlist.v
// Design      : mcu_clk_32mhz_LVDS_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module mcu_clk_32mhz_LVDS_0
   (clk_128mhz000_lvds,
    clk_064mhz000_lvds,
    clk_016mhz000_lvds,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_128mhz000_lvds;
  output clk_064mhz000_lvds;
  output clk_016mhz000_lvds;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_016mhz000_lvds;
  wire clk_064mhz000_lvds;
  wire clk_128mhz000_lvds;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire clk_in1_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire clk_in1_p;
  wire locked;
  wire reset;

  mcu_clk_32mhz_LVDS_0_mcu_clk_32mhz_LVDS_0_clk_wiz inst
       (.clk_016mhz000_lvds(clk_016mhz000_lvds),
        .clk_064mhz000_lvds(clk_064mhz000_lvds),
        .clk_128mhz000_lvds(clk_128mhz000_lvds),
        .clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .locked(locked),
        .reset(reset));
endmodule

module mcu_clk_32mhz_LVDS_0_mcu_clk_32mhz_LVDS_0_clk_wiz
   (clk_128mhz000_lvds,
    clk_064mhz000_lvds,
    clk_016mhz000_lvds,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_128mhz000_lvds;
  output clk_064mhz000_lvds;
  output clk_016mhz000_lvds;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_016mhz000_lvds;
  wire clk_016mhz000_lvds_mcu_clk_32mhz_LVDS_0;
  wire clk_064mhz000_lvds;
  wire clk_064mhz000_lvds_mcu_clk_32mhz_LVDS_0;
  wire clk_128mhz000_lvds;
  wire clk_128mhz000_lvds_mcu_clk_32mhz_LVDS_0;
  wire clk_in1_mcu_clk_32mhz_LVDS_0;
  wire clk_in1_n;
  wire clk_in1_p;
  wire clkfbout_buf_mcu_clk_32mhz_LVDS_0;
  wire clkfbout_mcu_clk_32mhz_LVDS_0;
  wire locked;
  wire reset;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_mcu_clk_32mhz_LVDS_0),
        .O(clkfbout_buf_mcu_clk_32mhz_LVDS_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufgds
       (.I(clk_in1_p),
        .IB(clk_in1_n),
        .O(clk_in1_mcu_clk_32mhz_LVDS_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_128mhz000_lvds_mcu_clk_32mhz_LVDS_0),
        .O(clk_128mhz000_lvds));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_064mhz000_lvds_mcu_clk_32mhz_LVDS_0),
        .O(clk_064mhz000_lvds));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_016mhz000_lvds_mcu_clk_32mhz_LVDS_0),
        .O(clk_016mhz000_lvds));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(14),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(15.625000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(7),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(14),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(56),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_mcu_clk_32mhz_LVDS_0),
        .CLKFBOUT(clkfbout_mcu_clk_32mhz_LVDS_0),
        .CLKIN1(clk_in1_mcu_clk_32mhz_LVDS_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_128mhz000_lvds_mcu_clk_32mhz_LVDS_0),
        .CLKOUT1(clk_064mhz000_lvds_mcu_clk_32mhz_LVDS_0),
        .CLKOUT2(clk_016mhz000_lvds_mcu_clk_32mhz_LVDS_0),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(reset));
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
