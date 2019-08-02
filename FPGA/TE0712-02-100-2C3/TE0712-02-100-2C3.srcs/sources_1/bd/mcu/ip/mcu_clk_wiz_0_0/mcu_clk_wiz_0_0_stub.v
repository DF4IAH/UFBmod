// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 20:22:45 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_wiz_0_0/mcu_clk_wiz_0_0_stub.v
// Design      : mcu_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mcu_clk_wiz_0_0(clk_32_lvds_in, clk_8_lvds_in, 
  clk_32_lvds_out, clk_8_lvds_out, reset, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_32_lvds_in,clk_8_lvds_in,clk_32_lvds_out,clk_8_lvds_out,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_32_lvds_in;
  output clk_8_lvds_in;
  output clk_32_lvds_out;
  output clk_8_lvds_out;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
