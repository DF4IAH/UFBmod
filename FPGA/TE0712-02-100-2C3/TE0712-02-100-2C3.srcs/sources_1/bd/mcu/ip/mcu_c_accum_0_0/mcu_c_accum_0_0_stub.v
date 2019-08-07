// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
// Date        : Wed Aug  7 01:48:27 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_accum_0_0/mcu_c_accum_0_0_stub.v
// Design      : mcu_c_accum_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_13,Vivado 2019.1.1" *)
module mcu_c_accum_0_0(B, CLK, ADD, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[31:0],CLK,ADD,SCLR,Q[31:0]" */;
  input [31:0]B;
  input CLK;
  input ADD;
  input SCLR;
  output [31:0]Q;
endmodule
