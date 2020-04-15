// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:33:40 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_selectio_LVDS_out_0/mcu_selectio_LVDS_out_0_sim_netlist.v
// Design      : mcu_selectio_LVDS_out_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DEV_W = "8" *) (* SYS_W = "1" *) 
(* NotValidForBitStream *)
module mcu_selectio_LVDS_out_0
   (data_out_from_device,
    data_out_to_pins_p,
    data_out_to_pins_n,
    clk_to_pins_p,
    clk_to_pins_n,
    clk_in,
    clk_div_in,
    clk_reset,
    io_reset);
  input [7:0]data_out_from_device;
  output [0:0]data_out_to_pins_p;
  output [0:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  input clk_in;
  input clk_div_in;
  input clk_reset;
  input io_reset;

  wire clk_div_in;
  wire clk_in;
  wire clk_reset;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire clk_to_pins_n;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire clk_to_pins_p;
  wire [7:0]data_out_from_device;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire [0:0]data_out_to_pins_n;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire [0:0]data_out_to_pins_p;
  wire io_reset;

  (* DEV_W = "8" *) 
  (* SYS_W = "1" *) 
  (* num_serial_bits = "8" *) 
  mcu_selectio_LVDS_out_0_mcu_selectio_LVDS_out_0_selectio_wiz inst
       (.clk_div_in(clk_div_in),
        .clk_in(clk_in),
        .clk_reset(clk_reset),
        .clk_to_pins_n(clk_to_pins_n),
        .clk_to_pins_p(clk_to_pins_p),
        .data_out_from_device(data_out_from_device),
        .data_out_to_pins_n(data_out_to_pins_n),
        .data_out_to_pins_p(data_out_to_pins_p),
        .io_reset(io_reset));
endmodule

(* DEV_W = "8" *) (* ORIG_REF_NAME = "mcu_selectio_LVDS_out_0_selectio_wiz" *) (* SYS_W = "1" *) 
(* num_serial_bits = "8" *) 
module mcu_selectio_LVDS_out_0_mcu_selectio_LVDS_out_0_selectio_wiz
   (data_out_from_device,
    data_out_to_pins_p,
    data_out_to_pins_n,
    clk_to_pins_p,
    clk_to_pins_n,
    clk_in,
    clk_div_in,
    clk_reset,
    io_reset);
  input [7:0]data_out_from_device;
  output [0:0]data_out_to_pins_p;
  output [0:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  input clk_in;
  input clk_div_in;
  input clk_reset;
  input io_reset;

  wire clk_div_in;
  wire clk_fwd_out;
  wire clk_in;
  wire clk_to_pins_n;
  wire clk_to_pins_p;
  wire [7:0]data_out_from_device;
  wire data_out_to_pins_int;
  wire [0:0]data_out_to_pins_n;
  wire [0:0]data_out_to_pins_p;
  wire io_reset;
  wire NLW_clk_fwd_OFB_UNCONNECTED;
  wire NLW_clk_fwd_SHIFTOUT1_UNCONNECTED;
  wire NLW_clk_fwd_SHIFTOUT2_UNCONNECTED;
  wire NLW_clk_fwd_TBYTEOUT_UNCONNECTED;
  wire NLW_clk_fwd_TFB_UNCONNECTED;
  wire NLW_clk_fwd_TQ_UNCONNECTED;
  wire \NLW_pins[0].oserdese2_master_OFB_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_TFB_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_TQ_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(4),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    clk_fwd
       (.CLK(clk_in),
        .CLKDIV(clk_div_in),
        .D1(1'b1),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b0),
        .D5(1'b1),
        .D6(1'b0),
        .D7(1'b1),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_clk_fwd_OFB_UNCONNECTED),
        .OQ(clk_fwd_out),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_clk_fwd_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_clk_fwd_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_clk_fwd_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_clk_fwd_TFB_UNCONNECTED),
        .TQ(NLW_clk_fwd_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS obufds_inst
       (.I(clk_fwd_out),
        .O(clk_to_pins_p),
        .OB(clk_to_pins_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \pins[0].obufds_inst 
       (.I(data_out_to_pins_int),
        .O(data_out_to_pins_p),
        .OB(data_out_to_pins_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \pins[0].oserdese2_master 
       (.CLK(clk_in),
        .CLKDIV(clk_div_in),
        .D1(data_out_from_device[0]),
        .D2(data_out_from_device[1]),
        .D3(data_out_from_device[2]),
        .D4(data_out_from_device[3]),
        .D5(data_out_from_device[4]),
        .D6(data_out_from_device[5]),
        .D7(data_out_from_device[6]),
        .D8(data_out_from_device[7]),
        .OCE(1'b1),
        .OFB(\NLW_pins[0].oserdese2_master_OFB_UNCONNECTED ),
        .OQ(data_out_to_pins_int),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[0].oserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[0].oserdese2_master_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_pins[0].oserdese2_master_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_pins[0].oserdese2_master_TFB_UNCONNECTED ),
        .TQ(\NLW_pins[0].oserdese2_master_TQ_UNCONNECTED ));
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
