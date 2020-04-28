// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Apr 28 23:55:06 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_blk_mem_gen_0_2 -prefix
//               msys_blk_mem_gen_0_2_ msys_blk_mem_gen_0_2_stub.v
// Design      : msys_blk_mem_gen_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2.1" *)
module msys_blk_mem_gen_0_2(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[12:0],dina[15:0],clkb,enb,addrb[12:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [12:0]addra;
  input [15:0]dina;
  input clkb;
  input enb;
  input [12:0]addrb;
  output [15:0]doutb;
endmodule
