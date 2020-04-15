// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 15 16:48:00 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_SC0712_0_0/msys_SC0712_0_0_stub.v
// Design      : msys_SC0712_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SC0712,Vivado 2019.2.1" *)
module msys_SC0712_0_0(mcs_clk_out, mcs_clk_in, reset_out, GPIO1_O, 
  GPIO1_I, ext_sda, ext_scl_o, mon_GPIO1_O, mon_GPIO1_I, sda_i, sda_o, sda_t, scl_i, scl_o, scl_t)
/* synthesis syn_black_box black_box_pad_pin="mcs_clk_out,mcs_clk_in,reset_out,GPIO1_O[31:0],GPIO1_I[31:0],ext_sda,ext_scl_o,mon_GPIO1_O[31:0],mon_GPIO1_I[31:0],sda_i,sda_o,sda_t,scl_i,scl_o,scl_t" */;
  output mcs_clk_out;
  input mcs_clk_in;
  output reset_out;
  input [31:0]GPIO1_O;
  output [31:0]GPIO1_I;
  inout ext_sda;
  output ext_scl_o;
  output [31:0]mon_GPIO1_O;
  output [31:0]mon_GPIO1_I;
  output sda_i;
  input sda_o;
  input sda_t;
  output scl_i;
  input scl_o;
  input scl_t;
endmodule
