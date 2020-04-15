// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Apr 12 12:42:43 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_cordic_0_0/mcu_cordic_0_0_stub.v
// Design      : mcu_cordic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_15,Vivado 2019.1" *)
module mcu_cordic_0_0(aclk, s_axis_cartesian_tvalid, 
  s_axis_cartesian_tuser, s_axis_cartesian_tlast, s_axis_cartesian_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tuser, m_axis_dout_tlast, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_cartesian_tvalid,s_axis_cartesian_tuser[43:0],s_axis_cartesian_tlast,s_axis_cartesian_tdata[47:0],m_axis_dout_tvalid,m_axis_dout_tuser[43:0],m_axis_dout_tlast,m_axis_dout_tdata[31:0]" */;
  input aclk;
  input s_axis_cartesian_tvalid;
  input [43:0]s_axis_cartesian_tuser;
  input s_axis_cartesian_tlast;
  input [47:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [43:0]m_axis_dout_tuser;
  output m_axis_dout_tlast;
  output [31:0]m_axis_dout_tdata;
endmodule
