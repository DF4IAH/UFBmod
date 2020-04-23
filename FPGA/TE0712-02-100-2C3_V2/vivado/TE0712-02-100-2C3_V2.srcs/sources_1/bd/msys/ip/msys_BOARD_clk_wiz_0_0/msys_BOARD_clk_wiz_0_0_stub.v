// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 22 15:42:03 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_BOARD_clk_wiz_0_0 -prefix
//               msys_BOARD_clk_wiz_0_0_ msys_BOARD_clk_wiz_0_0_stub.v
// Design      : msys_BOARD_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module msys_BOARD_clk_wiz_0_0(clkfb_in, clk_out1, clkfb_out, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clkfb_in,clk_out1,clkfb_out,clk_in1" */;
  input clkfb_in;
  output clk_out1;
  output clkfb_out;
  input clk_in1;
endmodule
