// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 30 17:27:52 2019
// Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_wiz_1_0/mcu_clk_wiz_1_0_stub.v
// Design      : mcu_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mcu_clk_wiz_1_0(clk_12mhz, reset, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_12mhz,reset,clk_in1" */;
  output clk_12mhz;
  input reset;
  input clk_in1;
endmodule
