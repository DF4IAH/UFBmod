// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Mon Aug 26 02:06:15 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mcu_c_accum_0_ROTENC_0 -prefix
//               mcu_c_accum_0_ROTENC_0_ mcu_c_accum_0_ROTENC_0_stub.v
// Design      : mcu_c_accum_0_ROTENC_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_13,Vivado 2019.1.2" *)
module mcu_c_accum_0_ROTENC_0(B, CLK, ADD, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[31:0],CLK,ADD,SCLR,Q[31:0]" */;
  input [31:0]B;
  input CLK;
  input ADD;
  input SCLR;
  output [31:0]Q;
endmodule
