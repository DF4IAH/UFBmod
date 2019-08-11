// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
// Date        : Sun Aug 11 23:42:59 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_axi_mcdma_0_0/mcu_axi_mcdma_0_0_stub.v
// Design      : mcu_axi_mcdma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_mcdma,Vivado 2019.1.1" *)
module mcu_axi_mcdma_0_0(s_axi_aclk, s_axi_lite_aclk, axi_resetn, 
  s_axi_lite_awvalid, s_axi_lite_awready, s_axi_lite_awaddr, s_axi_lite_wvalid, 
  s_axi_lite_wready, s_axi_lite_wdata, s_axi_lite_bresp, s_axi_lite_bvalid, 
  s_axi_lite_bready, s_axi_lite_arvalid, s_axi_lite_arready, s_axi_lite_araddr, 
  s_axi_lite_rvalid, s_axi_lite_rready, s_axi_lite_rdata, s_axi_lite_rresp, 
  m_axi_sg_awaddr, m_axi_sg_awlen, m_axi_sg_awsize, m_axi_sg_awburst, m_axi_sg_awprot, 
  m_axi_sg_awuser, m_axi_sg_awcache, m_axi_sg_awvalid, m_axi_sg_awready, m_axi_sg_wdata, 
  m_axi_sg_wstrb, m_axi_sg_wlast, m_axi_sg_wvalid, m_axi_sg_wready, m_axi_sg_bresp, 
  m_axi_sg_bvalid, m_axi_sg_bready, m_axi_sg_araddr, m_axi_sg_arlen, m_axi_sg_arsize, 
  m_axi_sg_arburst, m_axi_sg_arprot, m_axi_sg_aruser, m_axi_sg_arcache, m_axi_sg_arvalid, 
  m_axi_sg_arready, m_axi_sg_rdata, m_axi_sg_rresp, m_axi_sg_rlast, m_axi_sg_rvalid, 
  m_axi_sg_rready, m_axi_s2mm_awaddr, m_axi_s2mm_awlen, m_axi_s2mm_awsize, 
  m_axi_s2mm_awburst, m_axi_s2mm_awprot, m_axi_s2mm_awcache, m_axi_s2mm_awuser, 
  m_axi_s2mm_awvalid, m_axi_s2mm_awready, m_axi_s2mm_wdata, m_axi_s2mm_wstrb, 
  m_axi_s2mm_wlast, m_axi_s2mm_wvalid, m_axi_s2mm_wready, m_axi_s2mm_bresp, 
  m_axi_s2mm_bvalid, m_axi_s2mm_bready, s2mm_prmry_reset_out_n, s_axis_s2mm_tdata, 
  s_axis_s2mm_tkeep, s_axis_s2mm_tvalid, s_axis_s2mm_tready, s_axis_s2mm_tlast, 
  s_axis_s2mm_tuser, s_axis_s2mm_tid, s_axis_s2mm_tdest, s2mm_ch1_introut)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_lite_aclk,axi_resetn,s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_awaddr[11:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_wdata[31:0],s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_araddr[11:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],m_axi_sg_awaddr[31:0],m_axi_sg_awlen[7:0],m_axi_sg_awsize[2:0],m_axi_sg_awburst[1:0],m_axi_sg_awprot[2:0],m_axi_sg_awuser[3:0],m_axi_sg_awcache[3:0],m_axi_sg_awvalid,m_axi_sg_awready,m_axi_sg_wdata[31:0],m_axi_sg_wstrb[3:0],m_axi_sg_wlast,m_axi_sg_wvalid,m_axi_sg_wready,m_axi_sg_bresp[1:0],m_axi_sg_bvalid,m_axi_sg_bready,m_axi_sg_araddr[31:0],m_axi_sg_arlen[7:0],m_axi_sg_arsize[2:0],m_axi_sg_arburst[1:0],m_axi_sg_arprot[2:0],m_axi_sg_aruser[3:0],m_axi_sg_arcache[3:0],m_axi_sg_arvalid,m_axi_sg_arready,m_axi_sg_rdata[31:0],m_axi_sg_rresp[1:0],m_axi_sg_rlast,m_axi_sg_rvalid,m_axi_sg_rready,m_axi_s2mm_awaddr[31:0],m_axi_s2mm_awlen[7:0],m_axi_s2mm_awsize[2:0],m_axi_s2mm_awburst[1:0],m_axi_s2mm_awprot[2:0],m_axi_s2mm_awcache[3:0],m_axi_s2mm_awuser[3:0],m_axi_s2mm_awvalid,m_axi_s2mm_awready,m_axi_s2mm_wdata[31:0],m_axi_s2mm_wstrb[3:0],m_axi_s2mm_wlast,m_axi_s2mm_wvalid,m_axi_s2mm_wready,m_axi_s2mm_bresp[1:0],m_axi_s2mm_bvalid,m_axi_s2mm_bready,s2mm_prmry_reset_out_n,s_axis_s2mm_tdata[31:0],s_axis_s2mm_tkeep[3:0],s_axis_s2mm_tvalid,s_axis_s2mm_tready,s_axis_s2mm_tlast,s_axis_s2mm_tuser[15:0],s_axis_s2mm_tid[7:0],s_axis_s2mm_tdest[3:0],s2mm_ch1_introut" */;
  input s_axi_aclk;
  input s_axi_lite_aclk;
  input axi_resetn;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [11:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  input [31:0]s_axi_lite_wdata;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  input [11:0]s_axi_lite_araddr;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output [31:0]m_axi_sg_awaddr;
  output [7:0]m_axi_sg_awlen;
  output [2:0]m_axi_sg_awsize;
  output [1:0]m_axi_sg_awburst;
  output [2:0]m_axi_sg_awprot;
  output [3:0]m_axi_sg_awuser;
  output [3:0]m_axi_sg_awcache;
  output m_axi_sg_awvalid;
  input m_axi_sg_awready;
  output [31:0]m_axi_sg_wdata;
  output [3:0]m_axi_sg_wstrb;
  output m_axi_sg_wlast;
  output m_axi_sg_wvalid;
  input m_axi_sg_wready;
  input [1:0]m_axi_sg_bresp;
  input m_axi_sg_bvalid;
  output m_axi_sg_bready;
  output [31:0]m_axi_sg_araddr;
  output [7:0]m_axi_sg_arlen;
  output [2:0]m_axi_sg_arsize;
  output [1:0]m_axi_sg_arburst;
  output [2:0]m_axi_sg_arprot;
  output [3:0]m_axi_sg_aruser;
  output [3:0]m_axi_sg_arcache;
  output m_axi_sg_arvalid;
  input m_axi_sg_arready;
  input [31:0]m_axi_sg_rdata;
  input [1:0]m_axi_sg_rresp;
  input m_axi_sg_rlast;
  input m_axi_sg_rvalid;
  output m_axi_sg_rready;
  output [31:0]m_axi_s2mm_awaddr;
  output [7:0]m_axi_s2mm_awlen;
  output [2:0]m_axi_s2mm_awsize;
  output [1:0]m_axi_s2mm_awburst;
  output [2:0]m_axi_s2mm_awprot;
  output [3:0]m_axi_s2mm_awcache;
  output [3:0]m_axi_s2mm_awuser;
  output m_axi_s2mm_awvalid;
  input m_axi_s2mm_awready;
  output [31:0]m_axi_s2mm_wdata;
  output [3:0]m_axi_s2mm_wstrb;
  output m_axi_s2mm_wlast;
  output m_axi_s2mm_wvalid;
  input m_axi_s2mm_wready;
  input [1:0]m_axi_s2mm_bresp;
  input m_axi_s2mm_bvalid;
  output m_axi_s2mm_bready;
  output s2mm_prmry_reset_out_n;
  input [31:0]s_axis_s2mm_tdata;
  input [3:0]s_axis_s2mm_tkeep;
  input s_axis_s2mm_tvalid;
  output s_axis_s2mm_tready;
  input s_axis_s2mm_tlast;
  input [15:0]s_axis_s2mm_tuser;
  input [7:0]s_axis_s2mm_tid;
  input [3:0]s_axis_s2mm_tdest;
  output s2mm_ch1_introut;
endmodule
