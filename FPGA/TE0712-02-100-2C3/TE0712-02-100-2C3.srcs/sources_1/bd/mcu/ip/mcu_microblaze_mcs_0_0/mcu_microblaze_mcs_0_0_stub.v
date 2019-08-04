// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug  4 02:00:24 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_microblaze_mcs_0_0/mcu_microblaze_mcs_0_0_stub.v
// Design      : mcu_microblaze_mcs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f021,Vivado 2019.1" *)
module mcu_microblaze_mcs_0_0(Clk, Reset, INTC_IRQ, GPIO1_tri_i, GPIO1_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,INTC_IRQ,GPIO1_tri_i[7:0],GPIO1_tri_o[7:0]" */;
  input Clk;
  input Reset;
  output INTC_IRQ;
  input [7:0]GPIO1_tri_i;
  output [7:0]GPIO1_tri_o;
endmodule
