//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1.1 (win64) Build 2580384 Sat Jun 29 08:12:21 MDT 2019
//Date        : Thu Aug  8 23:25:00 2019
//Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
//Command     : generate_target mcu.bd
//Design      : mcu
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_TLKMKT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [1:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire [1:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1EU9GI0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [3:0]m01_couplers_to_m01_couplers_ARCACHE;
  wire [1:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [3:0]m01_couplers_to_m01_couplers_ARQOS;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [3:0]m01_couplers_to_m01_couplers_AWCACHE;
  wire [1:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [3:0]m01_couplers_to_m01_couplers_AWQOS;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire [1:0]m01_couplers_to_m01_couplers_BID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [1:0]m01_couplers_to_m01_couplers_RID;
  wire m01_couplers_to_m01_couplers_RLAST;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WLAST;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m01_couplers_to_m01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m01_couplers_to_m01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid[1:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[1:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[1:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[1:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[1:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[1:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_31BL6U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m02_couplers_ARADDR;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [12:0]auto_pc_to_m02_couplers_AWADDR;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_pc_ARADDR;
  wire [1:0]m02_couplers_to_auto_pc_ARBURST;
  wire [3:0]m02_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m02_couplers_to_auto_pc_ARID;
  wire [7:0]m02_couplers_to_auto_pc_ARLEN;
  wire [0:0]m02_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_pc_ARPROT;
  wire [3:0]m02_couplers_to_auto_pc_ARQOS;
  wire m02_couplers_to_auto_pc_ARREADY;
  wire [3:0]m02_couplers_to_auto_pc_ARREGION;
  wire [2:0]m02_couplers_to_auto_pc_ARSIZE;
  wire m02_couplers_to_auto_pc_ARVALID;
  wire [31:0]m02_couplers_to_auto_pc_AWADDR;
  wire [1:0]m02_couplers_to_auto_pc_AWBURST;
  wire [3:0]m02_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m02_couplers_to_auto_pc_AWID;
  wire [7:0]m02_couplers_to_auto_pc_AWLEN;
  wire [0:0]m02_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_pc_AWPROT;
  wire [3:0]m02_couplers_to_auto_pc_AWQOS;
  wire m02_couplers_to_auto_pc_AWREADY;
  wire [3:0]m02_couplers_to_auto_pc_AWREGION;
  wire [2:0]m02_couplers_to_auto_pc_AWSIZE;
  wire m02_couplers_to_auto_pc_AWVALID;
  wire [1:0]m02_couplers_to_auto_pc_BID;
  wire m02_couplers_to_auto_pc_BREADY;
  wire [1:0]m02_couplers_to_auto_pc_BRESP;
  wire m02_couplers_to_auto_pc_BVALID;
  wire [31:0]m02_couplers_to_auto_pc_RDATA;
  wire [1:0]m02_couplers_to_auto_pc_RID;
  wire m02_couplers_to_auto_pc_RLAST;
  wire m02_couplers_to_auto_pc_RREADY;
  wire [1:0]m02_couplers_to_auto_pc_RRESP;
  wire m02_couplers_to_auto_pc_RVALID;
  wire [31:0]m02_couplers_to_auto_pc_WDATA;
  wire m02_couplers_to_auto_pc_WLAST;
  wire m02_couplers_to_auto_pc_WREADY;
  wire [3:0]m02_couplers_to_auto_pc_WSTRB;
  wire m02_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m02_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m02_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m02_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m02_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m02_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arburst(m02_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m02_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m02_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awburst(m02_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m02_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m02_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m02_couplers_to_auto_pc_BID),
        .s_axi_bready(m02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m02_couplers_to_auto_pc_RID),
        .s_axi_rlast(m02_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_pc_WVALID));
endmodule

module m03_couplers_imp_1NRLHTV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m03_couplers_ARADDR;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [31:0]auto_pc_to_m03_couplers_AWADDR;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [1:0]m03_couplers_to_auto_pc_ARBURST;
  wire [3:0]m03_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m03_couplers_to_auto_pc_ARID;
  wire [7:0]m03_couplers_to_auto_pc_ARLEN;
  wire [0:0]m03_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire [3:0]m03_couplers_to_auto_pc_ARQOS;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire [3:0]m03_couplers_to_auto_pc_ARREGION;
  wire [2:0]m03_couplers_to_auto_pc_ARSIZE;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [1:0]m03_couplers_to_auto_pc_AWBURST;
  wire [3:0]m03_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m03_couplers_to_auto_pc_AWID;
  wire [7:0]m03_couplers_to_auto_pc_AWLEN;
  wire [0:0]m03_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire [3:0]m03_couplers_to_auto_pc_AWQOS;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire [3:0]m03_couplers_to_auto_pc_AWREGION;
  wire [2:0]m03_couplers_to_auto_pc_AWSIZE;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire [1:0]m03_couplers_to_auto_pc_BID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire [1:0]m03_couplers_to_auto_pc_RID;
  wire m03_couplers_to_auto_pc_RLAST;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WLAST;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m03_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m03_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m03_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m03_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m03_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m03_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m03_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_pc_BID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m03_couplers_to_auto_pc_RID),
        .s_axi_rlast(m03_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
endmodule

module m04_couplers_imp_1B6V657
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_pc_ARADDR;
  wire [1:0]m04_couplers_to_auto_pc_ARBURST;
  wire [3:0]m04_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m04_couplers_to_auto_pc_ARID;
  wire [7:0]m04_couplers_to_auto_pc_ARLEN;
  wire [0:0]m04_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_pc_ARPROT;
  wire [3:0]m04_couplers_to_auto_pc_ARQOS;
  wire m04_couplers_to_auto_pc_ARREADY;
  wire [3:0]m04_couplers_to_auto_pc_ARREGION;
  wire [2:0]m04_couplers_to_auto_pc_ARSIZE;
  wire m04_couplers_to_auto_pc_ARVALID;
  wire [31:0]m04_couplers_to_auto_pc_AWADDR;
  wire [1:0]m04_couplers_to_auto_pc_AWBURST;
  wire [3:0]m04_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m04_couplers_to_auto_pc_AWID;
  wire [7:0]m04_couplers_to_auto_pc_AWLEN;
  wire [0:0]m04_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_pc_AWPROT;
  wire [3:0]m04_couplers_to_auto_pc_AWQOS;
  wire m04_couplers_to_auto_pc_AWREADY;
  wire [3:0]m04_couplers_to_auto_pc_AWREGION;
  wire [2:0]m04_couplers_to_auto_pc_AWSIZE;
  wire m04_couplers_to_auto_pc_AWVALID;
  wire [1:0]m04_couplers_to_auto_pc_BID;
  wire m04_couplers_to_auto_pc_BREADY;
  wire [1:0]m04_couplers_to_auto_pc_BRESP;
  wire m04_couplers_to_auto_pc_BVALID;
  wire [31:0]m04_couplers_to_auto_pc_RDATA;
  wire [1:0]m04_couplers_to_auto_pc_RID;
  wire m04_couplers_to_auto_pc_RLAST;
  wire m04_couplers_to_auto_pc_RREADY;
  wire [1:0]m04_couplers_to_auto_pc_RRESP;
  wire m04_couplers_to_auto_pc_RVALID;
  wire [31:0]m04_couplers_to_auto_pc_WDATA;
  wire m04_couplers_to_auto_pc_WLAST;
  wire m04_couplers_to_auto_pc_WREADY;
  wire [3:0]m04_couplers_to_auto_pc_WSTRB;
  wire m04_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m04_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m04_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m04_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m04_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m04_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m04_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m04_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m04_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m04_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m04_couplers_to_auto_pc_BID),
        .s_axi_bready(m04_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m04_couplers_to_auto_pc_RID),
        .s_axi_rlast(m04_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_X5REJI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m05_couplers_ARADDR;
  wire auto_pc_to_m05_couplers_ARREADY;
  wire auto_pc_to_m05_couplers_ARVALID;
  wire [31:0]auto_pc_to_m05_couplers_AWADDR;
  wire auto_pc_to_m05_couplers_AWREADY;
  wire auto_pc_to_m05_couplers_AWVALID;
  wire auto_pc_to_m05_couplers_BREADY;
  wire [1:0]auto_pc_to_m05_couplers_BRESP;
  wire auto_pc_to_m05_couplers_BVALID;
  wire [31:0]auto_pc_to_m05_couplers_RDATA;
  wire auto_pc_to_m05_couplers_RREADY;
  wire [1:0]auto_pc_to_m05_couplers_RRESP;
  wire auto_pc_to_m05_couplers_RVALID;
  wire [31:0]auto_pc_to_m05_couplers_WDATA;
  wire auto_pc_to_m05_couplers_WREADY;
  wire [3:0]auto_pc_to_m05_couplers_WSTRB;
  wire auto_pc_to_m05_couplers_WVALID;
  wire [31:0]m05_couplers_to_auto_pc_ARADDR;
  wire [1:0]m05_couplers_to_auto_pc_ARBURST;
  wire [3:0]m05_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m05_couplers_to_auto_pc_ARID;
  wire [7:0]m05_couplers_to_auto_pc_ARLEN;
  wire [0:0]m05_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_pc_ARPROT;
  wire [3:0]m05_couplers_to_auto_pc_ARQOS;
  wire m05_couplers_to_auto_pc_ARREADY;
  wire [3:0]m05_couplers_to_auto_pc_ARREGION;
  wire [2:0]m05_couplers_to_auto_pc_ARSIZE;
  wire m05_couplers_to_auto_pc_ARVALID;
  wire [31:0]m05_couplers_to_auto_pc_AWADDR;
  wire [1:0]m05_couplers_to_auto_pc_AWBURST;
  wire [3:0]m05_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m05_couplers_to_auto_pc_AWID;
  wire [7:0]m05_couplers_to_auto_pc_AWLEN;
  wire [0:0]m05_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_pc_AWPROT;
  wire [3:0]m05_couplers_to_auto_pc_AWQOS;
  wire m05_couplers_to_auto_pc_AWREADY;
  wire [3:0]m05_couplers_to_auto_pc_AWREGION;
  wire [2:0]m05_couplers_to_auto_pc_AWSIZE;
  wire m05_couplers_to_auto_pc_AWVALID;
  wire [1:0]m05_couplers_to_auto_pc_BID;
  wire m05_couplers_to_auto_pc_BREADY;
  wire [1:0]m05_couplers_to_auto_pc_BRESP;
  wire m05_couplers_to_auto_pc_BVALID;
  wire [31:0]m05_couplers_to_auto_pc_RDATA;
  wire [1:0]m05_couplers_to_auto_pc_RID;
  wire m05_couplers_to_auto_pc_RLAST;
  wire m05_couplers_to_auto_pc_RREADY;
  wire [1:0]m05_couplers_to_auto_pc_RRESP;
  wire m05_couplers_to_auto_pc_RVALID;
  wire [31:0]m05_couplers_to_auto_pc_WDATA;
  wire m05_couplers_to_auto_pc_WLAST;
  wire m05_couplers_to_auto_pc_WREADY;
  wire [3:0]m05_couplers_to_auto_pc_WSTRB;
  wire m05_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m05_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m05_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m05_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m05_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m05_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m05_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m05_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m05_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m05_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m05_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m05_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m05_couplers_WVALID),
        .s_axi_araddr(m05_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m05_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m05_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m05_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m05_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m05_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m05_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m05_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m05_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m05_couplers_to_auto_pc_BID),
        .s_axi_bready(m05_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m05_couplers_to_auto_pc_RID),
        .s_axi_rlast(m05_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_pc_WVALID));
endmodule

module m06_couplers_imp_1K4K1AO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m06_couplers_ARADDR;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [31:0]auto_pc_to_m06_couplers_AWADDR;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [31:0]m06_couplers_to_auto_pc_ARADDR;
  wire [1:0]m06_couplers_to_auto_pc_ARBURST;
  wire [3:0]m06_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m06_couplers_to_auto_pc_ARID;
  wire [7:0]m06_couplers_to_auto_pc_ARLEN;
  wire [0:0]m06_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m06_couplers_to_auto_pc_ARPROT;
  wire [3:0]m06_couplers_to_auto_pc_ARQOS;
  wire m06_couplers_to_auto_pc_ARREADY;
  wire [3:0]m06_couplers_to_auto_pc_ARREGION;
  wire [2:0]m06_couplers_to_auto_pc_ARSIZE;
  wire m06_couplers_to_auto_pc_ARVALID;
  wire [31:0]m06_couplers_to_auto_pc_AWADDR;
  wire [1:0]m06_couplers_to_auto_pc_AWBURST;
  wire [3:0]m06_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m06_couplers_to_auto_pc_AWID;
  wire [7:0]m06_couplers_to_auto_pc_AWLEN;
  wire [0:0]m06_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m06_couplers_to_auto_pc_AWPROT;
  wire [3:0]m06_couplers_to_auto_pc_AWQOS;
  wire m06_couplers_to_auto_pc_AWREADY;
  wire [3:0]m06_couplers_to_auto_pc_AWREGION;
  wire [2:0]m06_couplers_to_auto_pc_AWSIZE;
  wire m06_couplers_to_auto_pc_AWVALID;
  wire [1:0]m06_couplers_to_auto_pc_BID;
  wire m06_couplers_to_auto_pc_BREADY;
  wire [1:0]m06_couplers_to_auto_pc_BRESP;
  wire m06_couplers_to_auto_pc_BVALID;
  wire [31:0]m06_couplers_to_auto_pc_RDATA;
  wire [1:0]m06_couplers_to_auto_pc_RID;
  wire m06_couplers_to_auto_pc_RLAST;
  wire m06_couplers_to_auto_pc_RREADY;
  wire [1:0]m06_couplers_to_auto_pc_RRESP;
  wire m06_couplers_to_auto_pc_RVALID;
  wire [31:0]m06_couplers_to_auto_pc_WDATA;
  wire m06_couplers_to_auto_pc_WLAST;
  wire m06_couplers_to_auto_pc_WREADY;
  wire [3:0]m06_couplers_to_auto_pc_WSTRB;
  wire m06_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m06_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m06_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m06_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m06_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m06_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(m06_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m06_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m06_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m06_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m06_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m06_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m06_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m06_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m06_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m06_couplers_to_auto_pc_BID),
        .s_axi_bready(m06_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m06_couplers_to_auto_pc_RID),
        .s_axi_rlast(m06_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m06_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m06_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_6MF6S5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m07_couplers_ARADDR;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [31:0]auto_pc_to_m07_couplers_AWADDR;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_pc_ARADDR;
  wire [1:0]m07_couplers_to_auto_pc_ARBURST;
  wire [3:0]m07_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m07_couplers_to_auto_pc_ARID;
  wire [7:0]m07_couplers_to_auto_pc_ARLEN;
  wire [0:0]m07_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m07_couplers_to_auto_pc_ARPROT;
  wire [3:0]m07_couplers_to_auto_pc_ARQOS;
  wire m07_couplers_to_auto_pc_ARREADY;
  wire [3:0]m07_couplers_to_auto_pc_ARREGION;
  wire [2:0]m07_couplers_to_auto_pc_ARSIZE;
  wire m07_couplers_to_auto_pc_ARVALID;
  wire [31:0]m07_couplers_to_auto_pc_AWADDR;
  wire [1:0]m07_couplers_to_auto_pc_AWBURST;
  wire [3:0]m07_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m07_couplers_to_auto_pc_AWID;
  wire [7:0]m07_couplers_to_auto_pc_AWLEN;
  wire [0:0]m07_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m07_couplers_to_auto_pc_AWPROT;
  wire [3:0]m07_couplers_to_auto_pc_AWQOS;
  wire m07_couplers_to_auto_pc_AWREADY;
  wire [3:0]m07_couplers_to_auto_pc_AWREGION;
  wire [2:0]m07_couplers_to_auto_pc_AWSIZE;
  wire m07_couplers_to_auto_pc_AWVALID;
  wire [1:0]m07_couplers_to_auto_pc_BID;
  wire m07_couplers_to_auto_pc_BREADY;
  wire [1:0]m07_couplers_to_auto_pc_BRESP;
  wire m07_couplers_to_auto_pc_BVALID;
  wire [31:0]m07_couplers_to_auto_pc_RDATA;
  wire [1:0]m07_couplers_to_auto_pc_RID;
  wire m07_couplers_to_auto_pc_RLAST;
  wire m07_couplers_to_auto_pc_RREADY;
  wire [1:0]m07_couplers_to_auto_pc_RRESP;
  wire m07_couplers_to_auto_pc_RVALID;
  wire [31:0]m07_couplers_to_auto_pc_WDATA;
  wire m07_couplers_to_auto_pc_WLAST;
  wire m07_couplers_to_auto_pc_WREADY;
  wire [3:0]m07_couplers_to_auto_pc_WSTRB;
  wire m07_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m07_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m07_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m07_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m07_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m07_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_6 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m07_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m07_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m07_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m07_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m07_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m07_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m07_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m07_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m07_couplers_to_auto_pc_BID),
        .s_axi_bready(m07_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m07_couplers_to_auto_pc_RID),
        .s_axi_rlast(m07_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m07_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m07_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_pc_WVALID));
endmodule

module m08_couplers_imp_DI9UZK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m08_couplers_ARADDR;
  wire auto_pc_to_m08_couplers_ARREADY;
  wire auto_pc_to_m08_couplers_ARVALID;
  wire [31:0]auto_pc_to_m08_couplers_AWADDR;
  wire auto_pc_to_m08_couplers_AWREADY;
  wire auto_pc_to_m08_couplers_AWVALID;
  wire auto_pc_to_m08_couplers_BREADY;
  wire [1:0]auto_pc_to_m08_couplers_BRESP;
  wire auto_pc_to_m08_couplers_BVALID;
  wire [31:0]auto_pc_to_m08_couplers_RDATA;
  wire auto_pc_to_m08_couplers_RREADY;
  wire [1:0]auto_pc_to_m08_couplers_RRESP;
  wire auto_pc_to_m08_couplers_RVALID;
  wire [31:0]auto_pc_to_m08_couplers_WDATA;
  wire auto_pc_to_m08_couplers_WREADY;
  wire [3:0]auto_pc_to_m08_couplers_WSTRB;
  wire auto_pc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_pc_ARADDR;
  wire [1:0]m08_couplers_to_auto_pc_ARBURST;
  wire [3:0]m08_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m08_couplers_to_auto_pc_ARID;
  wire [7:0]m08_couplers_to_auto_pc_ARLEN;
  wire [0:0]m08_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m08_couplers_to_auto_pc_ARPROT;
  wire [3:0]m08_couplers_to_auto_pc_ARQOS;
  wire m08_couplers_to_auto_pc_ARREADY;
  wire [3:0]m08_couplers_to_auto_pc_ARREGION;
  wire [2:0]m08_couplers_to_auto_pc_ARSIZE;
  wire m08_couplers_to_auto_pc_ARVALID;
  wire [31:0]m08_couplers_to_auto_pc_AWADDR;
  wire [1:0]m08_couplers_to_auto_pc_AWBURST;
  wire [3:0]m08_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m08_couplers_to_auto_pc_AWID;
  wire [7:0]m08_couplers_to_auto_pc_AWLEN;
  wire [0:0]m08_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m08_couplers_to_auto_pc_AWPROT;
  wire [3:0]m08_couplers_to_auto_pc_AWQOS;
  wire m08_couplers_to_auto_pc_AWREADY;
  wire [3:0]m08_couplers_to_auto_pc_AWREGION;
  wire [2:0]m08_couplers_to_auto_pc_AWSIZE;
  wire m08_couplers_to_auto_pc_AWVALID;
  wire [1:0]m08_couplers_to_auto_pc_BID;
  wire m08_couplers_to_auto_pc_BREADY;
  wire [1:0]m08_couplers_to_auto_pc_BRESP;
  wire m08_couplers_to_auto_pc_BVALID;
  wire [31:0]m08_couplers_to_auto_pc_RDATA;
  wire [1:0]m08_couplers_to_auto_pc_RID;
  wire m08_couplers_to_auto_pc_RLAST;
  wire m08_couplers_to_auto_pc_RREADY;
  wire [1:0]m08_couplers_to_auto_pc_RRESP;
  wire m08_couplers_to_auto_pc_RVALID;
  wire [31:0]m08_couplers_to_auto_pc_WDATA;
  wire m08_couplers_to_auto_pc_WLAST;
  wire m08_couplers_to_auto_pc_WREADY;
  wire [3:0]m08_couplers_to_auto_pc_WSTRB;
  wire m08_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m08_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m08_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m08_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m08_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m08_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m08_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m08_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m08_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m08_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m08_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_7 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m08_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m08_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m08_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m08_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m08_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m08_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m08_couplers_WVALID),
        .s_axi_araddr(m08_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m08_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m08_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m08_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m08_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m08_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m08_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m08_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m08_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m08_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m08_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m08_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m08_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m08_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m08_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m08_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m08_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m08_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m08_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m08_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m08_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m08_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m08_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m08_couplers_to_auto_pc_BID),
        .s_axi_bready(m08_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m08_couplers_to_auto_pc_RID),
        .s_axi_rlast(m08_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m08_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m08_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m08_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_pc_WVALID));
endmodule

module m09_couplers_imp_1TTJ25H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m09_couplers_ARADDR;
  wire auto_pc_to_m09_couplers_ARREADY;
  wire auto_pc_to_m09_couplers_ARVALID;
  wire [31:0]auto_pc_to_m09_couplers_AWADDR;
  wire auto_pc_to_m09_couplers_AWREADY;
  wire auto_pc_to_m09_couplers_AWVALID;
  wire auto_pc_to_m09_couplers_BREADY;
  wire [1:0]auto_pc_to_m09_couplers_BRESP;
  wire auto_pc_to_m09_couplers_BVALID;
  wire [31:0]auto_pc_to_m09_couplers_RDATA;
  wire auto_pc_to_m09_couplers_RREADY;
  wire [1:0]auto_pc_to_m09_couplers_RRESP;
  wire auto_pc_to_m09_couplers_RVALID;
  wire [31:0]auto_pc_to_m09_couplers_WDATA;
  wire auto_pc_to_m09_couplers_WREADY;
  wire [3:0]auto_pc_to_m09_couplers_WSTRB;
  wire auto_pc_to_m09_couplers_WVALID;
  wire [31:0]m09_couplers_to_auto_pc_ARADDR;
  wire [1:0]m09_couplers_to_auto_pc_ARBURST;
  wire [3:0]m09_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m09_couplers_to_auto_pc_ARID;
  wire [7:0]m09_couplers_to_auto_pc_ARLEN;
  wire [0:0]m09_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m09_couplers_to_auto_pc_ARPROT;
  wire [3:0]m09_couplers_to_auto_pc_ARQOS;
  wire m09_couplers_to_auto_pc_ARREADY;
  wire [3:0]m09_couplers_to_auto_pc_ARREGION;
  wire [2:0]m09_couplers_to_auto_pc_ARSIZE;
  wire m09_couplers_to_auto_pc_ARVALID;
  wire [31:0]m09_couplers_to_auto_pc_AWADDR;
  wire [1:0]m09_couplers_to_auto_pc_AWBURST;
  wire [3:0]m09_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m09_couplers_to_auto_pc_AWID;
  wire [7:0]m09_couplers_to_auto_pc_AWLEN;
  wire [0:0]m09_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m09_couplers_to_auto_pc_AWPROT;
  wire [3:0]m09_couplers_to_auto_pc_AWQOS;
  wire m09_couplers_to_auto_pc_AWREADY;
  wire [3:0]m09_couplers_to_auto_pc_AWREGION;
  wire [2:0]m09_couplers_to_auto_pc_AWSIZE;
  wire m09_couplers_to_auto_pc_AWVALID;
  wire [1:0]m09_couplers_to_auto_pc_BID;
  wire m09_couplers_to_auto_pc_BREADY;
  wire [1:0]m09_couplers_to_auto_pc_BRESP;
  wire m09_couplers_to_auto_pc_BVALID;
  wire [31:0]m09_couplers_to_auto_pc_RDATA;
  wire [1:0]m09_couplers_to_auto_pc_RID;
  wire m09_couplers_to_auto_pc_RLAST;
  wire m09_couplers_to_auto_pc_RREADY;
  wire [1:0]m09_couplers_to_auto_pc_RRESP;
  wire m09_couplers_to_auto_pc_RVALID;
  wire [31:0]m09_couplers_to_auto_pc_WDATA;
  wire m09_couplers_to_auto_pc_WLAST;
  wire m09_couplers_to_auto_pc_WREADY;
  wire [3:0]m09_couplers_to_auto_pc_WSTRB;
  wire m09_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m09_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m09_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m09_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m09_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m09_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m09_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m09_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m09_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m09_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m09_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m09_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m09_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m09_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m09_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m09_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m09_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m09_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m09_couplers_WREADY = M_AXI_wready;
  assign m09_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m09_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m09_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m09_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m09_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m09_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m09_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m09_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m09_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m09_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m09_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m09_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m09_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m09_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m09_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m09_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m09_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m09_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m09_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m09_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m09_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m09_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_8 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m09_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m09_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m09_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m09_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m09_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m09_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m09_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m09_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m09_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m09_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m09_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m09_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m09_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m09_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m09_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m09_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m09_couplers_WVALID),
        .s_axi_araddr(m09_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m09_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m09_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m09_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m09_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m09_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m09_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m09_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m09_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m09_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m09_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m09_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m09_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m09_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m09_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m09_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m09_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m09_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m09_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m09_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m09_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m09_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m09_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m09_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m09_couplers_to_auto_pc_BID),
        .s_axi_bready(m09_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m09_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m09_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m09_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m09_couplers_to_auto_pc_RID),
        .s_axi_rlast(m09_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m09_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m09_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m09_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m09_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m09_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m09_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m09_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m09_couplers_to_auto_pc_WVALID));
endmodule

module m10_couplers_imp_1WPK3SR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m10_couplers_ARADDR;
  wire auto_pc_to_m10_couplers_ARREADY;
  wire auto_pc_to_m10_couplers_ARVALID;
  wire [31:0]auto_pc_to_m10_couplers_AWADDR;
  wire auto_pc_to_m10_couplers_AWREADY;
  wire auto_pc_to_m10_couplers_AWVALID;
  wire auto_pc_to_m10_couplers_BREADY;
  wire [1:0]auto_pc_to_m10_couplers_BRESP;
  wire auto_pc_to_m10_couplers_BVALID;
  wire [31:0]auto_pc_to_m10_couplers_RDATA;
  wire auto_pc_to_m10_couplers_RREADY;
  wire [1:0]auto_pc_to_m10_couplers_RRESP;
  wire auto_pc_to_m10_couplers_RVALID;
  wire [31:0]auto_pc_to_m10_couplers_WDATA;
  wire auto_pc_to_m10_couplers_WREADY;
  wire [3:0]auto_pc_to_m10_couplers_WSTRB;
  wire auto_pc_to_m10_couplers_WVALID;
  wire [31:0]m10_couplers_to_auto_pc_ARADDR;
  wire [1:0]m10_couplers_to_auto_pc_ARBURST;
  wire [3:0]m10_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m10_couplers_to_auto_pc_ARID;
  wire [7:0]m10_couplers_to_auto_pc_ARLEN;
  wire [0:0]m10_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m10_couplers_to_auto_pc_ARPROT;
  wire [3:0]m10_couplers_to_auto_pc_ARQOS;
  wire m10_couplers_to_auto_pc_ARREADY;
  wire [3:0]m10_couplers_to_auto_pc_ARREGION;
  wire [2:0]m10_couplers_to_auto_pc_ARSIZE;
  wire m10_couplers_to_auto_pc_ARVALID;
  wire [31:0]m10_couplers_to_auto_pc_AWADDR;
  wire [1:0]m10_couplers_to_auto_pc_AWBURST;
  wire [3:0]m10_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m10_couplers_to_auto_pc_AWID;
  wire [7:0]m10_couplers_to_auto_pc_AWLEN;
  wire [0:0]m10_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m10_couplers_to_auto_pc_AWPROT;
  wire [3:0]m10_couplers_to_auto_pc_AWQOS;
  wire m10_couplers_to_auto_pc_AWREADY;
  wire [3:0]m10_couplers_to_auto_pc_AWREGION;
  wire [2:0]m10_couplers_to_auto_pc_AWSIZE;
  wire m10_couplers_to_auto_pc_AWVALID;
  wire [1:0]m10_couplers_to_auto_pc_BID;
  wire m10_couplers_to_auto_pc_BREADY;
  wire [1:0]m10_couplers_to_auto_pc_BRESP;
  wire m10_couplers_to_auto_pc_BVALID;
  wire [31:0]m10_couplers_to_auto_pc_RDATA;
  wire [1:0]m10_couplers_to_auto_pc_RID;
  wire m10_couplers_to_auto_pc_RLAST;
  wire m10_couplers_to_auto_pc_RREADY;
  wire [1:0]m10_couplers_to_auto_pc_RRESP;
  wire m10_couplers_to_auto_pc_RVALID;
  wire [31:0]m10_couplers_to_auto_pc_WDATA;
  wire m10_couplers_to_auto_pc_WLAST;
  wire m10_couplers_to_auto_pc_WREADY;
  wire [3:0]m10_couplers_to_auto_pc_WSTRB;
  wire m10_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m10_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m10_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m10_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m10_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m10_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m10_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m10_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m10_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m10_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m10_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m10_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m10_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m10_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m10_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m10_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m10_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m10_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m10_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m10_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m10_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m10_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m10_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m10_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m10_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_9 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m10_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m10_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m10_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m10_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m10_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m10_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m10_couplers_WVALID),
        .s_axi_araddr(m10_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m10_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m10_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m10_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m10_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m10_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m10_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m10_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m10_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m10_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m10_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m10_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m10_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m10_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m10_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m10_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m10_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m10_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m10_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m10_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m10_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m10_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m10_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m10_couplers_to_auto_pc_BID),
        .s_axi_bready(m10_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m10_couplers_to_auto_pc_RID),
        .s_axi_rlast(m10_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m10_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m10_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m10_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_pc_WVALID));
endmodule

module m11_couplers_imp_BPKCE6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m11_couplers_ARADDR;
  wire auto_pc_to_m11_couplers_ARREADY;
  wire auto_pc_to_m11_couplers_ARVALID;
  wire [31:0]auto_pc_to_m11_couplers_AWADDR;
  wire auto_pc_to_m11_couplers_AWREADY;
  wire auto_pc_to_m11_couplers_AWVALID;
  wire auto_pc_to_m11_couplers_BREADY;
  wire [1:0]auto_pc_to_m11_couplers_BRESP;
  wire auto_pc_to_m11_couplers_BVALID;
  wire [31:0]auto_pc_to_m11_couplers_RDATA;
  wire auto_pc_to_m11_couplers_RREADY;
  wire [1:0]auto_pc_to_m11_couplers_RRESP;
  wire auto_pc_to_m11_couplers_RVALID;
  wire [31:0]auto_pc_to_m11_couplers_WDATA;
  wire auto_pc_to_m11_couplers_WREADY;
  wire [3:0]auto_pc_to_m11_couplers_WSTRB;
  wire auto_pc_to_m11_couplers_WVALID;
  wire [31:0]m11_couplers_to_auto_pc_ARADDR;
  wire [1:0]m11_couplers_to_auto_pc_ARBURST;
  wire [3:0]m11_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m11_couplers_to_auto_pc_ARID;
  wire [7:0]m11_couplers_to_auto_pc_ARLEN;
  wire [0:0]m11_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m11_couplers_to_auto_pc_ARPROT;
  wire [3:0]m11_couplers_to_auto_pc_ARQOS;
  wire m11_couplers_to_auto_pc_ARREADY;
  wire [3:0]m11_couplers_to_auto_pc_ARREGION;
  wire [2:0]m11_couplers_to_auto_pc_ARSIZE;
  wire m11_couplers_to_auto_pc_ARVALID;
  wire [31:0]m11_couplers_to_auto_pc_AWADDR;
  wire [1:0]m11_couplers_to_auto_pc_AWBURST;
  wire [3:0]m11_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m11_couplers_to_auto_pc_AWID;
  wire [7:0]m11_couplers_to_auto_pc_AWLEN;
  wire [0:0]m11_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m11_couplers_to_auto_pc_AWPROT;
  wire [3:0]m11_couplers_to_auto_pc_AWQOS;
  wire m11_couplers_to_auto_pc_AWREADY;
  wire [3:0]m11_couplers_to_auto_pc_AWREGION;
  wire [2:0]m11_couplers_to_auto_pc_AWSIZE;
  wire m11_couplers_to_auto_pc_AWVALID;
  wire [1:0]m11_couplers_to_auto_pc_BID;
  wire m11_couplers_to_auto_pc_BREADY;
  wire [1:0]m11_couplers_to_auto_pc_BRESP;
  wire m11_couplers_to_auto_pc_BVALID;
  wire [31:0]m11_couplers_to_auto_pc_RDATA;
  wire [1:0]m11_couplers_to_auto_pc_RID;
  wire m11_couplers_to_auto_pc_RLAST;
  wire m11_couplers_to_auto_pc_RREADY;
  wire [1:0]m11_couplers_to_auto_pc_RRESP;
  wire m11_couplers_to_auto_pc_RVALID;
  wire [31:0]m11_couplers_to_auto_pc_WDATA;
  wire m11_couplers_to_auto_pc_WLAST;
  wire m11_couplers_to_auto_pc_WREADY;
  wire [3:0]m11_couplers_to_auto_pc_WSTRB;
  wire m11_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m11_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m11_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m11_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m11_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m11_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m11_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m11_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m11_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m11_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m11_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m11_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m11_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m11_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m11_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m11_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m11_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m11_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m11_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m11_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m11_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m11_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m11_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m11_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m11_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m11_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m11_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m11_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m11_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m11_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m11_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m11_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m11_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m11_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m11_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_10 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m11_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m11_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m11_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m11_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m11_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m11_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m11_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m11_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m11_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m11_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m11_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m11_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m11_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m11_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m11_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m11_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m11_couplers_WVALID),
        .s_axi_araddr(m11_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m11_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m11_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m11_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m11_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m11_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m11_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m11_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m11_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m11_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m11_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m11_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m11_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m11_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m11_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m11_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m11_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m11_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m11_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m11_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m11_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m11_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m11_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m11_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m11_couplers_to_auto_pc_BID),
        .s_axi_bready(m11_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m11_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m11_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m11_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m11_couplers_to_auto_pc_RID),
        .s_axi_rlast(m11_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m11_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m11_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m11_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m11_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m11_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m11_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m11_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m11_couplers_to_auto_pc_WVALID));
