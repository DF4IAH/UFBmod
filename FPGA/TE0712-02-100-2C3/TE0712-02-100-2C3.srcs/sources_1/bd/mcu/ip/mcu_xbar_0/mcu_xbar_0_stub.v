// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
// Date        : Thu Aug 15 19:18:16 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_xbar_0/mcu_xbar_0_stub.v
// Design      : mcu_xbar_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_20_axi_crossbar,Vivado 2019.1.2" *)
module mcu_xbar_0(aclk, aresetn, s_axi_awid, s_axi_awaddr, 
  s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot, 
  s_axi_awqos, s_axi_awuser, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, 
  s_axi_arcache, s_axi_arprot, s_axi_arqos, s_axi_aruser, s_axi_arvalid, s_axi_arready, 
  s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, m_axi_awid, 
  m_axi_awaddr, m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awlock, m_axi_awcache, 
  m_axi_awprot, m_axi_awregion, m_axi_awqos, m_axi_awuser, m_axi_awvalid, m_axi_awready, 
  m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_wready, m_axi_bid, m_axi_bresp, 
  m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, 
  m_axi_arburst, m_axi_arlock, m_axi_arcache, m_axi_arprot, m_axi_arregion, m_axi_arqos, 
  m_axi_aruser, m_axi_arvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, m_axi_rlast, 
  m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awid[17:0],s_axi_awaddr[191:0],s_axi_awlen[47:0],s_axi_awsize[17:0],s_axi_awburst[11:0],s_axi_awlock[5:0],s_axi_awcache[23:0],s_axi_awprot[17:0],s_axi_awqos[23:0],s_axi_awuser[23:0],s_axi_awvalid[5:0],s_axi_awready[5:0],s_axi_wdata[191:0],s_axi_wstrb[23:0],s_axi_wlast[5:0],s_axi_wvalid[5:0],s_axi_wready[5:0],s_axi_bid[17:0],s_axi_bresp[11:0],s_axi_bvalid[5:0],s_axi_bready[5:0],s_axi_arid[17:0],s_axi_araddr[191:0],s_axi_arlen[47:0],s_axi_arsize[17:0],s_axi_arburst[11:0],s_axi_arlock[5:0],s_axi_arcache[23:0],s_axi_arprot[17:0],s_axi_arqos[23:0],s_axi_aruser[23:0],s_axi_arvalid[5:0],s_axi_arready[5:0],s_axi_rid[17:0],s_axi_rdata[191:0],s_axi_rresp[11:0],s_axi_rlast[5:0],s_axi_rvalid[5:0],s_axi_rready[5:0],m_axi_awid[44:0],m_axi_awaddr[479:0],m_axi_awlen[119:0],m_axi_awsize[44:0],m_axi_awburst[29:0],m_axi_awlock[14:0],m_axi_awcache[59:0],m_axi_awprot[44:0],m_axi_awregion[59:0],m_axi_awqos[59:0],m_axi_awuser[59:0],m_axi_awvalid[14:0],m_axi_awready[14:0],m_axi_wdata[479:0],m_axi_wstrb[59:0],m_axi_wlast[14:0],m_axi_wvalid[14:0],m_axi_wready[14:0],m_axi_bid[44:0],m_axi_bresp[29:0],m_axi_bvalid[14:0],m_axi_bready[14:0],m_axi_arid[44:0],m_axi_araddr[479:0],m_axi_arlen[119:0],m_axi_arsize[44:0],m_axi_arburst[29:0],m_axi_arlock[14:0],m_axi_arcache[59:0],m_axi_arprot[44:0],m_axi_arregion[59:0],m_axi_arqos[59:0],m_axi_aruser[59:0],m_axi_arvalid[14:0],m_axi_arready[14:0],m_axi_rid[44:0],m_axi_rdata[479:0],m_axi_rresp[29:0],m_axi_rlast[14:0],m_axi_rvalid[14:0],m_axi_rready[14:0]" */;
  input aclk;
  input aresetn;
  input [17:0]s_axi_awid;
  input [191:0]s_axi_awaddr;
  input [47:0]s_axi_awlen;
  input [17:0]s_axi_awsize;
  input [11:0]s_axi_awburst;
  input [5:0]s_axi_awlock;
  input [23:0]s_axi_awcache;
  input [17:0]s_axi_awprot;
  input [23:0]s_axi_awqos;
  input [23:0]s_axi_awuser;
  input [5:0]s_axi_awvalid;
  output [5:0]s_axi_awready;
  input [191:0]s_axi_wdata;
  input [23:0]s_axi_wstrb;
  input [5:0]s_axi_wlast;
  input [5:0]s_axi_wvalid;
  output [5:0]s_axi_wready;
  output [17:0]s_axi_bid;
  output [11:0]s_axi_bresp;
  output [5:0]s_axi_bvalid;
  input [5:0]s_axi_bready;
  input [17:0]s_axi_arid;
  input [191:0]s_axi_araddr;
  input [47:0]s_axi_arlen;
  input [17:0]s_axi_arsize;
  input [11:0]s_axi_arburst;
  input [5:0]s_axi_arlock;
  input [23:0]s_axi_arcache;
  input [17:0]s_axi_arprot;
  input [23:0]s_axi_arqos;
  input [23:0]s_axi_aruser;
  input [5:0]s_axi_arvalid;
  output [5:0]s_axi_arready;
  output [17:0]s_axi_rid;
  output [191:0]s_axi_rdata;
  output [11:0]s_axi_rresp;
  output [5:0]s_axi_rlast;
  output [5:0]s_axi_rvalid;
  input [5:0]s_axi_rready;
  output [44:0]m_axi_awid;
  output [479:0]m_axi_awaddr;
  output [119:0]m_axi_awlen;
  output [44:0]m_axi_awsize;
  output [29:0]m_axi_awburst;
  output [14:0]m_axi_awlock;
  output [59:0]m_axi_awcache;
  output [44:0]m_axi_awprot;
  output [59:0]m_axi_awregion;
  output [59:0]m_axi_awqos;
  output [59:0]m_axi_awuser;
  output [14:0]m_axi_awvalid;
  input [14:0]m_axi_awready;
  output [479:0]m_axi_wdata;
  output [59:0]m_axi_wstrb;
  output [14:0]m_axi_wlast;
  output [14:0]m_axi_wvalid;
  input [14:0]m_axi_wready;
  input [44:0]m_axi_bid;
  input [29:0]m_axi_bresp;
  input [14:0]m_axi_bvalid;
  output [14:0]m_axi_bready;
  output [44:0]m_axi_arid;
  output [479:0]m_axi_araddr;
  output [119:0]m_axi_arlen;
  output [44:0]m_axi_arsize;
  output [29:0]m_axi_arburst;
  output [14:0]m_axi_arlock;
  output [59:0]m_axi_arcache;
  output [44:0]m_axi_arprot;
  output [59:0]m_axi_arregion;
  output [59:0]m_axi_arqos;
  output [59:0]m_axi_aruser;
  output [14:0]m_axi_arvalid;
  input [14:0]m_axi_arready;
  input [44:0]m_axi_rid;
  input [479:0]m_axi_rdata;
  input [29:0]m_axi_rresp;
  input [14:0]m_axi_rlast;
  input [14:0]m_axi_rvalid;
  output [14:0]m_axi_rready;
endmodule
