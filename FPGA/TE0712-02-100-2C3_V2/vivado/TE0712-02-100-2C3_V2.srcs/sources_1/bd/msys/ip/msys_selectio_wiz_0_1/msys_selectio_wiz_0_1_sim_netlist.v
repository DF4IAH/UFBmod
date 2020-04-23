// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 22 23:43:50 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top msys_selectio_wiz_0_1 -prefix
//               msys_selectio_wiz_0_1_ msys_selectio_wiz_0_1_sim_netlist.v
// Design      : msys_selectio_wiz_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DEV_W = "16" *) (* SYS_W = "2" *) 
(* NotValidForBitStream *)
module msys_selectio_wiz_0_1
   (data_in_from_pins_p,
    data_in_from_pins_n,
    data_in_to_device,
    data_out_from_device,
    data_out_to_pins_p,
    data_out_to_pins_n,
    clk_to_pins_p,
    clk_to_pins_n,
    delay_locked,
    ref_clock,
    bitslip,
    clk_in_p,
    clk_in_n,
    clk_div_out,
    clk_reset,
    io_reset);
  input [1:0]data_in_from_pins_p;
  input [1:0]data_in_from_pins_n;
  output [15:0]data_in_to_device;
  input [15:0]data_out_from_device;
  output [1:0]data_out_to_pins_p;
  output [1:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  output delay_locked;
  input ref_clock;
  input [1:0]bitslip;
  input clk_in_p;
  input clk_in_n;
  output clk_div_out;
  input clk_reset;
  input io_reset;

  wire [1:0]bitslip;
  wire clk_div_out;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire clk_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire clk_in_p;
  wire clk_reset;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire clk_to_pins_n;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire clk_to_pins_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [1:0]data_in_from_pins_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [1:0]data_in_from_pins_p;
  wire [15:0]data_in_to_device;
  wire [15:0]data_out_from_device;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire [1:0]data_out_to_pins_n;
  (* IOSTANDARD = "LVDS_25" *) (* SLEW = "SLOW" *) wire [1:0]data_out_to_pins_p;
  wire delay_locked;
  wire io_reset;
  wire ref_clock;

  (* DEV_W = "16" *) 
  (* SYS_W = "2" *) 
  (* num_serial_bits = "8" *) 
  msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz inst
       (.bitslip(bitslip),
        .clk_div_out(clk_div_out),
        .clk_in_n(clk_in_n),
        .clk_in_p(clk_in_p),
        .clk_reset(clk_reset),
        .clk_to_pins_n(clk_to_pins_n),
        .clk_to_pins_p(clk_to_pins_p),
        .data_in_from_pins_n(data_in_from_pins_n),
        .data_in_from_pins_p(data_in_from_pins_p),
        .data_in_to_device(data_in_to_device),
        .data_out_from_device(data_out_from_device),
        .data_out_to_pins_n(data_out_to_pins_n),
        .data_out_to_pins_p(data_out_to_pins_p),
        .delay_locked(delay_locked),
        .io_reset(io_reset),
        .ref_clock(ref_clock));
endmodule

(* DEV_W = "16" *) (* SYS_W = "2" *) (* num_serial_bits = "8" *) 
module msys_selectio_wiz_0_1_msys_selectio_wiz_0_1_selectio_wiz
   (data_in_from_pins_p,
    data_in_from_pins_n,
    data_in_to_device,
    data_out_from_device,
    data_out_to_pins_p,
    data_out_to_pins_n,
    clk_to_pins_p,
    clk_to_pins_n,
    delay_locked,
    ref_clock,
    bitslip,
    clk_in_p,
    clk_in_n,
    clk_div_out,
    clk_reset,
    io_reset);
  input [1:0]data_in_from_pins_p;
  input [1:0]data_in_from_pins_n;
  output [15:0]data_in_to_device;
  input [15:0]data_out_from_device;
  output [1:0]data_out_to_pins_p;
  output [1:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  output delay_locked;
  input ref_clock;
  input [1:0]bitslip;
  input clk_in_p;
  input clk_in_n;
  output clk_div_out;
  input clk_reset;
  input io_reset;

  wire [1:0]bitslip;
  wire clk_div_out;
  wire clk_fwd_out;
  wire clk_in_int;
  wire clk_in_int_buf;
  wire clk_in_n;
  wire clk_in_p;
  wire clk_reset;
  wire clk_to_pins_n;
  wire clk_to_pins_p;
  wire data_in_from_pins_delay_0;
  wire data_in_from_pins_delay_1;
  wire data_in_from_pins_int_0;
  wire data_in_from_pins_int_1;
  wire [1:0]data_in_from_pins_n;
  wire [1:0]data_in_from_pins_p;
  wire [15:0]data_in_to_device;
  wire [15:0]data_out_from_device;
  wire data_out_to_pins_int_0;
  wire data_out_to_pins_int_1;
  wire [1:0]data_out_to_pins_n;
  wire [1:0]data_out_to_pins_p;
  wire delay_locked;
  wire io_reset;
  wire ref_clock;
  wire ref_clock_bufg;
  wire NLW_clk_fwd_OFB_UNCONNECTED;
  wire NLW_clk_fwd_SHIFTOUT1_UNCONNECTED;
  wire NLW_clk_fwd_SHIFTOUT2_UNCONNECTED;
  wire NLW_clk_fwd_TBYTEOUT_UNCONNECTED;
  wire NLW_clk_fwd_TFB_UNCONNECTED;
  wire NLW_clk_fwd_TQ_UNCONNECTED;
  wire [4:0]\NLW_pins[0].idelaye2_bus_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_OFB_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_TFB_UNCONNECTED ;
  wire \NLW_pins[0].oserdese2_master_TQ_UNCONNECTED ;
  wire [4:0]\NLW_pins[1].idelaye2_bus_CNTVALUEOUT_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[1].oserdese2_master_OFB_UNCONNECTED ;
  wire \NLW_pins[1].oserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[1].oserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[1].oserdese2_master_TBYTEOUT_UNCONNECTED ;
  wire \NLW_pins[1].oserdese2_master_TFB_UNCONNECTED ;
  wire \NLW_pins[1].oserdese2_master_TQ_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFIO bufio_inst
       (.I(clk_in_int),
        .O(clk_in_int_buf));
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
       (.CLK(clk_in_int_buf),
        .CLKDIV(clk_div_out),
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
  BUFR #(
    .BUFR_DIVIDE("4"),
    .SIM_DEVICE("7SERIES")) 
    clkout_buf_inst
       (.CE(1'b1),
        .CLR(clk_reset),
        .I(clk_in_int),
        .O(clk_div_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "msys_selectio_wiz_0_1_group" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    delayctrl
       (.RDY(delay_locked),
        .REFCLK(ref_clock_bufg),
        .RST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_clk_inst
       (.I(clk_in_p),
        .IB(clk_in_n),
        .O(clk_in_int));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS obufds_inst
       (.I(clk_fwd_out),
        .O(clk_to_pins_p),
        .OB(clk_to_pins_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[0].ibufds_inst 
       (.I(data_in_from_pins_p[0]),
        .IB(data_in_from_pins_n[0]),
        .O(data_in_from_pins_int_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "msys_selectio_wiz_0_1_group" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[0].idelaye2_bus 
       (.C(clk_div_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_pins[0].idelaye2_bus_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_0),
        .IDATAIN(data_in_from_pins_int_0),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \pins[0].iserdese2_master 
       (.BITSLIP(bitslip[0]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[0].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[14]),
        .Q2(data_in_to_device[12]),
        .Q3(data_in_to_device[10]),
        .Q4(data_in_to_device[8]),
        .Q5(data_in_to_device[6]),
        .Q6(data_in_to_device[4]),
        .Q7(data_in_to_device[2]),
        .Q8(data_in_to_device[0]),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \pins[0].obufds_inst 
       (.I(data_out_to_pins_int_0),
        .O(data_out_to_pins_p[0]),
        .OB(data_out_to_pins_n[0]));
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
       (.CLK(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .D1(data_out_from_device[0]),
        .D2(data_out_from_device[2]),
        .D3(data_out_from_device[4]),
        .D4(data_out_from_device[6]),
        .D5(data_out_from_device[8]),
        .D6(data_out_from_device[10]),
        .D7(data_out_from_device[12]),
        .D8(data_out_from_device[14]),
        .OCE(1'b1),
        .OFB(\NLW_pins[0].oserdese2_master_OFB_UNCONNECTED ),
        .OQ(data_out_to_pins_int_0),
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
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[1].ibufds_inst 
       (.I(data_in_from_pins_p[1]),
        .IB(data_in_from_pins_n[1]),
        .O(data_in_from_pins_int_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "msys_selectio_wiz_0_1_group" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("FIXED"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[1].idelaye2_bus 
       (.C(clk_div_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_pins[1].idelaye2_bus_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_1),
        .IDATAIN(data_in_from_pins_int_1),
        .INC(1'b0),
        .LD(1'b0),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \pins[1].iserdese2_master 
       (.BITSLIP(bitslip[1]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_1),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[1].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[15]),
        .Q2(data_in_to_device[13]),
        .Q3(data_in_to_device[11]),
        .Q4(data_in_to_device[9]),
        .Q5(data_in_to_device[7]),
        .Q6(data_in_to_device[5]),
        .Q7(data_in_to_device[3]),
        .Q8(data_in_to_device[1]),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS \pins[1].obufds_inst 
       (.I(data_out_to_pins_int_1),
        .O(data_out_to_pins_p[1]),
        .OB(data_out_to_pins_n[1]));
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
    \pins[1].oserdese2_master 
       (.CLK(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .D1(data_out_from_device[1]),
        .D2(data_out_from_device[3]),
        .D3(data_out_from_device[5]),
        .D4(data_out_from_device[7]),
        .D5(data_out_from_device[9]),
        .D6(data_out_from_device[11]),
        .D7(data_out_from_device[13]),
        .D8(data_out_from_device[15]),
        .OCE(1'b1),
        .OFB(\NLW_pins[1].oserdese2_master_OFB_UNCONNECTED ),
        .OQ(data_out_to_pins_int_1),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[1].oserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[1].oserdese2_master_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_pins[1].oserdese2_master_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_pins[1].oserdese2_master_TFB_UNCONNECTED ),
        .TQ(\NLW_pins[1].oserdese2_master_TQ_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG ref_clk_bufg
       (.I(ref_clock),
        .O(ref_clock_bufg));
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
