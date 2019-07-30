// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jul 30 14:05:56 2019
// Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_dist_mem_gen_lvds_in_0/mcu_dist_mem_gen_lvds_in_0_stub.v
// Design      : mcu_dist_mem_gen_lvds_in_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module mcu_dist_mem_gen_lvds_in_0(a, d, dpra, clk, we, qdpo_clk, qdpo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],d[7:0],dpra[3:0],clk,we,qdpo_clk,qdpo[7:0]" */;
  input [3:0]a;
  input [7:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input qdpo_clk;
  output [7:0]qdpo;
endmodule
