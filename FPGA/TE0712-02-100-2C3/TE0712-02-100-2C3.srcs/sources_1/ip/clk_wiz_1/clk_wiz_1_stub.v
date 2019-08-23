// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Fri Aug 23 20:38:52 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.v
// Design      : clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_1(clk_in2_vctcxo, clk_in_sel, 
  clk_out_177mhz778, clk_out_120mhz, clk_out_050mhz, clk_out_025mhz, clk_out_012mhz, reset, 
  locked, clk_in1_si5338)
/* synthesis syn_black_box black_box_pad_pin="clk_in2_vctcxo,clk_in_sel,clk_out_177mhz778,clk_out_120mhz,clk_out_050mhz,clk_out_025mhz,clk_out_012mhz,reset,locked,clk_in1_si5338" */;
  input clk_in2_vctcxo;
  input clk_in_sel;
  output clk_out_177mhz778;
  output clk_out_120mhz;
  output clk_out_050mhz;
  output clk_out_025mhz;
  output clk_out_012mhz;
  input reset;
  output locked;
  input clk_in1_si5338;
endmodule
