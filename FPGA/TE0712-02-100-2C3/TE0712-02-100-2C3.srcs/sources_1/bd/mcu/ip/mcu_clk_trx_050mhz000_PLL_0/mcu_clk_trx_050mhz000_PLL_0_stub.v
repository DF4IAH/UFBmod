// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Tue Sep  3 00:28:54 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_trx_050mhz000_PLL_0/mcu_clk_trx_050mhz000_PLL_0_stub.v
// Design      : mcu_clk_trx_050mhz000_PLL_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mcu_clk_trx_050mhz000_PLL_0(clk_in2, clk_in_sel, clk_200mhz000, 
  clk_177mhz778, clk_050mhz000, clk_025mhz000, reset, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_in2,clk_in_sel,clk_200mhz000,clk_177mhz778,clk_050mhz000,clk_025mhz000,reset,clk_in1" */;
  input clk_in2;
  input clk_in_sel;
  output clk_200mhz000;
  output clk_177mhz778;
  output clk_050mhz000;
  output clk_025mhz000;
  input reset;
  input clk_in1;
endmodule
