// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 15 16:57:26 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_microblaze_mcs_0_0/msys_microblaze_mcs_0_0_stub.v
// Design      : msys_microblaze_mcs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_cf59,Vivado 2019.2.1" *)
module msys_microblaze_mcs_0_0(Clk, Reset, GPIO1_tri_i, GPIO1_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,GPIO1_tri_i[31:0],GPIO1_tri_o[31:0]" */;
  input Clk;
  input Reset;
  input [31:0]GPIO1_tri_i;
  output [31:0]GPIO1_tri_o;
endmodule
