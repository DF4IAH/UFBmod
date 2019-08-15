// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:11:14 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_c_shift_ram_0_0/mcu_c_shift_ram_0_0_stub.v
// Design      : mcu_c_shift_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_13,Vivado 2019.1.2" *)
module mcu_c_shift_ram_0_0(D, CLK, SSET, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CLK,SSET,Q[0:0]" */;
  input [0:0]D;
  input CLK;
  input SSET;
  output [0:0]Q;
endmodule
