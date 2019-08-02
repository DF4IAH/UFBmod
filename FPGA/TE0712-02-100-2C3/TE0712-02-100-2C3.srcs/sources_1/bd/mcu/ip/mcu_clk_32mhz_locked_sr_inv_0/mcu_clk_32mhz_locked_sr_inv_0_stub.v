// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug  2 15:10:12 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mcu_clk_32mhz_locked_sr_inv_0 -prefix
//               mcu_clk_32mhz_locked_sr_inv_0_ mcu_LVDS_rst_delay_inv_0_stub.v
// Design      : mcu_LVDS_rst_delay_inv_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module mcu_clk_32mhz_locked_sr_inv_0(A, CLK, SSET, S)
/* synthesis syn_black_box black_box_pad_pin="A[0:0],CLK,SSET,S[0:0]" */;
  input [0:0]A;
  input CLK;
  input SSET;
  output [0:0]S;
endmodule
