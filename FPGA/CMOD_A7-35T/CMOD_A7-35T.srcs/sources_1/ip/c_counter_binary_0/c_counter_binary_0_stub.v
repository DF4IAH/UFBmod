// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar 25 09:40:25 2019
// Host        : Hft-W-Habel running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/habel/git/UFBmod/FPGA/CMOD_A7-35T/CMOD_A7-35T.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_stub.v
// Design      : c_counter_binary_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *)
module c_counter_binary_0(CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,SCLR,Q[26:0]" */;
  input CLK;
  input SCLR;
  output [26:0]Q;
endmodule