endmodule

module m12_couplers_imp_1667PTC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m12_couplers_ARADDR;
  wire auto_pc_to_m12_couplers_ARREADY;
  wire auto_pc_to_m12_couplers_ARVALID;
  wire [31:0]auto_pc_to_m12_couplers_AWADDR;
  wire auto_pc_to_m12_couplers_AWREADY;
  wire auto_pc_to_m12_couplers_AWVALID;
  wire auto_pc_to_m12_couplers_BREADY;
  wire [1:0]auto_pc_to_m12_couplers_BRESP;
  wire auto_pc_to_m12_couplers_BVALID;
  wire [31:0]auto_pc_to_m12_couplers_RDATA;
  wire auto_pc_to_m12_couplers_RREADY;
  wire [1:0]auto_pc_to_m12_couplers_RRESP;
  wire auto_pc_to_m12_couplers_RVALID;
  wire [31:0]auto_pc_to_m12_couplers_WDATA;
  wire auto_pc_to_m12_couplers_WREADY;
  wire [3:0]auto_pc_to_m12_couplers_WSTRB;
  wire auto_pc_to_m12_couplers_WVALID;
  wire [31:0]m12_couplers_to_auto_pc_ARADDR;
  wire [1:0]m12_couplers_to_auto_pc_ARBURST;
  wire [3:0]m12_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m12_couplers_to_auto_pc_ARID;
  wire [7:0]m12_couplers_to_auto_pc_ARLEN;
  wire [0:0]m12_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m12_couplers_to_auto_pc_ARPROT;
  wire [3:0]m12_couplers_to_auto_pc_ARQOS;
  wire m12_couplers_to_auto_pc_ARREADY;
  wire [3:0]m12_couplers_to_auto_pc_ARREGION;
  wire [2:0]m12_couplers_to_auto_pc_ARSIZE;
  wire m12_couplers_to_auto_pc_ARVALID;
  wire [31:0]m12_couplers_to_auto_pc_AWADDR;
  wire [1:0]m12_couplers_to_auto_pc_AWBURST;
  wire [3:0]m12_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m12_couplers_to_auto_pc_AWID;
  wire [7:0]m12_couplers_to_auto_pc_AWLEN;
  wire [0:0]m12_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m12_couplers_to_auto_pc_AWPROT;
  wire [3:0]m12_couplers_to_auto_pc_AWQOS;
  wire m12_couplers_to_auto_pc_AWREADY;
  wire [3:0]m12_couplers_to_auto_pc_AWREGION;
  wire [2:0]m12_couplers_to_auto_pc_AWSIZE;
  wire m12_couplers_to_auto_pc_AWVALID;
  wire [1:0]m12_couplers_to_auto_pc_BID;
  wire m12_couplers_to_auto_pc_BREADY;
  wire [1:0]m12_couplers_to_auto_pc_BRESP;
  wire m12_couplers_to_auto_pc_BVALID;
  wire [31:0]m12_couplers_to_auto_pc_RDATA;
  wire [1:0]m12_couplers_to_auto_pc_RID;
  wire m12_couplers_to_auto_pc_RLAST;
  wire m12_couplers_to_auto_pc_RREADY;
  wire [1:0]m12_couplers_to_auto_pc_RRESP;
  wire m12_couplers_to_auto_pc_RVALID;
  wire [31:0]m12_couplers_to_auto_pc_WDATA;
  wire m12_couplers_to_auto_pc_WLAST;
  wire m12_couplers_to_auto_pc_WREADY;
  wire [3:0]m12_couplers_to_auto_pc_WSTRB;
  wire m12_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m12_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m12_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m12_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m12_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m12_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m12_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m12_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m12_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m12_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m12_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m12_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m12_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m12_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m12_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m12_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m12_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m12_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m12_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m12_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m12_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m12_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m12_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m12_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m12_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m12_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m12_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m12_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m12_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m12_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m12_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m12_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m12_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m12_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m12_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_11 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m12_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m12_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m12_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m12_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m12_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m12_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m12_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m12_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m12_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m12_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m12_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m12_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m12_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m12_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m12_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m12_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m12_couplers_WVALID),
        .s_axi_araddr(m12_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m12_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m12_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m12_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m12_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m12_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m12_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m12_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m12_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m12_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m12_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m12_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m12_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m12_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m12_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m12_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m12_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m12_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m12_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m12_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m12_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m12_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m12_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m12_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m12_couplers_to_auto_pc_BID),
        .s_axi_bready(m12_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m12_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m12_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m12_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m12_couplers_to_auto_pc_RID),
        .s_axi_rlast(m12_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m12_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m12_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m12_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m12_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m12_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m12_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m12_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m12_couplers_to_auto_pc_WVALID));
endmodule

module m13_couplers_imp_KN9DYT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m13_couplers_ARADDR;
  wire auto_pc_to_m13_couplers_ARREADY;
  wire auto_pc_to_m13_couplers_ARVALID;
  wire [31:0]auto_pc_to_m13_couplers_AWADDR;
  wire auto_pc_to_m13_couplers_AWREADY;
  wire auto_pc_to_m13_couplers_AWVALID;
  wire auto_pc_to_m13_couplers_BREADY;
  wire [1:0]auto_pc_to_m13_couplers_BRESP;
  wire auto_pc_to_m13_couplers_BVALID;
  wire [31:0]auto_pc_to_m13_couplers_RDATA;
  wire auto_pc_to_m13_couplers_RREADY;
  wire [1:0]auto_pc_to_m13_couplers_RRESP;
  wire auto_pc_to_m13_couplers_RVALID;
  wire [31:0]auto_pc_to_m13_couplers_WDATA;
  wire auto_pc_to_m13_couplers_WREADY;
  wire [3:0]auto_pc_to_m13_couplers_WSTRB;
  wire auto_pc_to_m13_couplers_WVALID;
  wire [31:0]m13_couplers_to_auto_pc_ARADDR;
  wire [1:0]m13_couplers_to_auto_pc_ARBURST;
  wire [3:0]m13_couplers_to_auto_pc_ARCACHE;
  wire [1:0]m13_couplers_to_auto_pc_ARID;
  wire [7:0]m13_couplers_to_auto_pc_ARLEN;
  wire [0:0]m13_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m13_couplers_to_auto_pc_ARPROT;
  wire [3:0]m13_couplers_to_auto_pc_ARQOS;
  wire m13_couplers_to_auto_pc_ARREADY;
  wire [3:0]m13_couplers_to_auto_pc_ARREGION;
  wire [2:0]m13_couplers_to_auto_pc_ARSIZE;
  wire m13_couplers_to_auto_pc_ARVALID;
  wire [31:0]m13_couplers_to_auto_pc_AWADDR;
  wire [1:0]m13_couplers_to_auto_pc_AWBURST;
  wire [3:0]m13_couplers_to_auto_pc_AWCACHE;
  wire [1:0]m13_couplers_to_auto_pc_AWID;
  wire [7:0]m13_couplers_to_auto_pc_AWLEN;
  wire [0:0]m13_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m13_couplers_to_auto_pc_AWPROT;
  wire [3:0]m13_couplers_to_auto_pc_AWQOS;
  wire m13_couplers_to_auto_pc_AWREADY;
  wire [3:0]m13_couplers_to_auto_pc_AWREGION;
  wire [2:0]m13_couplers_to_auto_pc_AWSIZE;
  wire m13_couplers_to_auto_pc_AWVALID;
  wire [1:0]m13_couplers_to_auto_pc_BID;
  wire m13_couplers_to_auto_pc_BREADY;
  wire [1:0]m13_couplers_to_auto_pc_BRESP;
  wire m13_couplers_to_auto_pc_BVALID;
  wire [31:0]m13_couplers_to_auto_pc_RDATA;
  wire [1:0]m13_couplers_to_auto_pc_RID;
  wire m13_couplers_to_auto_pc_RLAST;
  wire m13_couplers_to_auto_pc_RREADY;
  wire [1:0]m13_couplers_to_auto_pc_RRESP;
  wire m13_couplers_to_auto_pc_RVALID;
  wire [31:0]m13_couplers_to_auto_pc_WDATA;
  wire m13_couplers_to_auto_pc_WLAST;
  wire m13_couplers_to_auto_pc_WREADY;
  wire [3:0]m13_couplers_to_auto_pc_WSTRB;
  wire m13_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m13_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m13_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m13_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m13_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m13_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m13_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m13_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[1:0] = m13_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m13_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[1:0] = m13_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m13_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m13_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m13_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m13_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m13_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m13_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m13_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m13_couplers_to_auto_pc_ARID = S_AXI_arid[1:0];
  assign m13_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m13_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m13_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m13_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m13_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m13_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m13_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m13_couplers_to_auto_pc_AWID = S_AXI_awid[1:0];
  assign m13_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m13_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m13_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m13_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m13_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m13_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m13_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m13_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m13_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m13_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_12 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m13_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m13_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m13_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m13_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m13_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m13_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m13_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m13_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m13_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m13_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m13_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m13_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m13_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m13_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m13_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m13_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m13_couplers_WVALID),
        .s_axi_araddr(m13_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m13_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m13_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m13_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m13_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m13_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m13_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m13_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m13_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m13_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m13_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m13_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m13_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m13_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m13_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m13_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m13_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m13_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m13_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m13_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m13_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m13_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m13_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m13_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m13_couplers_to_auto_pc_BID),
        .s_axi_bready(m13_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m13_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m13_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m13_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m13_couplers_to_auto_pc_RID),
        .s_axi_rlast(m13_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m13_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m13_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m13_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m13_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m13_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m13_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m13_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m13_couplers_to_auto_pc_WVALID));
endmodule

