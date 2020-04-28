// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 29 00:26:11 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_cordic_0_0 -prefix
//               msys_cordic_0_0_ msys_cordic_0_0_stub.v
// Design      : msys_cordic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_16,Vivado 2019.2.1" *)
module msys_cordic_0_0(aclk, s_axis_cartesian_tvalid, 
  s_axis_cartesian_tuser, s_axis_cartesian_tlast, s_axis_cartesian_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tuser, m_axis_dout_tlast, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_cartesian_tvalid,s_axis_cartesian_tuser[15:0],s_axis_cartesian_tlast,s_axis_cartesian_tdata[63:0],m_axis_dout_tvalid,m_axis_dout_tuser[15:0],m_axis_dout_tlast,m_axis_dout_tdata[31:0]" */;
  input aclk;
  input s_axis_cartesian_tvalid;
  input [15:0]s_axis_cartesian_tuser;
  input s_axis_cartesian_tlast;
  input [63:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [15:0]m_axis_dout_tuser;
  output m_axis_dout_tlast;
  output [31:0]m_axis_dout_tdata;
endmodule
