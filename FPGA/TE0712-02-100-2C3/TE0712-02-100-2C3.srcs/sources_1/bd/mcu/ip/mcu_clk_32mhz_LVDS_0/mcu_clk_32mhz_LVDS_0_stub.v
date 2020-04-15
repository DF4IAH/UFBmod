// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:23:11 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_clk_32mhz_LVDS_0/mcu_clk_32mhz_LVDS_0_stub.v
// Design      : mcu_clk_32mhz_LVDS_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mcu_clk_32mhz_LVDS_0(clk_128mhz000_lvds, clk_064mhz000_lvds, 
  clk_016mhz000_lvds, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_128mhz000_lvds,clk_064mhz000_lvds,clk_016mhz000_lvds,locked,clk_in1_p,clk_in1_n" */;
  output clk_128mhz000_lvds;
  output clk_064mhz000_lvds;
  output clk_016mhz000_lvds;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