module mb_0_local_memory_imp_N3WR47
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    LMB_M_abus,
    LMB_M_addrstrobe,
    LMB_M_be,
    LMB_M_ce,
    LMB_M_readdbus,
    LMB_M_readstrobe,
    LMB_M_ready,
    LMB_M_ue,
    LMB_M_wait,
    LMB_M_writedbus,
    LMB_M_writestrobe,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input [0:31]LMB_M_abus;
  input LMB_M_addrstrobe;
  input [0:3]LMB_M_be;
  output LMB_M_ce;
  output [0:31]LMB_M_readdbus;
  input LMB_M_readstrobe;
  output LMB_M_ready;
  output LMB_M_ue;
  output LMB_M_wait;
  input [0:31]LMB_M_writedbus;
  input LMB_M_writestrobe;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;
  wire [0:31]microblaze_0_lmb_ABUS;
  wire microblaze_0_lmb_ADDRSTROBE;
  wire [0:3]microblaze_0_lmb_BE;
  wire microblaze_0_lmb_CE;
  wire [0:31]microblaze_0_lmb_READDBUS;
  wire microblaze_0_lmb_READSTROBE;
  wire microblaze_0_lmb_READY;
  wire microblaze_0_lmb_UE;
  wire microblaze_0_lmb_WAIT;
  wire [0:31]microblaze_0_lmb_WRITEDBUS;
  wire microblaze_0_lmb_WRITESTROBE;
  wire [0:31]microblaze_0_lmb_bus_ABUS;
  wire microblaze_0_lmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_lmb_bus_BE;
  wire microblaze_0_lmb_bus_CE;
  wire [0:31]microblaze_0_lmb_bus_READDBUS;
  wire microblaze_0_lmb_bus_READSTROBE;
  wire microblaze_0_lmb_bus_READY;
  wire microblaze_0_lmb_bus_UE;
  wire microblaze_0_lmb_bus_WAIT;
  wire [0:31]microblaze_0_lmb_bus_WRITEDBUS;
  wire microblaze_0_lmb_bus_WRITESTROBE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign LMB_M_ce = microblaze_0_lmb_CE;
  assign LMB_M_readdbus[0:31] = microblaze_0_lmb_READDBUS;
  assign LMB_M_ready = microblaze_0_lmb_READY;
  assign LMB_M_ue = microblaze_0_lmb_UE;
  assign LMB_M_wait = microblaze_0_lmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  assign microblaze_0_lmb_ABUS = LMB_M_abus[0:31];
  assign microblaze_0_lmb_ADDRSTROBE = LMB_M_addrstrobe;
  assign microblaze_0_lmb_BE = LMB_M_be[0:3];
  assign microblaze_0_lmb_READSTROBE = LMB_M_readstrobe;
  assign microblaze_0_lmb_WRITEDBUS = LMB_M_writedbus[0:31];
  assign microblaze_0_lmb_WRITESTROBE = LMB_M_writestrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > mcu mb_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  mcu_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB1_ABus(microblaze_0_lmb_bus_ABUS),
        .LMB1_AddrStrobe(microblaze_0_lmb_bus_ADDRSTROBE),
        .LMB1_BE(microblaze_0_lmb_bus_BE),
        .LMB1_ReadStrobe(microblaze_0_lmb_bus_READSTROBE),
        .LMB1_WriteDBus(microblaze_0_lmb_bus_WRITEDBUS),
        .LMB1_WriteStrobe(microblaze_0_lmb_bus_WRITESTROBE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl1_CE(microblaze_0_lmb_bus_CE),
        .Sl1_DBus(microblaze_0_lmb_bus_READDBUS),
        .Sl1_Ready(microblaze_0_lmb_bus_READY),
        .Sl1_UE(microblaze_0_lmb_bus_UE),
        .Sl1_Wait(microblaze_0_lmb_bus_WAIT),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  mcu_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  mcu_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  mcu_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  mcu_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
  mcu_lmb_v10_0 lmb_v10
       (.LMB_ABus(microblaze_0_lmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_lmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_lmb_bus_BE),
        .LMB_CE(microblaze_0_lmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_lmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_lmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_lmb_READY),
        .LMB_UE(microblaze_0_lmb_UE),
        .LMB_Wait(microblaze_0_lmb_WAIT),
        .LMB_WriteDBus(microblaze_0_lmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_lmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_lmb_ABUS),
        .M_AddrStrobe(microblaze_0_lmb_ADDRSTROBE),
        .M_BE(microblaze_0_lmb_BE),
        .M_DBus(microblaze_0_lmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_lmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_lmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_lmb_bus_CE),
        .Sl_DBus(microblaze_0_lmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_lmb_bus_READY),
        .Sl_UE(microblaze_0_lmb_bus_UE),
        .Sl_Wait(microblaze_0_lmb_bus_WAIT));
endmodule

(* CORE_GENERATION_INFO = "mcu,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mcu,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=73,numReposBlks=53,numNonXlnxBlks=0,numHierBlks=20,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=16,da_board_cnt=8,da_bram_cntlr_cnt=2,da_clkrst_cnt=2,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mcu.hwdef" *) 
module mcu
   (DDR3_SDRAM_addr,
    DDR3_SDRAM_ba,
    DDR3_SDRAM_cas_n,
    DDR3_SDRAM_ck_n,
    DDR3_SDRAM_ck_p,
    DDR3_SDRAM_cke,
    DDR3_SDRAM_cs_n,
    DDR3_SDRAM_dm,
    DDR3_SDRAM_dq,
    DDR3_SDRAM_dqs_n,
    DDR3_SDRAM_dqs_p,
    DDR3_SDRAM_odt,
    DDR3_SDRAM_ras_n,
    DDR3_SDRAM_reset_n,
    DDR3_SDRAM_we_n,
    DDR3_init_calib_complete,
    PLL_int,
    TRX_int,
    board_rotenc_pulse,
    board_rotenc_push,
    board_rotenc_up,
    gpio_rtl_0_MULTI_tri_o,
    gpio_rtl_1_ONEWIRE_addr_out_tri_o,
    gpio_rtl_2_ONEWIRE_data_in_tri_i,
    gpio_rtl_2_ONEWIRE_data_out_tri_o,
    iic_rtl_0_PLL_scl_i,
    iic_rtl_0_PLL_scl_o,
    iic_rtl_0_PLL_scl_t,
    iic_rtl_0_PLL_sda_i,
    iic_rtl_0_PLL_sda_o,
    iic_rtl_0_PLL_sda_t,
    iic_rtl_1_BOARD_scl_i,
    iic_rtl_1_BOARD_scl_o,
    iic_rtl_1_BOARD_scl_t,
    iic_rtl_1_BOARD_sda_i,
    iic_rtl_1_BOARD_sda_o,
    iic_rtl_1_BOARD_sda_t,
    mb_axi_clk_100mhz,
    pll_clk_n,
    pll_clk_p,
    pwm0_lcd_bl,
    reset,
    spi_rtl_0_CONFIG_io0_i,
    spi_rtl_0_CONFIG_io0_o,
    spi_rtl_0_CONFIG_io0_t,
    spi_rtl_0_CONFIG_io1_i,
    spi_rtl_0_CONFIG_io1_o,
    spi_rtl_0_CONFIG_io1_t,
    spi_rtl_0_CONFIG_io2_i,
    spi_rtl_0_CONFIG_io2_o,
    spi_rtl_0_CONFIG_io2_t,
    spi_rtl_0_CONFIG_io3_i,
    spi_rtl_0_CONFIG_io3_o,
    spi_rtl_0_CONFIG_io3_t,
    spi_rtl_0_CONFIG_ss_i,
    spi_rtl_0_CONFIG_ss_o,
    spi_rtl_0_CONFIG_ss_t,
    spi_rtl_1_TRX_io0_i,
    spi_rtl_1_TRX_io0_o,
    spi_rtl_1_TRX_io0_t,
    spi_rtl_1_TRX_io1_i,
    spi_rtl_1_TRX_io1_o,
    spi_rtl_1_TRX_io1_t,
    spi_rtl_1_TRX_sck_i,
    spi_rtl_1_TRX_sck_o,
    spi_rtl_1_TRX_sck_t,
    spi_rtl_1_TRX_ss_i,
    spi_rtl_1_TRX_ss_o,
    spi_rtl_1_TRX_ss_t,
    sys_rst,
    uart_rtl_0_FTDI_baudoutn,
    uart_rtl_0_FTDI_ctsn,
    uart_rtl_0_FTDI_dcdn,
    uart_rtl_0_FTDI_ddis,
    uart_rtl_0_FTDI_dsrn,
    uart_rtl_0_FTDI_dtrn,
    uart_rtl_0_FTDI_out1n,
    uart_rtl_0_FTDI_out2n,
    uart_rtl_0_FTDI_ri,
    uart_rtl_0_FTDI_rtsn,
    uart_rtl_0_FTDI_rxd,
    uart_rtl_0_FTDI_rxrdyn,
    uart_rtl_0_FTDI_txd,
    uart_rtl_0_FTDI_txrdyn,
    ufb_fpga_ft_12mhz,
    ufb_fpga_ft_resetn,
    ufb_trx_rxclk_n,
    ufb_trx_rxclk_p,
    ufb_trx_rxd09_n,
    ufb_trx_rxd09_p,
    ufb_trx_txclk_n,
    ufb_trx_txclk_p,
    ufb_trx_txd_n,
    ufb_trx_txd_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3_SDRAM, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_SDRAM_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM BA" *) output [2:0]DDR3_SDRAM_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CAS_N" *) output DDR3_SDRAM_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CK_N" *) output [0:0]DDR3_SDRAM_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CK_P" *) output [0:0]DDR3_SDRAM_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CKE" *) output [0:0]DDR3_SDRAM_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM CS_N" *) output [0:0]DDR3_SDRAM_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DM" *) output [3:0]DDR3_SDRAM_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DQ" *) inout [31:0]DDR3_SDRAM_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DQS_N" *) inout [3:0]DDR3_SDRAM_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM DQS_P" *) inout [3:0]DDR3_SDRAM_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM ODT" *) output [0:0]DDR3_SDRAM_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM RAS_N" *) output DDR3_SDRAM_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM RESET_N" *) output DDR3_SDRAM_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3_SDRAM WE_N" *) output DDR3_SDRAM_we_n;
  output DDR3_init_calib_complete;
  input [0:0]PLL_int;
  input [0:0]TRX_int;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.BOARD_ROTENC_PULSE CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.BOARD_ROTENC_PULSE, POLARITY ACTIVE_LOW" *) input board_rotenc_pulse;
  input [0:0]board_rotenc_push;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BOARD_ROTENC_UP DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BOARD_ROTENC_UP, LAYERED_METADATA undef" *) input board_rotenc_up;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_0_MULTI TRI_O" *) output [7:0]gpio_rtl_0_MULTI_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_1_ONEWIRE_addr_out " *) output [14:0]gpio_rtl_1_ONEWIRE_addr_out_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_2_ONEWIRE_data_in " *) input [7:0]gpio_rtl_2_ONEWIRE_data_in_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_2_ONEWIRE_data_out " *) output [15:0]gpio_rtl_2_ONEWIRE_data_out_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0_PLL SCL_I" *) input iic_rtl_0_PLL_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0_PLL SCL_O" *) output iic_rtl_0_PLL_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0_PLL SCL_T" *) output iic_rtl_0_PLL_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0_PLL SDA_I" *) input iic_rtl_0_PLL_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0_PLL SDA_O" *) output iic_rtl_0_PLL_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_0_PLL SDA_T" *) output iic_rtl_0_PLL_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1_BOARD SCL_I" *) input iic_rtl_1_BOARD_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1_BOARD SCL_O" *) output iic_rtl_1_BOARD_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1_BOARD SCL_T" *) output iic_rtl_1_BOARD_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1_BOARD SDA_I" *) input iic_rtl_1_BOARD_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1_BOARD SDA_O" *) output iic_rtl_1_BOARD_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl_1_BOARD SDA_T" *) output iic_rtl_1_BOARD_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MB_AXI_CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MB_AXI_CLK_100MHZ, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0" *) output mb_axi_clk_100mhz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PLL_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PLL_CLK_N, CLK_DOMAIN mcu_pll_clk_n, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000" *) input pll_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PLL_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PLL_CLK_P, ASSOCIATED_RESET sys_rst, CLK_DOMAIN mcu_pll_clk_p, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000" *) input pll_clk_p;
  output pwm0_lcd_bl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO0_I" *) input spi_rtl_0_CONFIG_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO0_O" *) output spi_rtl_0_CONFIG_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO0_T" *) output spi_rtl_0_CONFIG_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO1_I" *) input spi_rtl_0_CONFIG_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO1_O" *) output spi_rtl_0_CONFIG_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO1_T" *) output spi_rtl_0_CONFIG_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO2_I" *) input spi_rtl_0_CONFIG_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO2_O" *) output spi_rtl_0_CONFIG_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO2_T" *) output spi_rtl_0_CONFIG_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO3_I" *) input spi_rtl_0_CONFIG_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO3_O" *) output spi_rtl_0_CONFIG_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG IO3_T" *) output spi_rtl_0_CONFIG_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG SS_I" *) input [0:0]spi_rtl_0_CONFIG_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG SS_O" *) output [0:0]spi_rtl_0_CONFIG_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_0_CONFIG SS_T" *) output spi_rtl_0_CONFIG_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX IO0_I" *) input spi_rtl_1_TRX_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX IO0_O" *) output spi_rtl_1_TRX_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX IO0_T" *) output spi_rtl_1_TRX_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX IO1_I" *) input spi_rtl_1_TRX_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX IO1_O" *) output spi_rtl_1_TRX_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX IO1_T" *) output spi_rtl_1_TRX_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX SCK_I" *) input spi_rtl_1_TRX_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX SCK_O" *) output spi_rtl_1_TRX_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX SCK_T" *) output spi_rtl_1_TRX_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX SS_I" *) input [0:0]spi_rtl_1_TRX_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX SS_O" *) output [0:0]spi_rtl_1_TRX_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_rtl_1_TRX SS_T" *) output spi_rtl_1_TRX_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI BAUDOUTn" *) output uart_rtl_0_FTDI_baudoutn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI CTSn" *) input uart_rtl_0_FTDI_ctsn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI DCDn" *) input uart_rtl_0_FTDI_dcdn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI DDIS" *) output uart_rtl_0_FTDI_ddis;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI DSRn" *) input uart_rtl_0_FTDI_dsrn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI DTRn" *) output uart_rtl_0_FTDI_dtrn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI OUT1n" *) output uart_rtl_0_FTDI_out1n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI OUT2n" *) output uart_rtl_0_FTDI_out2n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI RI" *) input uart_rtl_0_FTDI_ri;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI RTSn" *) output uart_rtl_0_FTDI_rtsn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI RxD" *) input uart_rtl_0_FTDI_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI RXRDYn" *) output uart_rtl_0_FTDI_rxrdyn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI TxD" *) output uart_rtl_0_FTDI_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart_rtl_0_FTDI TXRDYn" *) output uart_rtl_0_FTDI_txrdyn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UFB_FPGA_FT_12MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UFB_FPGA_FT_12MHZ, CLK_DOMAIN /clk_12mhz_FTDI_clk_out1, FREQ_HZ 12000000, INSERT_VIP 0, PHASE 0.0" *) output ufb_fpga_ft_12mhz;
  output ufb_fpga_ft_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UFB_TRX_RXCLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UFB_TRX_RXCLK_N, CLK_DOMAIN mcu_ufb_trx_rxclk_n, FREQ_HZ 32000000, INSERT_VIP 0, PHASE 0.000" *) input ufb_trx_rxclk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UFB_TRX_RXCLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UFB_TRX_RXCLK_P, CLK_DOMAIN mcu_ufb_trx_rxclk_p, FREQ_HZ 32000000, INSERT_VIP 0, PHASE 0.000" *) input ufb_trx_rxclk_p;
  input [0:0]ufb_trx_rxd09_n;
  input [0:0]ufb_trx_rxd09_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UFB_TRX_TXCLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UFB_TRX_TXCLK_N, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output ufb_trx_txclk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.UFB_TRX_TXCLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.UFB_TRX_TXCLK_P, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) output ufb_trx_txclk_p;
  output [0:0]ufb_trx_txd_n;
  output [0:0]ufb_trx_txd_p;

  wire [7:0]CDC_LVDS_in_data;
  wire [7:0]CDC_LVDS_in_qdpo;
  wire [7:0]CDC_LVDS_out_data;
  wire [7:0]CDC_LVDS_out_qdpo;
  wire [0:0]PLL_iic2intc_irpt;
  wire [0:0]TRX_iic2intc_irpt;
  wire [7:0]axi_gpio_0_GPIO_TRI_O;
  wire [14:0]axi_gpio_1_ONEWIRE_addr_out_TRI_O;
  wire [7:0]axi_gpio_2_ONEWIRE_data_in_TRI_I;
  wire [15:0]axi_gpio_2_ONEWIRE_data_out_TRI_O;
  wire axi_gpio_2_ONEWIRE_ip2intc_irpt;
  wire axi_gpio_3_ROTENC_ip2intc_irpt;
  wire [0:0]axi_gpio_3_ROTENC_push;
  wire axi_iic_0_IIC1_SCL_I;
  wire axi_iic_0_IIC1_SCL_O;
  wire axi_iic_0_IIC1_SCL_T;
  wire axi_iic_0_IIC1_SDA_I;
  wire axi_iic_0_IIC1_SDA_O;
  wire axi_iic_0_IIC1_SDA_T;
  wire axi_iic_0_IIC_SCL_I;
  wire axi_iic_0_IIC_SCL_O;
  wire axi_iic_0_IIC_SCL_T;
  wire axi_iic_0_IIC_SDA_I;
  wire axi_iic_0_IIC_SDA_O;
  wire axi_iic_0_IIC_SDA_T;
  wire axi_iic_0_PLL_iic2intc_irpt;
  wire axi_iic_1_BOARD_iic2intc_irpt;
  wire axi_quad_spi_0_CONFIG_ip2intc_irpt;
  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_1_SPI_0_IO0_I;
  wire axi_quad_spi_1_SPI_0_IO0_O;
  wire axi_quad_spi_1_SPI_0_IO0_T;
  wire axi_quad_spi_1_SPI_0_IO1_I;
  wire axi_quad_spi_1_SPI_0_IO1_O;
  wire axi_quad_spi_1_SPI_0_IO1_T;
  wire axi_quad_spi_1_SPI_0_SCK_I;
  wire axi_quad_spi_1_SPI_0_SCK_O;
  wire axi_quad_spi_1_SPI_0_SCK_T;
  wire [0:0]axi_quad_spi_1_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_1_SPI_0_SS_O;
  wire axi_quad_spi_1_SPI_0_SS_T;
  wire axi_quad_spi_1_TRX_ip2intc_irpt;
  wire axi_timer_0_LCD_pwm0;
  wire axi_timer_0_irpt;
  wire axi_uart16550_0_FTDI_ip2intc_irpt;
  wire axi_uart16550_0_UART_BAUDOUTn;
  wire axi_uart16550_0_UART_CTSn;
  wire axi_uart16550_0_UART_DCDn;
  wire axi_uart16550_0_UART_DDIS;
  wire axi_uart16550_0_UART_DSRn;
  wire axi_uart16550_0_UART_DTRn;
  wire axi_uart16550_0_UART_OUT1n;
  wire axi_uart16550_0_UART_OUT2n;
  wire axi_uart16550_0_UART_RI;
  wire axi_uart16550_0_UART_RTSn;
  wire axi_uart16550_0_UART_RXRDYn;
  wire axi_uart16550_0_UART_RxD;
  wire axi_uart16550_0_UART_TXRDYn;
  wire axi_uart16550_0_UART_TxD;
  wire c_accum_0_ROTENC_ADD;
  wire [31:0]c_accum_0_ROTENC_Q;
  wire [0:0]c_counter_binary_0_LVDS_reset_Q;
  wire clk_12mhz_FTDI_clk;
  wire clk_12mhz_FTDI_locked;
  wire clk_32mhz_LVDS_clk;
  wire clk_32mhz_LVDS_clk_div_8;
  wire clk_32mhz_LVDS_locked;
  wire [0:0]\^clk_32mhz_LVDS_locked_inv ;
  wire [0:0]clk_32mhz_LVDS_locked_inv_sr_Q;
  wire [0:31]mb_0_DLMB_ABUS;
  wire mb_0_DLMB_ADDRSTROBE;
  wire [0:3]mb_0_DLMB_BE;
  wire mb_0_DLMB_CE;
  wire [0:31]mb_0_DLMB_READDBUS;
  wire mb_0_DLMB_READSTROBE;
  wire mb_0_DLMB_READY;
  wire mb_0_DLMB_UE;
  wire mb_0_DLMB_WAIT;
  wire [0:31]mb_0_DLMB_WRITEDBUS;
  wire mb_0_DLMB_WRITESTROBE;
  wire [0:31]mb_0_ILMB_ABUS;
  wire mb_0_ILMB_ADDRSTROBE;
  wire mb_0_ILMB_CE;
  wire [0:31]mb_0_ILMB_READDBUS;
  wire mb_0_ILMB_READSTROBE;
  wire mb_0_ILMB_READY;
  wire mb_0_ILMB_UE;
  wire mb_0_ILMB_WAIT;
  wire [0:1]mb_0_INTERRUPT_ACK;
  wire [31:0]mb_0_INTERRUPT_ADDRESS;
  wire mb_0_INTERRUPT_INTERRUPT;
  wire [31:0]mb_0_M_AXI_DC_ARADDR;
  wire [1:0]mb_0_M_AXI_DC_ARBURST;
  wire [3:0]mb_0_M_AXI_DC_ARCACHE;
  wire [0:0]mb_0_M_AXI_DC_ARID;
  wire [7:0]mb_0_M_AXI_DC_ARLEN;
  wire mb_0_M_AXI_DC_ARLOCK;
  wire [2:0]mb_0_M_AXI_DC_ARPROT;
  wire [3:0]mb_0_M_AXI_DC_ARQOS;
  wire [0:0]mb_0_M_AXI_DC_ARREADY;
  wire [2:0]mb_0_M_AXI_DC_ARSIZE;
  wire mb_0_M_AXI_DC_ARVALID;
  wire [31:0]mb_0_M_AXI_DC_AWADDR;
  wire [1:0]mb_0_M_AXI_DC_AWBURST;
  wire [3:0]mb_0_M_AXI_DC_AWCACHE;
  wire [0:0]mb_0_M_AXI_DC_AWID;
  wire [7:0]mb_0_M_AXI_DC_AWLEN;
  wire mb_0_M_AXI_DC_AWLOCK;
  wire [2:0]mb_0_M_AXI_DC_AWPROT;
  wire [3:0]mb_0_M_AXI_DC_AWQOS;
  wire [0:0]mb_0_M_AXI_DC_AWREADY;
  wire [2:0]mb_0_M_AXI_DC_AWSIZE;
  wire mb_0_M_AXI_DC_AWVALID;
  wire [1:0]mb_0_M_AXI_DC_BID;
  wire mb_0_M_AXI_DC_BREADY;
  wire [1:0]mb_0_M_AXI_DC_BRESP;
  wire [0:0]mb_0_M_AXI_DC_BVALID;
  wire [31:0]mb_0_M_AXI_DC_RDATA;
  wire [1:0]mb_0_M_AXI_DC_RID;
  wire [0:0]mb_0_M_AXI_DC_RLAST;
  wire mb_0_M_AXI_DC_RREADY;
  wire [1:0]mb_0_M_AXI_DC_RRESP;
  wire [0:0]mb_0_M_AXI_DC_RVALID;
  wire [31:0]mb_0_M_AXI_DC_WDATA;
  wire mb_0_M_AXI_DC_WLAST;
  wire [0:0]mb_0_M_AXI_DC_WREADY;
  wire [3:0]mb_0_M_AXI_DC_WSTRB;
  wire mb_0_M_AXI_DC_WVALID;
  wire [31:0]mb_0_M_AXI_DP_ARADDR;
  wire [2:0]mb_0_M_AXI_DP_ARPROT;
  wire mb_0_M_AXI_DP_ARREADY;
  wire mb_0_M_AXI_DP_ARVALID;
  wire [31:0]mb_0_M_AXI_DP_AWADDR;
  wire [2:0]mb_0_M_AXI_DP_AWPROT;
  wire mb_0_M_AXI_DP_AWREADY;
  wire mb_0_M_AXI_DP_AWVALID;
  wire mb_0_M_AXI_DP_BREADY;
  wire [1:0]mb_0_M_AXI_DP_BRESP;
  wire mb_0_M_AXI_DP_BVALID;
  wire [31:0]mb_0_M_AXI_DP_RDATA;
  wire mb_0_M_AXI_DP_RREADY;
  wire [1:0]mb_0_M_AXI_DP_RRESP;
  wire mb_0_M_AXI_DP_RVALID;
  wire [31:0]mb_0_M_AXI_DP_WDATA;
  wire mb_0_M_AXI_DP_WREADY;
  wire [3:0]mb_0_M_AXI_DP_WSTRB;
  wire mb_0_M_AXI_DP_WVALID;
  wire [31:0]mb_0_M_AXI_IC_ARADDR;
  wire [1:0]mb_0_M_AXI_IC_ARBURST;
  wire [3:0]mb_0_M_AXI_IC_ARCACHE;
  wire [0:0]mb_0_M_AXI_IC_ARID;
  wire [7:0]mb_0_M_AXI_IC_ARLEN;
  wire mb_0_M_AXI_IC_ARLOCK;
  wire [2:0]mb_0_M_AXI_IC_ARPROT;
  wire [3:0]mb_0_M_AXI_IC_ARQOS;
  wire [0:0]mb_0_M_AXI_IC_ARREADY;
  wire [2:0]mb_0_M_AXI_IC_ARSIZE;
  wire mb_0_M_AXI_IC_ARVALID;
  wire [31:0]mb_0_M_AXI_IC_AWADDR;
  wire [1:0]mb_0_M_AXI_IC_AWBURST;
  wire [3:0]mb_0_M_AXI_IC_AWCACHE;
  wire [0:0]mb_0_M_AXI_IC_AWID;
  wire [7:0]mb_0_M_AXI_IC_AWLEN;
  wire mb_0_M_AXI_IC_AWLOCK;
  wire [2:0]mb_0_M_AXI_IC_AWPROT;
  wire [3:0]mb_0_M_AXI_IC_AWQOS;
  wire [0:0]mb_0_M_AXI_IC_AWREADY;
  wire [2:0]mb_0_M_AXI_IC_AWSIZE;
  wire mb_0_M_AXI_IC_AWVALID;
  wire [1:0]mb_0_M_AXI_IC_BID;
  wire mb_0_M_AXI_IC_BREADY;
  wire [1:0]mb_0_M_AXI_IC_BRESP;
  wire [0:0]mb_0_M_AXI_IC_BVALID;
  wire [31:0]mb_0_M_AXI_IC_RDATA;
  wire [1:0]mb_0_M_AXI_IC_RID;
  wire [0:0]mb_0_M_AXI_IC_RLAST;
  wire mb_0_M_AXI_IC_RREADY;
  wire [1:0]mb_0_M_AXI_IC_RRESP;
  wire [0:0]mb_0_M_AXI_IC_RVALID;
  wire [31:0]mb_0_M_AXI_IC_WDATA;
  wire mb_0_M_AXI_IC_WLAST;
  wire [0:0]mb_0_M_AXI_IC_WREADY;
  wire [3:0]mb_0_M_AXI_IC_WSTRB;
  wire mb_0_M_AXI_IC_WVALID;
  wire [31:0]mb_0_axi_interconnect_M00_AXI_ARADDR;
  wire mb_0_axi_interconnect_M00_AXI_ARREADY;
  wire mb_0_axi_interconnect_M00_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M00_AXI_AWADDR;
  wire mb_0_axi_interconnect_M00_AXI_AWREADY;
  wire mb_0_axi_interconnect_M00_AXI_AWVALID;
  wire mb_0_axi_interconnect_M00_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M00_AXI_BRESP;
  wire mb_0_axi_interconnect_M00_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M00_AXI_RDATA;
  wire mb_0_axi_interconnect_M00_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M00_AXI_RRESP;
  wire mb_0_axi_interconnect_M00_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M00_AXI_WDATA;
  wire mb_0_axi_interconnect_M00_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M00_AXI_WSTRB;
  wire mb_0_axi_interconnect_M00_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M01_AXI_ARADDR;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_ARBURST;
  wire [3:0]mb_0_axi_interconnect_M01_AXI_ARCACHE;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_ARID;
  wire [7:0]mb_0_axi_interconnect_M01_AXI_ARLEN;
  wire mb_0_axi_interconnect_M01_AXI_ARLOCK;
  wire [2:0]mb_0_axi_interconnect_M01_AXI_ARPROT;
  wire [3:0]mb_0_axi_interconnect_M01_AXI_ARQOS;
  wire mb_0_axi_interconnect_M01_AXI_ARREADY;
  wire [2:0]mb_0_axi_interconnect_M01_AXI_ARSIZE;
  wire mb_0_axi_interconnect_M01_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M01_AXI_AWADDR;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_AWBURST;
  wire [3:0]mb_0_axi_interconnect_M01_AXI_AWCACHE;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_AWID;
  wire [7:0]mb_0_axi_interconnect_M01_AXI_AWLEN;
  wire mb_0_axi_interconnect_M01_AXI_AWLOCK;
  wire [2:0]mb_0_axi_interconnect_M01_AXI_AWPROT;
  wire [3:0]mb_0_axi_interconnect_M01_AXI_AWQOS;
  wire mb_0_axi_interconnect_M01_AXI_AWREADY;
  wire [2:0]mb_0_axi_interconnect_M01_AXI_AWSIZE;
  wire mb_0_axi_interconnect_M01_AXI_AWVALID;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_BID;
  wire mb_0_axi_interconnect_M01_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_BRESP;
  wire mb_0_axi_interconnect_M01_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M01_AXI_RDATA;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_RID;
  wire mb_0_axi_interconnect_M01_AXI_RLAST;
  wire mb_0_axi_interconnect_M01_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M01_AXI_RRESP;
  wire mb_0_axi_interconnect_M01_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M01_AXI_WDATA;
  wire mb_0_axi_interconnect_M01_AXI_WLAST;
  wire mb_0_axi_interconnect_M01_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M01_AXI_WSTRB;
  wire mb_0_axi_interconnect_M01_AXI_WVALID;
  wire [12:0]mb_0_axi_interconnect_M02_AXI_ARADDR;
  wire mb_0_axi_interconnect_M02_AXI_ARREADY;
  wire mb_0_axi_interconnect_M02_AXI_ARVALID;
  wire [12:0]mb_0_axi_interconnect_M02_AXI_AWADDR;
  wire mb_0_axi_interconnect_M02_AXI_AWREADY;
  wire mb_0_axi_interconnect_M02_AXI_AWVALID;
  wire mb_0_axi_interconnect_M02_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M02_AXI_BRESP;
  wire mb_0_axi_interconnect_M02_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M02_AXI_RDATA;
  wire mb_0_axi_interconnect_M02_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M02_AXI_RRESP;
  wire mb_0_axi_interconnect_M02_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M02_AXI_WDATA;
  wire mb_0_axi_interconnect_M02_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M02_AXI_WSTRB;
  wire mb_0_axi_interconnect_M02_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M03_AXI_ARADDR;
  wire mb_0_axi_interconnect_M03_AXI_ARREADY;
  wire mb_0_axi_interconnect_M03_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M03_AXI_AWADDR;
  wire mb_0_axi_interconnect_M03_AXI_AWREADY;
  wire mb_0_axi_interconnect_M03_AXI_AWVALID;
  wire mb_0_axi_interconnect_M03_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M03_AXI_BRESP;
  wire mb_0_axi_interconnect_M03_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M03_AXI_RDATA;
  wire mb_0_axi_interconnect_M03_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M03_AXI_RRESP;
  wire mb_0_axi_interconnect_M03_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M03_AXI_WDATA;
  wire mb_0_axi_interconnect_M03_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M03_AXI_WSTRB;
  wire mb_0_axi_interconnect_M03_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M04_AXI_ARADDR;
  wire mb_0_axi_interconnect_M04_AXI_ARREADY;
  wire mb_0_axi_interconnect_M04_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M04_AXI_AWADDR;
  wire mb_0_axi_interconnect_M04_AXI_AWREADY;
  wire mb_0_axi_interconnect_M04_AXI_AWVALID;
  wire mb_0_axi_interconnect_M04_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M04_AXI_BRESP;
  wire mb_0_axi_interconnect_M04_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M04_AXI_RDATA;
  wire mb_0_axi_interconnect_M04_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M04_AXI_RRESP;
  wire mb_0_axi_interconnect_M04_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M04_AXI_WDATA;
  wire mb_0_axi_interconnect_M04_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M04_AXI_WSTRB;
  wire mb_0_axi_interconnect_M04_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M05_AXI_ARADDR;
  wire mb_0_axi_interconnect_M05_AXI_ARREADY;
  wire mb_0_axi_interconnect_M05_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M05_AXI_AWADDR;
  wire mb_0_axi_interconnect_M05_AXI_AWREADY;
  wire mb_0_axi_interconnect_M05_AXI_AWVALID;
  wire mb_0_axi_interconnect_M05_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M05_AXI_BRESP;
  wire mb_0_axi_interconnect_M05_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M05_AXI_RDATA;
  wire mb_0_axi_interconnect_M05_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M05_AXI_RRESP;
  wire mb_0_axi_interconnect_M05_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M05_AXI_WDATA;
  wire mb_0_axi_interconnect_M05_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M05_AXI_WSTRB;
  wire mb_0_axi_interconnect_M05_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M06_AXI_ARADDR;
  wire mb_0_axi_interconnect_M06_AXI_ARREADY;
  wire mb_0_axi_interconnect_M06_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M06_AXI_AWADDR;
  wire mb_0_axi_interconnect_M06_AXI_AWREADY;
  wire mb_0_axi_interconnect_M06_AXI_AWVALID;
  wire mb_0_axi_interconnect_M06_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M06_AXI_BRESP;
  wire mb_0_axi_interconnect_M06_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M06_AXI_RDATA;
  wire mb_0_axi_interconnect_M06_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M06_AXI_RRESP;
  wire mb_0_axi_interconnect_M06_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M06_AXI_WDATA;
  wire mb_0_axi_interconnect_M06_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M06_AXI_WSTRB;
  wire mb_0_axi_interconnect_M06_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M07_AXI_ARADDR;
  wire mb_0_axi_interconnect_M07_AXI_ARREADY;
  wire mb_0_axi_interconnect_M07_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M07_AXI_AWADDR;
  wire mb_0_axi_interconnect_M07_AXI_AWREADY;
  wire mb_0_axi_interconnect_M07_AXI_AWVALID;
  wire mb_0_axi_interconnect_M07_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M07_AXI_BRESP;
  wire mb_0_axi_interconnect_M07_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M07_AXI_RDATA;
  wire mb_0_axi_interconnect_M07_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M07_AXI_RRESP;
  wire mb_0_axi_interconnect_M07_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M07_AXI_WDATA;
  wire mb_0_axi_interconnect_M07_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M07_AXI_WSTRB;
  wire mb_0_axi_interconnect_M07_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M08_AXI_ARADDR;
  wire mb_0_axi_interconnect_M08_AXI_ARREADY;
  wire mb_0_axi_interconnect_M08_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M08_AXI_AWADDR;
  wire mb_0_axi_interconnect_M08_AXI_AWREADY;
  wire mb_0_axi_interconnect_M08_AXI_AWVALID;
  wire mb_0_axi_interconnect_M08_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M08_AXI_BRESP;
  wire mb_0_axi_interconnect_M08_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M08_AXI_RDATA;
  wire mb_0_axi_interconnect_M08_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M08_AXI_RRESP;
  wire mb_0_axi_interconnect_M08_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M08_AXI_WDATA;
  wire mb_0_axi_interconnect_M08_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M08_AXI_WSTRB;
  wire mb_0_axi_interconnect_M08_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M09_AXI_ARADDR;
  wire mb_0_axi_interconnect_M09_AXI_ARREADY;
  wire mb_0_axi_interconnect_M09_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M09_AXI_AWADDR;
  wire mb_0_axi_interconnect_M09_AXI_AWREADY;
  wire mb_0_axi_interconnect_M09_AXI_AWVALID;
  wire mb_0_axi_interconnect_M09_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M09_AXI_BRESP;
  wire mb_0_axi_interconnect_M09_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M09_AXI_RDATA;
  wire mb_0_axi_interconnect_M09_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M09_AXI_RRESP;
  wire mb_0_axi_interconnect_M09_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M09_AXI_WDATA;
  wire mb_0_axi_interconnect_M09_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M09_AXI_WSTRB;
  wire mb_0_axi_interconnect_M09_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M10_AXI_ARADDR;
  wire mb_0_axi_interconnect_M10_AXI_ARREADY;
  wire mb_0_axi_interconnect_M10_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M10_AXI_AWADDR;
  wire mb_0_axi_interconnect_M10_AXI_AWREADY;
  wire mb_0_axi_interconnect_M10_AXI_AWVALID;
  wire mb_0_axi_interconnect_M10_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M10_AXI_BRESP;
  wire mb_0_axi_interconnect_M10_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M10_AXI_RDATA;
  wire mb_0_axi_interconnect_M10_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M10_AXI_RRESP;
  wire mb_0_axi_interconnect_M10_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M10_AXI_WDATA;
  wire mb_0_axi_interconnect_M10_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M10_AXI_WSTRB;
  wire mb_0_axi_interconnect_M10_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M11_AXI_ARADDR;
  wire mb_0_axi_interconnect_M11_AXI_ARREADY;
  wire mb_0_axi_interconnect_M11_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M11_AXI_AWADDR;
  wire mb_0_axi_interconnect_M11_AXI_AWREADY;
  wire mb_0_axi_interconnect_M11_AXI_AWVALID;
  wire mb_0_axi_interconnect_M11_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M11_AXI_BRESP;
  wire mb_0_axi_interconnect_M11_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M11_AXI_RDATA;
  wire mb_0_axi_interconnect_M11_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M11_AXI_RRESP;
  wire mb_0_axi_interconnect_M11_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M11_AXI_WDATA;
  wire mb_0_axi_interconnect_M11_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M11_AXI_WSTRB;
  wire mb_0_axi_interconnect_M11_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M12_AXI_ARADDR;
  wire mb_0_axi_interconnect_M12_AXI_ARREADY;
  wire mb_0_axi_interconnect_M12_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M12_AXI_AWADDR;
  wire mb_0_axi_interconnect_M12_AXI_AWREADY;
  wire mb_0_axi_interconnect_M12_AXI_AWVALID;
  wire mb_0_axi_interconnect_M12_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M12_AXI_BRESP;
  wire mb_0_axi_interconnect_M12_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M12_AXI_RDATA;
  wire mb_0_axi_interconnect_M12_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M12_AXI_RRESP;
  wire mb_0_axi_interconnect_M12_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M12_AXI_WDATA;
  wire mb_0_axi_interconnect_M12_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M12_AXI_WSTRB;
  wire mb_0_axi_interconnect_M12_AXI_WVALID;
  wire [31:0]mb_0_axi_interconnect_M13_AXI_ARADDR;
  wire mb_0_axi_interconnect_M13_AXI_ARREADY;
  wire mb_0_axi_interconnect_M13_AXI_ARVALID;
  wire [31:0]mb_0_axi_interconnect_M13_AXI_AWADDR;
  wire mb_0_axi_interconnect_M13_AXI_AWREADY;
  wire mb_0_axi_interconnect_M13_AXI_AWVALID;
  wire mb_0_axi_interconnect_M13_AXI_BREADY;
  wire [1:0]mb_0_axi_interconnect_M13_AXI_BRESP;
  wire mb_0_axi_interconnect_M13_AXI_BVALID;
  wire [31:0]mb_0_axi_interconnect_M13_AXI_RDATA;
  wire mb_0_axi_interconnect_M13_AXI_RREADY;
  wire [1:0]mb_0_axi_interconnect_M13_AXI_RRESP;
  wire mb_0_axi_interconnect_M13_AXI_RVALID;
  wire [31:0]mb_0_axi_interconnect_M13_AXI_WDATA;
  wire mb_0_axi_interconnect_M13_AXI_WREADY;
  wire [3:0]mb_0_axi_interconnect_M13_AXI_WSTRB;
  wire mb_0_axi_interconnect_M13_AXI_WVALID;
  wire mb_0_clk;
  wire [10:0]mb_0_intr_in;
  wire mb_0_mdm_Debug_SYS_Rst;
  wire mb_0_mdm_Interrupt;
  wire [0:31]mb_0_mdm_LMB_0_ABUS;
  wire mb_0_mdm_LMB_0_ADDRSTROBE;
  wire [0:3]mb_0_mdm_LMB_0_BE;
  wire mb_0_mdm_LMB_0_CE;
  wire [0:31]mb_0_mdm_LMB_0_READDBUS;
  wire mb_0_mdm_LMB_0_READSTROBE;
  wire mb_0_mdm_LMB_0_READY;
  wire mb_0_mdm_LMB_0_UE;
  wire mb_0_mdm_LMB_0_WAIT;
  wire [0:31]mb_0_mdm_LMB_0_WRITEDBUS;
  wire mb_0_mdm_LMB_0_WRITESTROBE;
  wire mb_0_mdm_MDEBUG_0_CAPTURE;
  wire mb_0_mdm_MDEBUG_0_CLK;
  wire mb_0_mdm_MDEBUG_0_DISABLE;
  wire [0:7]mb_0_mdm_MDEBUG_0_REG_EN;
  wire mb_0_mdm_MDEBUG_0_RST;
  wire mb_0_mdm_MDEBUG_0_SHIFT;
  wire mb_0_mdm_MDEBUG_0_TDI;
  wire mb_0_mdm_MDEBUG_0_TDO;
  wire [0:7]mb_0_mdm_MDEBUG_0_TRIG_ACK_IN;
  wire [0:7]mb_0_mdm_MDEBUG_0_TRIG_ACK_OUT;
  wire [0:7]mb_0_mdm_MDEBUG_0_TRIG_IN;
  wire [0:7]mb_0_mdm_MDEBUG_0_TRIG_OUT;
  wire mb_0_mdm_MDEBUG_0_UPDATE;
  wire [31:0]mb_0_mdm_M_AXI_ARADDR;
  wire [1:0]mb_0_mdm_M_AXI_ARBURST;
  wire [3:0]mb_0_mdm_M_AXI_ARCACHE;
  wire [0:0]mb_0_mdm_M_AXI_ARID;
  wire [7:0]mb_0_mdm_M_AXI_ARLEN;
  wire mb_0_mdm_M_AXI_ARLOCK;
  wire [2:0]mb_0_mdm_M_AXI_ARPROT;
  wire [3:0]mb_0_mdm_M_AXI_ARQOS;
  wire [0:0]mb_0_mdm_M_AXI_ARREADY;
  wire [2:0]mb_0_mdm_M_AXI_ARSIZE;
  wire mb_0_mdm_M_AXI_ARVALID;
  wire [31:0]mb_0_mdm_M_AXI_AWADDR;
  wire [1:0]mb_0_mdm_M_AXI_AWBURST;
  wire [3:0]mb_0_mdm_M_AXI_AWCACHE;
  wire [0:0]mb_0_mdm_M_AXI_AWID;
  wire [7:0]mb_0_mdm_M_AXI_AWLEN;
  wire mb_0_mdm_M_AXI_AWLOCK;
  wire [2:0]mb_0_mdm_M_AXI_AWPROT;
  wire [3:0]mb_0_mdm_M_AXI_AWQOS;
  wire [0:0]mb_0_mdm_M_AXI_AWREADY;
  wire [2:0]mb_0_mdm_M_AXI_AWSIZE;
  wire mb_0_mdm_M_AXI_AWVALID;
  wire [1:0]mb_0_mdm_M_AXI_BID;
  wire mb_0_mdm_M_AXI_BREADY;
  wire [1:0]mb_0_mdm_M_AXI_BRESP;
  wire [0:0]mb_0_mdm_M_AXI_BVALID;
  wire [31:0]mb_0_mdm_M_AXI_RDATA;
  wire [1:0]mb_0_mdm_M_AXI_RID;
  wire [0:0]mb_0_mdm_M_AXI_RLAST;
  wire mb_0_mdm_M_AXI_RREADY;
  wire [1:0]mb_0_mdm_M_AXI_RRESP;
  wire [0:0]mb_0_mdm_M_AXI_RVALID;
  wire [31:0]mb_0_mdm_M_AXI_WDATA;
  wire mb_0_mdm_M_AXI_WLAST;
  wire [0:0]mb_0_mdm_M_AXI_WREADY;
  wire [3:0]mb_0_mdm_M_AXI_WSTRB;
  wire mb_0_mdm_M_AXI_WVALID;
  wire mb_0_reset_aux_reset_in;
  wire [0:0]mb_0_reset_bus_struct_reset;
  wire [0:0]mb_0_reset_interconnect_aresetn;
  wire mb_0_reset_mb_reset;
  wire [0:0]mb_0_reset_peripheral_aresetn;
  wire [0:0]mb_0_reset_peripheral_reset;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [3:0]mig_7series_0_DDR3_DM;
  wire [31:0]mig_7series_0_DDR3_DQ;
  wire [3:0]mig_7series_0_DDR3_DQS_N;
  wire [3:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_sys_rst;
  wire mig_7series_0_ui_addn_clk_0;
  wire mig_7series_0_ui_addn_clk_1;
  wire mig_7series_0_ui_addn_clk_3;
  wire mig_7series_0_ui_clk_sync_rst;
  wire pll_clk_n_1;
  wire pll_clk_p_1;
  wire selectio_wiz_lvds_out_clk_to_pins_n;
  wire selectio_wiz_lvds_out_clk_to_pins_p;
  wire [0:0]selectio_wiz_lvds_out_data_out_to_pins_n;
  wire [0:0]selectio_wiz_lvds_out_data_out_to_pins_p;
  wire ufb_trx_rxclk_n_1;
  wire ufb_trx_rxclk_p_1;
  wire [0:0]ufb_trx_rxd09_n_1;
  wire [0:0]ufb_trx_rxd09_p_1;
  wire [31:0]xlconcat_0_dout;
  wire xlconcat_ROTENC_pulse;
  wire [30:0]xlconstant_31bit_val0_dout;
  wire [3:0]xlconstant_val000_dout;
  wire [0:0]xlconstant_val0_dout;
  wire [0:0]xlconstant_val1_dout;

  assign DDR3_SDRAM_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_SDRAM_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_SDRAM_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_SDRAM_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_SDRAM_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_SDRAM_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_SDRAM_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign DDR3_SDRAM_dm[3:0] = mig_7series_0_DDR3_DM;
  assign DDR3_SDRAM_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_SDRAM_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_SDRAM_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_SDRAM_we_n = mig_7series_0_DDR3_WE_N;
  assign DDR3_init_calib_complete = mig_7series_0_init_calib_complete;
  assign PLL_iic2intc_irpt = PLL_int[0];
  assign TRX_iic2intc_irpt = TRX_int[0];
  assign axi_gpio_2_ONEWIRE_data_in_TRI_I = gpio_rtl_2_ONEWIRE_data_in_tri_i[7:0];
  assign axi_gpio_3_ROTENC_push = board_rotenc_push[0];
  assign axi_iic_0_IIC1_SCL_I = iic_rtl_1_BOARD_scl_i;
  assign axi_iic_0_IIC1_SDA_I = iic_rtl_1_BOARD_sda_i;
  assign axi_iic_0_IIC_SCL_I = iic_rtl_0_PLL_scl_i;
  assign axi_iic_0_IIC_SDA_I = iic_rtl_0_PLL_sda_i;
  assign axi_quad_spi_0_SPI_0_IO0_I = spi_rtl_0_CONFIG_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = spi_rtl_0_CONFIG_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = spi_rtl_0_CONFIG_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = spi_rtl_0_CONFIG_io3_i;
  assign axi_quad_spi_0_SPI_0_SS_I = spi_rtl_0_CONFIG_ss_i[0];
  assign axi_quad_spi_1_SPI_0_IO0_I = spi_rtl_1_TRX_io0_i;
  assign axi_quad_spi_1_SPI_0_IO1_I = spi_rtl_1_TRX_io1_i;
  assign axi_quad_spi_1_SPI_0_SCK_I = spi_rtl_1_TRX_sck_i;
  assign axi_quad_spi_1_SPI_0_SS_I = spi_rtl_1_TRX_ss_i[0];
  assign axi_uart16550_0_UART_CTSn = uart_rtl_0_FTDI_ctsn;
  assign axi_uart16550_0_UART_DCDn = uart_rtl_0_FTDI_dcdn;
  assign axi_uart16550_0_UART_DSRn = uart_rtl_0_FTDI_dsrn;
  assign axi_uart16550_0_UART_RI = uart_rtl_0_FTDI_ri;
  assign axi_uart16550_0_UART_RxD = uart_rtl_0_FTDI_rxd;
  assign c_accum_0_ROTENC_ADD = board_rotenc_up;
  assign gpio_rtl_0_MULTI_tri_o[7:0] = axi_gpio_0_GPIO_TRI_O;
  assign gpio_rtl_1_ONEWIRE_addr_out_tri_o[14:0] = axi_gpio_1_ONEWIRE_addr_out_TRI_O;
  assign gpio_rtl_2_ONEWIRE_data_out_tri_o[15:0] = axi_gpio_2_ONEWIRE_data_out_TRI_O;
  assign iic_rtl_0_PLL_scl_o = axi_iic_0_IIC_SCL_O;
  assign iic_rtl_0_PLL_scl_t = axi_iic_0_IIC_SCL_T;
  assign iic_rtl_0_PLL_sda_o = axi_iic_0_IIC_SDA_O;
  assign iic_rtl_0_PLL_sda_t = axi_iic_0_IIC_SDA_T;
  assign iic_rtl_1_BOARD_scl_o = axi_iic_0_IIC1_SCL_O;
  assign iic_rtl_1_BOARD_scl_t = axi_iic_0_IIC1_SCL_T;
  assign iic_rtl_1_BOARD_sda_o = axi_iic_0_IIC1_SDA_O;
  assign iic_rtl_1_BOARD_sda_t = axi_iic_0_IIC1_SDA_T;
  assign mb_0_reset_aux_reset_in = reset;
  assign mb_axi_clk_100mhz = mb_0_clk;
  assign mig_7series_0_sys_rst = sys_rst;
  assign pll_clk_n_1 = pll_clk_n;
  assign pll_clk_p_1 = pll_clk_p;
  assign pwm0_lcd_bl = axi_timer_0_LCD_pwm0;
  assign spi_rtl_0_CONFIG_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign spi_rtl_0_CONFIG_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign spi_rtl_0_CONFIG_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign spi_rtl_0_CONFIG_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign spi_rtl_0_CONFIG_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign spi_rtl_0_CONFIG_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign spi_rtl_0_CONFIG_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign spi_rtl_0_CONFIG_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign spi_rtl_0_CONFIG_ss_o[0] = axi_quad_spi_0_SPI_0_SS_O;
  assign spi_rtl_0_CONFIG_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign spi_rtl_1_TRX_io0_o = axi_quad_spi_1_SPI_0_IO0_O;
  assign spi_rtl_1_TRX_io0_t = axi_quad_spi_1_SPI_0_IO0_T;
  assign spi_rtl_1_TRX_io1_o = axi_quad_spi_1_SPI_0_IO1_O;
  assign spi_rtl_1_TRX_io1_t = axi_quad_spi_1_SPI_0_IO1_T;
  assign spi_rtl_1_TRX_sck_o = axi_quad_spi_1_SPI_0_SCK_O;
  assign spi_rtl_1_TRX_sck_t = axi_quad_spi_1_SPI_0_SCK_T;
  assign spi_rtl_1_TRX_ss_o[0] = axi_quad_spi_1_SPI_0_SS_O;
  assign spi_rtl_1_TRX_ss_t = axi_quad_spi_1_SPI_0_SS_T;
  assign uart_rtl_0_FTDI_baudoutn = axi_uart16550_0_UART_BAUDOUTn;
  assign uart_rtl_0_FTDI_ddis = axi_uart16550_0_UART_DDIS;
  assign uart_rtl_0_FTDI_dtrn = axi_uart16550_0_UART_DTRn;
  assign uart_rtl_0_FTDI_out1n = axi_uart16550_0_UART_OUT1n;
  assign uart_rtl_0_FTDI_out2n = axi_uart16550_0_UART_OUT2n;
  assign uart_rtl_0_FTDI_rtsn = axi_uart16550_0_UART_RTSn;
  assign uart_rtl_0_FTDI_rxrdyn = axi_uart16550_0_UART_RXRDYn;
  assign uart_rtl_0_FTDI_txd = axi_uart16550_0_UART_TxD;
  assign uart_rtl_0_FTDI_txrdyn = axi_uart16550_0_UART_TXRDYn;
  assign ufb_fpga_ft_12mhz = clk_12mhz_FTDI_clk;
  assign ufb_fpga_ft_resetn = clk_12mhz_FTDI_locked;
  assign ufb_trx_rxclk_n_1 = ufb_trx_rxclk_n;
  assign ufb_trx_rxclk_p_1 = ufb_trx_rxclk_p;
  assign ufb_trx_rxd09_n_1 = ufb_trx_rxd09_n[0];
  assign ufb_trx_rxd09_p_1 = ufb_trx_rxd09_p[0];
  assign ufb_trx_txclk_n = selectio_wiz_lvds_out_clk_to_pins_n;
  assign ufb_trx_txclk_p = selectio_wiz_lvds_out_clk_to_pins_p;
  assign ufb_trx_txd_n[0] = selectio_wiz_lvds_out_data_out_to_pins_n;
  assign ufb_trx_txd_p[0] = selectio_wiz_lvds_out_data_out_to_pins_p;
  assign xlconcat_ROTENC_pulse = board_rotenc_pulse;
  mcu_dist_mem_gen_0_0 CDC_LVDS_in
       (.a(xlconstant_val000_dout),
        .clk(clk_32mhz_LVDS_clk),
        .d(CDC_LVDS_in_data),
        .dpra(xlconstant_val000_dout),
        .qdpo(CDC_LVDS_in_qdpo),
        .qdpo_clk(mb_0_clk),
        .we(xlconstant_val1_dout));
  mcu_dist_mem_gen_lvds_in_0 CDC_LVDS_out
       (.a(xlconstant_val000_dout),
        .clk(mb_0_clk),
        .d(CDC_LVDS_out_data),
        .dpra(xlconstant_val000_dout),
        .qdpo(CDC_LVDS_out_qdpo),
        .qdpo_clk(clk_32mhz_LVDS_clk),
        .we(xlconstant_val1_dout));
  mcu_axi_gpio_0_0 axi_gpio_0_MULTI
       (.gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M03_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M03_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M03_AXI_WVALID));
  mcu_axi_gpio_0_4 axi_gpio_1_ONEWIRE_addr
       (.gpio_io_o(axi_gpio_1_ONEWIRE_addr_out_TRI_O),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M13_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M13_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M13_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M13_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M13_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M13_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M13_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M13_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M13_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M13_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M13_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M13_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M13_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M13_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M13_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M13_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M13_AXI_WVALID));
  mcu_axi_gpio_0_3 axi_gpio_2_ONEWIRE_data
       (.gpio2_io_o(axi_gpio_2_ONEWIRE_data_out_TRI_O),
        .gpio_io_i(axi_gpio_2_ONEWIRE_data_in_TRI_I),
        .ip2intc_irpt(axi_gpio_2_ONEWIRE_ip2intc_irpt),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M12_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M12_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M12_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M12_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M12_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M12_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M12_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M12_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M12_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M12_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M12_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M12_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M12_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M12_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M12_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M12_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M12_AXI_WVALID));
  mcu_axi_gpio_0_2 axi_gpio_3_ROTENC
       (.gpio2_io_i(axi_gpio_3_ROTENC_push),
        .gpio_io_i(c_accum_0_ROTENC_Q),
        .ip2intc_irpt(axi_gpio_3_ROTENC_ip2intc_irpt),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M11_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M11_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M11_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M11_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M11_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M11_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M11_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M11_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M11_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M11_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M11_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M11_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M11_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M11_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M11_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M11_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M11_AXI_WVALID));
  mcu_axi_gpio_0_1 axi_gpio_7_LVDS
       (.gpio2_io_i(CDC_LVDS_in_qdpo),
        .gpio_io_o(CDC_LVDS_out_data),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M08_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M08_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M08_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M08_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M08_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M08_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M08_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M08_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M08_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M08_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M08_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M08_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M08_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M08_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M08_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M08_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M08_AXI_WVALID));
  mcu_axi_iic_0_0 axi_iic_0_PLL
       (.iic2intc_irpt(axi_iic_0_PLL_iic2intc_irpt),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M06_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M06_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M06_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M06_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M06_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M06_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M06_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M06_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M06_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M06_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M06_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M06_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M06_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M06_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M06_AXI_WVALID),
        .scl_i(axi_iic_0_IIC_SCL_I),
        .scl_o(axi_iic_0_IIC_SCL_O),
        .scl_t(axi_iic_0_IIC_SCL_T),
        .sda_i(axi_iic_0_IIC_SDA_I),
        .sda_o(axi_iic_0_IIC_SDA_O),
        .sda_t(axi_iic_0_IIC_SDA_T));
  mcu_axi_iic_0_1 axi_iic_1_BOARD
       (.iic2intc_irpt(axi_iic_1_BOARD_iic2intc_irpt),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M10_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M10_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M10_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M10_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M10_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M10_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M10_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M10_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M10_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M10_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M10_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M10_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M10_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M10_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M10_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M10_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M10_AXI_WVALID),
        .scl_i(axi_iic_0_IIC1_SCL_I),
        .scl_o(axi_iic_0_IIC1_SCL_O),
        .scl_t(axi_iic_0_IIC1_SCL_T),
        .sda_i(axi_iic_0_IIC1_SDA_I),
        .sda_o(axi_iic_0_IIC1_SDA_O),
        .sda_t(axi_iic_0_IIC1_SDA_T));
  mcu_axi_quad_spi_0_0 axi_quad_spi_0_CONFIG
       (.ext_spi_clk(mig_7series_0_ui_addn_clk_1),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_0_CONFIG_ip2intc_irpt),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M04_AXI_ARADDR[6:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M04_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M04_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M04_AXI_AWADDR[6:0]),
        .s_axi_awready(mb_0_axi_interconnect_M04_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M04_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M04_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M04_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M04_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M04_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M04_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M04_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M04_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M04_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M04_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M04_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M04_AXI_WVALID),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  mcu_axi_quad_spi_1_0 axi_quad_spi_1_TRX
       (.ext_spi_clk(mig_7series_0_ui_addn_clk_3),
        .io0_i(axi_quad_spi_1_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_1_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_1_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_1_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_1_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_1_SPI_0_IO1_T),
        .ip2intc_irpt(axi_quad_spi_1_TRX_ip2intc_irpt),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M09_AXI_ARADDR[6:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M09_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M09_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M09_AXI_AWADDR[6:0]),
        .s_axi_awready(mb_0_axi_interconnect_M09_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M09_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M09_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M09_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M09_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M09_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M09_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M09_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M09_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M09_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M09_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M09_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M09_AXI_WVALID),
        .sck_i(axi_quad_spi_1_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_1_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_1_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_1_SPI_0_SS_I),
        .ss_o(axi_quad_spi_1_SPI_0_SS_O),
        .ss_t(axi_quad_spi_1_SPI_0_SS_T));
  mcu_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_irpt),
        .pwm0(axi_timer_0_LCD_pwm0),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M05_AXI_ARADDR[4:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M05_AXI_AWADDR[4:0]),
        .s_axi_awready(mb_0_axi_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M05_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M05_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M05_AXI_WVALID));
  mcu_axi_uart16550_0_0 axi_uart16550_0_FTDI
       (.baudoutn(axi_uart16550_0_UART_BAUDOUTn),
        .ctsn(axi_uart16550_0_UART_CTSn),
        .dcdn(axi_uart16550_0_UART_DCDn),
        .ddis(axi_uart16550_0_UART_DDIS),
        .dsrn(axi_uart16550_0_UART_DSRn),
        .dtrn(axi_uart16550_0_UART_DTRn),
        .freeze(1'b0),
        .ip2intc_irpt(axi_uart16550_0_FTDI_ip2intc_irpt),
        .out1n(axi_uart16550_0_UART_OUT1n),
        .out2n(axi_uart16550_0_UART_OUT2n),
        .rin(axi_uart16550_0_UART_RI),
        .rtsn(axi_uart16550_0_UART_RTSn),
        .rxrdyn(axi_uart16550_0_UART_RXRDYn),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M02_AXI_ARADDR),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M02_AXI_AWADDR),
        .s_axi_awready(mb_0_axi_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M02_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M02_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M02_AXI_WVALID),
        .sin(axi_uart16550_0_UART_RxD),
        .sout(axi_uart16550_0_UART_TxD),
        .txrdyn(axi_uart16550_0_UART_TXRDYn));
  mcu_c_accum_0_0 c_accum_0_ROTENC
       (.ADD(c_accum_0_ROTENC_ADD),
        .B(xlconcat_0_dout),
        .CLK(mb_0_clk),
        .Q(c_accum_0_ROTENC_Q),
        .SCLR(mb_0_reset_peripheral_reset));
  mcu_clk_wiz_1_0 clk_12mhz_FTDI
       (.clk_12mhz(clk_12mhz_FTDI_clk),
        .clk_in1(mb_0_clk),
        .locked(clk_12mhz_FTDI_locked),
        .reset(mb_0_reset_bus_struct_reset));
  mcu_clk_wiz_0_0 clk_32mhz_LVDS
       (.clk_32_lvds(clk_32mhz_LVDS_clk),
        .clk_div_8_lvds(clk_32mhz_LVDS_clk_div_8),
        .clk_in1_n(ufb_trx_rxclk_n_1),
        .clk_in1_p(ufb_trx_rxclk_p_1),
        .locked(clk_32mhz_LVDS_locked),
        .reset(mb_0_reset_bus_struct_reset));
  mcu_clk_32mhz_locked_sr_clkReset_inv_0 clk_32mhz_LVDS_locked_inv
       (.A(clk_32mhz_LVDS_locked),
        .CLK(clk_32mhz_LVDS_clk),
        .S(\^clk_32mhz_LVDS_locked_inv ));
  mcu_clk_32mhz_locked_sr_0 clk_32mhz_LVDS_locked_inv_sr_clkReset
       (.CLK(clk_32mhz_LVDS_clk_div_8),
        .D(\^clk_32mhz_LVDS_locked_inv ),
        .Q(clk_32mhz_LVDS_locked_inv_sr_Q),
        .SSET(\^clk_32mhz_LVDS_locked_inv ));
  mcu_c_shift_ram_0_0 clk_32mhz_LVDS_locked_inv_sr_ioReset
       (.CLK(clk_32mhz_LVDS_clk_div_8),
        .D(\^clk_32mhz_LVDS_locked_inv ),
        .Q(c_counter_binary_0_LVDS_reset_Q),
        .SSET(\^clk_32mhz_LVDS_locked_inv ));
  (* BMM_INFO_PROCESSOR = "microblaze-le > mcu mb_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  mcu_microblaze_0_0 mb_0
       (.Byte_Enable(mb_0_DLMB_BE),
        .Clk(mb_0_clk),
        .DCE(mb_0_DLMB_CE),
        .DReady(mb_0_DLMB_READY),
        .DUE(mb_0_DLMB_UE),
        .DWait(mb_0_DLMB_WAIT),
        .D_AS(mb_0_DLMB_ADDRSTROBE),
        .Data_Addr(mb_0_DLMB_ABUS),
        .Data_Read(mb_0_DLMB_READDBUS),
        .Data_Write(mb_0_DLMB_WRITEDBUS),
        .Dbg_Capture(mb_0_mdm_MDEBUG_0_CAPTURE),
        .Dbg_Clk(mb_0_mdm_MDEBUG_0_CLK),
        .Dbg_Disable(mb_0_mdm_MDEBUG_0_DISABLE),
        .Dbg_Reg_En(mb_0_mdm_MDEBUG_0_REG_EN),
        .Dbg_Shift(mb_0_mdm_MDEBUG_0_SHIFT),
        .Dbg_TDI(mb_0_mdm_MDEBUG_0_TDI),
        .Dbg_TDO(mb_0_mdm_MDEBUG_0_TDO),
        .Dbg_Trig_Ack_In(mb_0_mdm_MDEBUG_0_TRIG_ACK_IN),
        .Dbg_Trig_Ack_Out(mb_0_mdm_MDEBUG_0_TRIG_ACK_OUT),
        .Dbg_Trig_In(mb_0_mdm_MDEBUG_0_TRIG_IN),
        .Dbg_Trig_Out(mb_0_mdm_MDEBUG_0_TRIG_OUT),
        .Dbg_Update(mb_0_mdm_MDEBUG_0_UPDATE),
        .Debug_Rst(mb_0_mdm_MDEBUG_0_RST),
        .ICE(mb_0_ILMB_CE),
        .IFetch(mb_0_ILMB_READSTROBE),
        .IReady(mb_0_ILMB_READY),
        .IUE(mb_0_ILMB_UE),
        .IWAIT(mb_0_ILMB_WAIT),
        .I_AS(mb_0_ILMB_ADDRSTROBE),
        .Instr(mb_0_ILMB_READDBUS),
        .Instr_Addr(mb_0_ILMB_ABUS),
        .Interrupt(mb_0_INTERRUPT_INTERRUPT),
        .Interrupt_Ack(mb_0_INTERRUPT_ACK),
        .Interrupt_Address({mb_0_INTERRUPT_ADDRESS[31],mb_0_INTERRUPT_ADDRESS[30],mb_0_INTERRUPT_ADDRESS[29],mb_0_INTERRUPT_ADDRESS[28],mb_0_INTERRUPT_ADDRESS[27],mb_0_INTERRUPT_ADDRESS[26],mb_0_INTERRUPT_ADDRESS[25],mb_0_INTERRUPT_ADDRESS[24],mb_0_INTERRUPT_ADDRESS[23],mb_0_INTERRUPT_ADDRESS[22],mb_0_INTERRUPT_ADDRESS[21],mb_0_INTERRUPT_ADDRESS[20],mb_0_INTERRUPT_ADDRESS[19],mb_0_INTERRUPT_ADDRESS[18],mb_0_INTERRUPT_ADDRESS[17],mb_0_INTERRUPT_ADDRESS[16],mb_0_INTERRUPT_ADDRESS[15],mb_0_INTERRUPT_ADDRESS[14],mb_0_INTERRUPT_ADDRESS[13],mb_0_INTERRUPT_ADDRESS[12],mb_0_INTERRUPT_ADDRESS[11],mb_0_INTERRUPT_ADDRESS[10],mb_0_INTERRUPT_ADDRESS[9],mb_0_INTERRUPT_ADDRESS[8],mb_0_INTERRUPT_ADDRESS[7],mb_0_INTERRUPT_ADDRESS[6],mb_0_INTERRUPT_ADDRESS[5],mb_0_INTERRUPT_ADDRESS[4],mb_0_INTERRUPT_ADDRESS[3],mb_0_INTERRUPT_ADDRESS[2],mb_0_INTERRUPT_ADDRESS[1],mb_0_INTERRUPT_ADDRESS[0]}),
        .M_AXI_DC_ARADDR(mb_0_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(mb_0_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(mb_0_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARID(mb_0_M_AXI_DC_ARID),
        .M_AXI_DC_ARLEN(mb_0_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(mb_0_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(mb_0_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(mb_0_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(mb_0_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(mb_0_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(mb_0_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(mb_0_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(mb_0_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(mb_0_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWID(mb_0_M_AXI_DC_AWID),
        .M_AXI_DC_AWLEN(mb_0_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(mb_0_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(mb_0_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(mb_0_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(mb_0_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(mb_0_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(mb_0_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(mb_0_M_AXI_DC_BID[0]),
        .M_AXI_DC_BREADY(mb_0_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(mb_0_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(mb_0_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(mb_0_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(mb_0_M_AXI_DC_RID[0]),
        .M_AXI_DC_RLAST(mb_0_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(mb_0_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(mb_0_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(mb_0_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(mb_0_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(mb_0_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(mb_0_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(mb_0_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(mb_0_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(mb_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(mb_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(mb_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(mb_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(mb_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(mb_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(mb_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(mb_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(mb_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(mb_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(mb_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(mb_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(mb_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(mb_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(mb_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(mb_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(mb_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(mb_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(mb_0_M_AXI_DP_WVALID),
        .M_AXI_IC_ARADDR(mb_0_M_AXI_IC_ARADDR),
        .M_AXI_IC_ARBURST(mb_0_M_AXI_IC_ARBURST),
        .M_AXI_IC_ARCACHE(mb_0_M_AXI_IC_ARCACHE),
        .M_AXI_IC_ARID(mb_0_M_AXI_IC_ARID),
        .M_AXI_IC_ARLEN(mb_0_M_AXI_IC_ARLEN),
        .M_AXI_IC_ARLOCK(mb_0_M_AXI_IC_ARLOCK),
        .M_AXI_IC_ARPROT(mb_0_M_AXI_IC_ARPROT),
        .M_AXI_IC_ARQOS(mb_0_M_AXI_IC_ARQOS),
        .M_AXI_IC_ARREADY(mb_0_M_AXI_IC_ARREADY),
        .M_AXI_IC_ARSIZE(mb_0_M_AXI_IC_ARSIZE),
        .M_AXI_IC_ARVALID(mb_0_M_AXI_IC_ARVALID),
        .M_AXI_IC_AWADDR(mb_0_M_AXI_IC_AWADDR),
        .M_AXI_IC_AWBURST(mb_0_M_AXI_IC_AWBURST),
        .M_AXI_IC_AWCACHE(mb_0_M_AXI_IC_AWCACHE),
        .M_AXI_IC_AWID(mb_0_M_AXI_IC_AWID),
        .M_AXI_IC_AWLEN(mb_0_M_AXI_IC_AWLEN),
        .M_AXI_IC_AWLOCK(mb_0_M_AXI_IC_AWLOCK),
        .M_AXI_IC_AWPROT(mb_0_M_AXI_IC_AWPROT),
        .M_AXI_IC_AWQOS(mb_0_M_AXI_IC_AWQOS),
        .M_AXI_IC_AWREADY(mb_0_M_AXI_IC_AWREADY),
        .M_AXI_IC_AWSIZE(mb_0_M_AXI_IC_AWSIZE),
        .M_AXI_IC_AWVALID(mb_0_M_AXI_IC_AWVALID),
        .M_AXI_IC_BID(mb_0_M_AXI_IC_BID[0]),
        .M_AXI_IC_BREADY(mb_0_M_AXI_IC_BREADY),
        .M_AXI_IC_BRESP(mb_0_M_AXI_IC_BRESP),
        .M_AXI_IC_BVALID(mb_0_M_AXI_IC_BVALID),
        .M_AXI_IC_RDATA(mb_0_M_AXI_IC_RDATA),
        .M_AXI_IC_RID(mb_0_M_AXI_IC_RID[0]),
        .M_AXI_IC_RLAST(mb_0_M_AXI_IC_RLAST),
        .M_AXI_IC_RREADY(mb_0_M_AXI_IC_RREADY),
        .M_AXI_IC_RRESP(mb_0_M_AXI_IC_RRESP),
        .M_AXI_IC_RVALID(mb_0_M_AXI_IC_RVALID),
        .M_AXI_IC_WDATA(mb_0_M_AXI_IC_WDATA),
        .M_AXI_IC_WLAST(mb_0_M_AXI_IC_WLAST),
        .M_AXI_IC_WREADY(mb_0_M_AXI_IC_WREADY),
        .M_AXI_IC_WSTRB(mb_0_M_AXI_IC_WSTRB),
        .M_AXI_IC_WVALID(mb_0_M_AXI_IC_WVALID),
        .Read_Strobe(mb_0_DLMB_READSTROBE),
        .Reset(mb_0_reset_mb_reset),
        .Write_Strobe(mb_0_DLMB_WRITESTROBE));
  mcu_microblaze_0_axi_intc_0 mb_0_axi_intc
       (.interrupt_address(mb_0_INTERRUPT_ADDRESS),
        .intr(mb_0_intr_in),
        .irq(mb_0_INTERRUPT_INTERRUPT),
        .processor_ack({mb_0_INTERRUPT_ACK[0],mb_0_INTERRUPT_ACK[1]}),
        .processor_clk(mb_0_clk),
        .processor_rst(mb_0_reset_mb_reset),
        .s_axi_aclk(mb_0_clk),
        .s_axi_araddr(mb_0_axi_interconnect_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(mb_0_reset_peripheral_aresetn),
        .s_axi_arready(mb_0_axi_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(mb_0_axi_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(mb_0_axi_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(mb_0_axi_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(mb_0_axi_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M00_AXI_RDATA),
        .s_axi_rready(mb_0_axi_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M00_AXI_WDATA),
        .s_axi_wready(mb_0_axi_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M00_AXI_WVALID));
  mcu_microblaze_0_xlconcat_0 mb_0_axi_intc_concat
       (.In0(mb_0_mdm_Interrupt),
        .In1(axi_timer_0_irpt),
        .In10(axi_gpio_2_ONEWIRE_ip2intc_irpt),
        .In2(axi_uart16550_0_FTDI_ip2intc_irpt),
        .In3(axi_quad_spi_0_CONFIG_ip2intc_irpt),
        .In4(axi_iic_0_PLL_iic2intc_irpt),
        .In5(axi_quad_spi_1_TRX_ip2intc_irpt),
        .In6(TRX_iic2intc_irpt),
        .In7(axi_iic_1_BOARD_iic2intc_irpt),
        .In8(PLL_iic2intc_irpt),
        .In9(axi_gpio_3_ROTENC_ip2intc_irpt),
        .dout(mb_0_intr_in));
  mcu_microblaze_0_axi_periph_0 mb_0_axi_interconnect
       (.ACLK(mb_0_clk),
        .ARESETN(mb_0_reset_interconnect_aresetn),
        .M00_ACLK(mb_0_clk),
        .M00_ARESETN(mb_0_reset_peripheral_aresetn),
        .M00_AXI_araddr(mb_0_axi_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(mb_0_axi_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(mb_0_axi_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(mb_0_axi_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(mb_0_axi_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(mb_0_axi_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(mb_0_axi_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(mb_0_axi_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(mb_0_axi_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(mb_0_axi_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(mb_0_axi_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(mb_0_axi_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(mb_0_axi_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(mb_0_axi_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(mb_0_axi_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(mb_0_axi_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(mb_0_axi_interconnect_M00_AXI_WVALID),
        .M01_ACLK(mb_0_clk),
        .M01_ARESETN(mb_0_reset_peripheral_aresetn),
        .M01_AXI_araddr(mb_0_axi_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arburst(mb_0_axi_interconnect_M01_AXI_ARBURST),
        .M01_AXI_arcache(mb_0_axi_interconnect_M01_AXI_ARCACHE),
        .M01_AXI_arid(mb_0_axi_interconnect_M01_AXI_ARID),
        .M01_AXI_arlen(mb_0_axi_interconnect_M01_AXI_ARLEN),
        .M01_AXI_arlock(mb_0_axi_interconnect_M01_AXI_ARLOCK),
        .M01_AXI_arprot(mb_0_axi_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arqos(mb_0_axi_interconnect_M01_AXI_ARQOS),
        .M01_AXI_arready(mb_0_axi_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arsize(mb_0_axi_interconnect_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(mb_0_axi_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(mb_0_axi_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awburst(mb_0_axi_interconnect_M01_AXI_AWBURST),
        .M01_AXI_awcache(mb_0_axi_interconnect_M01_AXI_AWCACHE),
        .M01_AXI_awid(mb_0_axi_interconnect_M01_AXI_AWID),
        .M01_AXI_awlen(mb_0_axi_interconnect_M01_AXI_AWLEN),
        .M01_AXI_awlock(mb_0_axi_interconnect_M01_AXI_AWLOCK),
        .M01_AXI_awprot(mb_0_axi_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awqos(mb_0_axi_interconnect_M01_AXI_AWQOS),
        .M01_AXI_awready(mb_0_axi_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awsize(mb_0_axi_interconnect_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(mb_0_axi_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bid(mb_0_axi_interconnect_M01_AXI_BID),
        .M01_AXI_bready(mb_0_axi_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(mb_0_axi_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(mb_0_axi_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(mb_0_axi_interconnect_M01_AXI_RDATA),
        .M01_AXI_rid(mb_0_axi_interconnect_M01_AXI_RID),
        .M01_AXI_rlast(mb_0_axi_interconnect_M01_AXI_RLAST),
        .M01_AXI_rready(mb_0_axi_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(mb_0_axi_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(mb_0_axi_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(mb_0_axi_interconnect_M01_AXI_WDATA),
        .M01_AXI_wlast(mb_0_axi_interconnect_M01_AXI_WLAST),
        .M01_AXI_wready(mb_0_axi_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(mb_0_axi_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(mb_0_axi_interconnect_M01_AXI_WVALID),
        .M02_ACLK(mb_0_clk),
        .M02_ARESETN(mb_0_reset_peripheral_aresetn),
        .M02_AXI_araddr(mb_0_axi_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arready(mb_0_axi_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(mb_0_axi_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(mb_0_axi_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awready(mb_0_axi_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(mb_0_axi_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(mb_0_axi_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(mb_0_axi_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(mb_0_axi_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(mb_0_axi_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(mb_0_axi_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(mb_0_axi_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(mb_0_axi_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(mb_0_axi_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(mb_0_axi_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(mb_0_axi_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(mb_0_axi_interconnect_M02_AXI_WVALID),
        .M03_ACLK(mb_0_clk),
        .M03_ARESETN(mb_0_reset_peripheral_aresetn),
        .M03_AXI_araddr(mb_0_axi_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arready(mb_0_axi_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(mb_0_axi_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(mb_0_axi_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awready(mb_0_axi_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(mb_0_axi_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(mb_0_axi_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(mb_0_axi_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(mb_0_axi_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(mb_0_axi_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(mb_0_axi_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(mb_0_axi_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(mb_0_axi_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(mb_0_axi_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(mb_0_axi_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(mb_0_axi_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(mb_0_axi_interconnect_M03_AXI_WVALID),
        .M04_ACLK(mb_0_clk),
        .M04_ARESETN(mb_0_reset_peripheral_aresetn),
        .M04_AXI_araddr(mb_0_axi_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arready(mb_0_axi_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(mb_0_axi_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(mb_0_axi_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awready(mb_0_axi_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(mb_0_axi_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(mb_0_axi_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(mb_0_axi_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(mb_0_axi_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(mb_0_axi_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(mb_0_axi_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(mb_0_axi_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(mb_0_axi_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(mb_0_axi_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(mb_0_axi_interconnect_M04_AXI_WREADY),
        .M04_AXI_wstrb(mb_0_axi_interconnect_M04_AXI_WSTRB),
        .M04_AXI_wvalid(mb_0_axi_interconnect_M04_AXI_WVALID),
        .M05_ACLK(mb_0_clk),
        .M05_ARESETN(mb_0_reset_peripheral_aresetn),
        .M05_AXI_araddr(mb_0_axi_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arready(mb_0_axi_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(mb_0_axi_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(mb_0_axi_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awready(mb_0_axi_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(mb_0_axi_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(mb_0_axi_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(mb_0_axi_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(mb_0_axi_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(mb_0_axi_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(mb_0_axi_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(mb_0_axi_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(mb_0_axi_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(mb_0_axi_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(mb_0_axi_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(mb_0_axi_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(mb_0_axi_interconnect_M05_AXI_WVALID),
        .M06_ACLK(mb_0_clk),
        .M06_ARESETN(mb_0_reset_peripheral_aresetn),
        .M06_AXI_araddr(mb_0_axi_interconnect_M06_AXI_ARADDR),
        .M06_AXI_arready(mb_0_axi_interconnect_M06_AXI_ARREADY),
        .M06_AXI_arvalid(mb_0_axi_interconnect_M06_AXI_ARVALID),
        .M06_AXI_awaddr(mb_0_axi_interconnect_M06_AXI_AWADDR),
        .M06_AXI_awready(mb_0_axi_interconnect_M06_AXI_AWREADY),
        .M06_AXI_awvalid(mb_0_axi_interconnect_M06_AXI_AWVALID),
        .M06_AXI_bready(mb_0_axi_interconnect_M06_AXI_BREADY),
        .M06_AXI_bresp(mb_0_axi_interconnect_M06_AXI_BRESP),
        .M06_AXI_bvalid(mb_0_axi_interconnect_M06_AXI_BVALID),
        .M06_AXI_rdata(mb_0_axi_interconnect_M06_AXI_RDATA),
        .M06_AXI_rready(mb_0_axi_interconnect_M06_AXI_RREADY),
        .M06_AXI_rresp(mb_0_axi_interconnect_M06_AXI_RRESP),
        .M06_AXI_rvalid(mb_0_axi_interconnect_M06_AXI_RVALID),
        .M06_AXI_wdata(mb_0_axi_interconnect_M06_AXI_WDATA),
        .M06_AXI_wready(mb_0_axi_interconnect_M06_AXI_WREADY),
        .M06_AXI_wstrb(mb_0_axi_interconnect_M06_AXI_WSTRB),
        .M06_AXI_wvalid(mb_0_axi_interconnect_M06_AXI_WVALID),
        .M07_ACLK(mb_0_clk),
        .M07_ARESETN(mb_0_reset_peripheral_aresetn),
        .M07_AXI_araddr(mb_0_axi_interconnect_M07_AXI_ARADDR),
        .M07_AXI_arready(mb_0_axi_interconnect_M07_AXI_ARREADY),
        .M07_AXI_arvalid(mb_0_axi_interconnect_M07_AXI_ARVALID),
        .M07_AXI_awaddr(mb_0_axi_interconnect_M07_AXI_AWADDR),
        .M07_AXI_awready(mb_0_axi_interconnect_M07_AXI_AWREADY),
        .M07_AXI_awvalid(mb_0_axi_interconnect_M07_AXI_AWVALID),
        .M07_AXI_bready(mb_0_axi_interconnect_M07_AXI_BREADY),
        .M07_AXI_bresp(mb_0_axi_interconnect_M07_AXI_BRESP),
        .M07_AXI_bvalid(mb_0_axi_interconnect_M07_AXI_BVALID),
        .M07_AXI_rdata(mb_0_axi_interconnect_M07_AXI_RDATA),
        .M07_AXI_rready(mb_0_axi_interconnect_M07_AXI_RREADY),
        .M07_AXI_rresp(mb_0_axi_interconnect_M07_AXI_RRESP),
        .M07_AXI_rvalid(mb_0_axi_interconnect_M07_AXI_RVALID),
        .M07_AXI_wdata(mb_0_axi_interconnect_M07_AXI_WDATA),
        .M07_AXI_wready(mb_0_axi_interconnect_M07_AXI_WREADY),
        .M07_AXI_wstrb(mb_0_axi_interconnect_M07_AXI_WSTRB),
        .M07_AXI_wvalid(mb_0_axi_interconnect_M07_AXI_WVALID),
        .M08_ACLK(mb_0_clk),
        .M08_ARESETN(mb_0_reset_peripheral_aresetn),
        .M08_AXI_araddr(mb_0_axi_interconnect_M08_AXI_ARADDR),
        .M08_AXI_arready(mb_0_axi_interconnect_M08_AXI_ARREADY),
        .M08_AXI_arvalid(mb_0_axi_interconnect_M08_AXI_ARVALID),
        .M08_AXI_awaddr(mb_0_axi_interconnect_M08_AXI_AWADDR),
        .M08_AXI_awready(mb_0_axi_interconnect_M08_AXI_AWREADY),
        .M08_AXI_awvalid(mb_0_axi_interconnect_M08_AXI_AWVALID),
        .M08_AXI_bready(mb_0_axi_interconnect_M08_AXI_BREADY),
        .M08_AXI_bresp(mb_0_axi_interconnect_M08_AXI_BRESP),
        .M08_AXI_bvalid(mb_0_axi_interconnect_M08_AXI_BVALID),
        .M08_AXI_rdata(mb_0_axi_interconnect_M08_AXI_RDATA),
        .M08_AXI_rready(mb_0_axi_interconnect_M08_AXI_RREADY),
        .M08_AXI_rresp(mb_0_axi_interconnect_M08_AXI_RRESP),
        .M08_AXI_rvalid(mb_0_axi_interconnect_M08_AXI_RVALID),
        .M08_AXI_wdata(mb_0_axi_interconnect_M08_AXI_WDATA),
        .M08_AXI_wready(mb_0_axi_interconnect_M08_AXI_WREADY),
        .M08_AXI_wstrb(mb_0_axi_interconnect_M08_AXI_WSTRB),
        .M08_AXI_wvalid(mb_0_axi_interconnect_M08_AXI_WVALID),
        .M09_ACLK(mb_0_clk),
        .M09_ARESETN(mb_0_reset_peripheral_aresetn),
        .M09_AXI_araddr(mb_0_axi_interconnect_M09_AXI_ARADDR),
        .M09_AXI_arready(mb_0_axi_interconnect_M09_AXI_ARREADY),
        .M09_AXI_arvalid(mb_0_axi_interconnect_M09_AXI_ARVALID),
        .M09_AXI_awaddr(mb_0_axi_interconnect_M09_AXI_AWADDR),
        .M09_AXI_awready(mb_0_axi_interconnect_M09_AXI_AWREADY),
        .M09_AXI_awvalid(mb_0_axi_interconnect_M09_AXI_AWVALID),
        .M09_AXI_bready(mb_0_axi_interconnect_M09_AXI_BREADY),
        .M09_AXI_bresp(mb_0_axi_interconnect_M09_AXI_BRESP),
        .M09_AXI_bvalid(mb_0_axi_interconnect_M09_AXI_BVALID),
        .M09_AXI_rdata(mb_0_axi_interconnect_M09_AXI_RDATA),
        .M09_AXI_rready(mb_0_axi_interconnect_M09_AXI_RREADY),
        .M09_AXI_rresp(mb_0_axi_interconnect_M09_AXI_RRESP),
        .M09_AXI_rvalid(mb_0_axi_interconnect_M09_AXI_RVALID),
        .M09_AXI_wdata(mb_0_axi_interconnect_M09_AXI_WDATA),
        .M09_AXI_wready(mb_0_axi_interconnect_M09_AXI_WREADY),
        .M09_AXI_wstrb(mb_0_axi_interconnect_M09_AXI_WSTRB),
        .M09_AXI_wvalid(mb_0_axi_interconnect_M09_AXI_WVALID),
        .M10_ACLK(mb_0_clk),
        .M10_ARESETN(mb_0_reset_peripheral_aresetn),
        .M10_AXI_araddr(mb_0_axi_interconnect_M10_AXI_ARADDR),
        .M10_AXI_arready(mb_0_axi_interconnect_M10_AXI_ARREADY),
        .M10_AXI_arvalid(mb_0_axi_interconnect_M10_AXI_ARVALID),
        .M10_AXI_awaddr(mb_0_axi_interconnect_M10_AXI_AWADDR),
        .M10_AXI_awready(mb_0_axi_interconnect_M10_AXI_AWREADY),
        .M10_AXI_awvalid(mb_0_axi_interconnect_M10_AXI_AWVALID),
        .M10_AXI_bready(mb_0_axi_interconnect_M10_AXI_BREADY),
        .M10_AXI_bresp(mb_0_axi_interconnect_M10_AXI_BRESP),
        .M10_AXI_bvalid(mb_0_axi_interconnect_M10_AXI_BVALID),
        .M10_AXI_rdata(mb_0_axi_interconnect_M10_AXI_RDATA),
        .M10_AXI_rready(mb_0_axi_interconnect_M10_AXI_RREADY),
        .M10_AXI_rresp(mb_0_axi_interconnect_M10_AXI_RRESP),
        .M10_AXI_rvalid(mb_0_axi_interconnect_M10_AXI_RVALID),
        .M10_AXI_wdata(mb_0_axi_interconnect_M10_AXI_WDATA),
        .M10_AXI_wready(mb_0_axi_interconnect_M10_AXI_WREADY),
        .M10_AXI_wstrb(mb_0_axi_interconnect_M10_AXI_WSTRB),
        .M10_AXI_wvalid(mb_0_axi_interconnect_M10_AXI_WVALID),
        .M11_ACLK(mb_0_clk),
        .M11_ARESETN(mb_0_reset_peripheral_aresetn),
        .M11_AXI_araddr(mb_0_axi_interconnect_M11_AXI_ARADDR),
        .M11_AXI_arready(mb_0_axi_interconnect_M11_AXI_ARREADY),
        .M11_AXI_arvalid(mb_0_axi_interconnect_M11_AXI_ARVALID),
        .M11_AXI_awaddr(mb_0_axi_interconnect_M11_AXI_AWADDR),
        .M11_AXI_awready(mb_0_axi_interconnect_M11_AXI_AWREADY),
        .M11_AXI_awvalid(mb_0_axi_interconnect_M11_AXI_AWVALID),
        .M11_AXI_bready(mb_0_axi_interconnect_M11_AXI_BREADY),
        .M11_AXI_bresp(mb_0_axi_interconnect_M11_AXI_BRESP),
        .M11_AXI_bvalid(mb_0_axi_interconnect_M11_AXI_BVALID),
        .M11_AXI_rdata(mb_0_axi_interconnect_M11_AXI_RDATA),
        .M11_AXI_rready(mb_0_axi_interconnect_M11_AXI_RREADY),
        .M11_AXI_rresp(mb_0_axi_interconnect_M11_AXI_RRESP),
        .M11_AXI_rvalid(mb_0_axi_interconnect_M11_AXI_RVALID),
        .M11_AXI_wdata(mb_0_axi_interconnect_M11_AXI_WDATA),
        .M11_AXI_wready(mb_0_axi_interconnect_M11_AXI_WREADY),
        .M11_AXI_wstrb(mb_0_axi_interconnect_M11_AXI_WSTRB),
        .M11_AXI_wvalid(mb_0_axi_interconnect_M11_AXI_WVALID),
        .M12_ACLK(mb_0_clk),
        .M12_ARESETN(mb_0_reset_peripheral_aresetn),
        .M12_AXI_araddr(mb_0_axi_interconnect_M12_AXI_ARADDR),
        .M12_AXI_arready(mb_0_axi_interconnect_M12_AXI_ARREADY),
        .M12_AXI_arvalid(mb_0_axi_interconnect_M12_AXI_ARVALID),
        .M12_AXI_awaddr(mb_0_axi_interconnect_M12_AXI_AWADDR),
        .M12_AXI_awready(mb_0_axi_interconnect_M12_AXI_AWREADY),
        .M12_AXI_awvalid(mb_0_axi_interconnect_M12_AXI_AWVALID),
        .M12_AXI_bready(mb_0_axi_interconnect_M12_AXI_BREADY),
        .M12_AXI_bresp(mb_0_axi_interconnect_M12_AXI_BRESP),
        .M12_AXI_bvalid(mb_0_axi_interconnect_M12_AXI_BVALID),
        .M12_AXI_rdata(mb_0_axi_interconnect_M12_AXI_RDATA),
        .M12_AXI_rready(mb_0_axi_interconnect_M12_AXI_RREADY),
        .M12_AXI_rresp(mb_0_axi_interconnect_M12_AXI_RRESP),
        .M12_AXI_rvalid(mb_0_axi_interconnect_M12_AXI_RVALID),
        .M12_AXI_wdata(mb_0_axi_interconnect_M12_AXI_WDATA),
        .M12_AXI_wready(mb_0_axi_interconnect_M12_AXI_WREADY),
        .M12_AXI_wstrb(mb_0_axi_interconnect_M12_AXI_WSTRB),
        .M12_AXI_wvalid(mb_0_axi_interconnect_M12_AXI_WVALID),
        .M13_ACLK(mb_0_clk),
        .M13_ARESETN(mb_0_reset_peripheral_aresetn),
        .M13_AXI_araddr(mb_0_axi_interconnect_M13_AXI_ARADDR),
        .M13_AXI_arready(mb_0_axi_interconnect_M13_AXI_ARREADY),
        .M13_AXI_arvalid(mb_0_axi_interconnect_M13_AXI_ARVALID),
        .M13_AXI_awaddr(mb_0_axi_interconnect_M13_AXI_AWADDR),
        .M13_AXI_awready(mb_0_axi_interconnect_M13_AXI_AWREADY),
        .M13_AXI_awvalid(mb_0_axi_interconnect_M13_AXI_AWVALID),
        .M13_AXI_bready(mb_0_axi_interconnect_M13_AXI_BREADY),
        .M13_AXI_bresp(mb_0_axi_interconnect_M13_AXI_BRESP),
        .M13_AXI_bvalid(mb_0_axi_interconnect_M13_AXI_BVALID),
        .M13_AXI_rdata(mb_0_axi_interconnect_M13_AXI_RDATA),
        .M13_AXI_rready(mb_0_axi_interconnect_M13_AXI_RREADY),
        .M13_AXI_rresp(mb_0_axi_interconnect_M13_AXI_RRESP),
        .M13_AXI_rvalid(mb_0_axi_interconnect_M13_AXI_RVALID),
        .M13_AXI_wdata(mb_0_axi_interconnect_M13_AXI_WDATA),
        .M13_AXI_wready(mb_0_axi_interconnect_M13_AXI_WREADY),
        .M13_AXI_wstrb(mb_0_axi_interconnect_M13_AXI_WSTRB),
        .M13_AXI_wvalid(mb_0_axi_interconnect_M13_AXI_WVALID),
        .S00_ACLK(mb_0_clk),
        .S00_ARESETN(mb_0_reset_peripheral_aresetn),
        .S00_AXI_araddr(mb_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(mb_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(mb_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(mb_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(mb_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(mb_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(mb_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(mb_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(mb_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(mb_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(mb_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(mb_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(mb_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(mb_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(mb_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(mb_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(mb_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(mb_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(mb_0_M_AXI_DP_WVALID),
        .S01_ACLK(mb_0_clk),
        .S01_ARESETN(mb_0_reset_peripheral_aresetn),
        .S01_AXI_araddr(mb_0_mdm_M_AXI_ARADDR),
        .S01_AXI_arburst(mb_0_mdm_M_AXI_ARBURST),
        .S01_AXI_arcache(mb_0_mdm_M_AXI_ARCACHE),
        .S01_AXI_arid(mb_0_mdm_M_AXI_ARID),
        .S01_AXI_arlen(mb_0_mdm_M_AXI_ARLEN),
        .S01_AXI_arlock(mb_0_mdm_M_AXI_ARLOCK),
        .S01_AXI_arprot(mb_0_mdm_M_AXI_ARPROT),
        .S01_AXI_arqos(mb_0_mdm_M_AXI_ARQOS),
        .S01_AXI_arready(mb_0_mdm_M_AXI_ARREADY),
        .S01_AXI_arsize(mb_0_mdm_M_AXI_ARSIZE),
        .S01_AXI_arvalid(mb_0_mdm_M_AXI_ARVALID),
        .S01_AXI_awaddr(mb_0_mdm_M_AXI_AWADDR),
        .S01_AXI_awburst(mb_0_mdm_M_AXI_AWBURST),
        .S01_AXI_awcache(mb_0_mdm_M_AXI_AWCACHE),
        .S01_AXI_awid(mb_0_mdm_M_AXI_AWID),
        .S01_AXI_awlen(mb_0_mdm_M_AXI_AWLEN),
        .S01_AXI_awlock(mb_0_mdm_M_AXI_AWLOCK),
        .S01_AXI_awprot(mb_0_mdm_M_AXI_AWPROT),
        .S01_AXI_awqos(mb_0_mdm_M_AXI_AWQOS),
        .S01_AXI_awready(mb_0_mdm_M_AXI_AWREADY),
        .S01_AXI_awsize(mb_0_mdm_M_AXI_AWSIZE),
        .S01_AXI_awvalid(mb_0_mdm_M_AXI_AWVALID),
        .S01_AXI_bid(mb_0_mdm_M_AXI_BID),
        .S01_AXI_bready(mb_0_mdm_M_AXI_BREADY),
        .S01_AXI_bresp(mb_0_mdm_M_AXI_BRESP),
        .S01_AXI_bvalid(mb_0_mdm_M_AXI_BVALID),
        .S01_AXI_rdata(mb_0_mdm_M_AXI_RDATA),
        .S01_AXI_rid(mb_0_mdm_M_AXI_RID),
        .S01_AXI_rlast(mb_0_mdm_M_AXI_RLAST),
        .S01_AXI_rready(mb_0_mdm_M_AXI_RREADY),
        .S01_AXI_rresp(mb_0_mdm_M_AXI_RRESP),
        .S01_AXI_rvalid(mb_0_mdm_M_AXI_RVALID),
        .S01_AXI_wdata(mb_0_mdm_M_AXI_WDATA),
        .S01_AXI_wlast(mb_0_mdm_M_AXI_WLAST),
        .S01_AXI_wready(mb_0_mdm_M_AXI_WREADY),
        .S01_AXI_wstrb(mb_0_mdm_M_AXI_WSTRB),
        .S01_AXI_wvalid(mb_0_mdm_M_AXI_WVALID),
        .S02_ACLK(mb_0_clk),
        .S02_ARESETN(mb_0_reset_peripheral_aresetn),
        .S02_AXI_araddr(mb_0_M_AXI_DC_ARADDR),
        .S02_AXI_arburst(mb_0_M_AXI_DC_ARBURST),
        .S02_AXI_arcache(mb_0_M_AXI_DC_ARCACHE),
        .S02_AXI_arid(mb_0_M_AXI_DC_ARID),
        .S02_AXI_arlen(mb_0_M_AXI_DC_ARLEN),
        .S02_AXI_arlock(mb_0_M_AXI_DC_ARLOCK),
        .S02_AXI_arprot(mb_0_M_AXI_DC_ARPROT),
        .S02_AXI_arqos(mb_0_M_AXI_DC_ARQOS),
        .S02_AXI_arready(mb_0_M_AXI_DC_ARREADY),
        .S02_AXI_arsize(mb_0_M_AXI_DC_ARSIZE),
        .S02_AXI_arvalid(mb_0_M_AXI_DC_ARVALID),
        .S02_AXI_awaddr(mb_0_M_AXI_DC_AWADDR),
        .S02_AXI_awburst(mb_0_M_AXI_DC_AWBURST),
        .S02_AXI_awcache(mb_0_M_AXI_DC_AWCACHE),
        .S02_AXI_awid(mb_0_M_AXI_DC_AWID),
        .S02_AXI_awlen(mb_0_M_AXI_DC_AWLEN),
        .S02_AXI_awlock(mb_0_M_AXI_DC_AWLOCK),
        .S02_AXI_awprot(mb_0_M_AXI_DC_AWPROT),
        .S02_AXI_awqos(mb_0_M_AXI_DC_AWQOS),
        .S02_AXI_awready(mb_0_M_AXI_DC_AWREADY),
        .S02_AXI_awsize(mb_0_M_AXI_DC_AWSIZE),
        .S02_AXI_awvalid(mb_0_M_AXI_DC_AWVALID),
        .S02_AXI_bid(mb_0_M_AXI_DC_BID),
        .S02_AXI_bready(mb_0_M_AXI_DC_BREADY),
        .S02_AXI_bresp(mb_0_M_AXI_DC_BRESP),
        .S02_AXI_bvalid(mb_0_M_AXI_DC_BVALID),
        .S02_AXI_rdata(mb_0_M_AXI_DC_RDATA),
        .S02_AXI_rid(mb_0_M_AXI_DC_RID),
        .S02_AXI_rlast(mb_0_M_AXI_DC_RLAST),
        .S02_AXI_rready(mb_0_M_AXI_DC_RREADY),
        .S02_AXI_rresp(mb_0_M_AXI_DC_RRESP),
        .S02_AXI_rvalid(mb_0_M_AXI_DC_RVALID),
        .S02_AXI_wdata(mb_0_M_AXI_DC_WDATA),
        .S02_AXI_wlast(mb_0_M_AXI_DC_WLAST),
        .S02_AXI_wready(mb_0_M_AXI_DC_WREADY),
        .S02_AXI_wstrb(mb_0_M_AXI_DC_WSTRB),
        .S02_AXI_wvalid(mb_0_M_AXI_DC_WVALID),
        .S03_ACLK(mb_0_clk),
        .S03_ARESETN(mb_0_reset_peripheral_aresetn),
        .S03_AXI_araddr(mb_0_M_AXI_IC_ARADDR),
        .S03_AXI_arburst(mb_0_M_AXI_IC_ARBURST),
        .S03_AXI_arcache(mb_0_M_AXI_IC_ARCACHE),
        .S03_AXI_arid(mb_0_M_AXI_IC_ARID),
        .S03_AXI_arlen(mb_0_M_AXI_IC_ARLEN),
        .S03_AXI_arlock(mb_0_M_AXI_IC_ARLOCK),
        .S03_AXI_arprot(mb_0_M_AXI_IC_ARPROT),
        .S03_AXI_arqos(mb_0_M_AXI_IC_ARQOS),
        .S03_AXI_arready(mb_0_M_AXI_IC_ARREADY),
        .S03_AXI_arsize(mb_0_M_AXI_IC_ARSIZE),
        .S03_AXI_arvalid(mb_0_M_AXI_IC_ARVALID),
        .S03_AXI_awaddr(mb_0_M_AXI_IC_AWADDR),
        .S03_AXI_awburst(mb_0_M_AXI_IC_AWBURST),
        .S03_AXI_awcache(mb_0_M_AXI_IC_AWCACHE),
        .S03_AXI_awid(mb_0_M_AXI_IC_AWID),
        .S03_AXI_awlen(mb_0_M_AXI_IC_AWLEN),
        .S03_AXI_awlock(mb_0_M_AXI_IC_AWLOCK),
        .S03_AXI_awprot(mb_0_M_AXI_IC_AWPROT),
        .S03_AXI_awqos(mb_0_M_AXI_IC_AWQOS),
        .S03_AXI_awready(mb_0_M_AXI_IC_AWREADY),
        .S03_AXI_awsize(mb_0_M_AXI_IC_AWSIZE),
        .S03_AXI_awvalid(mb_0_M_AXI_IC_AWVALID),
        .S03_AXI_bid(mb_0_M_AXI_IC_BID),
        .S03_AXI_bready(mb_0_M_AXI_IC_BREADY),
        .S03_AXI_bresp(mb_0_M_AXI_IC_BRESP),
        .S03_AXI_bvalid(mb_0_M_AXI_IC_BVALID),
        .S03_AXI_rdata(mb_0_M_AXI_IC_RDATA),
        .S03_AXI_rid(mb_0_M_AXI_IC_RID),
        .S03_AXI_rlast(mb_0_M_AXI_IC_RLAST),
        .S03_AXI_rready(mb_0_M_AXI_IC_RREADY),
        .S03_AXI_rresp(mb_0_M_AXI_IC_RRESP),
        .S03_AXI_rvalid(mb_0_M_AXI_IC_RVALID),
        .S03_AXI_wdata(mb_0_M_AXI_IC_WDATA),
        .S03_AXI_wlast(mb_0_M_AXI_IC_WLAST),
        .S03_AXI_wready(mb_0_M_AXI_IC_WREADY),
        .S03_AXI_wstrb(mb_0_M_AXI_IC_WSTRB),
        .S03_AXI_wvalid(mb_0_M_AXI_IC_WVALID));
  mb_0_local_memory_imp_N3WR47 mb_0_local_memory
       (.DLMB_abus(mb_0_DLMB_ABUS),
        .DLMB_addrstrobe(mb_0_DLMB_ADDRSTROBE),
        .DLMB_be(mb_0_DLMB_BE),
        .DLMB_ce(mb_0_DLMB_CE),
        .DLMB_readdbus(mb_0_DLMB_READDBUS),
        .DLMB_readstrobe(mb_0_DLMB_READSTROBE),
        .DLMB_ready(mb_0_DLMB_READY),
        .DLMB_ue(mb_0_DLMB_UE),
        .DLMB_wait(mb_0_DLMB_WAIT),
        .DLMB_writedbus(mb_0_DLMB_WRITEDBUS),
        .DLMB_writestrobe(mb_0_DLMB_WRITESTROBE),
        .ILMB_abus(mb_0_ILMB_ABUS),
        .ILMB_addrstrobe(mb_0_ILMB_ADDRSTROBE),
        .ILMB_ce(mb_0_ILMB_CE),
        .ILMB_readdbus(mb_0_ILMB_READDBUS),
        .ILMB_readstrobe(mb_0_ILMB_READSTROBE),
        .ILMB_ready(mb_0_ILMB_READY),
        .ILMB_ue(mb_0_ILMB_UE),
        .ILMB_wait(mb_0_ILMB_WAIT),
        .LMB_Clk(mb_0_clk),
        .LMB_M_abus(mb_0_mdm_LMB_0_ABUS),
        .LMB_M_addrstrobe(mb_0_mdm_LMB_0_ADDRSTROBE),
        .LMB_M_be(mb_0_mdm_LMB_0_BE),
        .LMB_M_ce(mb_0_mdm_LMB_0_CE),
        .LMB_M_readdbus(mb_0_mdm_LMB_0_READDBUS),
        .LMB_M_readstrobe(mb_0_mdm_LMB_0_READSTROBE),
        .LMB_M_ready(mb_0_mdm_LMB_0_READY),
        .LMB_M_ue(mb_0_mdm_LMB_0_UE),
        .LMB_M_wait(mb_0_mdm_LMB_0_WAIT),
        .LMB_M_writedbus(mb_0_mdm_LMB_0_WRITEDBUS),
        .LMB_M_writestrobe(mb_0_mdm_LMB_0_WRITESTROBE),
        .SYS_Rst(mb_0_reset_bus_struct_reset));
  mcu_mdm_1_0 mb_0_mdm
       (.Dbg_Capture_0(mb_0_mdm_MDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mb_0_mdm_MDEBUG_0_CLK),
        .Dbg_Disable_0(mb_0_mdm_MDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mb_0_mdm_MDEBUG_0_REG_EN),
        .Dbg_Rst_0(mb_0_mdm_MDEBUG_0_RST),
        .Dbg_Shift_0(mb_0_mdm_MDEBUG_0_SHIFT),
        .Dbg_TDI_0(mb_0_mdm_MDEBUG_0_TDI),
        .Dbg_TDO_0(mb_0_mdm_MDEBUG_0_TDO),
        .Dbg_Trig_Ack_In_0(mb_0_mdm_MDEBUG_0_TRIG_ACK_IN),
        .Dbg_Trig_Ack_Out_0(mb_0_mdm_MDEBUG_0_TRIG_ACK_OUT),
        .Dbg_Trig_In_0(mb_0_mdm_MDEBUG_0_TRIG_IN),
        .Dbg_Trig_Out_0(mb_0_mdm_MDEBUG_0_TRIG_OUT),
        .Dbg_Update_0(mb_0_mdm_MDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mb_0_mdm_Debug_SYS_Rst),
        .Interrupt(mb_0_mdm_Interrupt),
        .LMB_Addr_Strobe_0(mb_0_mdm_LMB_0_ADDRSTROBE),
        .LMB_Byte_Enable_0(mb_0_mdm_LMB_0_BE),
        .LMB_CE_0(mb_0_mdm_LMB_0_CE),
        .LMB_Data_Addr_0(mb_0_mdm_LMB_0_ABUS),
        .LMB_Data_Read_0(mb_0_mdm_LMB_0_READDBUS),
        .LMB_Data_Write_0(mb_0_mdm_LMB_0_WRITEDBUS),
        .LMB_Read_Strobe_0(mb_0_mdm_LMB_0_READSTROBE),
        .LMB_Ready_0(mb_0_mdm_LMB_0_READY),
        .LMB_UE_0(mb_0_mdm_LMB_0_UE),
        .LMB_Wait_0(mb_0_mdm_LMB_0_WAIT),
        .LMB_Write_Strobe_0(mb_0_mdm_LMB_0_WRITESTROBE),
        .M_AXI_ACLK(mb_0_clk),
        .M_AXI_ARADDR(mb_0_mdm_M_AXI_ARADDR),
        .M_AXI_ARBURST(mb_0_mdm_M_AXI_ARBURST),
        .M_AXI_ARCACHE(mb_0_mdm_M_AXI_ARCACHE),
        .M_AXI_ARESETN(mb_0_reset_peripheral_aresetn),
        .M_AXI_ARID(mb_0_mdm_M_AXI_ARID),
        .M_AXI_ARLEN(mb_0_mdm_M_AXI_ARLEN),
        .M_AXI_ARLOCK(mb_0_mdm_M_AXI_ARLOCK),
        .M_AXI_ARPROT(mb_0_mdm_M_AXI_ARPROT),
        .M_AXI_ARQOS(mb_0_mdm_M_AXI_ARQOS),
        .M_AXI_ARREADY(mb_0_mdm_M_AXI_ARREADY),
        .M_AXI_ARSIZE(mb_0_mdm_M_AXI_ARSIZE),
        .M_AXI_ARVALID(mb_0_mdm_M_AXI_ARVALID),
        .M_AXI_AWADDR(mb_0_mdm_M_AXI_AWADDR),
        .M_AXI_AWBURST(mb_0_mdm_M_AXI_AWBURST),
        .M_AXI_AWCACHE(mb_0_mdm_M_AXI_AWCACHE),
        .M_AXI_AWID(mb_0_mdm_M_AXI_AWID),
        .M_AXI_AWLEN(mb_0_mdm_M_AXI_AWLEN),
        .M_AXI_AWLOCK(mb_0_mdm_M_AXI_AWLOCK),
        .M_AXI_AWPROT(mb_0_mdm_M_AXI_AWPROT),
        .M_AXI_AWQOS(mb_0_mdm_M_AXI_AWQOS),
        .M_AXI_AWREADY(mb_0_mdm_M_AXI_AWREADY),
        .M_AXI_AWSIZE(mb_0_mdm_M_AXI_AWSIZE),
        .M_AXI_AWVALID(mb_0_mdm_M_AXI_AWVALID),
        .M_AXI_BID(mb_0_mdm_M_AXI_BID[0]),
        .M_AXI_BREADY(mb_0_mdm_M_AXI_BREADY),
        .M_AXI_BRESP(mb_0_mdm_M_AXI_BRESP),
        .M_AXI_BVALID(mb_0_mdm_M_AXI_BVALID),
        .M_AXI_RDATA(mb_0_mdm_M_AXI_RDATA),
        .M_AXI_RID(mb_0_mdm_M_AXI_RID[0]),
        .M_AXI_RLAST(mb_0_mdm_M_AXI_RLAST),
        .M_AXI_RREADY(mb_0_mdm_M_AXI_RREADY),
        .M_AXI_RRESP(mb_0_mdm_M_AXI_RRESP),
        .M_AXI_RVALID(mb_0_mdm_M_AXI_RVALID),
        .M_AXI_WDATA(mb_0_mdm_M_AXI_WDATA),
        .M_AXI_WLAST(mb_0_mdm_M_AXI_WLAST),
        .M_AXI_WREADY(mb_0_mdm_M_AXI_WREADY),
        .M_AXI_WSTRB(mb_0_mdm_M_AXI_WSTRB),
        .M_AXI_WVALID(mb_0_mdm_M_AXI_WVALID),
        .S_AXI_ACLK(mb_0_clk),
        .S_AXI_ARADDR(mb_0_axi_interconnect_M07_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(mb_0_reset_peripheral_aresetn),
        .S_AXI_ARREADY(mb_0_axi_interconnect_M07_AXI_ARREADY),
        .S_AXI_ARVALID(mb_0_axi_interconnect_M07_AXI_ARVALID),
        .S_AXI_AWADDR(mb_0_axi_interconnect_M07_AXI_AWADDR[3:0]),
        .S_AXI_AWREADY(mb_0_axi_interconnect_M07_AXI_AWREADY),
        .S_AXI_AWVALID(mb_0_axi_interconnect_M07_AXI_AWVALID),
        .S_AXI_BREADY(mb_0_axi_interconnect_M07_AXI_BREADY),
        .S_AXI_BRESP(mb_0_axi_interconnect_M07_AXI_BRESP),
        .S_AXI_BVALID(mb_0_axi_interconnect_M07_AXI_BVALID),
        .S_AXI_RDATA(mb_0_axi_interconnect_M07_AXI_RDATA),
        .S_AXI_RREADY(mb_0_axi_interconnect_M07_AXI_RREADY),
        .S_AXI_RRESP(mb_0_axi_interconnect_M07_AXI_RRESP),
        .S_AXI_RVALID(mb_0_axi_interconnect_M07_AXI_RVALID),
        .S_AXI_WDATA(mb_0_axi_interconnect_M07_AXI_WDATA),
        .S_AXI_WREADY(mb_0_axi_interconnect_M07_AXI_WREADY),
        .S_AXI_WSTRB(mb_0_axi_interconnect_M07_AXI_WSTRB),
        .S_AXI_WVALID(mb_0_axi_interconnect_M07_AXI_WVALID),
        .Trig_Ack_Out_0(1'b0),
        .Trig_In_0(1'b0));
  mcu_rst_clk_wiz_1_100M_0 mb_0_reset
       (.aux_reset_in(mb_0_reset_aux_reset_in),
        .bus_struct_reset(mb_0_reset_bus_struct_reset),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .interconnect_aresetn(mb_0_reset_interconnect_aresetn),
        .mb_debug_sys_rst(mb_0_mdm_Debug_SYS_Rst),
        .mb_reset(mb_0_reset_mb_reset),
        .peripheral_aresetn(mb_0_reset_peripheral_aresetn),
        .peripheral_reset(mb_0_reset_peripheral_reset),
        .slowest_sync_clk(mb_0_clk));
  mcu_mig_7series_0_0 mig_7series_0
       (.aresetn(mb_0_reset_peripheral_aresetn),
        .clk_ref_i(mig_7series_0_ui_addn_clk_0),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_SDRAM_dq[31:0]),
        .ddr3_dqs_n(DDR3_SDRAM_dqs_n[3:0]),
        .ddr3_dqs_p(DDR3_SDRAM_dqs_p[3:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(mb_0_axi_interconnect_M01_AXI_ARADDR[29:0]),
        .s_axi_arburst(mb_0_axi_interconnect_M01_AXI_ARBURST),
        .s_axi_arcache(mb_0_axi_interconnect_M01_AXI_ARCACHE),
        .s_axi_arid(mb_0_axi_interconnect_M01_AXI_ARID),
        .s_axi_arlen(mb_0_axi_interconnect_M01_AXI_ARLEN),
        .s_axi_arlock(mb_0_axi_interconnect_M01_AXI_ARLOCK),
        .s_axi_arprot(mb_0_axi_interconnect_M01_AXI_ARPROT),
        .s_axi_arqos(mb_0_axi_interconnect_M01_AXI_ARQOS),
        .s_axi_arready(mb_0_axi_interconnect_M01_AXI_ARREADY),
        .s_axi_arsize(mb_0_axi_interconnect_M01_AXI_ARSIZE),
        .s_axi_arvalid(mb_0_axi_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(mb_0_axi_interconnect_M01_AXI_AWADDR[29:0]),
        .s_axi_awburst(mb_0_axi_interconnect_M01_AXI_AWBURST),
        .s_axi_awcache(mb_0_axi_interconnect_M01_AXI_AWCACHE),
        .s_axi_awid(mb_0_axi_interconnect_M01_AXI_AWID),
        .s_axi_awlen(mb_0_axi_interconnect_M01_AXI_AWLEN),
        .s_axi_awlock(mb_0_axi_interconnect_M01_AXI_AWLOCK),
        .s_axi_awprot(mb_0_axi_interconnect_M01_AXI_AWPROT),
        .s_axi_awqos(mb_0_axi_interconnect_M01_AXI_AWQOS),
        .s_axi_awready(mb_0_axi_interconnect_M01_AXI_AWREADY),
        .s_axi_awsize(mb_0_axi_interconnect_M01_AXI_AWSIZE),
        .s_axi_awvalid(mb_0_axi_interconnect_M01_AXI_AWVALID),
        .s_axi_bid(mb_0_axi_interconnect_M01_AXI_BID),
        .s_axi_bready(mb_0_axi_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(mb_0_axi_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(mb_0_axi_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(mb_0_axi_interconnect_M01_AXI_RDATA),
        .s_axi_rid(mb_0_axi_interconnect_M01_AXI_RID),
        .s_axi_rlast(mb_0_axi_interconnect_M01_AXI_RLAST),
        .s_axi_rready(mb_0_axi_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(mb_0_axi_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(mb_0_axi_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(mb_0_axi_interconnect_M01_AXI_WDATA),
        .s_axi_wlast(mb_0_axi_interconnect_M01_AXI_WLAST),
        .s_axi_wready(mb_0_axi_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(mb_0_axi_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(mb_0_axi_interconnect_M01_AXI_WVALID),
        .sys_clk_n(pll_clk_n_1),
        .sys_clk_p(pll_clk_p_1),
        .sys_rst(mig_7series_0_sys_rst),
        .ui_addn_clk_0(mig_7series_0_ui_addn_clk_0),
        .ui_addn_clk_1(mig_7series_0_ui_addn_clk_1),
        .ui_addn_clk_3(mig_7series_0_ui_addn_clk_3),
        .ui_clk(mb_0_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  mcu_selectio_wiz_1_0 selectio_LVDS_in
       (.bitslip(xlconstant_val0_dout),
        .clk_div_in(clk_32mhz_LVDS_clk_div_8),
        .clk_in(clk_32mhz_LVDS_clk),
        .data_in_from_pins_n(ufb_trx_rxd09_n_1),
        .data_in_from_pins_p(ufb_trx_rxd09_p_1),
        .data_in_to_device(CDC_LVDS_in_data),
        .io_reset(c_counter_binary_0_LVDS_reset_Q));
  mcu_selectio_wiz_0_0 selectio_LVDS_out
       (.clk_div_in(clk_32mhz_LVDS_clk_div_8),
        .clk_in(clk_32mhz_LVDS_clk),
        .clk_reset(clk_32mhz_LVDS_locked_inv_sr_Q),
        .clk_to_pins_n(selectio_wiz_lvds_out_clk_to_pins_n),
        .clk_to_pins_p(selectio_wiz_lvds_out_clk_to_pins_p),
        .data_out_from_device(CDC_LVDS_out_qdpo),
        .data_out_to_pins_n(selectio_wiz_lvds_out_data_out_to_pins_n),
        .data_out_to_pins_p(selectio_wiz_lvds_out_data_out_to_pins_p),
        .io_reset(c_counter_binary_0_LVDS_reset_Q));
  mcu_xlconcat_0_0 xlconcat_ROTENC
       (.In0(xlconcat_ROTENC_pulse),
        .In1(xlconstant_31bit_val0_dout),
        .dout(xlconcat_0_dout));
  mcu_xlconstant_0_0 xlconstant_LVDS_val0
       (.dout(xlconstant_val0_dout));
  mcu_xlconstant_val0_0 xlconstant_LVDS_val0000
       (.dout(xlconstant_val000_dout));
  mcu_xlconstant_0_1 xlconstant_LVDS_val1
       (.dout(xlconstant_val1_dout));
  mcu_xlconstant_0_2 xlconstant_ROTENC_31bit_val0
       (.dout(xlconstant_31bit_val0_dout));
endmodule

module mcu_microblaze_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arready,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awready,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [1:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [1:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [1:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [12:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [12:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input M09_AXI_arready;
  output M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input M09_AXI_awready;
  output M09_AXI_awvalid;
  output M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  input M10_AXI_arready;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  input M10_AXI_awready;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [31:0]M13_AXI_araddr;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output [0:0]S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  output [1:0]S01_AXI_bid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rid;
  output [0:0]S01_AXI_rlast;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [0:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output [0:0]S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input [0:0]S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [0:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output [0:0]S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input [0:0]S02_AXI_awvalid;
  output [1:0]S02_AXI_bid;
  input [0:0]S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output [0:0]S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rid;
  output [0:0]S02_AXI_rlast;
  input [0:0]S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output [0:0]S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input [0:0]S02_AXI_wlast;
  output [0:0]S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input [0:0]S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [31:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [0:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [0:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  output [0:0]S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input [0:0]S03_AXI_arvalid;
  input [31:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [0:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [0:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  output [0:0]S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input [0:0]S03_AXI_awvalid;
  output [1:0]S03_AXI_bid;
  input [0:0]S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output [0:0]S03_AXI_bvalid;
  output [31:0]S03_AXI_rdata;
  output [1:0]S03_AXI_rid;
  output [0:0]S03_AXI_rlast;
  input [0:0]S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output [0:0]S03_AXI_rvalid;
  input [31:0]S03_AXI_wdata;
  input [0:0]S03_AXI_wlast;
  output [0:0]S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input [0:0]S03_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire M10_ACLK_1;
  wire M10_ARESETN_1;
  wire M11_ACLK_1;
  wire M11_ARESETN_1;
  wire M12_ACLK_1;
  wire M12_ARESETN_1;
  wire M13_ACLK_1;
  wire M13_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire [31:0]m00_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m00_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m00_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m00_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m00_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m00_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m00_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m00_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m00_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m00_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m00_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m00_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m00_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m00_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m00_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m00_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m01_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_ARBURST;
  wire [3:0]m01_couplers_to_mb_0_axi_interconnect_ARCACHE;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_ARID;
  wire [7:0]m01_couplers_to_mb_0_axi_interconnect_ARLEN;
  wire m01_couplers_to_mb_0_axi_interconnect_ARLOCK;
  wire [2:0]m01_couplers_to_mb_0_axi_interconnect_ARPROT;
  wire [3:0]m01_couplers_to_mb_0_axi_interconnect_ARQOS;
  wire m01_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire [2:0]m01_couplers_to_mb_0_axi_interconnect_ARSIZE;
  wire m01_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_AWBURST;
  wire [3:0]m01_couplers_to_mb_0_axi_interconnect_AWCACHE;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_AWID;
  wire [7:0]m01_couplers_to_mb_0_axi_interconnect_AWLEN;
  wire m01_couplers_to_mb_0_axi_interconnect_AWLOCK;
  wire [2:0]m01_couplers_to_mb_0_axi_interconnect_AWPROT;
  wire [3:0]m01_couplers_to_mb_0_axi_interconnect_AWQOS;
  wire m01_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire [2:0]m01_couplers_to_mb_0_axi_interconnect_AWSIZE;
  wire m01_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_BID;
  wire m01_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m01_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m01_couplers_to_mb_0_axi_interconnect_RDATA;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_RID;
  wire m01_couplers_to_mb_0_axi_interconnect_RLAST;
  wire m01_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m01_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m01_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m01_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m01_couplers_to_mb_0_axi_interconnect_WLAST;
  wire m01_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m01_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m01_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [12:0]m02_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m02_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m02_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [12:0]m02_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m02_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m02_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m02_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m02_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m02_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m02_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m02_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m02_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m02_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m02_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m02_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m02_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m02_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m03_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m03_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m03_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m03_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m03_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m03_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m03_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m03_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m03_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m03_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m03_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m03_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m03_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m03_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m03_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m03_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m04_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m04_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m04_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m04_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m04_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m04_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m04_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m04_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m04_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m04_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m04_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m04_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m04_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m04_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m04_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m04_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m05_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m05_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m05_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m05_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m05_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m05_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m05_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m05_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m05_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m05_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m05_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m05_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m05_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m05_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m05_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m05_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m06_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m06_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m06_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m06_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m06_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m06_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m06_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m06_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m06_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m06_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m06_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m06_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m06_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m06_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m06_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m06_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m06_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m07_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m07_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m07_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m07_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m07_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m07_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m07_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m07_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m07_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m07_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m07_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m07_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m07_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m07_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m07_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m07_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m07_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m08_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m08_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m08_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m08_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m08_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m08_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m08_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m08_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m08_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m08_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m08_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m08_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m08_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m08_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m08_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m08_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m08_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m09_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m09_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m09_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m09_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m09_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m09_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m09_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m09_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m09_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m09_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m09_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m09_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m09_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m09_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m09_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m09_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m09_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m10_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m10_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m10_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m10_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m10_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m10_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m10_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m10_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m10_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m10_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m10_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m10_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m10_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m10_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m10_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m10_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m10_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m11_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m11_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m11_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m11_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m11_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m11_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m11_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m11_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m11_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m11_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m11_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m11_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m11_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m11_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m11_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m11_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m11_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m12_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m12_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m12_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m12_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m12_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m12_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m12_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m12_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m12_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m12_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m12_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m12_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m12_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m12_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m12_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m12_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m12_couplers_to_mb_0_axi_interconnect_WVALID;
  wire [31:0]m13_couplers_to_mb_0_axi_interconnect_ARADDR;
  wire m13_couplers_to_mb_0_axi_interconnect_ARREADY;
  wire m13_couplers_to_mb_0_axi_interconnect_ARVALID;
  wire [31:0]m13_couplers_to_mb_0_axi_interconnect_AWADDR;
  wire m13_couplers_to_mb_0_axi_interconnect_AWREADY;
  wire m13_couplers_to_mb_0_axi_interconnect_AWVALID;
  wire m13_couplers_to_mb_0_axi_interconnect_BREADY;
  wire [1:0]m13_couplers_to_mb_0_axi_interconnect_BRESP;
  wire m13_couplers_to_mb_0_axi_interconnect_BVALID;
  wire [31:0]m13_couplers_to_mb_0_axi_interconnect_RDATA;
  wire m13_couplers_to_mb_0_axi_interconnect_RREADY;
  wire [1:0]m13_couplers_to_mb_0_axi_interconnect_RRESP;
  wire m13_couplers_to_mb_0_axi_interconnect_RVALID;
  wire [31:0]m13_couplers_to_mb_0_axi_interconnect_WDATA;
  wire m13_couplers_to_mb_0_axi_interconnect_WREADY;
  wire [3:0]m13_couplers_to_mb_0_axi_interconnect_WSTRB;
  wire m13_couplers_to_mb_0_axi_interconnect_WVALID;
  wire mb_0_axi_interconnect_ACLK_net;
  wire mb_0_axi_interconnect_ARESETN_net;
  wire [31:0]mb_0_axi_interconnect_to_s00_couplers_ARADDR;
  wire [2:0]mb_0_axi_interconnect_to_s00_couplers_ARPROT;
  wire mb_0_axi_interconnect_to_s00_couplers_ARREADY;
  wire mb_0_axi_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]mb_0_axi_interconnect_to_s00_couplers_AWADDR;
  wire [2:0]mb_0_axi_interconnect_to_s00_couplers_AWPROT;
  wire mb_0_axi_interconnect_to_s00_couplers_AWREADY;
  wire mb_0_axi_interconnect_to_s00_couplers_AWVALID;
  wire mb_0_axi_interconnect_to_s00_couplers_BREADY;
  wire [1:0]mb_0_axi_interconnect_to_s00_couplers_BRESP;
  wire mb_0_axi_interconnect_to_s00_couplers_BVALID;
  wire [31:0]mb_0_axi_interconnect_to_s00_couplers_RDATA;
  wire mb_0_axi_interconnect_to_s00_couplers_RREADY;
  wire [1:0]mb_0_axi_interconnect_to_s00_couplers_RRESP;
  wire mb_0_axi_interconnect_to_s00_couplers_RVALID;
  wire [31:0]mb_0_axi_interconnect_to_s00_couplers_WDATA;
  wire mb_0_axi_interconnect_to_s00_couplers_WREADY;
  wire [3:0]mb_0_axi_interconnect_to_s00_couplers_WSTRB;
  wire mb_0_axi_interconnect_to_s00_couplers_WVALID;
  wire [31:0]mb_0_axi_interconnect_to_s01_couplers_ARADDR;
  wire [1:0]mb_0_axi_interconnect_to_s01_couplers_ARBURST;
  wire [3:0]mb_0_axi_interconnect_to_s01_couplers_ARCACHE;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_ARID;
  wire [7:0]mb_0_axi_interconnect_to_s01_couplers_ARLEN;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_ARLOCK;
  wire [2:0]mb_0_axi_interconnect_to_s01_couplers_ARPROT;
  wire [3:0]mb_0_axi_interconnect_to_s01_couplers_ARQOS;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_ARREADY;
  wire [2:0]mb_0_axi_interconnect_to_s01_couplers_ARSIZE;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_ARVALID;
  wire [31:0]mb_0_axi_interconnect_to_s01_couplers_AWADDR;
  wire [1:0]mb_0_axi_interconnect_to_s01_couplers_AWBURST;
  wire [3:0]mb_0_axi_interconnect_to_s01_couplers_AWCACHE;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_AWID;
  wire [7:0]mb_0_axi_interconnect_to_s01_couplers_AWLEN;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_AWLOCK;
  wire [2:0]mb_0_axi_interconnect_to_s01_couplers_AWPROT;
  wire [3:0]mb_0_axi_interconnect_to_s01_couplers_AWQOS;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_AWREADY;
  wire [2:0]mb_0_axi_interconnect_to_s01_couplers_AWSIZE;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_AWVALID;
  wire [1:0]mb_0_axi_interconnect_to_s01_couplers_BID;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_BREADY;
  wire [1:0]mb_0_axi_interconnect_to_s01_couplers_BRESP;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_BVALID;
  wire [31:0]mb_0_axi_interconnect_to_s01_couplers_RDATA;
  wire [1:0]mb_0_axi_interconnect_to_s01_couplers_RID;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_RLAST;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_RREADY;
  wire [1:0]mb_0_axi_interconnect_to_s01_couplers_RRESP;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_RVALID;
  wire [31:0]mb_0_axi_interconnect_to_s01_couplers_WDATA;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_WLAST;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_WREADY;
  wire [3:0]mb_0_axi_interconnect_to_s01_couplers_WSTRB;
  wire [0:0]mb_0_axi_interconnect_to_s01_couplers_WVALID;
  wire [31:0]mb_0_axi_interconnect_to_s02_couplers_ARADDR;
  wire [1:0]mb_0_axi_interconnect_to_s02_couplers_ARBURST;
  wire [3:0]mb_0_axi_interconnect_to_s02_couplers_ARCACHE;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_ARID;
  wire [7:0]mb_0_axi_interconnect_to_s02_couplers_ARLEN;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_ARLOCK;
  wire [2:0]mb_0_axi_interconnect_to_s02_couplers_ARPROT;
  wire [3:0]mb_0_axi_interconnect_to_s02_couplers_ARQOS;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_ARREADY;
  wire [2:0]mb_0_axi_interconnect_to_s02_couplers_ARSIZE;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_ARVALID;
  wire [31:0]mb_0_axi_interconnect_to_s02_couplers_AWADDR;
  wire [1:0]mb_0_axi_interconnect_to_s02_couplers_AWBURST;
  wire [3:0]mb_0_axi_interconnect_to_s02_couplers_AWCACHE;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_AWID;
  wire [7:0]mb_0_axi_interconnect_to_s02_couplers_AWLEN;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_AWLOCK;
  wire [2:0]mb_0_axi_interconnect_to_s02_couplers_AWPROT;
  wire [3:0]mb_0_axi_interconnect_to_s02_couplers_AWQOS;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_AWREADY;
  wire [2:0]mb_0_axi_interconnect_to_s02_couplers_AWSIZE;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_AWVALID;
  wire [1:0]mb_0_axi_interconnect_to_s02_couplers_BID;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_BREADY;
  wire [1:0]mb_0_axi_interconnect_to_s02_couplers_BRESP;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_BVALID;
  wire [31:0]mb_0_axi_interconnect_to_s02_couplers_RDATA;
  wire [1:0]mb_0_axi_interconnect_to_s02_couplers_RID;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_RLAST;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_RREADY;
  wire [1:0]mb_0_axi_interconnect_to_s02_couplers_RRESP;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_RVALID;
  wire [31:0]mb_0_axi_interconnect_to_s02_couplers_WDATA;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_WLAST;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_WREADY;
  wire [3:0]mb_0_axi_interconnect_to_s02_couplers_WSTRB;
  wire [0:0]mb_0_axi_interconnect_to_s02_couplers_WVALID;
  wire [31:0]mb_0_axi_interconnect_to_s03_couplers_ARADDR;
  wire [1:0]mb_0_axi_interconnect_to_s03_couplers_ARBURST;
  wire [3:0]mb_0_axi_interconnect_to_s03_couplers_ARCACHE;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_ARID;
  wire [7:0]mb_0_axi_interconnect_to_s03_couplers_ARLEN;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_ARLOCK;
  wire [2:0]mb_0_axi_interconnect_to_s03_couplers_ARPROT;
  wire [3:0]mb_0_axi_interconnect_to_s03_couplers_ARQOS;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_ARREADY;
  wire [2:0]mb_0_axi_interconnect_to_s03_couplers_ARSIZE;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_ARVALID;
  wire [31:0]mb_0_axi_interconnect_to_s03_couplers_AWADDR;
  wire [1:0]mb_0_axi_interconnect_to_s03_couplers_AWBURST;
  wire [3:0]mb_0_axi_interconnect_to_s03_couplers_AWCACHE;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_AWID;
  wire [7:0]mb_0_axi_interconnect_to_s03_couplers_AWLEN;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_AWLOCK;
  wire [2:0]mb_0_axi_interconnect_to_s03_couplers_AWPROT;
  wire [3:0]mb_0_axi_interconnect_to_s03_couplers_AWQOS;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_AWREADY;
  wire [2:0]mb_0_axi_interconnect_to_s03_couplers_AWSIZE;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_AWVALID;
  wire [1:0]mb_0_axi_interconnect_to_s03_couplers_BID;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_BREADY;
  wire [1:0]mb_0_axi_interconnect_to_s03_couplers_BRESP;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_BVALID;
  wire [31:0]mb_0_axi_interconnect_to_s03_couplers_RDATA;
  wire [1:0]mb_0_axi_interconnect_to_s03_couplers_RID;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_RLAST;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_RREADY;
  wire [1:0]mb_0_axi_interconnect_to_s03_couplers_RRESP;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_RVALID;
  wire [31:0]mb_0_axi_interconnect_to_s03_couplers_WDATA;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_WLAST;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_WREADY;
  wire [3:0]mb_0_axi_interconnect_to_s03_couplers_WSTRB;
  wire [0:0]mb_0_axi_interconnect_to_s03_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [0:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire [0:0]s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [0:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [0:0]s01_couplers_to_xbar_AWVALID;
  wire [3:2]s01_couplers_to_xbar_BID;
  wire [0:0]s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [3:2]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire [0:0]s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [0:0]s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire [0:0]s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [0:0]s02_couplers_to_xbar_ARID;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire [0:0]s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [0:0]s02_couplers_to_xbar_AWID;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire [0:0]s02_couplers_to_xbar_AWVALID;
  wire [5:4]s02_couplers_to_xbar_BID;
  wire [0:0]s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire [5:4]s02_couplers_to_xbar_RID;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire [0:0]s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire [0:0]s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire [0:0]s02_couplers_to_xbar_WVALID;
  wire [31:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [0:0]s03_couplers_to_xbar_ARID;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire [0:0]s03_couplers_to_xbar_ARVALID;
  wire [31:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [0:0]s03_couplers_to_xbar_AWID;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire [0:0]s03_couplers_to_xbar_AWVALID;
  wire [7:6]s03_couplers_to_xbar_BID;
  wire [0:0]s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [127:96]s03_couplers_to_xbar_RDATA;
  wire [7:6]s03_couplers_to_xbar_RID;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire [0:0]s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [31:0]s03_couplers_to_xbar_WDATA;
  wire [0:0]s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [3:0]s03_couplers_to_xbar_WSTRB;
  wire [0:0]s03_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [3:2]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [3:2]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [5:4]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [5:4]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [1:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [1:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [7:6]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [7:6]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [1:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [1:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [9:8]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [9:8]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [1:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [1:0]xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [11:10]xbar_to_m05_couplers_ARID;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [11:10]xbar_to_m05_couplers_AWID;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [1:0]xbar_to_m05_couplers_BID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [1:0]xbar_to_m05_couplers_RID;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [13:12]xbar_to_m06_couplers_ARID;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [13:12]xbar_to_m06_couplers_AWID;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [1:0]xbar_to_m06_couplers_BID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [1:0]xbar_to_m06_couplers_RID;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [15:14]xbar_to_m07_couplers_ARID;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [15:14]xbar_to_m07_couplers_AWID;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [1:0]xbar_to_m07_couplers_BID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [1:0]xbar_to_m07_couplers_RID;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [17:16]xbar_to_m08_couplers_ARID;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [35:32]xbar_to_m08_couplers_ARQOS;
  wire xbar_to_m08_couplers_ARREADY;
  wire [35:32]xbar_to_m08_couplers_ARREGION;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [17:16]xbar_to_m08_couplers_AWID;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [35:32]xbar_to_m08_couplers_AWQOS;
  wire xbar_to_m08_couplers_AWREADY;
  wire [35:32]xbar_to_m08_couplers_AWREGION;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [1:0]xbar_to_m08_couplers_BID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [1:0]xbar_to_m08_couplers_RID;
  wire xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [319:288]xbar_to_m09_couplers_ARADDR;
  wire [19:18]xbar_to_m09_couplers_ARBURST;
  wire [39:36]xbar_to_m09_couplers_ARCACHE;
  wire [19:18]xbar_to_m09_couplers_ARID;
  wire [79:72]xbar_to_m09_couplers_ARLEN;
  wire [9:9]xbar_to_m09_couplers_ARLOCK;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire [39:36]xbar_to_m09_couplers_ARQOS;
  wire xbar_to_m09_couplers_ARREADY;
  wire [39:36]xbar_to_m09_couplers_ARREGION;
  wire [29:27]xbar_to_m09_couplers_ARSIZE;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [319:288]xbar_to_m09_couplers_AWADDR;
  wire [19:18]xbar_to_m09_couplers_AWBURST;
  wire [39:36]xbar_to_m09_couplers_AWCACHE;
  wire [19:18]xbar_to_m09_couplers_AWID;
  wire [79:72]xbar_to_m09_couplers_AWLEN;
  wire [9:9]xbar_to_m09_couplers_AWLOCK;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire [39:36]xbar_to_m09_couplers_AWQOS;
  wire xbar_to_m09_couplers_AWREADY;
  wire [39:36]xbar_to_m09_couplers_AWREGION;
  wire [29:27]xbar_to_m09_couplers_AWSIZE;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [1:0]xbar_to_m09_couplers_BID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire xbar_to_m09_couplers_BVALID;
  wire [31:0]xbar_to_m09_couplers_RDATA;
  wire [1:0]xbar_to_m09_couplers_RID;
  wire xbar_to_m09_couplers_RLAST;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire xbar_to_m09_couplers_RVALID;
  wire [319:288]xbar_to_m09_couplers_WDATA;
  wire [9:9]xbar_to_m09_couplers_WLAST;
  wire xbar_to_m09_couplers_WREADY;
  wire [39:36]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [351:320]xbar_to_m10_couplers_ARADDR;
  wire [21:20]xbar_to_m10_couplers_ARBURST;
  wire [43:40]xbar_to_m10_couplers_ARCACHE;
  wire [21:20]xbar_to_m10_couplers_ARID;
  wire [87:80]xbar_to_m10_couplers_ARLEN;
  wire [10:10]xbar_to_m10_couplers_ARLOCK;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire [43:40]xbar_to_m10_couplers_ARQOS;
  wire xbar_to_m10_couplers_ARREADY;
  wire [43:40]xbar_to_m10_couplers_ARREGION;
  wire [32:30]xbar_to_m10_couplers_ARSIZE;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [351:320]xbar_to_m10_couplers_AWADDR;
  wire [21:20]xbar_to_m10_couplers_AWBURST;
  wire [43:40]xbar_to_m10_couplers_AWCACHE;
  wire [21:20]xbar_to_m10_couplers_AWID;
  wire [87:80]xbar_to_m10_couplers_AWLEN;
  wire [10:10]xbar_to_m10_couplers_AWLOCK;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire [43:40]xbar_to_m10_couplers_AWQOS;
  wire xbar_to_m10_couplers_AWREADY;
  wire [43:40]xbar_to_m10_couplers_AWREGION;
  wire [32:30]xbar_to_m10_couplers_AWSIZE;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [1:0]xbar_to_m10_couplers_BID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire xbar_to_m10_couplers_BVALID;
  wire [31:0]xbar_to_m10_couplers_RDATA;
  wire [1:0]xbar_to_m10_couplers_RID;
  wire xbar_to_m10_couplers_RLAST;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire xbar_to_m10_couplers_RVALID;
  wire [351:320]xbar_to_m10_couplers_WDATA;
  wire [10:10]xbar_to_m10_couplers_WLAST;
  wire xbar_to_m10_couplers_WREADY;
  wire [43:40]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;
  wire [383:352]xbar_to_m11_couplers_ARADDR;
  wire [23:22]xbar_to_m11_couplers_ARBURST;
  wire [47:44]xbar_to_m11_couplers_ARCACHE;
  wire [23:22]xbar_to_m11_couplers_ARID;
  wire [95:88]xbar_to_m11_couplers_ARLEN;
  wire [11:11]xbar_to_m11_couplers_ARLOCK;
  wire [35:33]xbar_to_m11_couplers_ARPROT;
  wire [47:44]xbar_to_m11_couplers_ARQOS;
  wire xbar_to_m11_couplers_ARREADY;
  wire [47:44]xbar_to_m11_couplers_ARREGION;
  wire [35:33]xbar_to_m11_couplers_ARSIZE;
  wire [11:11]xbar_to_m11_couplers_ARVALID;
  wire [383:352]xbar_to_m11_couplers_AWADDR;
  wire [23:22]xbar_to_m11_couplers_AWBURST;
  wire [47:44]xbar_to_m11_couplers_AWCACHE;
  wire [23:22]xbar_to_m11_couplers_AWID;
  wire [95:88]xbar_to_m11_couplers_AWLEN;
  wire [11:11]xbar_to_m11_couplers_AWLOCK;
  wire [35:33]xbar_to_m11_couplers_AWPROT;
  wire [47:44]xbar_to_m11_couplers_AWQOS;
  wire xbar_to_m11_couplers_AWREADY;
  wire [47:44]xbar_to_m11_couplers_AWREGION;
  wire [35:33]xbar_to_m11_couplers_AWSIZE;
  wire [11:11]xbar_to_m11_couplers_AWVALID;
  wire [1:0]xbar_to_m11_couplers_BID;
  wire [11:11]xbar_to_m11_couplers_BREADY;
  wire [1:0]xbar_to_m11_couplers_BRESP;
  wire xbar_to_m11_couplers_BVALID;
  wire [31:0]xbar_to_m11_couplers_RDATA;
  wire [1:0]xbar_to_m11_couplers_RID;
  wire xbar_to_m11_couplers_RLAST;
  wire [11:11]xbar_to_m11_couplers_RREADY;
  wire [1:0]xbar_to_m11_couplers_RRESP;
  wire xbar_to_m11_couplers_RVALID;
  wire [383:352]xbar_to_m11_couplers_WDATA;
  wire [11:11]xbar_to_m11_couplers_WLAST;
  wire xbar_to_m11_couplers_WREADY;
  wire [47:44]xbar_to_m11_couplers_WSTRB;
  wire [11:11]xbar_to_m11_couplers_WVALID;
  wire [415:384]xbar_to_m12_couplers_ARADDR;
  wire [25:24]xbar_to_m12_couplers_ARBURST;
  wire [51:48]xbar_to_m12_couplers_ARCACHE;
  wire [25:24]xbar_to_m12_couplers_ARID;
  wire [103:96]xbar_to_m12_couplers_ARLEN;
  wire [12:12]xbar_to_m12_couplers_ARLOCK;
  wire [38:36]xbar_to_m12_couplers_ARPROT;
  wire [51:48]xbar_to_m12_couplers_ARQOS;
  wire xbar_to_m12_couplers_ARREADY;
  wire [51:48]xbar_to_m12_couplers_ARREGION;
  wire [38:36]xbar_to_m12_couplers_ARSIZE;
  wire [12:12]xbar_to_m12_couplers_ARVALID;
  wire [415:384]xbar_to_m12_couplers_AWADDR;
  wire [25:24]xbar_to_m12_couplers_AWBURST;
  wire [51:48]xbar_to_m12_couplers_AWCACHE;
  wire [25:24]xbar_to_m12_couplers_AWID;
  wire [103:96]xbar_to_m12_couplers_AWLEN;
  wire [12:12]xbar_to_m12_couplers_AWLOCK;
  wire [38:36]xbar_to_m12_couplers_AWPROT;
  wire [51:48]xbar_to_m12_couplers_AWQOS;
  wire xbar_to_m12_couplers_AWREADY;
  wire [51:48]xbar_to_m12_couplers_AWREGION;
  wire [38:36]xbar_to_m12_couplers_AWSIZE;
  wire [12:12]xbar_to_m12_couplers_AWVALID;
  wire [1:0]xbar_to_m12_couplers_BID;
  wire [12:12]xbar_to_m12_couplers_BREADY;
  wire [1:0]xbar_to_m12_couplers_BRESP;
  wire xbar_to_m12_couplers_BVALID;
  wire [31:0]xbar_to_m12_couplers_RDATA;
  wire [1:0]xbar_to_m12_couplers_RID;
  wire xbar_to_m12_couplers_RLAST;
  wire [12:12]xbar_to_m12_couplers_RREADY;
  wire [1:0]xbar_to_m12_couplers_RRESP;
  wire xbar_to_m12_couplers_RVALID;
  wire [415:384]xbar_to_m12_couplers_WDATA;
  wire [12:12]xbar_to_m12_couplers_WLAST;
  wire xbar_to_m12_couplers_WREADY;
  wire [51:48]xbar_to_m12_couplers_WSTRB;
  wire [12:12]xbar_to_m12_couplers_WVALID;
  wire [447:416]xbar_to_m13_couplers_ARADDR;
  wire [27:26]xbar_to_m13_couplers_ARBURST;
  wire [55:52]xbar_to_m13_couplers_ARCACHE;
  wire [27:26]xbar_to_m13_couplers_ARID;
  wire [111:104]xbar_to_m13_couplers_ARLEN;
  wire [13:13]xbar_to_m13_couplers_ARLOCK;
  wire [41:39]xbar_to_m13_couplers_ARPROT;
  wire [55:52]xbar_to_m13_couplers_ARQOS;
  wire xbar_to_m13_couplers_ARREADY;
  wire [55:52]xbar_to_m13_couplers_ARREGION;
  wire [41:39]xbar_to_m13_couplers_ARSIZE;
  wire [13:13]xbar_to_m13_couplers_ARVALID;
  wire [447:416]xbar_to_m13_couplers_AWADDR;
  wire [27:26]xbar_to_m13_couplers_AWBURST;
  wire [55:52]xbar_to_m13_couplers_AWCACHE;
  wire [27:26]xbar_to_m13_couplers_AWID;
  wire [111:104]xbar_to_m13_couplers_AWLEN;
  wire [13:13]xbar_to_m13_couplers_AWLOCK;
  wire [41:39]xbar_to_m13_couplers_AWPROT;
  wire [55:52]xbar_to_m13_couplers_AWQOS;
  wire xbar_to_m13_couplers_AWREADY;
  wire [55:52]xbar_to_m13_couplers_AWREGION;
  wire [41:39]xbar_to_m13_couplers_AWSIZE;
  wire [13:13]xbar_to_m13_couplers_AWVALID;
  wire [1:0]xbar_to_m13_couplers_BID;
  wire [13:13]xbar_to_m13_couplers_BREADY;
  wire [1:0]xbar_to_m13_couplers_BRESP;
  wire xbar_to_m13_couplers_BVALID;
  wire [31:0]xbar_to_m13_couplers_RDATA;
  wire [1:0]xbar_to_m13_couplers_RID;
  wire xbar_to_m13_couplers_RLAST;
  wire [13:13]xbar_to_m13_couplers_RREADY;
  wire [1:0]xbar_to_m13_couplers_RRESP;
  wire xbar_to_m13_couplers_RVALID;
  wire [447:416]xbar_to_m13_couplers_WDATA;
  wire [13:13]xbar_to_m13_couplers_WLAST;
  wire xbar_to_m13_couplers_WREADY;
  wire [55:52]xbar_to_m13_couplers_WSTRB;
  wire [13:13]xbar_to_m13_couplers_WVALID;
  wire [55:0]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [55:0]NLW_xbar_m_axi_awregion_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [7:0]NLW_xbar_s_axi_rid_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_mb_0_axi_interconnect_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_mb_0_axi_interconnect_ARCACHE;
  assign M01_AXI_arid[1:0] = m01_couplers_to_mb_0_axi_interconnect_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_mb_0_axi_interconnect_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_mb_0_axi_interconnect_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_mb_0_axi_interconnect_ARPROT;
  assign M01_AXI_arqos[3:0] = m01_couplers_to_mb_0_axi_interconnect_ARQOS;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_mb_0_axi_interconnect_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_mb_0_axi_interconnect_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_mb_0_axi_interconnect_AWCACHE;
  assign M01_AXI_awid[1:0] = m01_couplers_to_mb_0_axi_interconnect_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_mb_0_axi_interconnect_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_mb_0_axi_interconnect_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_mb_0_axi_interconnect_AWPROT;
  assign M01_AXI_awqos[3:0] = m01_couplers_to_mb_0_axi_interconnect_AWQOS;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_mb_0_axi_interconnect_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_mb_0_axi_interconnect_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[12:0] = m02_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M02_AXI_awaddr[12:0] = m02_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M04_AXI_rready = m04_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M05_AXI_rready = m05_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M06_AXI_rready = m06_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M07_AXI_rready = m07_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M08_AXI_rready = m08_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M09_AXI_arvalid = m09_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M09_AXI_awvalid = m09_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M09_AXI_bready = m09_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M09_AXI_rready = m09_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M09_AXI_wvalid = m09_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M10_AXI_arvalid = m10_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M10_AXI_awvalid = m10_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M10_AXI_rready = m10_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M11_ACLK_1 = M11_ACLK;
  assign M11_ARESETN_1 = M11_ARESETN;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M11_AXI_arvalid = m11_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M11_AXI_awvalid = m11_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M11_AXI_rready = m11_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M12_ACLK_1 = M12_ACLK;
  assign M12_ARESETN_1 = M12_ARESETN;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M12_AXI_arvalid = m12_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M12_AXI_awvalid = m12_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M12_AXI_rready = m12_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_mb_0_axi_interconnect_WVALID;
  assign M13_ACLK_1 = M13_ACLK;
  assign M13_ARESETN_1 = M13_ARESETN;
  assign M13_AXI_araddr[31:0] = m13_couplers_to_mb_0_axi_interconnect_ARADDR;
  assign M13_AXI_arvalid = m13_couplers_to_mb_0_axi_interconnect_ARVALID;
  assign M13_AXI_awaddr[31:0] = m13_couplers_to_mb_0_axi_interconnect_AWADDR;
  assign M13_AXI_awvalid = m13_couplers_to_mb_0_axi_interconnect_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_mb_0_axi_interconnect_BREADY;
  assign M13_AXI_rready = m13_couplers_to_mb_0_axi_interconnect_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_mb_0_axi_interconnect_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_mb_0_axi_interconnect_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_mb_0_axi_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = mb_0_axi_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = mb_0_axi_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = mb_0_axi_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = mb_0_axi_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = mb_0_axi_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = mb_0_axi_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = mb_0_axi_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = mb_0_axi_interconnect_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready[0] = mb_0_axi_interconnect_to_s01_couplers_ARREADY;
  assign S01_AXI_awready[0] = mb_0_axi_interconnect_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[1:0] = mb_0_axi_interconnect_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = mb_0_axi_interconnect_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid[0] = mb_0_axi_interconnect_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = mb_0_axi_interconnect_to_s01_couplers_RDATA;
  assign S01_AXI_rid[1:0] = mb_0_axi_interconnect_to_s01_couplers_RID;
  assign S01_AXI_rlast[0] = mb_0_axi_interconnect_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = mb_0_axi_interconnect_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid[0] = mb_0_axi_interconnect_to_s01_couplers_RVALID;
  assign S01_AXI_wready[0] = mb_0_axi_interconnect_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready[0] = mb_0_axi_interconnect_to_s02_couplers_ARREADY;
  assign S02_AXI_awready[0] = mb_0_axi_interconnect_to_s02_couplers_AWREADY;
  assign S02_AXI_bid[1:0] = mb_0_axi_interconnect_to_s02_couplers_BID;
  assign S02_AXI_bresp[1:0] = mb_0_axi_interconnect_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid[0] = mb_0_axi_interconnect_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = mb_0_axi_interconnect_to_s02_couplers_RDATA;
  assign S02_AXI_rid[1:0] = mb_0_axi_interconnect_to_s02_couplers_RID;
  assign S02_AXI_rlast[0] = mb_0_axi_interconnect_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = mb_0_axi_interconnect_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid[0] = mb_0_axi_interconnect_to_s02_couplers_RVALID;
  assign S02_AXI_wready[0] = mb_0_axi_interconnect_to_s02_couplers_WREADY;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_arready[0] = mb_0_axi_interconnect_to_s03_couplers_ARREADY;
  assign S03_AXI_awready[0] = mb_0_axi_interconnect_to_s03_couplers_AWREADY;
  assign S03_AXI_bid[1:0] = mb_0_axi_interconnect_to_s03_couplers_BID;
  assign S03_AXI_bresp[1:0] = mb_0_axi_interconnect_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid[0] = mb_0_axi_interconnect_to_s03_couplers_BVALID;
  assign S03_AXI_rdata[31:0] = mb_0_axi_interconnect_to_s03_couplers_RDATA;
  assign S03_AXI_rid[1:0] = mb_0_axi_interconnect_to_s03_couplers_RID;
  assign S03_AXI_rlast[0] = mb_0_axi_interconnect_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = mb_0_axi_interconnect_to_s03_couplers_RRESP;
  assign S03_AXI_rvalid[0] = mb_0_axi_interconnect_to_s03_couplers_RVALID;
  assign S03_AXI_wready[0] = mb_0_axi_interconnect_to_s03_couplers_WREADY;
  assign m00_couplers_to_mb_0_axi_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_mb_0_axi_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_mb_0_axi_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_mb_0_axi_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_mb_0_axi_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_mb_0_axi_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_mb_0_axi_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_mb_0_axi_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_mb_0_axi_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_mb_0_axi_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_mb_0_axi_interconnect_BID = M01_AXI_bid[1:0];
  assign m01_couplers_to_mb_0_axi_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_mb_0_axi_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_mb_0_axi_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_mb_0_axi_interconnect_RID = M01_AXI_rid[1:0];
  assign m01_couplers_to_mb_0_axi_interconnect_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_mb_0_axi_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_mb_0_axi_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_mb_0_axi_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_mb_0_axi_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_mb_0_axi_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_mb_0_axi_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_mb_0_axi_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_mb_0_axi_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_mb_0_axi_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_mb_0_axi_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_mb_0_axi_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_mb_0_axi_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_mb_0_axi_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_mb_0_axi_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_mb_0_axi_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_mb_0_axi_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_mb_0_axi_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_mb_0_axi_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_mb_0_axi_interconnect_WREADY = M03_AXI_wready;
  assign m04_couplers_to_mb_0_axi_interconnect_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_mb_0_axi_interconnect_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_mb_0_axi_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_mb_0_axi_interconnect_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_mb_0_axi_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_mb_0_axi_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_mb_0_axi_interconnect_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_mb_0_axi_interconnect_WREADY = M04_AXI_wready;
  assign m05_couplers_to_mb_0_axi_interconnect_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_mb_0_axi_interconnect_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_mb_0_axi_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_mb_0_axi_interconnect_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_mb_0_axi_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_mb_0_axi_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_mb_0_axi_interconnect_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_mb_0_axi_interconnect_WREADY = M05_AXI_wready;
  assign m06_couplers_to_mb_0_axi_interconnect_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_mb_0_axi_interconnect_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_mb_0_axi_interconnect_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_mb_0_axi_interconnect_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_mb_0_axi_interconnect_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_mb_0_axi_interconnect_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_mb_0_axi_interconnect_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_mb_0_axi_interconnect_WREADY = M06_AXI_wready;
  assign m07_couplers_to_mb_0_axi_interconnect_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_mb_0_axi_interconnect_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_mb_0_axi_interconnect_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_mb_0_axi_interconnect_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_mb_0_axi_interconnect_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_mb_0_axi_interconnect_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_mb_0_axi_interconnect_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_mb_0_axi_interconnect_WREADY = M07_AXI_wready;
  assign m08_couplers_to_mb_0_axi_interconnect_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_mb_0_axi_interconnect_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_mb_0_axi_interconnect_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_mb_0_axi_interconnect_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_mb_0_axi_interconnect_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_mb_0_axi_interconnect_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_mb_0_axi_interconnect_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_mb_0_axi_interconnect_WREADY = M08_AXI_wready;
  assign m09_couplers_to_mb_0_axi_interconnect_ARREADY = M09_AXI_arready;
  assign m09_couplers_to_mb_0_axi_interconnect_AWREADY = M09_AXI_awready;
  assign m09_couplers_to_mb_0_axi_interconnect_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_mb_0_axi_interconnect_BVALID = M09_AXI_bvalid;
  assign m09_couplers_to_mb_0_axi_interconnect_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_mb_0_axi_interconnect_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_mb_0_axi_interconnect_RVALID = M09_AXI_rvalid;
  assign m09_couplers_to_mb_0_axi_interconnect_WREADY = M09_AXI_wready;
  assign m10_couplers_to_mb_0_axi_interconnect_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_mb_0_axi_interconnect_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_mb_0_axi_interconnect_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_mb_0_axi_interconnect_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_mb_0_axi_interconnect_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_mb_0_axi_interconnect_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_mb_0_axi_interconnect_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_mb_0_axi_interconnect_WREADY = M10_AXI_wready;
  assign m11_couplers_to_mb_0_axi_interconnect_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_mb_0_axi_interconnect_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_mb_0_axi_interconnect_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_mb_0_axi_interconnect_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_mb_0_axi_interconnect_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_mb_0_axi_interconnect_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_mb_0_axi_interconnect_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_mb_0_axi_interconnect_WREADY = M11_AXI_wready;
  assign m12_couplers_to_mb_0_axi_interconnect_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_mb_0_axi_interconnect_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_mb_0_axi_interconnect_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_mb_0_axi_interconnect_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_mb_0_axi_interconnect_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_mb_0_axi_interconnect_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_mb_0_axi_interconnect_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_mb_0_axi_interconnect_WREADY = M12_AXI_wready;
  assign m13_couplers_to_mb_0_axi_interconnect_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_mb_0_axi_interconnect_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_mb_0_axi_interconnect_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_mb_0_axi_interconnect_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_mb_0_axi_interconnect_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_mb_0_axi_interconnect_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_mb_0_axi_interconnect_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_mb_0_axi_interconnect_WREADY = M13_AXI_wready;
  assign mb_0_axi_interconnect_ACLK_net = ACLK;
  assign mb_0_axi_interconnect_ARESETN_net = ARESETN;
  assign mb_0_axi_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign mb_0_axi_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign mb_0_axi_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign mb_0_axi_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign mb_0_axi_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign mb_0_axi_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign mb_0_axi_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign mb_0_axi_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign mb_0_axi_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign mb_0_axi_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign mb_0_axi_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign mb_0_axi_interconnect_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign mb_0_axi_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid[0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign mb_0_axi_interconnect_to_s01_couplers_AWVALID = S01_AXI_awvalid[0];
  assign mb_0_axi_interconnect_to_s01_couplers_BREADY = S01_AXI_bready[0];
  assign mb_0_axi_interconnect_to_s01_couplers_RREADY = S01_AXI_rready[0];
  assign mb_0_axi_interconnect_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign mb_0_axi_interconnect_to_s01_couplers_WLAST = S01_AXI_wlast[0];
  assign mb_0_axi_interconnect_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign mb_0_axi_interconnect_to_s01_couplers_WVALID = S01_AXI_wvalid[0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARID = S02_AXI_arid[0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARLOCK = S02_AXI_arlock[0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign mb_0_axi_interconnect_to_s02_couplers_ARVALID = S02_AXI_arvalid[0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWID = S02_AXI_awid[0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWLOCK = S02_AXI_awlock[0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign mb_0_axi_interconnect_to_s02_couplers_AWVALID = S02_AXI_awvalid[0];
  assign mb_0_axi_interconnect_to_s02_couplers_BREADY = S02_AXI_bready[0];
  assign mb_0_axi_interconnect_to_s02_couplers_RREADY = S02_AXI_rready[0];
  assign mb_0_axi_interconnect_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign mb_0_axi_interconnect_to_s02_couplers_WLAST = S02_AXI_wlast[0];
  assign mb_0_axi_interconnect_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign mb_0_axi_interconnect_to_s02_couplers_WVALID = S02_AXI_wvalid[0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARADDR = S03_AXI_araddr[31:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARID = S03_AXI_arid[0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARLOCK = S03_AXI_arlock[0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARQOS = S03_AXI_arqos[3:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign mb_0_axi_interconnect_to_s03_couplers_ARVALID = S03_AXI_arvalid[0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWADDR = S03_AXI_awaddr[31:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWID = S03_AXI_awid[0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWLOCK = S03_AXI_awlock[0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWQOS = S03_AXI_awqos[3:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign mb_0_axi_interconnect_to_s03_couplers_AWVALID = S03_AXI_awvalid[0];
  assign mb_0_axi_interconnect_to_s03_couplers_BREADY = S03_AXI_bready[0];
  assign mb_0_axi_interconnect_to_s03_couplers_RREADY = S03_AXI_rready[0];
  assign mb_0_axi_interconnect_to_s03_couplers_WDATA = S03_AXI_wdata[31:0];
  assign mb_0_axi_interconnect_to_s03_couplers_WLAST = S03_AXI_wlast[0];
  assign mb_0_axi_interconnect_to_s03_couplers_WSTRB = S03_AXI_wstrb[3:0];
  assign mb_0_axi_interconnect_to_s03_couplers_WVALID = S03_AXI_wvalid[0];
  m00_couplers_imp_TLKMKT m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1EU9GI0 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arburst(m01_couplers_to_mb_0_axi_interconnect_ARBURST),
        .M_AXI_arcache(m01_couplers_to_mb_0_axi_interconnect_ARCACHE),
        .M_AXI_arid(m01_couplers_to_mb_0_axi_interconnect_ARID),
        .M_AXI_arlen(m01_couplers_to_mb_0_axi_interconnect_ARLEN),
        .M_AXI_arlock(m01_couplers_to_mb_0_axi_interconnect_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_mb_0_axi_interconnect_ARPROT),
        .M_AXI_arqos(m01_couplers_to_mb_0_axi_interconnect_ARQOS),
        .M_AXI_arready(m01_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arsize(m01_couplers_to_mb_0_axi_interconnect_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awburst(m01_couplers_to_mb_0_axi_interconnect_AWBURST),
        .M_AXI_awcache(m01_couplers_to_mb_0_axi_interconnect_AWCACHE),
        .M_AXI_awid(m01_couplers_to_mb_0_axi_interconnect_AWID),
        .M_AXI_awlen(m01_couplers_to_mb_0_axi_interconnect_AWLEN),
        .M_AXI_awlock(m01_couplers_to_mb_0_axi_interconnect_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_mb_0_axi_interconnect_AWPROT),
        .M_AXI_awqos(m01_couplers_to_mb_0_axi_interconnect_AWQOS),
        .M_AXI_awready(m01_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awsize(m01_couplers_to_mb_0_axi_interconnect_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bid(m01_couplers_to_mb_0_axi_interconnect_BID),
        .M_AXI_bready(m01_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rid(m01_couplers_to_mb_0_axi_interconnect_RID),
        .M_AXI_rlast(m01_couplers_to_mb_0_axi_interconnect_RLAST),
        .M_AXI_rready(m01_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wlast(m01_couplers_to_mb_0_axi_interconnect_WLAST),
        .M_AXI_wready(m01_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_31BL6U m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m02_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m02_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1NRLHTV m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m03_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m03_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1B6V657 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m04_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m04_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m04_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_X5REJI m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m05_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m05_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m05_couplers_ARID),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m05_couplers_AWID),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m05_couplers_BID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rid(xbar_to_m05_couplers_RID),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1K4K1AO m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m06_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m06_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m06_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m06_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m06_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m06_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m06_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m06_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m06_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m06_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m06_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m06_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m06_couplers_ARID),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m06_couplers_AWID),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m06_couplers_BID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rid(xbar_to_m06_couplers_RID),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_6MF6S5 m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m07_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m07_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m07_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m07_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m07_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m07_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m07_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m07_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m07_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m07_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m07_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m07_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m07_couplers_ARID),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m07_couplers_AWID),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m07_couplers_BID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rid(xbar_to_m07_couplers_RID),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_DI9UZK m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m08_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m08_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m08_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m08_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m08_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m08_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m08_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m08_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m08_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m08_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m08_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m08_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m08_couplers_ARID),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m08_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m08_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m08_couplers_AWID),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m08_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m08_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m08_couplers_BID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rid(xbar_to_m08_couplers_RID),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_1TTJ25H m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m09_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m09_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m09_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m09_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m09_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m09_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m09_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m09_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m09_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m09_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m09_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m09_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m09_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m09_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m09_couplers_ARID),
        .S_AXI_arlen(xbar_to_m09_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m09_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m09_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m09_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m09_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m09_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m09_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m09_couplers_AWID),
        .S_AXI_awlen(xbar_to_m09_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m09_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m09_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m09_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m09_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m09_couplers_BID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rid(xbar_to_m09_couplers_RID),
        .S_AXI_rlast(xbar_to_m09_couplers_RLAST),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m09_couplers_WLAST),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_1WPK3SR m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m10_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m10_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m10_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m10_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m10_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m10_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m10_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m10_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m10_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m10_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m10_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m10_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m10_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m10_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m10_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m10_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m10_couplers_ARID),
        .S_AXI_arlen(xbar_to_m10_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m10_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m10_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m10_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m10_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m10_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m10_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m10_couplers_AWID),
        .S_AXI_awlen(xbar_to_m10_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m10_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m10_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m10_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m10_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m10_couplers_BID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rid(xbar_to_m10_couplers_RID),
        .S_AXI_rlast(xbar_to_m10_couplers_RLAST),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m10_couplers_WLAST),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  m11_couplers_imp_BPKCE6 m11_couplers
       (.M_ACLK(M11_ACLK_1),
        .M_ARESETN(M11_ARESETN_1),
        .M_AXI_araddr(m11_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m11_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m11_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m11_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m11_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m11_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m11_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m11_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m11_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m11_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m11_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m11_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m11_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m11_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m11_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m11_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m11_couplers_ARID),
        .S_AXI_arlen(xbar_to_m11_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m11_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m11_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m11_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m11_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m11_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m11_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m11_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m11_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m11_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m11_couplers_AWID),
        .S_AXI_awlen(xbar_to_m11_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m11_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m11_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m11_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m11_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m11_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m11_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m11_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m11_couplers_BID),
        .S_AXI_bready(xbar_to_m11_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m11_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m11_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m11_couplers_RDATA),
        .S_AXI_rid(xbar_to_m11_couplers_RID),
        .S_AXI_rlast(xbar_to_m11_couplers_RLAST),
        .S_AXI_rready(xbar_to_m11_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m11_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m11_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m11_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m11_couplers_WLAST),
        .S_AXI_wready(xbar_to_m11_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m11_couplers_WVALID));
  m12_couplers_imp_1667PTC m12_couplers
       (.M_ACLK(M12_ACLK_1),
        .M_ARESETN(M12_ARESETN_1),
        .M_AXI_araddr(m12_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m12_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m12_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m12_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m12_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m12_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m12_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m12_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m12_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m12_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m12_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m12_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m12_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m12_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m12_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m12_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m12_couplers_ARID),
        .S_AXI_arlen(xbar_to_m12_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m12_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m12_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m12_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m12_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m12_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m12_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m12_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m12_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m12_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m12_couplers_AWID),
        .S_AXI_awlen(xbar_to_m12_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m12_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m12_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m12_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m12_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m12_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m12_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m12_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m12_couplers_BID),
        .S_AXI_bready(xbar_to_m12_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m12_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m12_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m12_couplers_RDATA),
        .S_AXI_rid(xbar_to_m12_couplers_RID),
        .S_AXI_rlast(xbar_to_m12_couplers_RLAST),
        .S_AXI_rready(xbar_to_m12_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m12_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m12_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m12_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m12_couplers_WLAST),
        .S_AXI_wready(xbar_to_m12_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m12_couplers_WVALID));
  m13_couplers_imp_KN9DYT m13_couplers
       (.M_ACLK(M13_ACLK_1),
        .M_ARESETN(M13_ARESETN_1),
        .M_AXI_araddr(m13_couplers_to_mb_0_axi_interconnect_ARADDR),
        .M_AXI_arready(m13_couplers_to_mb_0_axi_interconnect_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_mb_0_axi_interconnect_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_mb_0_axi_interconnect_AWADDR),
        .M_AXI_awready(m13_couplers_to_mb_0_axi_interconnect_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_mb_0_axi_interconnect_AWVALID),
        .M_AXI_bready(m13_couplers_to_mb_0_axi_interconnect_BREADY),
        .M_AXI_bresp(m13_couplers_to_mb_0_axi_interconnect_BRESP),
        .M_AXI_bvalid(m13_couplers_to_mb_0_axi_interconnect_BVALID),
        .M_AXI_rdata(m13_couplers_to_mb_0_axi_interconnect_RDATA),
        .M_AXI_rready(m13_couplers_to_mb_0_axi_interconnect_RREADY),
        .M_AXI_rresp(m13_couplers_to_mb_0_axi_interconnect_RRESP),
        .M_AXI_rvalid(m13_couplers_to_mb_0_axi_interconnect_RVALID),
        .M_AXI_wdata(m13_couplers_to_mb_0_axi_interconnect_WDATA),
        .M_AXI_wready(m13_couplers_to_mb_0_axi_interconnect_WREADY),
        .M_AXI_wstrb(m13_couplers_to_mb_0_axi_interconnect_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_mb_0_axi_interconnect_WVALID),
        .S_ACLK(mb_0_axi_interconnect_ACLK_net),
        .S_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m13_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m13_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m13_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m13_couplers_ARID),
        .S_AXI_arlen(xbar_to_m13_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m13_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m13_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m13_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m13_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m13_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m13_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m13_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m13_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m13_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m13_couplers_AWID),
        .S_AXI_awlen(xbar_to_m13_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m13_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m13_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m13_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m13_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m13_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m13_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m13_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m13_couplers_BID),
        .S_AXI_bready(xbar_to_m13_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m13_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m13_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m13_couplers_RDATA),
        .S_AXI_rid(xbar_to_m13_couplers_RID),
        .S_AXI_rlast(xbar_to_m13_couplers_RLAST),
        .S_AXI_rready(xbar_to_m13_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m13_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m13_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m13_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m13_couplers_WLAST),
        .S_AXI_wready(xbar_to_m13_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m13_couplers_WVALID));
  s00_couplers_imp_1IB6AUV s00_couplers
       (.M_ACLK(mb_0_axi_interconnect_ACLK_net),
        .M_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(mb_0_axi_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arprot(mb_0_axi_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(mb_0_axi_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(mb_0_axi_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(mb_0_axi_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awprot(mb_0_axi_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(mb_0_axi_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(mb_0_axi_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(mb_0_axi_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(mb_0_axi_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(mb_0_axi_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(mb_0_axi_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rready(mb_0_axi_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(mb_0_axi_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(mb_0_axi_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(mb_0_axi_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wready(mb_0_axi_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(mb_0_axi_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(mb_0_axi_interconnect_to_s00_couplers_WVALID));
  s01_couplers_imp_8DB10Y s01_couplers
       (.M_ACLK(mb_0_axi_interconnect_ACLK_net),
        .M_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(mb_0_axi_interconnect_to_s01_couplers_ARADDR),
        .S_AXI_arburst(mb_0_axi_interconnect_to_s01_couplers_ARBURST),
        .S_AXI_arcache(mb_0_axi_interconnect_to_s01_couplers_ARCACHE),
        .S_AXI_arid(mb_0_axi_interconnect_to_s01_couplers_ARID),
        .S_AXI_arlen(mb_0_axi_interconnect_to_s01_couplers_ARLEN),
        .S_AXI_arlock(mb_0_axi_interconnect_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(mb_0_axi_interconnect_to_s01_couplers_ARPROT),
        .S_AXI_arqos(mb_0_axi_interconnect_to_s01_couplers_ARQOS),
        .S_AXI_arready(mb_0_axi_interconnect_to_s01_couplers_ARREADY),
        .S_AXI_arsize(mb_0_axi_interconnect_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(mb_0_axi_interconnect_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(mb_0_axi_interconnect_to_s01_couplers_AWADDR),
        .S_AXI_awburst(mb_0_axi_interconnect_to_s01_couplers_AWBURST),
        .S_AXI_awcache(mb_0_axi_interconnect_to_s01_couplers_AWCACHE),
        .S_AXI_awid(mb_0_axi_interconnect_to_s01_couplers_AWID),
        .S_AXI_awlen(mb_0_axi_interconnect_to_s01_couplers_AWLEN),
        .S_AXI_awlock(mb_0_axi_interconnect_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(mb_0_axi_interconnect_to_s01_couplers_AWPROT),
        .S_AXI_awqos(mb_0_axi_interconnect_to_s01_couplers_AWQOS),
        .S_AXI_awready(mb_0_axi_interconnect_to_s01_couplers_AWREADY),
        .S_AXI_awsize(mb_0_axi_interconnect_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(mb_0_axi_interconnect_to_s01_couplers_AWVALID),
        .S_AXI_bid(mb_0_axi_interconnect_to_s01_couplers_BID),
        .S_AXI_bready(mb_0_axi_interconnect_to_s01_couplers_BREADY),
        .S_AXI_bresp(mb_0_axi_interconnect_to_s01_couplers_BRESP),
        .S_AXI_bvalid(mb_0_axi_interconnect_to_s01_couplers_BVALID),
        .S_AXI_rdata(mb_0_axi_interconnect_to_s01_couplers_RDATA),
        .S_AXI_rid(mb_0_axi_interconnect_to_s01_couplers_RID),
        .S_AXI_rlast(mb_0_axi_interconnect_to_s01_couplers_RLAST),
        .S_AXI_rready(mb_0_axi_interconnect_to_s01_couplers_RREADY),
        .S_AXI_rresp(mb_0_axi_interconnect_to_s01_couplers_RRESP),
        .S_AXI_rvalid(mb_0_axi_interconnect_to_s01_couplers_RVALID),
        .S_AXI_wdata(mb_0_axi_interconnect_to_s01_couplers_WDATA),
        .S_AXI_wlast(mb_0_axi_interconnect_to_s01_couplers_WLAST),
        .S_AXI_wready(mb_0_axi_interconnect_to_s01_couplers_WREADY),
        .S_AXI_wstrb(mb_0_axi_interconnect_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(mb_0_axi_interconnect_to_s01_couplers_WVALID));
  s02_couplers_imp_19GWV98 s02_couplers
       (.M_ACLK(mb_0_axi_interconnect_ACLK_net),
        .M_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s02_couplers_to_xbar_ARID),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s02_couplers_to_xbar_AWID),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s02_couplers_to_xbar_BID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rid(s02_couplers_to_xbar_RID),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(mb_0_axi_interconnect_to_s02_couplers_ARADDR),
        .S_AXI_arburst(mb_0_axi_interconnect_to_s02_couplers_ARBURST),
        .S_AXI_arcache(mb_0_axi_interconnect_to_s02_couplers_ARCACHE),
        .S_AXI_arid(mb_0_axi_interconnect_to_s02_couplers_ARID),
        .S_AXI_arlen(mb_0_axi_interconnect_to_s02_couplers_ARLEN),
        .S_AXI_arlock(mb_0_axi_interconnect_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(mb_0_axi_interconnect_to_s02_couplers_ARPROT),
        .S_AXI_arqos(mb_0_axi_interconnect_to_s02_couplers_ARQOS),
        .S_AXI_arready(mb_0_axi_interconnect_to_s02_couplers_ARREADY),
        .S_AXI_arsize(mb_0_axi_interconnect_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(mb_0_axi_interconnect_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(mb_0_axi_interconnect_to_s02_couplers_AWADDR),
        .S_AXI_awburst(mb_0_axi_interconnect_to_s02_couplers_AWBURST),
        .S_AXI_awcache(mb_0_axi_interconnect_to_s02_couplers_AWCACHE),
        .S_AXI_awid(mb_0_axi_interconnect_to_s02_couplers_AWID),
        .S_AXI_awlen(mb_0_axi_interconnect_to_s02_couplers_AWLEN),
        .S_AXI_awlock(mb_0_axi_interconnect_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(mb_0_axi_interconnect_to_s02_couplers_AWPROT),
        .S_AXI_awqos(mb_0_axi_interconnect_to_s02_couplers_AWQOS),
        .S_AXI_awready(mb_0_axi_interconnect_to_s02_couplers_AWREADY),
        .S_AXI_awsize(mb_0_axi_interconnect_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(mb_0_axi_interconnect_to_s02_couplers_AWVALID),
        .S_AXI_bid(mb_0_axi_interconnect_to_s02_couplers_BID),
        .S_AXI_bready(mb_0_axi_interconnect_to_s02_couplers_BREADY),
        .S_AXI_bresp(mb_0_axi_interconnect_to_s02_couplers_BRESP),
        .S_AXI_bvalid(mb_0_axi_interconnect_to_s02_couplers_BVALID),
        .S_AXI_rdata(mb_0_axi_interconnect_to_s02_couplers_RDATA),
        .S_AXI_rid(mb_0_axi_interconnect_to_s02_couplers_RID),
        .S_AXI_rlast(mb_0_axi_interconnect_to_s02_couplers_RLAST),
        .S_AXI_rready(mb_0_axi_interconnect_to_s02_couplers_RREADY),
        .S_AXI_rresp(mb_0_axi_interconnect_to_s02_couplers_RRESP),
        .S_AXI_rvalid(mb_0_axi_interconnect_to_s02_couplers_RVALID),
        .S_AXI_wdata(mb_0_axi_interconnect_to_s02_couplers_WDATA),
        .S_AXI_wlast(mb_0_axi_interconnect_to_s02_couplers_WLAST),
        .S_AXI_wready(mb_0_axi_interconnect_to_s02_couplers_WREADY),
        .S_AXI_wstrb(mb_0_axi_interconnect_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(mb_0_axi_interconnect_to_s02_couplers_WVALID));
  s03_couplers_imp_Z37EEX s03_couplers
       (.M_ACLK(mb_0_axi_interconnect_ACLK_net),
        .M_ARESETN(mb_0_axi_interconnect_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s03_couplers_to_xbar_ARID),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s03_couplers_to_xbar_AWID),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s03_couplers_to_xbar_BID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rid(s03_couplers_to_xbar_RID),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(mb_0_axi_interconnect_to_s03_couplers_ARADDR),
        .S_AXI_arburst(mb_0_axi_interconnect_to_s03_couplers_ARBURST),
        .S_AXI_arcache(mb_0_axi_interconnect_to_s03_couplers_ARCACHE),
        .S_AXI_arid(mb_0_axi_interconnect_to_s03_couplers_ARID),
        .S_AXI_arlen(mb_0_axi_interconnect_to_s03_couplers_ARLEN),
        .S_AXI_arlock(mb_0_axi_interconnect_to_s03_couplers_ARLOCK),
        .S_AXI_arprot(mb_0_axi_interconnect_to_s03_couplers_ARPROT),
        .S_AXI_arqos(mb_0_axi_interconnect_to_s03_couplers_ARQOS),
        .S_AXI_arready(mb_0_axi_interconnect_to_s03_couplers_ARREADY),
        .S_AXI_arsize(mb_0_axi_interconnect_to_s03_couplers_ARSIZE),
        .S_AXI_arvalid(mb_0_axi_interconnect_to_s03_couplers_ARVALID),
        .S_AXI_awaddr(mb_0_axi_interconnect_to_s03_couplers_AWADDR),
        .S_AXI_awburst(mb_0_axi_interconnect_to_s03_couplers_AWBURST),
        .S_AXI_awcache(mb_0_axi_interconnect_to_s03_couplers_AWCACHE),
        .S_AXI_awid(mb_0_axi_interconnect_to_s03_couplers_AWID),
        .S_AXI_awlen(mb_0_axi_interconnect_to_s03_couplers_AWLEN),
        .S_AXI_awlock(mb_0_axi_interconnect_to_s03_couplers_AWLOCK),
        .S_AXI_awprot(mb_0_axi_interconnect_to_s03_couplers_AWPROT),
        .S_AXI_awqos(mb_0_axi_interconnect_to_s03_couplers_AWQOS),
        .S_AXI_awready(mb_0_axi_interconnect_to_s03_couplers_AWREADY),
        .S_AXI_awsize(mb_0_axi_interconnect_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(mb_0_axi_interconnect_to_s03_couplers_AWVALID),
        .S_AXI_bid(mb_0_axi_interconnect_to_s03_couplers_BID),
        .S_AXI_bready(mb_0_axi_interconnect_to_s03_couplers_BREADY),
        .S_AXI_bresp(mb_0_axi_interconnect_to_s03_couplers_BRESP),
        .S_AXI_bvalid(mb_0_axi_interconnect_to_s03_couplers_BVALID),
        .S_AXI_rdata(mb_0_axi_interconnect_to_s03_couplers_RDATA),
        .S_AXI_rid(mb_0_axi_interconnect_to_s03_couplers_RID),
        .S_AXI_rlast(mb_0_axi_interconnect_to_s03_couplers_RLAST),
        .S_AXI_rready(mb_0_axi_interconnect_to_s03_couplers_RREADY),
        .S_AXI_rresp(mb_0_axi_interconnect_to_s03_couplers_RRESP),
        .S_AXI_rvalid(mb_0_axi_interconnect_to_s03_couplers_RVALID),
        .S_AXI_wdata(mb_0_axi_interconnect_to_s03_couplers_WDATA),
        .S_AXI_wlast(mb_0_axi_interconnect_to_s03_couplers_WLAST),
        .S_AXI_wready(mb_0_axi_interconnect_to_s03_couplers_WREADY),
        .S_AXI_wstrb(mb_0_axi_interconnect_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(mb_0_axi_interconnect_to_s03_couplers_WVALID));
  mcu_xbar_0 xbar
       (.aclk(mb_0_axi_interconnect_ACLK_net),
        .aresetn(mb_0_axi_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m13_couplers_ARADDR,xbar_to_m12_couplers_ARADDR,xbar_to_m11_couplers_ARADDR,xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m13_couplers_ARBURST,xbar_to_m12_couplers_ARBURST,xbar_to_m11_couplers_ARBURST,xbar_to_m10_couplers_ARBURST,xbar_to_m09_couplers_ARBURST,xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m13_couplers_ARCACHE,xbar_to_m12_couplers_ARCACHE,xbar_to_m11_couplers_ARCACHE,xbar_to_m10_couplers_ARCACHE,xbar_to_m09_couplers_ARCACHE,xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m13_couplers_ARID,xbar_to_m12_couplers_ARID,xbar_to_m11_couplers_ARID,xbar_to_m10_couplers_ARID,xbar_to_m09_couplers_ARID,xbar_to_m08_couplers_ARID,xbar_to_m07_couplers_ARID,xbar_to_m06_couplers_ARID,xbar_to_m05_couplers_ARID,xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m13_couplers_ARLEN,xbar_to_m12_couplers_ARLEN,xbar_to_m11_couplers_ARLEN,xbar_to_m10_couplers_ARLEN,xbar_to_m09_couplers_ARLEN,xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m13_couplers_ARLOCK,xbar_to_m12_couplers_ARLOCK,xbar_to_m11_couplers_ARLOCK,xbar_to_m10_couplers_ARLOCK,xbar_to_m09_couplers_ARLOCK,xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m13_couplers_ARPROT,xbar_to_m12_couplers_ARPROT,xbar_to_m11_couplers_ARPROT,xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m13_couplers_ARQOS,xbar_to_m12_couplers_ARQOS,xbar_to_m11_couplers_ARQOS,xbar_to_m10_couplers_ARQOS,xbar_to_m09_couplers_ARQOS,xbar_to_m08_couplers_ARQOS,xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m13_couplers_ARREADY,xbar_to_m12_couplers_ARREADY,xbar_to_m11_couplers_ARREADY,xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m13_couplers_ARREGION,xbar_to_m12_couplers_ARREGION,xbar_to_m11_couplers_ARREGION,xbar_to_m10_couplers_ARREGION,xbar_to_m09_couplers_ARREGION,xbar_to_m08_couplers_ARREGION,xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[7:4],xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m13_couplers_ARSIZE,xbar_to_m12_couplers_ARSIZE,xbar_to_m11_couplers_ARSIZE,xbar_to_m10_couplers_ARSIZE,xbar_to_m09_couplers_ARSIZE,xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m13_couplers_ARVALID,xbar_to_m12_couplers_ARVALID,xbar_to_m11_couplers_ARVALID,xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m13_couplers_AWADDR,xbar_to_m12_couplers_AWADDR,xbar_to_m11_couplers_AWADDR,xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m13_couplers_AWBURST,xbar_to_m12_couplers_AWBURST,xbar_to_m11_couplers_AWBURST,xbar_to_m10_couplers_AWBURST,xbar_to_m09_couplers_AWBURST,xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m13_couplers_AWCACHE,xbar_to_m12_couplers_AWCACHE,xbar_to_m11_couplers_AWCACHE,xbar_to_m10_couplers_AWCACHE,xbar_to_m09_couplers_AWCACHE,xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m13_couplers_AWID,xbar_to_m12_couplers_AWID,xbar_to_m11_couplers_AWID,xbar_to_m10_couplers_AWID,xbar_to_m09_couplers_AWID,xbar_to_m08_couplers_AWID,xbar_to_m07_couplers_AWID,xbar_to_m06_couplers_AWID,xbar_to_m05_couplers_AWID,xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m13_couplers_AWLEN,xbar_to_m12_couplers_AWLEN,xbar_to_m11_couplers_AWLEN,xbar_to_m10_couplers_AWLEN,xbar_to_m09_couplers_AWLEN,xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m13_couplers_AWLOCK,xbar_to_m12_couplers_AWLOCK,xbar_to_m11_couplers_AWLOCK,xbar_to_m10_couplers_AWLOCK,xbar_to_m09_couplers_AWLOCK,xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m13_couplers_AWPROT,xbar_to_m12_couplers_AWPROT,xbar_to_m11_couplers_AWPROT,xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m13_couplers_AWQOS,xbar_to_m12_couplers_AWQOS,xbar_to_m11_couplers_AWQOS,xbar_to_m10_couplers_AWQOS,xbar_to_m09_couplers_AWQOS,xbar_to_m08_couplers_AWQOS,xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m13_couplers_AWREADY,xbar_to_m12_couplers_AWREADY,xbar_to_m11_couplers_AWREADY,xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m13_couplers_AWREGION,xbar_to_m12_couplers_AWREGION,xbar_to_m11_couplers_AWREGION,xbar_to_m10_couplers_AWREGION,xbar_to_m09_couplers_AWREGION,xbar_to_m08_couplers_AWREGION,xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[7:4],xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m13_couplers_AWSIZE,xbar_to_m12_couplers_AWSIZE,xbar_to_m11_couplers_AWSIZE,xbar_to_m10_couplers_AWSIZE,xbar_to_m09_couplers_AWSIZE,xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m13_couplers_AWVALID,xbar_to_m12_couplers_AWVALID,xbar_to_m11_couplers_AWVALID,xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m13_couplers_BID,xbar_to_m12_couplers_BID,xbar_to_m11_couplers_BID,xbar_to_m10_couplers_BID,xbar_to_m09_couplers_BID,xbar_to_m08_couplers_BID,xbar_to_m07_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m05_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m13_couplers_BREADY,xbar_to_m12_couplers_BREADY,xbar_to_m11_couplers_BREADY,xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m13_couplers_BRESP,xbar_to_m12_couplers_BRESP,xbar_to_m11_couplers_BRESP,xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m13_couplers_BVALID,xbar_to_m12_couplers_BVALID,xbar_to_m11_couplers_BVALID,xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m13_couplers_RDATA,xbar_to_m12_couplers_RDATA,xbar_to_m11_couplers_RDATA,xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m13_couplers_RID,xbar_to_m12_couplers_RID,xbar_to_m11_couplers_RID,xbar_to_m10_couplers_RID,xbar_to_m09_couplers_RID,xbar_to_m08_couplers_RID,xbar_to_m07_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m05_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m13_couplers_RLAST,xbar_to_m12_couplers_RLAST,xbar_to_m11_couplers_RLAST,xbar_to_m10_couplers_RLAST,xbar_to_m09_couplers_RLAST,xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m13_couplers_RREADY,xbar_to_m12_couplers_RREADY,xbar_to_m11_couplers_RREADY,xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m13_couplers_RRESP,xbar_to_m12_couplers_RRESP,xbar_to_m11_couplers_RRESP,xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m13_couplers_RVALID,xbar_to_m12_couplers_RVALID,xbar_to_m11_couplers_RVALID,xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m13_couplers_WDATA,xbar_to_m12_couplers_WDATA,xbar_to_m11_couplers_WDATA,xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m13_couplers_WLAST,xbar_to_m12_couplers_WLAST,xbar_to_m11_couplers_WLAST,xbar_to_m10_couplers_WLAST,xbar_to_m09_couplers_WLAST,xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m13_couplers_WREADY,xbar_to_m12_couplers_WREADY,xbar_to_m11_couplers_WREADY,xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m13_couplers_WSTRB,xbar_to_m12_couplers_WSTRB,xbar_to_m11_couplers_WSTRB,xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m13_couplers_WVALID,xbar_to_m12_couplers_WVALID,xbar_to_m11_couplers_WVALID,xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,s03_couplers_to_xbar_ARID,1'b0,s02_couplers_to_xbar_ARID,1'b0,s01_couplers_to_xbar_ARID,1'b0,1'b0}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,s03_couplers_to_xbar_AWID,1'b0,s02_couplers_to_xbar_AWID,1'b0,s01_couplers_to_xbar_AWID,1'b0,1'b0}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s03_couplers_to_xbar_BID,s02_couplers_to_xbar_BID,s01_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[1:0]}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s03_couplers_to_xbar_RID,s02_couplers_to_xbar_RID,s01_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[1:0]}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module s00_couplers_imp_1IB6AUV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  mcu_auto_pc_13 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_8DB10Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s01_couplers_to_s01_couplers_ARADDR;
  wire [1:0]s01_couplers_to_s01_couplers_ARBURST;
  wire [3:0]s01_couplers_to_s01_couplers_ARCACHE;
  wire [0:0]s01_couplers_to_s01_couplers_ARID;
  wire [7:0]s01_couplers_to_s01_couplers_ARLEN;
  wire [0:0]s01_couplers_to_s01_couplers_ARLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_ARPROT;
  wire [3:0]s01_couplers_to_s01_couplers_ARQOS;
  wire [0:0]s01_couplers_to_s01_couplers_ARREADY;
  wire [2:0]s01_couplers_to_s01_couplers_ARSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_ARVALID;
  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [0:0]s01_couplers_to_s01_couplers_AWID;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [0:0]s01_couplers_to_s01_couplers_AWLOCK;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire [3:0]s01_couplers_to_s01_couplers_AWQOS;
  wire [0:0]s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [0:0]s01_couplers_to_s01_couplers_AWVALID;
  wire [1:0]s01_couplers_to_s01_couplers_BID;
  wire [0:0]s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire [0:0]s01_couplers_to_s01_couplers_BVALID;
  wire [31:0]s01_couplers_to_s01_couplers_RDATA;
  wire [1:0]s01_couplers_to_s01_couplers_RID;
  wire [0:0]s01_couplers_to_s01_couplers_RLAST;
  wire [0:0]s01_couplers_to_s01_couplers_RREADY;
  wire [1:0]s01_couplers_to_s01_couplers_RRESP;
  wire [0:0]s01_couplers_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_s01_couplers_WDATA;
  wire [0:0]s01_couplers_to_s01_couplers_WLAST;
  wire [0:0]s01_couplers_to_s01_couplers_WREADY;
  wire [3:0]s01_couplers_to_s01_couplers_WSTRB;
  wire [0:0]s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s01_couplers_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_couplers_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_couplers_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[0] = s01_couplers_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_couplers_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_couplers_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_couplers_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_couplers_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_couplers_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s01_couplers_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[0] = s01_couplers_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_couplers_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_couplers_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready[0] = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_rready[0] = s01_couplers_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast[0] = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_arready[0] = s01_couplers_to_s01_couplers_ARREADY;
  assign S_AXI_awready[0] = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bid[1:0] = s01_couplers_to_s01_couplers_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid[0] = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_couplers_RDATA;
  assign S_AXI_rid[1:0] = s01_couplers_to_s01_couplers_RID;
  assign S_AXI_rlast[0] = s01_couplers_to_s01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_couplers_RRESP;
  assign S_AXI_rvalid[0] = s01_couplers_to_s01_couplers_RVALID;
  assign S_AXI_wready[0] = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_couplers_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_couplers_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_couplers_ARREADY = M_AXI_arready[0];
  assign s01_couplers_to_s01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_couplers_ARVALID = S_AXI_arvalid[0];
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready[0];
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid[0];
  assign s01_couplers_to_s01_couplers_BID = M_AXI_bid[1:0];
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready[0];
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid[0];
  assign s01_couplers_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_couplers_to_s01_couplers_RID = M_AXI_rid[1:0];
  assign s01_couplers_to_s01_couplers_RLAST = M_AXI_rlast[0];
  assign s01_couplers_to_s01_couplers_RREADY = S_AXI_rready[0];
  assign s01_couplers_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_couplers_to_s01_couplers_RVALID = M_AXI_rvalid[0];
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast[0];
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready[0];
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s02_couplers_imp_19GWV98
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s02_couplers_to_s02_couplers_ARADDR;
  wire [1:0]s02_couplers_to_s02_couplers_ARBURST;
  wire [3:0]s02_couplers_to_s02_couplers_ARCACHE;
  wire [0:0]s02_couplers_to_s02_couplers_ARID;
  wire [7:0]s02_couplers_to_s02_couplers_ARLEN;
  wire [0:0]s02_couplers_to_s02_couplers_ARLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_ARPROT;
  wire [3:0]s02_couplers_to_s02_couplers_ARQOS;
  wire [0:0]s02_couplers_to_s02_couplers_ARREADY;
  wire [2:0]s02_couplers_to_s02_couplers_ARSIZE;
  wire [0:0]s02_couplers_to_s02_couplers_ARVALID;
  wire [31:0]s02_couplers_to_s02_couplers_AWADDR;
  wire [1:0]s02_couplers_to_s02_couplers_AWBURST;
  wire [3:0]s02_couplers_to_s02_couplers_AWCACHE;
  wire [0:0]s02_couplers_to_s02_couplers_AWID;
  wire [7:0]s02_couplers_to_s02_couplers_AWLEN;
  wire [0:0]s02_couplers_to_s02_couplers_AWLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_AWPROT;
  wire [3:0]s02_couplers_to_s02_couplers_AWQOS;
  wire [0:0]s02_couplers_to_s02_couplers_AWREADY;
  wire [2:0]s02_couplers_to_s02_couplers_AWSIZE;
  wire [0:0]s02_couplers_to_s02_couplers_AWVALID;
  wire [1:0]s02_couplers_to_s02_couplers_BID;
  wire [0:0]s02_couplers_to_s02_couplers_BREADY;
  wire [1:0]s02_couplers_to_s02_couplers_BRESP;
  wire [0:0]s02_couplers_to_s02_couplers_BVALID;
  wire [31:0]s02_couplers_to_s02_couplers_RDATA;
  wire [1:0]s02_couplers_to_s02_couplers_RID;
  wire [0:0]s02_couplers_to_s02_couplers_RLAST;
  wire [0:0]s02_couplers_to_s02_couplers_RREADY;
  wire [1:0]s02_couplers_to_s02_couplers_RRESP;
  wire [0:0]s02_couplers_to_s02_couplers_RVALID;
  wire [31:0]s02_couplers_to_s02_couplers_WDATA;
  wire [0:0]s02_couplers_to_s02_couplers_WLAST;
  wire [0:0]s02_couplers_to_s02_couplers_WREADY;
  wire [3:0]s02_couplers_to_s02_couplers_WSTRB;
  wire [0:0]s02_couplers_to_s02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s02_couplers_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_couplers_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_couplers_to_s02_couplers_ARCACHE;
  assign M_AXI_arid[0] = s02_couplers_to_s02_couplers_ARID;
  assign M_AXI_arlen[7:0] = s02_couplers_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_couplers_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_couplers_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_couplers_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_couplers_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s02_couplers_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s02_couplers_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_couplers_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_couplers_to_s02_couplers_AWCACHE;
  assign M_AXI_awid[0] = s02_couplers_to_s02_couplers_AWID;
  assign M_AXI_awlen[7:0] = s02_couplers_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_couplers_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_couplers_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_couplers_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_couplers_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s02_couplers_to_s02_couplers_AWVALID;
  assign M_AXI_bready[0] = s02_couplers_to_s02_couplers_BREADY;
  assign M_AXI_rready[0] = s02_couplers_to_s02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s02_couplers_to_s02_couplers_WDATA;
  assign M_AXI_wlast[0] = s02_couplers_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s02_couplers_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s02_couplers_to_s02_couplers_WVALID;
  assign S_AXI_arready[0] = s02_couplers_to_s02_couplers_ARREADY;
  assign S_AXI_awready[0] = s02_couplers_to_s02_couplers_AWREADY;
  assign S_AXI_bid[1:0] = s02_couplers_to_s02_couplers_BID;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_couplers_BRESP;
  assign S_AXI_bvalid[0] = s02_couplers_to_s02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_couplers_RDATA;
  assign S_AXI_rid[1:0] = s02_couplers_to_s02_couplers_RID;
  assign S_AXI_rlast[0] = s02_couplers_to_s02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_couplers_RRESP;
  assign S_AXI_rvalid[0] = s02_couplers_to_s02_couplers_RVALID;
  assign S_AXI_wready[0] = s02_couplers_to_s02_couplers_WREADY;
  assign s02_couplers_to_s02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_s02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_couplers_ARID = S_AXI_arid[0];
  assign s02_couplers_to_s02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_couplers_ARLOCK = S_AXI_arlock[0];
  assign s02_couplers_to_s02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_couplers_ARREADY = M_AXI_arready[0];
  assign s02_couplers_to_s02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_couplers_ARVALID = S_AXI_arvalid[0];
  assign s02_couplers_to_s02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_couplers_AWID = S_AXI_awid[0];
  assign s02_couplers_to_s02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_couplers_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_s02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_s02_couplers_AWREADY = M_AXI_awready[0];
  assign s02_couplers_to_s02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_couplers_AWVALID = S_AXI_awvalid[0];
  assign s02_couplers_to_s02_couplers_BID = M_AXI_bid[1:0];
  assign s02_couplers_to_s02_couplers_BREADY = S_AXI_bready[0];
  assign s02_couplers_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_couplers_to_s02_couplers_BVALID = M_AXI_bvalid[0];
  assign s02_couplers_to_s02_couplers_RDATA = M_AXI_rdata[31:0];
  assign s02_couplers_to_s02_couplers_RID = M_AXI_rid[1:0];
  assign s02_couplers_to_s02_couplers_RLAST = M_AXI_rlast[0];
  assign s02_couplers_to_s02_couplers_RREADY = S_AXI_rready[0];
  assign s02_couplers_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_couplers_to_s02_couplers_RVALID = M_AXI_rvalid[0];
  assign s02_couplers_to_s02_couplers_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_s02_couplers_WLAST = S_AXI_wlast[0];
  assign s02_couplers_to_s02_couplers_WREADY = M_AXI_wready[0];
  assign s02_couplers_to_s02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_s02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s03_couplers_imp_Z37EEX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [1:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [1:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s03_couplers_to_s03_couplers_ARADDR;
  wire [1:0]s03_couplers_to_s03_couplers_ARBURST;
  wire [3:0]s03_couplers_to_s03_couplers_ARCACHE;
  wire [0:0]s03_couplers_to_s03_couplers_ARID;
  wire [7:0]s03_couplers_to_s03_couplers_ARLEN;
  wire [0:0]s03_couplers_to_s03_couplers_ARLOCK;
  wire [2:0]s03_couplers_to_s03_couplers_ARPROT;
  wire [3:0]s03_couplers_to_s03_couplers_ARQOS;
  wire [0:0]s03_couplers_to_s03_couplers_ARREADY;
  wire [2:0]s03_couplers_to_s03_couplers_ARSIZE;
  wire [0:0]s03_couplers_to_s03_couplers_ARVALID;
  wire [31:0]s03_couplers_to_s03_couplers_AWADDR;
  wire [1:0]s03_couplers_to_s03_couplers_AWBURST;
  wire [3:0]s03_couplers_to_s03_couplers_AWCACHE;
  wire [0:0]s03_couplers_to_s03_couplers_AWID;
  wire [7:0]s03_couplers_to_s03_couplers_AWLEN;
  wire [0:0]s03_couplers_to_s03_couplers_AWLOCK;
  wire [2:0]s03_couplers_to_s03_couplers_AWPROT;
  wire [3:0]s03_couplers_to_s03_couplers_AWQOS;
  wire [0:0]s03_couplers_to_s03_couplers_AWREADY;
  wire [2:0]s03_couplers_to_s03_couplers_AWSIZE;
  wire [0:0]s03_couplers_to_s03_couplers_AWVALID;
  wire [1:0]s03_couplers_to_s03_couplers_BID;
  wire [0:0]s03_couplers_to_s03_couplers_BREADY;
  wire [1:0]s03_couplers_to_s03_couplers_BRESP;
  wire [0:0]s03_couplers_to_s03_couplers_BVALID;
  wire [31:0]s03_couplers_to_s03_couplers_RDATA;
  wire [1:0]s03_couplers_to_s03_couplers_RID;
  wire [0:0]s03_couplers_to_s03_couplers_RLAST;
  wire [0:0]s03_couplers_to_s03_couplers_RREADY;
  wire [1:0]s03_couplers_to_s03_couplers_RRESP;
  wire [0:0]s03_couplers_to_s03_couplers_RVALID;
  wire [31:0]s03_couplers_to_s03_couplers_WDATA;
  wire [0:0]s03_couplers_to_s03_couplers_WLAST;
  wire [0:0]s03_couplers_to_s03_couplers_WREADY;
  wire [3:0]s03_couplers_to_s03_couplers_WSTRB;
  wire [0:0]s03_couplers_to_s03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s03_couplers_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s03_couplers_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s03_couplers_to_s03_couplers_ARCACHE;
  assign M_AXI_arid[0] = s03_couplers_to_s03_couplers_ARID;
  assign M_AXI_arlen[7:0] = s03_couplers_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = s03_couplers_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s03_couplers_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s03_couplers_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s03_couplers_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s03_couplers_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s03_couplers_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s03_couplers_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s03_couplers_to_s03_couplers_AWCACHE;
  assign M_AXI_awid[0] = s03_couplers_to_s03_couplers_AWID;
  assign M_AXI_awlen[7:0] = s03_couplers_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = s03_couplers_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s03_couplers_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s03_couplers_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s03_couplers_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s03_couplers_to_s03_couplers_AWVALID;
  assign M_AXI_bready[0] = s03_couplers_to_s03_couplers_BREADY;
  assign M_AXI_rready[0] = s03_couplers_to_s03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s03_couplers_to_s03_couplers_WDATA;
  assign M_AXI_wlast[0] = s03_couplers_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s03_couplers_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s03_couplers_to_s03_couplers_WVALID;
  assign S_AXI_arready[0] = s03_couplers_to_s03_couplers_ARREADY;
  assign S_AXI_awready[0] = s03_couplers_to_s03_couplers_AWREADY;
  assign S_AXI_bid[1:0] = s03_couplers_to_s03_couplers_BID;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_couplers_BRESP;
  assign S_AXI_bvalid[0] = s03_couplers_to_s03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s03_couplers_to_s03_couplers_RDATA;
  assign S_AXI_rid[1:0] = s03_couplers_to_s03_couplers_RID;
  assign S_AXI_rlast[0] = s03_couplers_to_s03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_s03_couplers_RRESP;
  assign S_AXI_rvalid[0] = s03_couplers_to_s03_couplers_RVALID;
  assign S_AXI_wready[0] = s03_couplers_to_s03_couplers_WREADY;
  assign s03_couplers_to_s03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s03_couplers_to_s03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_s03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_s03_couplers_ARID = S_AXI_arid[0];
  assign s03_couplers_to_s03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_s03_couplers_ARLOCK = S_AXI_arlock[0];
  assign s03_couplers_to_s03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_s03_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s03_couplers_to_s03_couplers_ARREADY = M_AXI_arready[0];
  assign s03_couplers_to_s03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_s03_couplers_ARVALID = S_AXI_arvalid[0];
  assign s03_couplers_to_s03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s03_couplers_to_s03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_couplers_AWID = S_AXI_awid[0];
  assign s03_couplers_to_s03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_couplers_AWLOCK = S_AXI_awlock[0];
  assign s03_couplers_to_s03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s03_couplers_to_s03_couplers_AWREADY = M_AXI_awready[0];
  assign s03_couplers_to_s03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_couplers_AWVALID = S_AXI_awvalid[0];
  assign s03_couplers_to_s03_couplers_BID = M_AXI_bid[1:0];
  assign s03_couplers_to_s03_couplers_BREADY = S_AXI_bready[0];
  assign s03_couplers_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign s03_couplers_to_s03_couplers_BVALID = M_AXI_bvalid[0];
  assign s03_couplers_to_s03_couplers_RDATA = M_AXI_rdata[31:0];
  assign s03_couplers_to_s03_couplers_RID = M_AXI_rid[1:0];
  assign s03_couplers_to_s03_couplers_RLAST = M_AXI_rlast[0];
  assign s03_couplers_to_s03_couplers_RREADY = S_AXI_rready[0];
  assign s03_couplers_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign s03_couplers_to_s03_couplers_RVALID = M_AXI_rvalid[0];
  assign s03_couplers_to_s03_couplers_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_s03_couplers_WLAST = S_AXI_wlast[0];
  assign s03_couplers_to_s03_couplers_WREADY = M_AXI_wready[0];
  assign s03_couplers_to_s03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_s03_couplers_WVALID = S_AXI_wvalid[0];
endmodule
