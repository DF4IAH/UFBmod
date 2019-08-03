// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Aug  3 02:08:06 2019
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_xbar_0/mcu_xbar_0_sim_netlist.v
// Design      : mcu_xbar_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mcu_xbar_0,axi_crossbar_v2_1_19_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mcu_xbar_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI AWID [1:0] [7:6]" *) input [7:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI AWADDR [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI AWADDR [31:0] [127:96]" *) input [127:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI AWLEN [7:0] [23:16], xilinx.com:interface:aximm:1.0 S03_AXI AWLEN [7:0] [31:24]" *) input [31:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE [2:0] [11:9]" *) input [11:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWBURST [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI AWBURST [1:0] [7:6]" *) input [7:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK [0:0] [3:3]" *) input [3:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE [3:0] [15:12]" *) input [15:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI AWPROT [2:0] [11:9]" *) input [11:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWQOS [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI AWQOS [3:0] [15:12]" *) input [15:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWVALID [0:0] [3:3]" *) input [3:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI AWREADY [0:0] [3:3]" *) output [3:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI WDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI WDATA [31:0] [127:96]" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI WSTRB [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI WSTRB [3:0] [15:12]" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WLAST [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WLAST [0:0] [3:3]" *) input [3:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WVALID [0:0] [3:3]" *) input [3:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI WREADY [0:0] [3:3]" *) output [3:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI BID [1:0] [7:6]" *) output [7:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI BRESP [1:0] [7:6]" *) output [7:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI BVALID [0:0] [3:3]" *) output [3:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI BREADY [0:0] [3:3]" *) input [3:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI ARID [1:0] [7:6]" *) input [7:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI ARADDR [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI ARADDR [31:0] [127:96]" *) input [127:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI ARLEN [7:0] [23:16], xilinx.com:interface:aximm:1.0 S03_AXI ARLEN [7:0] [31:24]" *) input [31:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE [2:0] [11:9]" *) input [11:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARBURST [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI ARBURST [1:0] [7:6]" *) input [7:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK [0:0] [3:3]" *) input [3:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE [3:0] [15:12]" *) input [15:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARPROT [2:0] [8:6], xilinx.com:interface:aximm:1.0 S03_AXI ARPROT [2:0] [11:9]" *) input [11:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARQOS [3:0] [11:8], xilinx.com:interface:aximm:1.0 S03_AXI ARQOS [3:0] [15:12]" *) input [15:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARVALID [0:0] [3:3]" *) input [3:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI ARREADY [0:0] [3:3]" *) output [3:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RID [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI RID [1:0] [7:6]" *) output [7:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI RDATA [31:0] [95:64], xilinx.com:interface:aximm:1.0 S03_AXI RDATA [31:0] [127:96]" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RRESP [1:0] [5:4], xilinx.com:interface:aximm:1.0 S03_AXI RRESP [1:0] [7:6]" *) output [7:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RLAST [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RLAST [0:0] [3:3]" *) output [3:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RVALID [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RVALID [0:0] [3:3]" *) output [3:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RREADY [0:0] [2:2], xilinx.com:interface:aximm:1.0 S03_AXI RREADY [0:0] [3:3]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S03_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI AWID [1:0] [5:4]" *) output [5:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI AWADDR [31:0] [95:64]" *) output [95:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 M02_AXI AWLEN [7:0] [23:16]" *) output [23:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE [2:0] [8:6]" *) output [8:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI AWBURST [1:0] [5:4]" *) output [5:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK [0:0] [2:2]" *) output [2:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE [3:0] [11:8]" *) output [11:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI AWPROT [2:0] [8:6]" *) output [8:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWREGION [3:0] [11:8]" *) output [11:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWQOS [3:0] [11:8]" *) output [11:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWVALID [0:0] [2:2]" *) output [2:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWREADY [0:0] [2:2]" *) input [2:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI WDATA [31:0] [95:64]" *) output [95:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI WSTRB [3:0] [11:8]" *) output [11:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WLAST [0:0] [2:2]" *) output [2:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WVALID [0:0] [2:2]" *) output [2:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WREADY [0:0] [2:2]" *) input [2:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI BID [1:0] [5:4]" *) input [5:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI BRESP [1:0] [5:4]" *) input [5:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BVALID [0:0] [2:2]" *) input [2:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BREADY [0:0] [2:2]" *) output [2:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI ARID [1:0] [5:4]" *) output [5:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI ARADDR [31:0] [95:64]" *) output [95:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 M02_AXI ARLEN [7:0] [23:16]" *) output [23:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE [2:0] [8:6]" *) output [8:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI ARBURST [1:0] [5:4]" *) output [5:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK [0:0] [2:2]" *) output [2:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE [3:0] [11:8]" *) output [11:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI ARPROT [2:0] [8:6]" *) output [8:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARREGION [3:0] [11:8]" *) output [11:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARQOS [3:0] [11:8]" *) output [11:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARVALID [0:0] [2:2]" *) output [2:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARREADY [0:0] [2:2]" *) input [2:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI RID [1:0] [5:4]" *) input [5:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI RDATA [31:0] [95:64]" *) input [95:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI RRESP [1:0] [5:4]" *) input [5:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RLAST [0:0] [2:2]" *) input [2:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RVALID [0:0] [2:2]" *) input [2:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RREADY [0:0] [2:2]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M02_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 32, PHASE 0, CLK_DOMAIN mcu_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [2:0]m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [95:0]m_axi_araddr;
  wire [5:0]m_axi_arburst;
  wire [11:0]m_axi_arcache;
  wire [5:0]m_axi_arid;
  wire [23:0]m_axi_arlen;
  wire [2:0]m_axi_arlock;
  wire [8:0]m_axi_arprot;
  wire [11:0]m_axi_arqos;
  wire [2:0]m_axi_arready;
  wire [11:0]m_axi_arregion;
  wire [8:0]m_axi_arsize;
  wire [2:0]m_axi_arvalid;
  wire [95:0]m_axi_awaddr;
  wire [5:0]m_axi_awburst;
  wire [11:0]m_axi_awcache;
  wire [5:0]m_axi_awid;
  wire [23:0]m_axi_awlen;
  wire [2:0]m_axi_awlock;
  wire [8:0]m_axi_awprot;
  wire [11:0]m_axi_awqos;
  wire [2:0]m_axi_awready;
  wire [11:0]m_axi_awregion;
  wire [8:0]m_axi_awsize;
  wire [2:0]m_axi_awvalid;
  wire [5:0]m_axi_bid;
  wire [2:0]m_axi_bready;
  wire [5:0]m_axi_bresp;
  wire [2:0]m_axi_bvalid;
  wire [95:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire [2:0]m_axi_rlast;
  wire [2:0]m_axi_rready;
  wire [5:0]m_axi_rresp;
  wire [2:0]m_axi_rvalid;
  wire [95:0]m_axi_wdata;
  wire [2:0]m_axi_wlast;
  wire [2:0]m_axi_wready;
  wire [11:0]m_axi_wstrb;
  wire [2:0]m_axi_wvalid;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [7:0]s_axi_arid;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [3:0]s_axi_arready;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [127:0]s_axi_awaddr;
  wire [7:0]s_axi_awburst;
  wire [15:0]s_axi_awcache;
  wire [7:0]s_axi_awid;
  wire [31:0]s_axi_awlen;
  wire [3:0]s_axi_awlock;
  wire [11:0]s_axi_awprot;
  wire [15:0]s_axi_awqos;
  wire [3:0]s_axi_awready;
  wire [11:0]s_axi_awsize;
  wire [3:0]s_axi_awvalid;
  wire [7:0]s_axi_bid;
  wire [3:0]s_axi_bready;
  wire [7:0]s_axi_bresp;
  wire [3:0]s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [7:0]s_axi_rid;
  wire [3:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [7:0]s_axi_rresp;
  wire [3:0]s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire [3:0]s_axi_wlast;
  wire [3:0]s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [3:0]s_axi_wvalid;
  wire [2:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "2" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "1" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_M_AXI_ADDR_WIDTH = "96'b000000000000000000000000000100000000000000000000000000000001111000000000000000000000000000010000" *) 
  (* C_M_AXI_BASE_ADDR = "192'b000000000000000000000000000000000100010010100000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000001001000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "96'b000000000000000000000000000011110000000000000000000000000000111100000000000000000000000000001111" *) 
  (* C_M_AXI_READ_ISSUING = "96'b000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000" *) 
  (* C_M_AXI_SECURE = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "96'b000000000000000000000000000001110000000000000000000000000000011100000000000000000000000000000111" *) 
  (* C_M_AXI_WRITE_ISSUING = "96'b000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000100000" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "3" *) 
  (* C_NUM_SLAVE_SLOTS = "4" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_BASE_ID = "128'b00000000000000000000000000000011000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "128'b00000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000001" *) 
  (* C_S_AXI_SINGLE_THREAD = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "128'b00000000000000000000000000000010000000000000000000000000001000000000000000000000000000000000000100000000000000000000000000000001" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "artix7" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "3'b111" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "3'b111" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "4'b1111" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "4'b0111" *) 
  mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[2:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[2:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser({1'b0,1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[5:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[2:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[3:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[3:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_addr_arbiter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter
   (aa_mi_arvalid,
    SR,
    D,
    Q,
    \gen_master_slots[1].r_issuing_cnt_reg[9] ,
    \gen_master_slots[2].r_issuing_cnt_reg[17] ,
    \gen_arbiter.s_ready_i_reg[3]_0 ,
    \gen_arbiter.m_mesg_i_reg[1]_0 ,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    \gen_arbiter.m_mesg_i_reg[0]_0 ,
    \gen_axi.read_cs_reg[0] ,
    match,
    match_0,
    match_1,
    st_aa_artarget_hot,
    ADDRESS_HIT_0,
    target_mi_enc,
    ADDRESS_HIT_0_2,
    target_mi_enc_3,
    \s_axi_araddr[95] ,
    s_axi_araddr_88_sp_1,
    s_axi_araddr_83_sp_1,
    s_axi_araddr_93_sp_1,
    s_axi_araddr_87_sp_1,
    s_axi_araddr_89_sp_1,
    target_mi_enc_4,
    sel_4__0,
    \gen_master_slots[3].r_issuing_cnt_reg[24] ,
    E,
    \gen_master_slots[1].r_issuing_cnt_reg[10] ,
    \gen_master_slots[2].r_issuing_cnt_reg[18] ,
    m_axi_arvalid,
    mi_armaxissuing195_in,
    mi_armaxissuing196_in,
    mi_armaxissuing198_in,
    aclk,
    aresetn_d,
    r_issuing_cnt,
    m_axi_arready,
    r_cmd_pop_0,
    r_cmd_pop_1,
    r_cmd_pop_2,
    s_axi_arvalid,
    p_19_in,
    mi_arready_3,
    p_24_in,
    \gen_arbiter.m_grant_enc_i_reg[0]_0 ,
    \gen_arbiter.m_grant_enc_i_reg[0]_1 ,
    \gen_arbiter.last_rr_hot[3]_i_3__0_0 ,
    \gen_arbiter.last_rr_hot[3]_i_3__0_1 ,
    st_aa_arvalid_qual,
    \gen_arbiter.last_rr_hot[3]_i_3__0_2 ,
    \gen_arbiter.last_rr_hot[3]_i_3__0_3 ,
    s_axi_araddr,
    r_cmd_pop_3,
    \gen_arbiter.qual_reg_reg[3]_0 ,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen);
  output aa_mi_arvalid;
  output [0:0]SR;
  output [2:0]D;
  output [0:0]Q;
  output [2:0]\gen_master_slots[1].r_issuing_cnt_reg[9] ;
  output [2:0]\gen_master_slots[2].r_issuing_cnt_reg[17] ;
  output [3:0]\gen_arbiter.s_ready_i_reg[3]_0 ;
  output \gen_arbiter.m_mesg_i_reg[1]_0 ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  output \gen_arbiter.m_mesg_i_reg[0]_0 ;
  output \gen_axi.read_cs_reg[0] ;
  output match;
  output match_0;
  output match_1;
  output [12:0]st_aa_artarget_hot;
  output ADDRESS_HIT_0;
  output [0:0]target_mi_enc;
  output ADDRESS_HIT_0_2;
  output [0:0]target_mi_enc_3;
  output [0:0]\s_axi_araddr[95] ;
  output s_axi_araddr_88_sp_1;
  output s_axi_araddr_83_sp_1;
  output s_axi_araddr_93_sp_1;
  output s_axi_araddr_87_sp_1;
  output s_axi_araddr_89_sp_1;
  output [0:0]target_mi_enc_4;
  output sel_4__0;
  output \gen_master_slots[3].r_issuing_cnt_reg[24] ;
  output [0:0]E;
  output [0:0]\gen_master_slots[1].r_issuing_cnt_reg[10] ;
  output [0:0]\gen_master_slots[2].r_issuing_cnt_reg[18] ;
  output [2:0]m_axi_arvalid;
  output mi_armaxissuing195_in;
  output mi_armaxissuing196_in;
  output mi_armaxissuing198_in;
  input aclk;
  input aresetn_d;
  input [12:0]r_issuing_cnt;
  input [2:0]m_axi_arready;
  input r_cmd_pop_0;
  input r_cmd_pop_1;
  input r_cmd_pop_2;
  input [3:0]s_axi_arvalid;
  input p_19_in;
  input mi_arready_3;
  input [1:0]p_24_in;
  input \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  input \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  input \gen_arbiter.last_rr_hot[3]_i_3__0_0 ;
  input \gen_arbiter.last_rr_hot[3]_i_3__0_1 ;
  input [1:0]st_aa_arvalid_qual;
  input \gen_arbiter.last_rr_hot[3]_i_3__0_2 ;
  input \gen_arbiter.last_rr_hot[3]_i_3__0_3 ;
  input [127:0]s_axi_araddr;
  input r_cmd_pop_3;
  input [3:0]\gen_arbiter.qual_reg_reg[3]_0 ;
  input [15:0]s_axi_arqos;
  input [15:0]s_axi_arcache;
  input [7:0]s_axi_arburst;
  input [11:0]s_axi_arprot;
  input [3:0]s_axi_arlock;
  input [11:0]s_axi_arsize;
  input [31:0]s_axi_arlen;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_2;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [2:0]aa_mi_artarget_hot;
  wire aa_mi_arvalid;
  wire aclk;
  wire aresetn_d;
  wire [1:0]f_hot2enc_return;
  wire \gen_arbiter.any_grant_i_1_n_0 ;
  wire \gen_arbiter.any_grant_i_2__0_n_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[3]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[3]_i_2_n_0 ;
  wire \gen_arbiter.grant_hot[3]_i_3_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[2] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[3] ;
  wire \gen_arbiter.last_rr_hot[0]_i_1__0_n_0 ;
  wire \gen_arbiter.last_rr_hot[1]_i_1_n_0 ;
  wire \gen_arbiter.last_rr_hot[1]_i_2_n_0 ;
  wire \gen_arbiter.last_rr_hot[1]_i_3_n_0 ;
  wire \gen_arbiter.last_rr_hot[2]_i_1_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_3__0_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_3__0_1 ;
  wire \gen_arbiter.last_rr_hot[3]_i_3__0_2 ;
  wire \gen_arbiter.last_rr_hot[3]_i_3__0_3 ;
  wire \gen_arbiter.last_rr_hot[3]_i_4__0_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_8_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_9_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  wire \gen_arbiter.m_mesg_i_reg[0]_0 ;
  wire \gen_arbiter.m_mesg_i_reg[1]_0 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire \gen_arbiter.m_valid_i_i_1__0_n_0 ;
  wire [3:0]\gen_arbiter.qual_reg_reg[3]_0 ;
  wire \gen_arbiter.s_ready_i[3]_i_1_n_0 ;
  wire [3:0]\gen_arbiter.s_ready_i_reg[3]_0 ;
  wire \gen_axi.read_cs_reg[0] ;
  wire \gen_axi.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ;
  wire \gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ;
  wire [0:0]\gen_master_slots[1].r_issuing_cnt_reg[10] ;
  wire [2:0]\gen_master_slots[1].r_issuing_cnt_reg[9] ;
  wire \gen_master_slots[2].r_issuing_cnt[19]_i_5_n_0 ;
  wire [2:0]\gen_master_slots[2].r_issuing_cnt_reg[17] ;
  wire [0:0]\gen_master_slots[2].r_issuing_cnt_reg[18] ;
  wire \gen_master_slots[3].r_issuing_cnt_reg[24] ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire grant_hot;
  wire grant_hot0;
  wire grant_hot11_out;
  wire grant_hot1__0;
  wire [2:0]m_axi_arready;
  wire [2:0]m_axi_arvalid;
  wire [63:0]m_mesg_mux;
  wire [3:0]m_target_hot_mux;
  wire match;
  wire match_0;
  wire match_1;
  wire mi_armaxissuing195_in;
  wire mi_armaxissuing196_in;
  wire mi_armaxissuing198_in;
  wire mi_arready_3;
  wire p_0_in38_in;
  wire p_19_in;
  wire p_1_in;
  wire [1:0]p_24_in;
  wire p_34_in;
  wire p_4_in;
  wire p_52_in;
  wire p_5_in;
  wire p_6_in;
  wire p_6_in29_in;
  wire p_70_in;
  wire p_7_in20_in;
  wire [3:0]qual_reg;
  wire r_cmd_pop_0;
  wire r_cmd_pop_1;
  wire r_cmd_pop_2;
  wire r_cmd_pop_3;
  wire [12:0]r_issuing_cnt;
  wire [127:0]s_axi_araddr;
  wire [0:0]\s_axi_araddr[95] ;
  wire s_axi_araddr_83_sn_1;
  wire s_axi_araddr_87_sn_1;
  wire s_axi_araddr_88_sn_1;
  wire s_axi_araddr_89_sn_1;
  wire s_axi_araddr_93_sn_1;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire sel_4__0;
  wire [12:0]st_aa_artarget_hot;
  wire [1:0]st_aa_arvalid_qual;
  wire [0:0]target_mi_enc;
  wire [0:0]target_mi_enc_3;
  wire [0:0]target_mi_enc_4;

  assign s_axi_araddr_83_sp_1 = s_axi_araddr_83_sn_1;
  assign s_axi_araddr_87_sp_1 = s_axi_araddr_87_sn_1;
  assign s_axi_araddr_88_sp_1 = s_axi_araddr_88_sn_1;
  assign s_axi_araddr_89_sp_1 = s_axi_araddr_89_sn_1;
  assign s_axi_araddr_93_sp_1 = s_axi_araddr_93_sn_1;
  LUT5 #(
    .INIT(32'hAA800000)) 
    \gen_arbiter.any_grant_i_1 
       (.I0(aresetn_d),
        .I1(\gen_arbiter.any_grant_i_2__0_n_0 ),
        .I2(grant_hot0),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .I4(\gen_arbiter.grant_hot[3]_i_2_n_0 ),
        .O(\gen_arbiter.any_grant_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11111110)) 
    \gen_arbiter.any_grant_i_2__0 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ),
        .I3(f_hot2enc_return[1]),
        .I4(\gen_arbiter.last_rr_hot[0]_i_1__0_n_0 ),
        .O(\gen_arbiter.any_grant_i_2__0_n_0 ));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_arbiter.grant_hot[3]_i_1 
       (.I0(\gen_arbiter.grant_hot[3]_i_2_n_0 ),
        .I1(aresetn_d),
        .O(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00151515FFFFFFFF)) 
    \gen_arbiter.grant_hot[3]_i_2 
       (.I0(\gen_arbiter.grant_hot[3]_i_3_n_0 ),
        .I1(m_axi_arready[0]),
        .I2(aa_mi_artarget_hot[0]),
        .I3(m_axi_arready[1]),
        .I4(aa_mi_artarget_hot[1]),
        .I5(aa_mi_arvalid),
        .O(\gen_arbiter.grant_hot[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \gen_arbiter.grant_hot[3]_i_3 
       (.I0(m_axi_arready[2]),
        .I1(aa_mi_artarget_hot[2]),
        .I2(mi_arready_3),
        .I3(Q),
        .O(\gen_arbiter.grant_hot[3]_i_3_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[0]_i_1__0_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[2]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[3] ),
        .R(\gen_arbiter.grant_hot[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_arbiter.last_rr_hot[0]_i_1__0 
       (.I0(grant_hot1__0),
        .I1(qual_reg[0]),
        .I2(s_axi_arvalid[0]),
        .I3(\gen_arbiter.s_ready_i_reg[3]_0 [0]),
        .O(\gen_arbiter.last_rr_hot[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAABAA)) 
    \gen_arbiter.last_rr_hot[0]_i_2__0 
       (.I0(p_6_in),
        .I1(p_7_in20_in),
        .I2(p_6_in29_in),
        .I3(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I4(p_0_in38_in),
        .I5(\gen_arbiter.last_rr_hot[1]_i_2_n_0 ),
        .O(grant_hot1__0));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00020)) 
    \gen_arbiter.last_rr_hot[1]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[1]_i_2_n_0 ),
        .I1(p_0_in38_in),
        .I2(p_7_in20_in),
        .I3(\gen_arbiter.last_rr_hot[1]_i_3_n_0 ),
        .I4(p_6_in),
        .I5(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFBF00)) 
    \gen_arbiter.last_rr_hot[1]_i_2 
       (.I0(\gen_arbiter.s_ready_i_reg[3]_0 [2]),
        .I1(s_axi_arvalid[2]),
        .I2(qual_reg[2]),
        .I3(p_4_in),
        .I4(p_5_in),
        .O(\gen_arbiter.last_rr_hot[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[1]_i_3 
       (.I0(\gen_arbiter.s_ready_i_reg[3]_0 [0]),
        .I1(s_axi_arvalid[0]),
        .I2(qual_reg[0]),
        .O(\gen_arbiter.last_rr_hot[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_arbiter.last_rr_hot[2]_i_1 
       (.I0(grant_hot11_out),
        .I1(qual_reg[2]),
        .I2(s_axi_arvalid[2]),
        .I3(\gen_arbiter.s_ready_i_reg[3]_0 [2]),
        .O(\gen_arbiter.last_rr_hot[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAABAA)) 
    \gen_arbiter.last_rr_hot[2]_i_2 
       (.I0(p_4_in),
        .I1(p_0_in38_in),
        .I2(\gen_arbiter.last_rr_hot[1]_i_3_n_0 ),
        .I3(p_5_in),
        .I4(p_7_in20_in),
        .I5(\gen_arbiter.last_rr_hot[3]_i_4__0_n_0 ),
        .O(grant_hot11_out));
  LUT6 #(
    .INIT(64'h000000FE00000000)) 
    \gen_arbiter.last_rr_hot[3]_i_1__0 
       (.I0(\gen_arbiter.last_rr_hot[0]_i_1__0_n_0 ),
        .I1(f_hot2enc_return[1]),
        .I2(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .I4(aa_mi_arvalid),
        .I5(grant_hot0),
        .O(grant_hot));
  LUT6 #(
    .INIT(64'hF0F0F0F000F00020)) 
    \gen_arbiter.last_rr_hot[3]_i_2__0 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_4__0_n_0 ),
        .I1(p_7_in20_in),
        .I2(p_0_in38_in),
        .I3(p_6_in29_in),
        .I4(p_4_in),
        .I5(p_5_in),
        .O(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \gen_arbiter.last_rr_hot[3]_i_3__0 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_9_n_0 ),
        .I2(\gen_arbiter.m_grant_enc_i_reg[0]_0 ),
        .I3(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .I4(\gen_arbiter.m_grant_enc_i_reg[0]_1 ),
        .I5(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ),
        .O(grant_hot0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFBF00)) 
    \gen_arbiter.last_rr_hot[3]_i_4__0 
       (.I0(\gen_arbiter.s_ready_i_reg[3]_0 [0]),
        .I1(s_axi_arvalid[0]),
        .I2(qual_reg[0]),
        .I3(p_6_in),
        .I4(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.last_rr_hot[3]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[3]_i_5__0 
       (.I0(\gen_arbiter.s_ready_i_reg[3]_0 [1]),
        .I1(s_axi_arvalid[1]),
        .I2(qual_reg[1]),
        .O(p_7_in20_in));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[3]_i_6__0 
       (.I0(\gen_arbiter.s_ready_i_reg[3]_0 [3]),
        .I1(s_axi_arvalid[3]),
        .I2(qual_reg[3]),
        .O(p_0_in38_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_arbiter.last_rr_hot[3]_i_7__0 
       (.I0(\gen_arbiter.s_ready_i_reg[3]_0 [2]),
        .I1(s_axi_arvalid[2]),
        .I2(qual_reg[2]),
        .O(p_6_in29_in));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \gen_arbiter.last_rr_hot[3]_i_8 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_3__0_2 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_3__0_3 ),
        .I2(p_6_in29_in),
        .I3(st_aa_arvalid_qual[1]),
        .I4(grant_hot11_out),
        .O(\gen_arbiter.last_rr_hot[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE0000000)) 
    \gen_arbiter.last_rr_hot[3]_i_9 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_3__0_0 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_3__0_1 ),
        .I2(\gen_arbiter.last_rr_hot[1]_i_3_n_0 ),
        .I3(st_aa_arvalid_qual[0]),
        .I4(grant_hot1__0),
        .O(\gen_arbiter.last_rr_hot[3]_i_9_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[0]_i_1__0_n_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDRE \gen_arbiter.last_rr_hot_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ),
        .Q(p_4_in),
        .R(SR));
  FDRE \gen_arbiter.last_rr_hot_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[2]_i_1_n_0 ),
        .Q(p_5_in),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .Q(p_6_in),
        .S(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1__0 
       (.I0(\gen_arbiter.last_rr_hot[1]_i_1_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .O(f_hot2enc_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \gen_arbiter.m_grant_enc_i[1]_i_1__0 
       (.I0(grant_hot11_out),
        .I1(qual_reg[2]),
        .I2(s_axi_arvalid[2]),
        .I3(\gen_arbiter.s_ready_i_reg[3]_0 [2]),
        .I4(\gen_arbiter.last_rr_hot[3]_i_2__0_n_0 ),
        .O(f_hot2enc_return[1]));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return[0]),
        .Q(m_mesg_mux[0]),
        .R(SR));
  FDRE \gen_arbiter.m_grant_enc_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return[1]),
        .Q(m_mesg_mux[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_1 
       (.I0(aa_mi_arvalid),
        .O(p_1_in));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_1__0 
       (.I0(aresetn_d),
        .O(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[0]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[1]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[63]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [58]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [8]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \gen_arbiter.m_target_hot_i[0]_i_1 
       (.I0(st_aa_artarget_hot[3]),
        .I1(st_aa_artarget_hot[10]),
        .I2(f_hot2enc_return[1]),
        .I3(f_hot2enc_return[0]),
        .I4(st_aa_artarget_hot[0]),
        .I5(st_aa_artarget_hot[6]),
        .O(m_target_hot_mux[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \gen_arbiter.m_target_hot_i[1]_i_1__0 
       (.I0(st_aa_artarget_hot[4]),
        .I1(st_aa_artarget_hot[11]),
        .I2(f_hot2enc_return[1]),
        .I3(f_hot2enc_return[0]),
        .I4(st_aa_artarget_hot[1]),
        .I5(st_aa_artarget_hot[7]),
        .O(m_target_hot_mux[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \gen_arbiter.m_target_hot_i[2]_i_1 
       (.I0(st_aa_artarget_hot[5]),
        .I1(st_aa_artarget_hot[12]),
        .I2(f_hot2enc_return[1]),
        .I3(f_hot2enc_return[0]),
        .I4(st_aa_artarget_hot[2]),
        .I5(st_aa_artarget_hot[8]),
        .O(m_target_hot_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[3]_i_10 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_araddr[62]),
        .O(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.m_target_hot_i[3]_i_11__0 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[124]),
        .I2(s_axi_araddr[125]),
        .I3(s_axi_araddr[126]),
        .I4(s_axi_araddr[122]),
        .I5(s_axi_araddr[123]),
        .O(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_12__0 
       (.I0(s_axi_araddr[121]),
        .I1(s_axi_araddr[118]),
        .I2(s_axi_araddr[119]),
        .I3(s_axi_araddr[116]),
        .I4(s_axi_araddr[117]),
        .I5(s_axi_araddr[120]),
        .O(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_13__0 
       (.I0(s_axi_araddr[120]),
        .I1(s_axi_araddr[118]),
        .I2(s_axi_araddr[121]),
        .I3(s_axi_araddr[116]),
        .I4(s_axi_araddr[117]),
        .I5(s_axi_araddr[119]),
        .O(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[3]_i_14__0 
       (.I0(s_axi_araddr[114]),
        .I1(s_axi_araddr[115]),
        .I2(s_axi_araddr[113]),
        .I3(s_axi_araddr[112]),
        .O(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_15__0 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[124]),
        .I2(s_axi_araddr[125]),
        .I3(s_axi_araddr[123]),
        .I4(s_axi_araddr[122]),
        .I5(s_axi_araddr[126]),
        .O(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[3]_i_16__0 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[126]),
        .O(sel_4__0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.m_target_hot_i[3]_i_17 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_araddr[28]),
        .I2(s_axi_araddr[29]),
        .I3(s_axi_araddr[30]),
        .I4(s_axi_araddr[26]),
        .I5(s_axi_araddr[27]),
        .O(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_18 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_araddr[22]),
        .I2(s_axi_araddr[23]),
        .I3(s_axi_araddr[20]),
        .I4(s_axi_araddr[21]),
        .I5(s_axi_araddr[24]),
        .O(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_19 
       (.I0(s_axi_araddr[24]),
        .I1(s_axi_araddr[22]),
        .I2(s_axi_araddr[25]),
        .I3(s_axi_araddr[20]),
        .I4(s_axi_araddr[21]),
        .I5(s_axi_araddr[23]),
        .O(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h35F035FF3500350F)) 
    \gen_arbiter.m_target_hot_i[3]_i_1__0 
       (.I0(match),
        .I1(match_0),
        .I2(f_hot2enc_return[1]),
        .I3(f_hot2enc_return[0]),
        .I4(match_1),
        .I5(st_aa_artarget_hot[9]),
        .O(m_target_hot_mux[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \gen_arbiter.m_target_hot_i[3]_i_2 
       (.I0(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I1(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I3(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ),
        .I4(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I5(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .O(match));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[3]_i_20 
       (.I0(s_axi_araddr[18]),
        .I1(s_axi_araddr[19]),
        .I2(s_axi_araddr[17]),
        .I3(s_axi_araddr[16]),
        .O(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_21 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_araddr[28]),
        .I2(s_axi_araddr[29]),
        .I3(s_axi_araddr[27]),
        .I4(s_axi_araddr[26]),
        .I5(s_axi_araddr[30]),
        .O(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[3]_i_22 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_araddr[30]),
        .O(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \gen_arbiter.m_target_hot_i[3]_i_3__0 
       (.I0(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I1(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I3(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ),
        .I4(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I5(sel_4__0),
        .O(match_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \gen_arbiter.m_target_hot_i[3]_i_4 
       (.I0(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I1(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I3(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ),
        .I4(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I5(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .O(match_1));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.m_target_hot_i[3]_i_5 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_araddr[60]),
        .I2(s_axi_araddr[61]),
        .I3(s_axi_araddr[62]),
        .I4(s_axi_araddr[58]),
        .I5(s_axi_araddr[59]),
        .O(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_6 
       (.I0(s_axi_araddr[57]),
        .I1(s_axi_araddr[54]),
        .I2(s_axi_araddr[55]),
        .I3(s_axi_araddr[52]),
        .I4(s_axi_araddr[53]),
        .I5(s_axi_araddr[56]),
        .O(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_7 
       (.I0(s_axi_araddr[56]),
        .I1(s_axi_araddr[54]),
        .I2(s_axi_araddr[57]),
        .I3(s_axi_araddr[52]),
        .I4(s_axi_araddr[53]),
        .I5(s_axi_araddr[55]),
        .O(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[3]_i_8 
       (.I0(s_axi_araddr[50]),
        .I1(s_axi_araddr[51]),
        .I2(s_axi_araddr[49]),
        .I3(s_axi_araddr[48]),
        .O(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_9 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_araddr[60]),
        .I2(s_axi_araddr[61]),
        .I3(s_axi_araddr[59]),
        .I4(s_axi_araddr[58]),
        .I5(s_axi_araddr[62]),
        .O(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(aa_mi_artarget_hot[0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(aa_mi_artarget_hot[1]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[2]),
        .Q(aa_mi_artarget_hot[2]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[3]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \gen_arbiter.m_valid_i_i_1__0 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(aa_mi_arvalid),
        .I2(\gen_arbiter.grant_hot[3]_i_2_n_0 ),
        .O(\gen_arbiter.m_valid_i_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1__0_n_0 ),
        .Q(aa_mi_arvalid),
        .R(SR));
  mcu_xbar_0_generic_baseblocks_v2_1_0_mux_enc__parameterized2_31 \gen_arbiter.mux_mesg 
       (.D({m_mesg_mux[63:54],m_mesg_mux[49:47],m_mesg_mux[45:2]}),
        .Q(m_mesg_mux[1:0]),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_arbiter.qual_reg[1]_i_6 
       (.I0(r_issuing_cnt[11]),
        .I1(r_issuing_cnt[10]),
        .I2(r_issuing_cnt[8]),
        .I3(r_issuing_cnt[9]),
        .O(mi_armaxissuing198_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_arbiter.qual_reg[2]_i_10 
       (.I0(r_issuing_cnt[7]),
        .I1(r_issuing_cnt[6]),
        .I2(r_issuing_cnt[4]),
        .I3(r_issuing_cnt[5]),
        .O(mi_armaxissuing196_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_arbiter.qual_reg[3]_i_9 
       (.I0(r_issuing_cnt[3]),
        .I1(r_issuing_cnt[2]),
        .I2(r_issuing_cnt[0]),
        .I3(r_issuing_cnt[1]),
        .O(mi_armaxissuing195_in));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[3]_0 [0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[3]_0 [1]),
        .Q(qual_reg[1]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[3]_0 [2]),
        .Q(qual_reg[2]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[3]_0 [3]),
        .Q(qual_reg[3]),
        .R(SR));
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_arbiter.s_ready_i[3]_i_1 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(aa_mi_arvalid),
        .I2(aresetn_d),
        .O(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .Q(\gen_arbiter.s_ready_i_reg[3]_0 [0]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .Q(\gen_arbiter.s_ready_i_reg[3]_0 [1]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .Q(\gen_arbiter.s_ready_i_reg[3]_0 [2]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot_reg_n_0_[3] ),
        .Q(\gen_arbiter.s_ready_i_reg[3]_0 [3]),
        .R(\gen_arbiter.s_ready_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \gen_axi.s_axi_rid_i[0]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .I1(p_19_in),
        .I2(aa_mi_arvalid),
        .I3(Q),
        .I4(mi_arready_3),
        .I5(p_24_in[0]),
        .O(\gen_arbiter.m_mesg_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \gen_axi.s_axi_rid_i[1]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .I1(p_19_in),
        .I2(aa_mi_arvalid),
        .I3(Q),
        .I4(mi_arready_3),
        .I5(p_24_in[1]),
        .O(\gen_arbiter.m_mesg_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \gen_axi.s_axi_rlast_i_i_2 
       (.I0(p_19_in),
        .I1(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .I2(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .I3(\gen_axi.s_axi_rlast_i_i_4_n_0 ),
        .O(\gen_axi.read_cs_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.s_axi_rlast_i_i_4 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .I1(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .I2(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .I3(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .I4(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .I5(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .O(\gen_axi.s_axi_rlast_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_1 
       (.I0(r_issuing_cnt[0]),
        .I1(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I2(r_issuing_cnt[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_master_slots[0].r_issuing_cnt[2]_i_1 
       (.I0(r_issuing_cnt[1]),
        .I1(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I2(r_issuing_cnt[0]),
        .I3(r_issuing_cnt[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFF0000)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_1 
       (.I0(r_issuing_cnt[2]),
        .I1(r_issuing_cnt[3]),
        .I2(r_issuing_cnt[0]),
        .I3(r_issuing_cnt[1]),
        .I4(p_70_in),
        .I5(r_cmd_pop_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_2 
       (.I0(r_issuing_cnt[1]),
        .I1(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I2(r_issuing_cnt[0]),
        .I3(r_issuing_cnt[3]),
        .I4(r_issuing_cnt[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_3 
       (.I0(aa_mi_arvalid),
        .I1(aa_mi_artarget_hot[0]),
        .I2(m_axi_arready[0]),
        .O(p_70_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_5 
       (.I0(m_axi_arready[0]),
        .I1(aa_mi_artarget_hot[0]),
        .I2(aa_mi_arvalid),
        .I3(r_cmd_pop_0),
        .O(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_master_slots[1].r_issuing_cnt[10]_i_1 
       (.I0(r_issuing_cnt[5]),
        .I1(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ),
        .I2(r_issuing_cnt[4]),
        .I3(r_issuing_cnt[6]),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[9] [1]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFF0000)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_1 
       (.I0(r_issuing_cnt[6]),
        .I1(r_issuing_cnt[7]),
        .I2(r_issuing_cnt[4]),
        .I3(r_issuing_cnt[5]),
        .I4(p_52_in),
        .I5(r_cmd_pop_1),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_2 
       (.I0(r_issuing_cnt[5]),
        .I1(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ),
        .I2(r_issuing_cnt[4]),
        .I3(r_issuing_cnt[7]),
        .I4(r_issuing_cnt[6]),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[9] [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_3 
       (.I0(aa_mi_arvalid),
        .I1(aa_mi_artarget_hot[1]),
        .I2(m_axi_arready[1]),
        .O(p_52_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_5 
       (.I0(m_axi_arready[1]),
        .I1(aa_mi_artarget_hot[1]),
        .I2(aa_mi_arvalid),
        .I3(r_cmd_pop_1),
        .O(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_master_slots[1].r_issuing_cnt[9]_i_1 
       (.I0(r_issuing_cnt[4]),
        .I1(\gen_master_slots[1].r_issuing_cnt[11]_i_5_n_0 ),
        .I2(r_issuing_cnt[5]),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_master_slots[2].r_issuing_cnt[17]_i_1 
       (.I0(r_issuing_cnt[8]),
        .I1(\gen_master_slots[2].r_issuing_cnt[19]_i_5_n_0 ),
        .I2(r_issuing_cnt[9]),
        .O(\gen_master_slots[2].r_issuing_cnt_reg[17] [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_master_slots[2].r_issuing_cnt[18]_i_1 
       (.I0(r_issuing_cnt[9]),
        .I1(\gen_master_slots[2].r_issuing_cnt[19]_i_5_n_0 ),
        .I2(r_issuing_cnt[8]),
        .I3(r_issuing_cnt[10]),
        .O(\gen_master_slots[2].r_issuing_cnt_reg[17] [1]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFF0000)) 
    \gen_master_slots[2].r_issuing_cnt[19]_i_1 
       (.I0(r_issuing_cnt[10]),
        .I1(r_issuing_cnt[11]),
        .I2(r_issuing_cnt[8]),
        .I3(r_issuing_cnt[9]),
        .I4(p_34_in),
        .I5(r_cmd_pop_2),
        .O(\gen_master_slots[2].r_issuing_cnt_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_master_slots[2].r_issuing_cnt[19]_i_2 
       (.I0(r_issuing_cnt[9]),
        .I1(\gen_master_slots[2].r_issuing_cnt[19]_i_5_n_0 ),
        .I2(r_issuing_cnt[8]),
        .I3(r_issuing_cnt[11]),
        .I4(r_issuing_cnt[10]),
        .O(\gen_master_slots[2].r_issuing_cnt_reg[17] [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_master_slots[2].r_issuing_cnt[19]_i_3 
       (.I0(aa_mi_arvalid),
        .I1(aa_mi_artarget_hot[2]),
        .I2(m_axi_arready[2]),
        .O(p_34_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_master_slots[2].r_issuing_cnt[19]_i_5 
       (.I0(m_axi_arready[2]),
        .I1(aa_mi_artarget_hot[2]),
        .I2(aa_mi_arvalid),
        .I3(r_cmd_pop_2),
        .O(\gen_master_slots[2].r_issuing_cnt[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80006AAA)) 
    \gen_master_slots[3].r_issuing_cnt[24]_i_1 
       (.I0(r_issuing_cnt[12]),
        .I1(aa_mi_arvalid),
        .I2(Q),
        .I3(mi_arready_3),
        .I4(r_cmd_pop_3),
        .O(\gen_master_slots[3].r_issuing_cnt_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[0]_i_1 
       (.I0(match_1),
        .I1(ADDRESS_HIT_0),
        .O(st_aa_artarget_hot[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[0]_i_1__1 
       (.I0(match),
        .I1(ADDRESS_HIT_0_2),
        .O(st_aa_artarget_hot[3]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_issue.active_target_hot[0]_i_2 
       (.I0(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_araddr[18]),
        .I2(s_axi_araddr[19]),
        .I3(s_axi_araddr[17]),
        .I4(s_axi_araddr[16]),
        .I5(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(ADDRESS_HIT_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_issue.active_target_hot[0]_i_2__0 
       (.I0(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_araddr[50]),
        .I2(s_axi_araddr[51]),
        .I3(s_axi_araddr[49]),
        .I4(s_axi_araddr[48]),
        .I5(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(ADDRESS_HIT_0_2));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gen_single_issue.active_target_hot[1]_i_1 
       (.I0(s_axi_araddr[31]),
        .I1(s_axi_araddr[30]),
        .I2(match_1),
        .O(st_aa_artarget_hot[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gen_single_issue.active_target_hot[1]_i_1__1 
       (.I0(s_axi_araddr[63]),
        .I1(s_axi_araddr[62]),
        .I2(match),
        .O(st_aa_artarget_hot[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[2]_i_1 
       (.I0(target_mi_enc),
        .I1(match_1),
        .O(st_aa_artarget_hot[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[2]_i_1__1 
       (.I0(target_mi_enc_3),
        .I1(match),
        .O(st_aa_artarget_hot[5]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_issue.active_target_hot[2]_i_2 
       (.I0(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_araddr[18]),
        .I2(s_axi_araddr[19]),
        .I3(s_axi_araddr[17]),
        .I4(s_axi_araddr[16]),
        .I5(\gen_slave_slots[0].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(target_mi_enc));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_issue.active_target_hot[2]_i_2__0 
       (.I0(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_araddr[50]),
        .I2(s_axi_araddr[51]),
        .I3(s_axi_araddr[49]),
        .I4(s_axi_araddr[48]),
        .I5(\gen_slave_slots[1].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(target_mi_enc_3));
  LUT6 #(
    .INIT(64'h5557555355555555)) 
    \gen_single_thread.active_target_enc[1]_i_1 
       (.I0(st_aa_artarget_hot[7]),
        .I1(s_axi_araddr_88_sn_1),
        .I2(s_axi_araddr_83_sn_1),
        .I3(s_axi_araddr_93_sn_1),
        .I4(s_axi_araddr_87_sn_1),
        .I5(s_axi_araddr_89_sn_1),
        .O(\s_axi_araddr[95] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \gen_single_thread.active_target_enc[1]_i_2 
       (.I0(s_axi_araddr[88]),
        .I1(s_axi_araddr[87]),
        .I2(s_axi_araddr[90]),
        .O(s_axi_araddr_88_sn_1));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_thread.active_target_enc[1]_i_2__1 
       (.I0(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_araddr[114]),
        .I2(s_axi_araddr[115]),
        .I3(s_axi_araddr[113]),
        .I4(s_axi_araddr[112]),
        .I5(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(target_mi_enc_4));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_single_thread.active_target_enc[1]_i_3 
       (.I0(s_axi_araddr[83]),
        .I1(s_axi_araddr[82]),
        .I2(s_axi_araddr[80]),
        .I3(s_axi_araddr[81]),
        .O(s_axi_araddr_83_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_single_thread.active_target_enc[1]_i_4 
       (.I0(s_axi_araddr[93]),
        .I1(s_axi_araddr[92]),
        .I2(s_axi_araddr[95]),
        .O(s_axi_araddr_93_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \gen_single_thread.active_target_enc[1]_i_5 
       (.I0(s_axi_araddr[87]),
        .I1(s_axi_araddr[88]),
        .I2(s_axi_araddr[90]),
        .O(s_axi_araddr_87_sn_1));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \gen_single_thread.active_target_enc[1]_i_6 
       (.I0(s_axi_araddr[89]),
        .I1(s_axi_araddr[86]),
        .I2(s_axi_araddr[94]),
        .I3(s_axi_araddr[85]),
        .I4(s_axi_araddr[91]),
        .I5(s_axi_araddr[84]),
        .O(s_axi_araddr_89_sn_1));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \gen_single_thread.active_target_hot[0]_i_1 
       (.I0(s_axi_araddr_89_sn_1),
        .I1(s_axi_araddr_87_sn_1),
        .I2(s_axi_araddr[95]),
        .I3(s_axi_araddr[92]),
        .I4(s_axi_araddr[93]),
        .I5(s_axi_araddr_83_sn_1),
        .O(st_aa_artarget_hot[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_thread.active_target_hot[0]_i_1__1 
       (.I0(match_0),
        .I1(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .O(st_aa_artarget_hot[10]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_thread.active_target_hot[0]_i_2__0 
       (.I0(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_araddr[114]),
        .I2(s_axi_araddr[115]),
        .I3(s_axi_araddr[113]),
        .I4(s_axi_araddr[112]),
        .I5(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(\gen_slave_slots[3].gen_si_read.si_transactor_ar/gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_single_thread.active_target_hot[1]_i_1 
       (.I0(s_axi_araddr[95]),
        .I1(s_axi_araddr[94]),
        .O(st_aa_artarget_hot[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gen_single_thread.active_target_hot[1]_i_1__1 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[126]),
        .I2(match_0),
        .O(st_aa_artarget_hot[11]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \gen_single_thread.active_target_hot[2]_i_1 
       (.I0(s_axi_araddr_89_sn_1),
        .I1(s_axi_araddr_88_sn_1),
        .I2(s_axi_araddr[95]),
        .I3(s_axi_araddr[92]),
        .I4(s_axi_araddr[93]),
        .I5(s_axi_araddr_83_sn_1),
        .O(st_aa_artarget_hot[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_thread.active_target_hot[2]_i_1__1 
       (.I0(target_mi_enc_4),
        .I1(match_0),
        .O(st_aa_artarget_hot[12]));
  LUT6 #(
    .INIT(64'h00000000FFFDFFF5)) 
    \gen_single_thread.active_target_hot[3]_i_1 
       (.I0(s_axi_araddr_89_sn_1),
        .I1(s_axi_araddr_87_sn_1),
        .I2(s_axi_araddr_93_sn_1),
        .I3(s_axi_araddr_83_sn_1),
        .I4(s_axi_araddr_88_sn_1),
        .I5(st_aa_artarget_hot[7]),
        .O(st_aa_artarget_hot[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(aa_mi_artarget_hot[0]),
        .I1(aa_mi_arvalid),
        .O(m_axi_arvalid[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arvalid[1]_INST_0 
       (.I0(aa_mi_artarget_hot[1]),
        .I1(aa_mi_arvalid),
        .O(m_axi_arvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arvalid[2]_INST_0 
       (.I0(aa_mi_artarget_hot[2]),
        .I1(aa_mi_arvalid),
        .O(m_axi_arvalid[2]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_addr_arbiter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0
   (aa_wm_awgrant_enc,
    aa_sa_awvalid,
    ss_aa_awready,
    D,
    \gen_master_slots[1].w_issuing_cnt_reg[11] ,
    \gen_master_slots[0].w_issuing_cnt_reg[5] ,
    match,
    ADDRESS_HIT_0,
    st_aa_awtarget_hot,
    target_mi_enc,
    \m_ready_d_reg[0] ,
    Q,
    \m_ready_d_reg[0]_0 ,
    \m_ready_d_reg[0]_1 ,
    \m_ready_d_reg[0]_2 ,
    \gen_arbiter.m_grant_enc_i_reg[1]_0 ,
    match_0,
    match_1,
    ADDRESS_HIT_0_2,
    target_mi_enc_3,
    ADDRESS_HIT_0_4,
    target_mi_enc_5,
    E,
    \gen_rep[0].fifoaddr_reg[0] ,
    p_0_out,
    \gen_arbiter.m_target_hot_i_reg[2]_0 ,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    \FSM_onehot_state_reg[3] ,
    \gen_master_slots[2].w_issuing_cnt_reg[21] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    \gen_master_slots[0].w_issuing_cnt_reg[5]_0 ,
    \m_ready_d_reg[1] ,
    \m_ready_d_reg[0]_3 ,
    m_axi_awvalid,
    \gen_master_slots[0].w_issuing_cnt_reg[2] ,
    \gen_master_slots[2].w_issuing_cnt_reg[18] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ,
    sa_wm_awvalid,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    SR,
    aclk,
    m_ready_d,
    s_axi_awvalid,
    w_issuing_cnt,
    m_aready,
    m_ready_d_6,
    \gen_rep[0].fifoaddr_reg[0]_1 ,
    m_aready_7,
    \FSM_onehot_state_reg[0] ,
    m_aready_8,
    \gen_rep[0].fifoaddr_reg[0]_2 ,
    m_aready_9,
    \FSM_onehot_state_reg[1] ,
    aresetn_d,
    \gen_arbiter.m_grant_enc_i_reg[0]_0 ,
    \gen_arbiter.m_grant_enc_i_reg[0]_1 ,
    \gen_arbiter.m_grant_enc_i_reg[0]_2 ,
    \gen_arbiter.any_grant_reg_0 ,
    m_ready_d_10,
    m_ready_d_11,
    s_axi_awaddr,
    fifoaddr,
    fifoaddr_12,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ,
    m_axi_awready,
    \gen_master_slots[1].w_issuing_cnt_reg[8]_1 ,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ,
    mi_awready_3,
    \gen_arbiter.qual_reg_reg[2]_0 ,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen);
  output [1:0]aa_wm_awgrant_enc;
  output aa_sa_awvalid;
  output [2:0]ss_aa_awready;
  output [4:0]D;
  output [2:0]\gen_master_slots[1].w_issuing_cnt_reg[11] ;
  output [4:0]\gen_master_slots[0].w_issuing_cnt_reg[5] ;
  output match;
  output ADDRESS_HIT_0;
  output [6:0]st_aa_awtarget_hot;
  output [0:0]target_mi_enc;
  output [1:0]\m_ready_d_reg[0] ;
  output [3:0]Q;
  output [1:0]\m_ready_d_reg[0]_0 ;
  output [1:0]\m_ready_d_reg[0]_1 ;
  output [1:0]\m_ready_d_reg[0]_2 ;
  output \gen_arbiter.m_grant_enc_i_reg[1]_0 ;
  output match_0;
  output match_1;
  output ADDRESS_HIT_0_2;
  output [0:0]target_mi_enc_3;
  output ADDRESS_HIT_0_4;
  output [0:0]target_mi_enc_5;
  output [0:0]E;
  output \gen_rep[0].fifoaddr_reg[0] ;
  output p_0_out;
  output [0:0]\gen_arbiter.m_target_hot_i_reg[2]_0 ;
  output \gen_rep[0].fifoaddr_reg[0]_0 ;
  output \FSM_onehot_state_reg[3] ;
  output [0:0]\gen_master_slots[2].w_issuing_cnt_reg[21] ;
  output [0:0]\gen_master_slots[1].w_issuing_cnt_reg[8] ;
  output [0:0]\gen_master_slots[0].w_issuing_cnt_reg[5]_0 ;
  output \m_ready_d_reg[1] ;
  output \m_ready_d_reg[0]_3 ;
  output [2:0]m_axi_awvalid;
  output \gen_master_slots[0].w_issuing_cnt_reg[2] ;
  output \gen_master_slots[2].w_issuing_cnt_reg[18] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ;
  output [3:0]sa_wm_awvalid;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  input [0:0]SR;
  input aclk;
  input [0:0]m_ready_d;
  input [2:0]s_axi_awvalid;
  input [15:0]w_issuing_cnt;
  input m_aready;
  input [1:0]m_ready_d_6;
  input [1:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  input m_aready_7;
  input [1:0]\FSM_onehot_state_reg[0] ;
  input m_aready_8;
  input [1:0]\gen_rep[0].fifoaddr_reg[0]_2 ;
  input m_aready_9;
  input [2:0]\FSM_onehot_state_reg[1] ;
  input aresetn_d;
  input \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  input \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  input \gen_arbiter.m_grant_enc_i_reg[0]_2 ;
  input \gen_arbiter.any_grant_reg_0 ;
  input [0:0]m_ready_d_10;
  input [0:0]m_ready_d_11;
  input [95:0]s_axi_awaddr;
  input [0:0]fifoaddr;
  input [0:0]fifoaddr_12;
  input \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  input \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  input [2:0]m_axi_awready;
  input \gen_master_slots[1].w_issuing_cnt_reg[8]_1 ;
  input \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  input \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  input mi_awready_3;
  input [2:0]\gen_arbiter.qual_reg_reg[2]_0 ;
  input [11:0]s_axi_awqos;
  input [11:0]s_axi_awcache;
  input [5:0]s_axi_awburst;
  input [8:0]s_axi_awprot;
  input [2:0]s_axi_awlock;
  input [8:0]s_axi_awsize;
  input [23:0]s_axi_awlen;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_2;
  wire ADDRESS_HIT_0_4;
  wire [4:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_state_reg[0] ;
  wire [2:0]\FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aa_sa_awready;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire aresetn_d;
  wire [0:0]fifoaddr;
  wire [0:0]fifoaddr_12;
  wire \gen_arbiter.any_grant_i_1__0_n_0 ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[2]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[2] ;
  wire \gen_arbiter.last_rr_hot[0]_i_2_n_0 ;
  wire \gen_arbiter.last_rr_hot[0]_i_3_n_0 ;
  wire \gen_arbiter.last_rr_hot[0]_i_4_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_5_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ;
  wire \gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ;
  wire \gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ;
  wire \gen_arbiter.m_grant_enc_i[1]_i_2_n_0 ;
  wire \gen_arbiter.m_grant_enc_i[1]_i_3_n_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_1 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0]_2 ;
  wire \gen_arbiter.m_grant_enc_i_reg[1]_0 ;
  wire \gen_arbiter.m_mesg_i[0]_i_1_n_0 ;
  wire \gen_arbiter.m_mesg_i[1]_i_3_n_0 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire [0:0]\gen_arbiter.m_target_hot_i_reg[2]_0 ;
  wire \gen_arbiter.m_valid_i_i_1_n_0 ;
  wire [2:0]\gen_arbiter.qual_reg_reg[2]_0 ;
  wire \gen_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[1]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[2]_i_1_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt[5]_i_3_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt[5]_i_6_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[2] ;
  wire [4:0]\gen_master_slots[0].w_issuing_cnt_reg[5] ;
  wire [0:0]\gen_master_slots[0].w_issuing_cnt_reg[5]_0 ;
  wire \gen_master_slots[1].w_issuing_cnt[11]_i_3_n_0 ;
  wire \gen_master_slots[1].w_issuing_cnt[11]_i_5_n_0 ;
  wire [2:0]\gen_master_slots[1].w_issuing_cnt_reg[11] ;
  wire [0:0]\gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8]_1 ;
  wire \gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ;
  wire \gen_master_slots[2].w_issuing_cnt[21]_i_3_n_0 ;
  wire \gen_master_slots[2].w_issuing_cnt[21]_i_6_n_0 ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[18] ;
  wire [0:0]\gen_master_slots[2].w_issuing_cnt_reg[21] ;
  wire \gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_out ;
  wire \gen_rep[0].fifoaddr_reg[0] ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [1:0]\gen_rep[0].fifoaddr_reg[0]_1 ;
  wire [1:0]\gen_rep[0].fifoaddr_reg[0]_2 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ;
  wire grant_hot;
  wire grant_hot0;
  wire m_aready;
  wire m_aready_7;
  wire m_aready_8;
  wire m_aready_9;
  wire [2:0]m_axi_awready;
  wire [2:0]m_axi_awvalid;
  wire [63:2]m_mesg_mux;
  wire [0:0]m_ready_d;
  wire \m_ready_d[1]_i_4_n_0 ;
  wire [0:0]m_ready_d_10;
  wire [0:0]m_ready_d_11;
  wire [1:0]m_ready_d_6;
  wire [1:0]\m_ready_d_reg[0] ;
  wire [1:0]\m_ready_d_reg[0]_0 ;
  wire [1:0]\m_ready_d_reg[0]_1 ;
  wire [1:0]\m_ready_d_reg[0]_2 ;
  wire \m_ready_d_reg[0]_3 ;
  wire \m_ready_d_reg[1] ;
  wire [3:0]m_target_hot_mux;
  wire match;
  wire match_0;
  wire match_1;
  wire mi_awready_3;
  wire p_0_out;
  wire p_1_in;
  wire p_6_in;
  wire [2:0]qual_reg;
  wire [95:0]s_axi_awaddr;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [8:0]s_axi_awsize;
  wire [2:0]s_axi_awvalid;
  wire [3:0]sa_wm_awvalid;
  wire [2:0]ss_aa_awready;
  wire [6:0]st_aa_awtarget_hot;
  wire [0:0]target_mi_enc;
  wire [0:0]target_mi_enc_3;
  wire [0:0]target_mi_enc_5;
  wire [15:0]w_issuing_cnt;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h75550000)) 
    \FSM_onehot_state[0]_i_1__2 
       (.I0(m_aready),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[0]),
        .I4(\gen_rep[0].fifoaddr_reg[0]_1 [1]),
        .O(\m_ready_d_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h75550000)) 
    \FSM_onehot_state[0]_i_1__3 
       (.I0(m_aready_7),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[1]),
        .I4(\FSM_onehot_state_reg[0] [1]),
        .O(\m_ready_d_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h75550000)) 
    \FSM_onehot_state[0]_i_1__4 
       (.I0(m_aready_8),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[2]),
        .I4(\gen_rep[0].fifoaddr_reg[0]_2 [1]),
        .O(\m_ready_d_reg[0]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h75550000)) 
    \FSM_onehot_state[0]_i_1__5 
       (.I0(m_aready_9),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[3]),
        .I4(\FSM_onehot_state_reg[1] [1]),
        .O(\m_ready_d_reg[0]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_state[1]_i_2__2 
       (.I0(\FSM_onehot_state_reg[1] [2]),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[3]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h8AAA0000)) 
    \FSM_onehot_state[3]_i_2__2 
       (.I0(m_aready),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[0]),
        .I4(\gen_rep[0].fifoaddr_reg[0]_1 [1]),
        .O(\m_ready_d_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h8AAA0000)) 
    \FSM_onehot_state[3]_i_2__3 
       (.I0(m_aready_7),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[1]),
        .I4(\FSM_onehot_state_reg[0] [1]),
        .O(\m_ready_d_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h8AAA0000)) 
    \FSM_onehot_state[3]_i_2__4 
       (.I0(m_aready_8),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[2]),
        .I4(\gen_rep[0].fifoaddr_reg[0]_2 [1]),
        .O(\m_ready_d_reg[0]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h8AAA0000)) 
    \FSM_onehot_state[3]_i_2__5 
       (.I0(m_aready_9),
        .I1(m_ready_d_6[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[3]),
        .I4(\FSM_onehot_state_reg[1] [1]),
        .O(\m_ready_d_reg[0]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[3]_i_3__2 
       (.I0(Q[0]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[0]),
        .O(sa_wm_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[3]_i_3__3 
       (.I0(Q[1]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[0]),
        .O(sa_wm_awvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[3]_i_3__4 
       (.I0(Q[2]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[0]),
        .O(sa_wm_awvalid[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[3]_i_3__5 
       (.I0(Q[3]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[0]),
        .O(sa_wm_awvalid[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h70307000)) 
    \gen_arbiter.any_grant_i_1__0 
       (.I0(aa_sa_awready),
        .I1(aa_sa_awvalid),
        .I2(aresetn_d),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .I4(grant_hot0),
        .O(\gen_arbiter.any_grant_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \gen_arbiter.any_grant_i_2 
       (.I0(\gen_arbiter.m_grant_enc_i_reg[0]_2 ),
        .I1(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .I2(\gen_arbiter.m_grant_enc_i_reg[1]_0 ),
        .I3(\gen_arbiter.any_grant_reg_0 ),
        .I4(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .I5(\gen_arbiter.m_grant_enc_i_reg[0]_0 ),
        .O(grant_hot0));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1__0_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7070700000007000)) 
    \gen_arbiter.grant_hot[0]_i_1 
       (.I0(aa_sa_awready),
        .I1(aa_sa_awvalid),
        .I2(aresetn_d),
        .I3(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I4(grant_hot),
        .I5(\gen_arbiter.m_grant_enc_i_reg[1]_0 ),
        .O(\gen_arbiter.grant_hot[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070700000007000)) 
    \gen_arbiter.grant_hot[1]_i_1 
       (.I0(aa_sa_awready),
        .I1(aa_sa_awvalid),
        .I2(aresetn_d),
        .I3(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I4(grant_hot),
        .I5(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .O(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7070700000007000)) 
    \gen_arbiter.grant_hot[2]_i_1 
       (.I0(aa_sa_awready),
        .I1(aa_sa_awvalid),
        .I2(aresetn_d),
        .I3(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .I4(grant_hot),
        .I5(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .O(\gen_arbiter.grant_hot[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \gen_arbiter.grant_hot[2]_i_2 
       (.I0(\m_ready_d_reg[1] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(m_ready_d_6[0]),
        .O(aa_sa_awready));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[1]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[2]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAA22AAAAAA02)) 
    \gen_arbiter.last_rr_hot[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[0]_i_4_n_0 ),
        .I3(aa_wm_awgrant_enc[1]),
        .I4(p_6_in),
        .I5(aa_wm_awgrant_enc[0]),
        .O(\gen_arbiter.m_grant_enc_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \gen_arbiter.last_rr_hot[0]_i_2 
       (.I0(ss_aa_awready[0]),
        .I1(qual_reg[0]),
        .I2(s_axi_awvalid[0]),
        .I3(m_ready_d_10),
        .O(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \gen_arbiter.last_rr_hot[0]_i_3 
       (.I0(ss_aa_awready[2]),
        .I1(qual_reg[2]),
        .I2(s_axi_awvalid[2]),
        .I3(m_ready_d_11),
        .O(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \gen_arbiter.last_rr_hot[0]_i_4 
       (.I0(ss_aa_awready[1]),
        .I1(m_ready_d),
        .I2(s_axi_awvalid[1]),
        .I3(qual_reg[1]),
        .I4(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.last_rr_hot[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4F4FFF4)) 
    \gen_arbiter.last_rr_hot[3]_i_1 
       (.I0(\gen_arbiter.m_grant_enc_i_reg[0]_0 ),
        .I1(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .I2(\gen_arbiter.m_grant_enc_i_reg[0]_1 ),
        .I3(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .I4(\gen_arbiter.m_grant_enc_i_reg[0]_2 ),
        .I5(\gen_arbiter.last_rr_hot[3]_i_5_n_0 ),
        .O(grant_hot));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.last_rr_hot[3]_i_18 
       (.I0(w_issuing_cnt[6]),
        .I1(w_issuing_cnt[7]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gen_arbiter.last_rr_hot[3]_i_19 
       (.I0(w_issuing_cnt[2]),
        .I1(w_issuing_cnt[3]),
        .I2(w_issuing_cnt[0]),
        .I3(w_issuing_cnt[1]),
        .I4(w_issuing_cnt[5]),
        .I5(w_issuing_cnt[4]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gen_arbiter.last_rr_hot[3]_i_20 
       (.I0(w_issuing_cnt[12]),
        .I1(w_issuing_cnt[13]),
        .I2(w_issuing_cnt[10]),
        .I3(w_issuing_cnt[11]),
        .I4(w_issuing_cnt[15]),
        .I5(w_issuing_cnt[14]),
        .O(\gen_master_slots[2].w_issuing_cnt_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.last_rr_hot[3]_i_5 
       (.I0(aa_sa_awvalid),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.last_rr_hot[3]_i_5_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.m_grant_enc_i_reg[1]_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(1'b0),
        .Q(p_6_in),
        .S(SR));
  LUT4 #(
    .INIT(16'hAA02)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1 
       (.I0(\gen_arbiter.m_grant_enc_i[1]_i_2_n_0 ),
        .I1(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .I2(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ),
        .I3(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \gen_arbiter.m_grant_enc_i[0]_i_2 
       (.I0(aa_wm_awgrant_enc[1]),
        .I1(p_6_in),
        .I2(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I3(aa_wm_awgrant_enc[0]),
        .O(\gen_arbiter.m_grant_enc_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88A888A888A888AA)) 
    \gen_arbiter.m_grant_enc_i[1]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I1(aa_wm_awgrant_enc[0]),
        .I2(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I3(\gen_arbiter.m_grant_enc_i[1]_i_2_n_0 ),
        .I4(\gen_arbiter.m_grant_enc_i[1]_i_3_n_0 ),
        .I5(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .O(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_arbiter.m_grant_enc_i[1]_i_2 
       (.I0(qual_reg[1]),
        .I1(s_axi_awvalid[1]),
        .I2(m_ready_d),
        .I3(ss_aa_awready[1]),
        .O(\gen_arbiter.m_grant_enc_i[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_arbiter.m_grant_enc_i[1]_i_3 
       (.I0(p_6_in),
        .I1(aa_wm_awgrant_enc[1]),
        .O(\gen_arbiter.m_grant_enc_i[1]_i_3_n_0 ));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .Q(aa_wm_awgrant_enc[0]),
        .R(SR));
  FDRE \gen_arbiter.m_grant_enc_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .Q(aa_wm_awgrant_enc[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_mesg_i[0]_i_1 
       (.I0(aa_wm_awgrant_enc[0]),
        .I1(aa_wm_awgrant_enc[1]),
        .O(\gen_arbiter.m_mesg_i[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_2 
       (.I0(aa_sa_awvalid),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_mesg_i[1]_i_3 
       (.I0(aa_wm_awgrant_enc[1]),
        .I1(aa_wm_awgrant_enc[0]),
        .O(\gen_arbiter.m_mesg_i[1]_i_3_n_0 ));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\gen_arbiter.m_mesg_i[0]_i_1_n_0 ),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\gen_arbiter.m_mesg_i[1]_i_3_n_0 ),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[63]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [58]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [8]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000F0F0FF008888)) 
    \gen_arbiter.m_target_hot_i[0]_i_1__0 
       (.I0(match),
        .I1(ADDRESS_HIT_0),
        .I2(st_aa_awtarget_hot[4]),
        .I3(st_aa_awtarget_hot[1]),
        .I4(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .I5(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .O(m_target_hot_mux[0]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_arbiter.m_target_hot_i[0]_i_2 
       (.I0(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_awaddr[18]),
        .I2(s_axi_awaddr[19]),
        .I3(s_axi_awaddr[17]),
        .I4(s_axi_awaddr[16]),
        .I5(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(ADDRESS_HIT_0));
  LUT5 #(
    .INIT(32'h0ACF0AC0)) 
    \gen_arbiter.m_target_hot_i[1]_i_1 
       (.I0(st_aa_awtarget_hot[2]),
        .I1(st_aa_awtarget_hot[5]),
        .I2(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .I3(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .I4(st_aa_awtarget_hot[0]),
        .O(m_target_hot_mux[1]));
  LUT6 #(
    .INIT(64'h00FFF0880000F088)) 
    \gen_arbiter.m_target_hot_i[2]_i_1__0 
       (.I0(target_mi_enc),
        .I1(match),
        .I2(st_aa_awtarget_hot[3]),
        .I3(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .I4(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .I5(st_aa_awtarget_hot[6]),
        .O(m_target_hot_mux[2]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_arbiter.m_target_hot_i[2]_i_2 
       (.I0(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_awaddr[18]),
        .I2(s_axi_awaddr[19]),
        .I3(s_axi_awaddr[17]),
        .I4(s_axi_awaddr[16]),
        .I5(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(target_mi_enc));
  LUT5 #(
    .INIT(32'h0530053F)) 
    \gen_arbiter.m_target_hot_i[3]_i_1 
       (.I0(match_0),
        .I1(match_1),
        .I2(\gen_arbiter.m_grant_enc_i[1]_i_1_n_0 ),
        .I3(\gen_arbiter.m_grant_enc_i[0]_i_1_n_0 ),
        .I4(match),
        .O(m_target_hot_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[3]_i_10__0 
       (.I0(s_axi_awaddr[63]),
        .I1(s_axi_awaddr[62]),
        .O(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.m_target_hot_i[3]_i_11 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[92]),
        .I2(s_axi_awaddr[93]),
        .I3(s_axi_awaddr[94]),
        .I4(s_axi_awaddr[90]),
        .I5(s_axi_awaddr[91]),
        .O(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_12 
       (.I0(s_axi_awaddr[89]),
        .I1(s_axi_awaddr[86]),
        .I2(s_axi_awaddr[87]),
        .I3(s_axi_awaddr[84]),
        .I4(s_axi_awaddr[85]),
        .I5(s_axi_awaddr[88]),
        .O(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_13 
       (.I0(s_axi_awaddr[88]),
        .I1(s_axi_awaddr[86]),
        .I2(s_axi_awaddr[89]),
        .I3(s_axi_awaddr[84]),
        .I4(s_axi_awaddr[85]),
        .I5(s_axi_awaddr[87]),
        .O(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[3]_i_14 
       (.I0(s_axi_awaddr[82]),
        .I1(s_axi_awaddr[83]),
        .I2(s_axi_awaddr[81]),
        .I3(s_axi_awaddr[80]),
        .O(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_15 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[92]),
        .I2(s_axi_awaddr[93]),
        .I3(s_axi_awaddr[91]),
        .I4(s_axi_awaddr[90]),
        .I5(s_axi_awaddr[94]),
        .O(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[3]_i_16 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[94]),
        .O(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.m_target_hot_i[3]_i_17__0 
       (.I0(s_axi_awaddr[31]),
        .I1(s_axi_awaddr[28]),
        .I2(s_axi_awaddr[29]),
        .I3(s_axi_awaddr[30]),
        .I4(s_axi_awaddr[26]),
        .I5(s_axi_awaddr[27]),
        .O(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_18__0 
       (.I0(s_axi_awaddr[25]),
        .I1(s_axi_awaddr[22]),
        .I2(s_axi_awaddr[23]),
        .I3(s_axi_awaddr[20]),
        .I4(s_axi_awaddr[21]),
        .I5(s_axi_awaddr[24]),
        .O(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_19__0 
       (.I0(s_axi_awaddr[24]),
        .I1(s_axi_awaddr[22]),
        .I2(s_axi_awaddr[25]),
        .I3(s_axi_awaddr[20]),
        .I4(s_axi_awaddr[21]),
        .I5(s_axi_awaddr[23]),
        .O(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[3]_i_20__0 
       (.I0(s_axi_awaddr[18]),
        .I1(s_axi_awaddr[19]),
        .I2(s_axi_awaddr[17]),
        .I3(s_axi_awaddr[16]),
        .O(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_21__0 
       (.I0(s_axi_awaddr[31]),
        .I1(s_axi_awaddr[28]),
        .I2(s_axi_awaddr[29]),
        .I3(s_axi_awaddr[27]),
        .I4(s_axi_awaddr[26]),
        .I5(s_axi_awaddr[30]),
        .O(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_arbiter.m_target_hot_i[3]_i_22__0 
       (.I0(s_axi_awaddr[31]),
        .I1(s_axi_awaddr[30]),
        .O(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \gen_arbiter.m_target_hot_i[3]_i_2__0 
       (.I0(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I1(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I3(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ),
        .I4(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I5(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .O(match_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \gen_arbiter.m_target_hot_i[3]_i_3 
       (.I0(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I1(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I3(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ),
        .I4(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I5(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .O(match_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \gen_arbiter.m_target_hot_i[3]_i_4__0 
       (.I0(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I1(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I2(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I3(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ),
        .I4(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .I5(\gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .O(match));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.m_target_hot_i[3]_i_5__0 
       (.I0(s_axi_awaddr[63]),
        .I1(s_axi_awaddr[60]),
        .I2(s_axi_awaddr[61]),
        .I3(s_axi_awaddr[62]),
        .I4(s_axi_awaddr[58]),
        .I5(s_axi_awaddr[59]),
        .O(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_6__0 
       (.I0(s_axi_awaddr[57]),
        .I1(s_axi_awaddr[54]),
        .I2(s_axi_awaddr[55]),
        .I3(s_axi_awaddr[52]),
        .I4(s_axi_awaddr[53]),
        .I5(s_axi_awaddr[56]),
        .O(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_7__0 
       (.I0(s_axi_awaddr[56]),
        .I1(s_axi_awaddr[54]),
        .I2(s_axi_awaddr[57]),
        .I3(s_axi_awaddr[52]),
        .I4(s_axi_awaddr[53]),
        .I5(s_axi_awaddr[55]),
        .O(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.m_target_hot_i[3]_i_8__0 
       (.I0(s_axi_awaddr[50]),
        .I1(s_axi_awaddr[51]),
        .I2(s_axi_awaddr[49]),
        .I3(s_axi_awaddr[48]),
        .O(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_2 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_arbiter.m_target_hot_i[3]_i_9__0 
       (.I0(s_axi_awaddr[63]),
        .I1(s_axi_awaddr[60]),
        .I2(s_axi_awaddr[61]),
        .I3(s_axi_awaddr[59]),
        .I4(s_axi_awaddr[58]),
        .I5(s_axi_awaddr[62]),
        .O(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[3] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[3]),
        .Q(Q[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_arbiter.m_valid_i_i_1 
       (.I0(aa_sa_awready),
        .I1(aa_sa_awvalid),
        .I2(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.m_valid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1_n_0 ),
        .Q(aa_sa_awvalid),
        .R(SR));
  mcu_xbar_0_generic_baseblocks_v2_1_0_mux_enc__parameterized2 \gen_arbiter.mux_mesg 
       (.D({m_mesg_mux[63:54],m_mesg_mux[49:47],m_mesg_mux[45:2]}),
        .\gen_arbiter.m_mesg_i_reg[2] (aa_wm_awgrant_enc[1]),
        .\gen_arbiter.m_mesg_i_reg[2]_0 (aa_wm_awgrant_enc[0]),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [1]),
        .Q(qual_reg[1]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [2]),
        .Q(qual_reg[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(aa_sa_awvalid),
        .I3(aresetn_d),
        .O(\gen_arbiter.s_ready_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(aa_sa_awvalid),
        .I3(aresetn_d),
        .O(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[2]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(aa_sa_awvalid),
        .I3(aresetn_d),
        .O(\gen_arbiter.s_ready_i[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(ss_aa_awready[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[1]_i_1_n_0 ),
        .Q(ss_aa_awready[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[2]_i_1_n_0 ),
        .Q(ss_aa_awready[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h9AA6)) 
    \gen_master_slots[0].w_issuing_cnt[2]_i_1 
       (.I0(w_issuing_cnt[2]),
        .I1(\gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ),
        .I2(w_issuing_cnt[1]),
        .I3(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[0]),
        .I3(w_issuing_cnt[3]),
        .I4(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[5] [2]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \gen_master_slots[0].w_issuing_cnt[4]_i_1 
       (.I0(w_issuing_cnt[4]),
        .I1(\gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ),
        .I2(w_issuing_cnt[1]),
        .I3(w_issuing_cnt[0]),
        .I4(w_issuing_cnt[3]),
        .I5(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \gen_master_slots[0].w_issuing_cnt[4]_i_2 
       (.I0(m_ready_d_6[1]),
        .I1(aa_sa_awvalid),
        .I2(m_axi_awready[0]),
        .I3(Q[0]),
        .I4(\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA85555)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[5]_i_3_n_0 ),
        .I1(\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .I2(w_issuing_cnt[5]),
        .I3(w_issuing_cnt[4]),
        .I4(\gen_master_slots[0].w_issuing_cnt_reg[0]_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_2 
       (.I0(w_issuing_cnt[5]),
        .I1(w_issuing_cnt[4]),
        .I2(w_issuing_cnt[2]),
        .I3(w_issuing_cnt[3]),
        .I4(\gen_master_slots[0].w_issuing_cnt[5]_i_6_n_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_3 
       (.I0(Q[0]),
        .I1(m_axi_awready[0]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[1]),
        .O(\gen_master_slots[0].w_issuing_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h54D5)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_6 
       (.I0(w_issuing_cnt[2]),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[1]),
        .I3(\gen_master_slots[0].w_issuing_cnt[4]_i_2_n_0 ),
        .O(\gen_master_slots[0].w_issuing_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9AA6)) 
    \gen_master_slots[1].w_issuing_cnt[10]_i_1 
       (.I0(w_issuing_cnt[8]),
        .I1(\gen_master_slots[1].w_issuing_cnt[11]_i_5_n_0 ),
        .I2(w_issuing_cnt[7]),
        .I3(w_issuing_cnt[6]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[11] [1]));
  LUT6 #(
    .INIT(64'h55555555AAAAAAA8)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_1 
       (.I0(\gen_master_slots[1].w_issuing_cnt[11]_i_3_n_0 ),
        .I1(w_issuing_cnt[6]),
        .I2(w_issuing_cnt[7]),
        .I3(w_issuing_cnt[9]),
        .I4(w_issuing_cnt[8]),
        .I5(\gen_master_slots[1].w_issuing_cnt_reg[8]_1 ),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hAAA96AAA)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_2 
       (.I0(w_issuing_cnt[9]),
        .I1(w_issuing_cnt[8]),
        .I2(w_issuing_cnt[6]),
        .I3(w_issuing_cnt[7]),
        .I4(\gen_master_slots[1].w_issuing_cnt[11]_i_5_n_0 ),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[11] [2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_3 
       (.I0(Q[1]),
        .I1(m_axi_awready[1]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[1]),
        .O(\gen_master_slots[1].w_issuing_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_5 
       (.I0(m_ready_d_6[1]),
        .I1(aa_sa_awvalid),
        .I2(m_axi_awready[1]),
        .I3(Q[1]),
        .I4(\gen_master_slots[1].w_issuing_cnt_reg[8]_1 ),
        .O(\gen_master_slots[1].w_issuing_cnt[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[1].w_issuing_cnt[9]_i_1 
       (.I0(\gen_master_slots[1].w_issuing_cnt[11]_i_5_n_0 ),
        .I1(w_issuing_cnt[7]),
        .I2(w_issuing_cnt[6]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[11] [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[2].w_issuing_cnt[17]_i_1 
       (.I0(\gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ),
        .I1(w_issuing_cnt[11]),
        .I2(w_issuing_cnt[10]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h9AA6)) 
    \gen_master_slots[2].w_issuing_cnt[18]_i_1 
       (.I0(w_issuing_cnt[12]),
        .I1(\gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ),
        .I2(w_issuing_cnt[11]),
        .I3(w_issuing_cnt[10]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \gen_master_slots[2].w_issuing_cnt[19]_i_1 
       (.I0(\gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ),
        .I1(w_issuing_cnt[11]),
        .I2(w_issuing_cnt[10]),
        .I3(w_issuing_cnt[13]),
        .I4(w_issuing_cnt[12]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \gen_master_slots[2].w_issuing_cnt[20]_i_1 
       (.I0(w_issuing_cnt[14]),
        .I1(\gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ),
        .I2(w_issuing_cnt[11]),
        .I3(w_issuing_cnt[10]),
        .I4(w_issuing_cnt[13]),
        .I5(w_issuing_cnt[12]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \gen_master_slots[2].w_issuing_cnt[20]_i_2 
       (.I0(m_ready_d_6[1]),
        .I1(aa_sa_awvalid),
        .I2(m_axi_awready[2]),
        .I3(Q[2]),
        .I4(\gen_master_slots[2].w_issuing_cnt_reg[16]_0 ),
        .O(\gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA85555)) 
    \gen_master_slots[2].w_issuing_cnt[21]_i_1 
       (.I0(\gen_master_slots[2].w_issuing_cnt[21]_i_3_n_0 ),
        .I1(\gen_master_slots[2].w_issuing_cnt_reg[16] ),
        .I2(w_issuing_cnt[15]),
        .I3(w_issuing_cnt[14]),
        .I4(\gen_master_slots[2].w_issuing_cnt_reg[16]_0 ),
        .O(\gen_master_slots[2].w_issuing_cnt_reg[21] ));
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_master_slots[2].w_issuing_cnt[21]_i_2 
       (.I0(w_issuing_cnt[15]),
        .I1(w_issuing_cnt[14]),
        .I2(w_issuing_cnt[12]),
        .I3(w_issuing_cnt[13]),
        .I4(\gen_master_slots[2].w_issuing_cnt[21]_i_6_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_master_slots[2].w_issuing_cnt[21]_i_3 
       (.I0(Q[2]),
        .I1(m_axi_awready[2]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[1]),
        .O(\gen_master_slots[2].w_issuing_cnt[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h54D5)) 
    \gen_master_slots[2].w_issuing_cnt[21]_i_6 
       (.I0(w_issuing_cnt[12]),
        .I1(w_issuing_cnt[10]),
        .I2(w_issuing_cnt[11]),
        .I3(\gen_master_slots[2].w_issuing_cnt[20]_i_2_n_0 ),
        .O(\gen_master_slots[2].w_issuing_cnt[21]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[0]_i_1__1 
       (.I0(p_0_out),
        .I1(fifoaddr),
        .O(\gen_rep[0].fifoaddr_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[0]_i_1__3 
       (.I0(\gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_out ),
        .I1(fifoaddr_12),
        .O(\gen_rep[0].fifoaddr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAA6AAA6A00400000)) 
    \gen_rep[0].fifoaddr[0]_i_2 
       (.I0(m_aready_9),
        .I1(Q[3]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[0]),
        .I4(\FSM_onehot_state_reg[1] [1]),
        .I5(\FSM_onehot_state_reg[1] [0]),
        .O(\gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/p_0_out ));
  LUT6 #(
    .INIT(64'hAA6AAA6A00400000)) 
    \gen_rep[0].fifoaddr[2]_i_2 
       (.I0(m_aready_7),
        .I1(Q[1]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[0]),
        .I4(\FSM_onehot_state_reg[0] [1]),
        .I5(\FSM_onehot_state_reg[0] [0]),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'hAA6AAA6A00400000)) 
    \gen_rep[0].fifoaddr[4]_i_1__0 
       (.I0(m_aready),
        .I1(Q[0]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[0]),
        .I4(\gen_rep[0].fifoaddr_reg[0]_1 [1]),
        .I5(\gen_rep[0].fifoaddr_reg[0]_1 [0]),
        .O(E));
  LUT6 #(
    .INIT(64'hAA6AAA6A00400000)) 
    \gen_rep[0].fifoaddr[4]_i_1__1 
       (.I0(m_aready_8),
        .I1(Q[2]),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d_6[0]),
        .I4(\gen_rep[0].fifoaddr_reg[0]_2 [1]),
        .I5(\gen_rep[0].fifoaddr_reg[0]_2 [0]),
        .O(\gen_arbiter.m_target_hot_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[0]_i_1__2 
       (.I0(match_0),
        .I1(ADDRESS_HIT_0_2),
        .O(st_aa_awtarget_hot[1]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_issue.active_target_hot[0]_i_2__1 
       (.I0(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_awaddr[50]),
        .I2(s_axi_awaddr[51]),
        .I3(s_axi_awaddr[49]),
        .I4(s_axi_awaddr[48]),
        .I5(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(ADDRESS_HIT_0_2));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gen_single_issue.active_target_hot[1]_i_1__0 
       (.I0(s_axi_awaddr[31]),
        .I1(s_axi_awaddr[30]),
        .I2(match),
        .O(st_aa_awtarget_hot[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gen_single_issue.active_target_hot[1]_i_1__2 
       (.I0(s_axi_awaddr[63]),
        .I1(s_axi_awaddr[62]),
        .I2(match_0),
        .O(st_aa_awtarget_hot[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[2]_i_1__2 
       (.I0(target_mi_enc_3),
        .I1(match_0),
        .O(st_aa_awtarget_hot[3]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_issue.active_target_hot[2]_i_2__1 
       (.I0(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_awaddr[50]),
        .I2(s_axi_awaddr[51]),
        .I3(s_axi_awaddr[49]),
        .I4(s_axi_awaddr[48]),
        .I5(\gen_slave_slots[1].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(target_mi_enc_3));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_thread.active_target_enc[1]_i_2__0 
       (.I0(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_awaddr[82]),
        .I2(s_axi_awaddr[83]),
        .I3(s_axi_awaddr[81]),
        .I4(s_axi_awaddr[80]),
        .I5(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(target_mi_enc_5));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_thread.active_target_hot[0]_i_1__0 
       (.I0(match_1),
        .I1(ADDRESS_HIT_0_4),
        .O(st_aa_awtarget_hot[4]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gen_single_thread.active_target_hot[0]_i_2 
       (.I0(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_3__4 ),
        .I1(s_axi_awaddr[82]),
        .I2(s_axi_awaddr[83]),
        .I3(s_axi_awaddr[81]),
        .I4(s_axi_awaddr[80]),
        .I5(\gen_slave_slots[2].gen_si_write.si_transactor_aw/gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__2 ),
        .O(ADDRESS_HIT_0_4));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \gen_single_thread.active_target_hot[1]_i_1__0 
       (.I0(s_axi_awaddr[95]),
        .I1(s_axi_awaddr[94]),
        .I2(match_1),
        .O(st_aa_awtarget_hot[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_thread.active_target_hot[2]_i_1__0 
       (.I0(target_mi_enc_5),
        .I1(match_1),
        .O(st_aa_awtarget_hot[6]));
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(Q[0]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[1]),
        .O(m_axi_awvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[1]_INST_0 
       (.I0(Q[1]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[1]),
        .O(m_axi_awvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[2]_INST_0 
       (.I0(Q[2]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_6[1]),
        .O(m_axi_awvalid[2]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \m_ready_d[1]_i_2 
       (.I0(m_ready_d_6[1]),
        .I1(\m_ready_d[1]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(mi_awready_3),
        .I4(Q[2]),
        .I5(m_axi_awready[2]),
        .O(\m_ready_d_reg[1] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_ready_d[1]_i_3 
       (.I0(m_ready_d_6[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\m_ready_d_reg[0]_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \m_ready_d[1]_i_4 
       (.I0(Q[0]),
        .I1(m_axi_awready[0]),
        .I2(Q[1]),
        .I3(m_axi_awready[1]),
        .O(\m_ready_d[1]_i_4_n_0 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "2" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "1" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "artix7" *) (* C_M_AXI_ADDR_WIDTH = "96'b000000000000000000000000000100000000000000000000000000000001111000000000000000000000000000010000" *) (* C_M_AXI_BASE_ADDR = "192'b000000000000000000000000000000000100010010100000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000001000001001000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "96'b000000000000000000000000000011110000000000000000000000000000111100000000000000000000000000001111" *) (* C_M_AXI_READ_ISSUING = "96'b000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000" *) (* C_M_AXI_SECURE = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "96'b000000000000000000000000000001110000000000000000000000000000011100000000000000000000000000000111" *) (* C_M_AXI_WRITE_ISSUING = "96'b000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000100000" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "3" *) (* C_NUM_SLAVE_SLOTS = "4" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_BASE_ID = "128'b00000000000000000000000000000011000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000" *) (* C_S_AXI_READ_ACCEPTANCE = "128'b00000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000001" *) 
(* C_S_AXI_SINGLE_THREAD = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_THREAD_ID_WIDTH = "128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_WRITE_ACCEPTANCE = "128'b00000000000000000000000000000010000000000000000000000000001000000000000000000000000000000000000100000000000000000000000000000001" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_crossbar_v2_1_19_axi_crossbar" *) (* P_ADDR_DECODE = "1" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_FAMILY = "artix7" *) (* P_INCR = "2'b01" *) 
(* P_LEN = "8" *) (* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_M_AXI_SUPPORTS_READ = "3'b111" *) (* P_M_AXI_SUPPORTS_WRITE = "3'b111" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
(* P_RANGE_CHECK = "1" *) (* P_S_AXI_BASE_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "256'b0000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_S_AXI_SUPPORTS_READ = "4'b1111" *) (* P_S_AXI_SUPPORTS_WRITE = "4'b0111" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [7:0]s_axi_awid;
  input [127:0]s_axi_awaddr;
  input [31:0]s_axi_awlen;
  input [11:0]s_axi_awsize;
  input [7:0]s_axi_awburst;
  input [3:0]s_axi_awlock;
  input [15:0]s_axi_awcache;
  input [11:0]s_axi_awprot;
  input [15:0]s_axi_awqos;
  input [3:0]s_axi_awuser;
  input [3:0]s_axi_awvalid;
  output [3:0]s_axi_awready;
  input [7:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]s_axi_wlast;
  input [3:0]s_axi_wuser;
  input [3:0]s_axi_wvalid;
  output [3:0]s_axi_wready;
  output [7:0]s_axi_bid;
  output [7:0]s_axi_bresp;
  output [3:0]s_axi_buser;
  output [3:0]s_axi_bvalid;
  input [3:0]s_axi_bready;
  input [7:0]s_axi_arid;
  input [127:0]s_axi_araddr;
  input [31:0]s_axi_arlen;
  input [11:0]s_axi_arsize;
  input [7:0]s_axi_arburst;
  input [3:0]s_axi_arlock;
  input [15:0]s_axi_arcache;
  input [11:0]s_axi_arprot;
  input [15:0]s_axi_arqos;
  input [3:0]s_axi_aruser;
  input [3:0]s_axi_arvalid;
  output [3:0]s_axi_arready;
  output [7:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [7:0]s_axi_rresp;
  output [3:0]s_axi_rlast;
  output [3:0]s_axi_ruser;
  output [3:0]s_axi_rvalid;
  input [3:0]s_axi_rready;
  output [5:0]m_axi_awid;
  output [95:0]m_axi_awaddr;
  output [23:0]m_axi_awlen;
  output [8:0]m_axi_awsize;
  output [5:0]m_axi_awburst;
  output [2:0]m_axi_awlock;
  output [11:0]m_axi_awcache;
  output [8:0]m_axi_awprot;
  output [11:0]m_axi_awregion;
  output [11:0]m_axi_awqos;
  output [2:0]m_axi_awuser;
  output [2:0]m_axi_awvalid;
  input [2:0]m_axi_awready;
  output [5:0]m_axi_wid;
  output [95:0]m_axi_wdata;
  output [11:0]m_axi_wstrb;
  output [2:0]m_axi_wlast;
  output [2:0]m_axi_wuser;
  output [2:0]m_axi_wvalid;
  input [2:0]m_axi_wready;
  input [5:0]m_axi_bid;
  input [5:0]m_axi_bresp;
  input [2:0]m_axi_buser;
  input [2:0]m_axi_bvalid;
  output [2:0]m_axi_bready;
  output [5:0]m_axi_arid;
  output [95:0]m_axi_araddr;
  output [23:0]m_axi_arlen;
  output [8:0]m_axi_arsize;
  output [5:0]m_axi_arburst;
  output [2:0]m_axi_arlock;
  output [11:0]m_axi_arcache;
  output [8:0]m_axi_arprot;
  output [11:0]m_axi_arregion;
  output [11:0]m_axi_arqos;
  output [2:0]m_axi_aruser;
  output [2:0]m_axi_arvalid;
  input [2:0]m_axi_arready;
  input [5:0]m_axi_rid;
  input [95:0]m_axi_rdata;
  input [5:0]m_axi_rresp;
  input [2:0]m_axi_rlast;
  input [2:0]m_axi_ruser;
  input [2:0]m_axi_rvalid;
  output [2:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [95:64]\^m_axi_araddr ;
  wire [5:4]\^m_axi_arburst ;
  wire [11:8]\^m_axi_arcache ;
  wire [5:4]\^m_axi_arid ;
  wire [7:0]\^m_axi_arlen ;
  wire [2:2]\^m_axi_arlock ;
  wire [8:6]\^m_axi_arprot ;
  wire [11:8]\^m_axi_arqos ;
  wire [2:0]m_axi_arready;
  wire [8:6]\^m_axi_arsize ;
  wire [2:0]m_axi_arvalid;
  wire [95:64]\^m_axi_awaddr ;
  wire [5:4]\^m_axi_awburst ;
  wire [11:8]\^m_axi_awcache ;
  wire [5:4]\^m_axi_awid ;
  wire [23:16]\^m_axi_awlen ;
  wire [2:2]\^m_axi_awlock ;
  wire [8:6]\^m_axi_awprot ;
  wire [11:8]\^m_axi_awqos ;
  wire [2:0]m_axi_awready;
  wire [8:6]\^m_axi_awsize ;
  wire [2:0]m_axi_awvalid;
  wire [5:0]m_axi_bid;
  wire [2:0]m_axi_bready;
  wire [5:0]m_axi_bresp;
  wire [2:0]m_axi_bvalid;
  wire [95:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire [2:0]m_axi_rlast;
  wire [2:0]m_axi_rready;
  wire [5:0]m_axi_rresp;
  wire [2:0]m_axi_rvalid;
  wire [95:0]m_axi_wdata;
  wire [2:0]m_axi_wlast;
  wire [2:0]m_axi_wready;
  wire [11:0]m_axi_wstrb;
  wire [2:0]m_axi_wvalid;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [3:0]s_axi_arready;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [127:0]s_axi_awaddr;
  wire [7:0]s_axi_awburst;
  wire [15:0]s_axi_awcache;
  wire [31:0]s_axi_awlen;
  wire [3:0]s_axi_awlock;
  wire [11:0]s_axi_awprot;
  wire [15:0]s_axi_awqos;
  wire [2:0]\^s_axi_awready ;
  wire [11:0]s_axi_awsize;
  wire [3:0]s_axi_awvalid;
  wire [3:0]s_axi_bready;
  wire [5:0]\^s_axi_bresp ;
  wire [2:0]\^s_axi_bvalid ;
  wire [127:0]s_axi_rdata;
  wire [3:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [7:0]s_axi_rresp;
  wire [3:0]s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire [3:0]s_axi_wlast;
  wire [2:0]\^s_axi_wready ;
  wire [15:0]s_axi_wstrb;
  wire [3:0]s_axi_wvalid;

  assign m_axi_araddr[95:64] = \^m_axi_araddr [95:64];
  assign m_axi_araddr[63:32] = \^m_axi_araddr [95:64];
  assign m_axi_araddr[31:0] = \^m_axi_araddr [95:64];
  assign m_axi_arburst[5:4] = \^m_axi_arburst [5:4];
  assign m_axi_arburst[3:2] = \^m_axi_arburst [5:4];
  assign m_axi_arburst[1:0] = \^m_axi_arburst [5:4];
  assign m_axi_arcache[11:8] = \^m_axi_arcache [11:8];
  assign m_axi_arcache[7:4] = \^m_axi_arcache [11:8];
  assign m_axi_arcache[3:0] = \^m_axi_arcache [11:8];
  assign m_axi_arid[5:4] = \^m_axi_arid [5:4];
  assign m_axi_arid[3:2] = \^m_axi_arid [5:4];
  assign m_axi_arid[1:0] = \^m_axi_arid [5:4];
  assign m_axi_arlen[23:16] = \^m_axi_arlen [7:0];
  assign m_axi_arlen[15:8] = \^m_axi_arlen [7:0];
  assign m_axi_arlen[7:0] = \^m_axi_arlen [7:0];
  assign m_axi_arlock[2] = \^m_axi_arlock [2];
  assign m_axi_arlock[1] = \^m_axi_arlock [2];
  assign m_axi_arlock[0] = \^m_axi_arlock [2];
  assign m_axi_arprot[8:6] = \^m_axi_arprot [8:6];
  assign m_axi_arprot[5:3] = \^m_axi_arprot [8:6];
  assign m_axi_arprot[2:0] = \^m_axi_arprot [8:6];
  assign m_axi_arqos[11:8] = \^m_axi_arqos [11:8];
  assign m_axi_arqos[7:4] = \^m_axi_arqos [11:8];
  assign m_axi_arqos[3:0] = \^m_axi_arqos [11:8];
  assign m_axi_arregion[11] = \<const0> ;
  assign m_axi_arregion[10] = \<const0> ;
  assign m_axi_arregion[9] = \<const0> ;
  assign m_axi_arregion[8] = \<const0> ;
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[8:6] = \^m_axi_arsize [8:6];
  assign m_axi_arsize[5:3] = \^m_axi_arsize [8:6];
  assign m_axi_arsize[2:0] = \^m_axi_arsize [8:6];
  assign m_axi_aruser[2] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[95:64] = \^m_axi_awaddr [95:64];
  assign m_axi_awaddr[63:32] = \^m_axi_awaddr [95:64];
  assign m_axi_awaddr[31:0] = \^m_axi_awaddr [95:64];
  assign m_axi_awburst[5:4] = \^m_axi_awburst [5:4];
  assign m_axi_awburst[3:2] = \^m_axi_awburst [5:4];
  assign m_axi_awburst[1:0] = \^m_axi_awburst [5:4];
  assign m_axi_awcache[11:8] = \^m_axi_awcache [11:8];
  assign m_axi_awcache[7:4] = \^m_axi_awcache [11:8];
  assign m_axi_awcache[3:0] = \^m_axi_awcache [11:8];
  assign m_axi_awid[5:4] = \^m_axi_awid [5:4];
  assign m_axi_awid[3:2] = \^m_axi_awid [5:4];
  assign m_axi_awid[1:0] = \^m_axi_awid [5:4];
  assign m_axi_awlen[23:16] = \^m_axi_awlen [23:16];
  assign m_axi_awlen[15:8] = \^m_axi_awlen [23:16];
  assign m_axi_awlen[7:0] = \^m_axi_awlen [23:16];
  assign m_axi_awlock[2] = \^m_axi_awlock [2];
  assign m_axi_awlock[1] = \^m_axi_awlock [2];
  assign m_axi_awlock[0] = \^m_axi_awlock [2];
  assign m_axi_awprot[8:6] = \^m_axi_awprot [8:6];
  assign m_axi_awprot[5:3] = \^m_axi_awprot [8:6];
  assign m_axi_awprot[2:0] = \^m_axi_awprot [8:6];
  assign m_axi_awqos[11:8] = \^m_axi_awqos [11:8];
  assign m_axi_awqos[7:4] = \^m_axi_awqos [11:8];
  assign m_axi_awqos[3:0] = \^m_axi_awqos [11:8];
  assign m_axi_awregion[11] = \<const0> ;
  assign m_axi_awregion[10] = \<const0> ;
  assign m_axi_awregion[9] = \<const0> ;
  assign m_axi_awregion[8] = \<const0> ;
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[8:6] = \^m_axi_awsize [8:6];
  assign m_axi_awsize[5:3] = \^m_axi_awsize [8:6];
  assign m_axi_awsize[2:0] = \^m_axi_awsize [8:6];
  assign m_axi_awuser[2] = \<const0> ;
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[5] = \<const0> ;
  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wuser[2] = \<const0> ;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_awready[3] = \<const0> ;
  assign s_axi_awready[2:0] = \^s_axi_awready [2:0];
  assign s_axi_bid[7] = \<const0> ;
  assign s_axi_bid[6] = \<const0> ;
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[7] = \<const0> ;
  assign s_axi_bresp[6] = \<const0> ;
  assign s_axi_bresp[5:0] = \^s_axi_bresp [5:0];
  assign s_axi_buser[3] = \<const0> ;
  assign s_axi_buser[2] = \<const0> ;
  assign s_axi_buser[1] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid[3] = \<const0> ;
  assign s_axi_bvalid[2:0] = \^s_axi_bvalid [2:0];
  assign s_axi_rid[7] = \<const0> ;
  assign s_axi_rid[6] = \<const0> ;
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[3] = \<const0> ;
  assign s_axi_ruser[2] = \<const0> ;
  assign s_axi_ruser[1] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready[3] = \<const0> ;
  assign s_axi_wready[2:0] = \^s_axi_wready [2:0];
  GND GND
       (.G(\<const0> ));
  mcu_xbar_0_axi_crossbar_v2_1_19_crossbar \gen_samd.crossbar_samd 
       (.S_AXI_ARREADY(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(\^m_axi_araddr ),
        .m_axi_arburst(\^m_axi_arburst ),
        .m_axi_arcache(\^m_axi_arcache ),
        .m_axi_arid(\^m_axi_arid ),
        .m_axi_arlen(\^m_axi_arlen ),
        .m_axi_arlock(\^m_axi_arlock ),
        .m_axi_arprot(\^m_axi_arprot ),
        .m_axi_arqos(\^m_axi_arqos ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(\^m_axi_arsize ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(\^m_axi_awaddr ),
        .m_axi_awburst(\^m_axi_awburst ),
        .m_axi_awcache(\^m_axi_awcache ),
        .m_axi_awid(\^m_axi_awid ),
        .m_axi_awlen(\^m_axi_awlen ),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(\^m_axi_awprot ),
        .m_axi_awqos(\^m_axi_awqos ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(\^m_axi_awsize ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .m_valid_i_reg(\^s_axi_bvalid [0]),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[95:0]),
        .s_axi_awburst(s_axi_awburst[5:0]),
        .s_axi_awcache(s_axi_awcache[11:0]),
        .s_axi_awlen(s_axi_awlen[23:0]),
        .s_axi_awlock(s_axi_awlock[2:0]),
        .s_axi_awprot(s_axi_awprot[8:0]),
        .s_axi_awqos(s_axi_awqos[11:0]),
        .s_axi_awready(\^s_axi_awready ),
        .s_axi_awsize(s_axi_awsize[8:0]),
        .s_axi_awvalid(s_axi_awvalid[2:0]),
        .s_axi_bready(s_axi_bready[2:0]),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(\^s_axi_bvalid [2:1]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[95:0]),
        .s_axi_wlast(s_axi_wlast[2:0]),
        .s_axi_wready(\^s_axi_wready ),
        .s_axi_wstrb(s_axi_wstrb[11:0]),
        .s_axi_wvalid(s_axi_wvalid[2:0]),
        .s_ready_i_reg(m_axi_rready[0]),
        .s_ready_i_reg_0(m_axi_rready[1]),
        .s_ready_i_reg_1(m_axi_rready[2]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_crossbar" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_crossbar
   (S_AXI_ARREADY,
    s_axi_rlast,
    s_axi_rvalid,
    s_ready_i_reg,
    s_ready_i_reg_0,
    s_ready_i_reg_1,
    m_axi_awid,
    m_axi_arid,
    m_axi_arlen,
    m_axi_awqos,
    m_axi_awcache,
    m_axi_awburst,
    m_axi_awprot,
    m_axi_awlock,
    m_axi_awsize,
    m_axi_awlen,
    m_axi_awaddr,
    m_valid_i_reg,
    s_axi_bvalid,
    m_axi_arqos,
    m_axi_arcache,
    m_axi_arburst,
    m_axi_arprot,
    m_axi_arlock,
    m_axi_arsize,
    m_axi_araddr,
    s_axi_rresp,
    s_axi_rdata,
    s_axi_awready,
    s_axi_bresp,
    s_axi_wready,
    m_axi_wstrb,
    m_axi_wdata,
    m_axi_bready,
    m_axi_awvalid,
    m_axi_wvalid,
    m_axi_wlast,
    m_axi_arvalid,
    s_axi_awvalid,
    s_axi_araddr,
    m_axi_arready,
    s_axi_awaddr,
    s_axi_arvalid,
    s_axi_rready,
    m_axi_rvalid,
    aclk,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_bready,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_wlast,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_wstrb,
    s_axi_wdata,
    m_axi_bid,
    m_axi_bresp,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_bvalid,
    aresetn,
    m_axi_awready);
  output [3:0]S_AXI_ARREADY;
  output [3:0]s_axi_rlast;
  output [3:0]s_axi_rvalid;
  output s_ready_i_reg;
  output s_ready_i_reg_0;
  output s_ready_i_reg_1;
  output [1:0]m_axi_awid;
  output [1:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awcache;
  output [1:0]m_axi_awburst;
  output [2:0]m_axi_awprot;
  output [0:0]m_axi_awlock;
  output [2:0]m_axi_awsize;
  output [7:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output m_valid_i_reg;
  output [1:0]s_axi_bvalid;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arcache;
  output [1:0]m_axi_arburst;
  output [2:0]m_axi_arprot;
  output [0:0]m_axi_arlock;
  output [2:0]m_axi_arsize;
  output [31:0]m_axi_araddr;
  output [7:0]s_axi_rresp;
  output [127:0]s_axi_rdata;
  output [2:0]s_axi_awready;
  output [5:0]s_axi_bresp;
  output [2:0]s_axi_wready;
  output [11:0]m_axi_wstrb;
  output [95:0]m_axi_wdata;
  output [2:0]m_axi_bready;
  output [2:0]m_axi_awvalid;
  output [2:0]m_axi_wvalid;
  output [2:0]m_axi_wlast;
  output [2:0]m_axi_arvalid;
  input [2:0]s_axi_awvalid;
  input [127:0]s_axi_araddr;
  input [2:0]m_axi_arready;
  input [95:0]s_axi_awaddr;
  input [3:0]s_axi_arvalid;
  input [3:0]s_axi_rready;
  input [2:0]m_axi_rvalid;
  input aclk;
  input [11:0]s_axi_awqos;
  input [11:0]s_axi_awcache;
  input [5:0]s_axi_awburst;
  input [8:0]s_axi_awprot;
  input [2:0]s_axi_awlock;
  input [8:0]s_axi_awsize;
  input [23:0]s_axi_awlen;
  input [2:0]s_axi_bready;
  input [15:0]s_axi_arqos;
  input [15:0]s_axi_arcache;
  input [7:0]s_axi_arburst;
  input [11:0]s_axi_arprot;
  input [3:0]s_axi_arlock;
  input [11:0]s_axi_arsize;
  input [31:0]s_axi_arlen;
  input [2:0]s_axi_wlast;
  input [2:0]s_axi_wvalid;
  input [2:0]m_axi_wready;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;
  input [5:0]m_axi_bid;
  input [5:0]m_axi_bresp;
  input [5:0]m_axi_rid;
  input [2:0]m_axi_rlast;
  input [5:0]m_axi_rresp;
  input [95:0]m_axi_rdata;
  input [2:0]m_axi_bvalid;
  input aresetn;
  input [2:0]m_axi_awready;

  wire [3:0]S_AXI_ARREADY;
  wire [3:3]aa_mi_artarget_hot;
  wire aa_mi_arvalid;
  wire [3:0]aa_mi_awtarget_hot;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire addr_arbiter_ar_n_10;
  wire addr_arbiter_ar_n_100;
  wire addr_arbiter_ar_n_101;
  wire addr_arbiter_ar_n_102;
  wire addr_arbiter_ar_n_103;
  wire addr_arbiter_ar_n_106;
  wire addr_arbiter_ar_n_107;
  wire addr_arbiter_ar_n_108;
  wire addr_arbiter_ar_n_109;
  wire addr_arbiter_ar_n_11;
  wire addr_arbiter_ar_n_16;
  wire addr_arbiter_ar_n_2;
  wire addr_arbiter_ar_n_3;
  wire addr_arbiter_ar_n_4;
  wire addr_arbiter_ar_n_6;
  wire addr_arbiter_ar_n_7;
  wire addr_arbiter_ar_n_76;
  wire addr_arbiter_ar_n_77;
  wire addr_arbiter_ar_n_8;
  wire addr_arbiter_ar_n_9;
  wire addr_arbiter_ar_n_98;
  wire addr_arbiter_ar_n_99;
  wire addr_arbiter_aw_n_10;
  wire addr_arbiter_aw_n_11;
  wire addr_arbiter_aw_n_12;
  wire addr_arbiter_aw_n_13;
  wire addr_arbiter_aw_n_14;
  wire addr_arbiter_aw_n_15;
  wire addr_arbiter_aw_n_16;
  wire addr_arbiter_aw_n_17;
  wire addr_arbiter_aw_n_18;
  wire addr_arbiter_aw_n_29;
  wire addr_arbiter_aw_n_30;
  wire addr_arbiter_aw_n_35;
  wire addr_arbiter_aw_n_36;
  wire addr_arbiter_aw_n_37;
  wire addr_arbiter_aw_n_38;
  wire addr_arbiter_aw_n_39;
  wire addr_arbiter_aw_n_40;
  wire addr_arbiter_aw_n_41;
  wire addr_arbiter_aw_n_49;
  wire addr_arbiter_aw_n_52;
  wire addr_arbiter_aw_n_53;
  wire addr_arbiter_aw_n_54;
  wire addr_arbiter_aw_n_55;
  wire addr_arbiter_aw_n_56;
  wire addr_arbiter_aw_n_57;
  wire addr_arbiter_aw_n_58;
  wire addr_arbiter_aw_n_6;
  wire addr_arbiter_aw_n_62;
  wire addr_arbiter_aw_n_63;
  wire addr_arbiter_aw_n_64;
  wire addr_arbiter_aw_n_7;
  wire addr_arbiter_aw_n_8;
  wire addr_arbiter_aw_n_9;
  wire aresetn;
  wire aresetn_d;
  wire [0:0]f_decoder_return;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_10 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_14 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2 ;
  wire \gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_8 ;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ;
  wire \gen_decerr_slave.decerr_slave_inst_n_8 ;
  wire \gen_decerr_slave.decerr_slave_inst_n_9 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_4 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_6 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_7 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_9 ;
  wire \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[0].reg_slice_mi_n_4 ;
  wire \gen_master_slots[0].reg_slice_mi_n_40 ;
  wire \gen_master_slots[0].reg_slice_mi_n_41 ;
  wire \gen_master_slots[0].reg_slice_mi_n_42 ;
  wire \gen_master_slots[0].reg_slice_mi_n_43 ;
  wire \gen_master_slots[0].reg_slice_mi_n_44 ;
  wire \gen_master_slots[0].reg_slice_mi_n_45 ;
  wire \gen_master_slots[0].reg_slice_mi_n_46 ;
  wire \gen_master_slots[0].reg_slice_mi_n_48 ;
  wire \gen_master_slots[0].reg_slice_mi_n_49 ;
  wire \gen_master_slots[0].reg_slice_mi_n_50 ;
  wire \gen_master_slots[0].reg_slice_mi_n_52 ;
  wire \gen_master_slots[0].reg_slice_mi_n_54 ;
  wire \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_10 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_2 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_5 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_7 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_8 ;
  wire \gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_38 ;
  wire \gen_master_slots[1].reg_slice_mi_n_40 ;
  wire \gen_master_slots[1].reg_slice_mi_n_41 ;
  wire \gen_master_slots[1].reg_slice_mi_n_42 ;
  wire \gen_master_slots[1].reg_slice_mi_n_45 ;
  wire \gen_master_slots[1].reg_slice_mi_n_48 ;
  wire \gen_master_slots[1].reg_slice_mi_n_49 ;
  wire \gen_master_slots[1].reg_slice_mi_n_53 ;
  wire \gen_master_slots[1].reg_slice_mi_n_54 ;
  wire \gen_master_slots[1].reg_slice_mi_n_55 ;
  wire \gen_master_slots[1].reg_slice_mi_n_56 ;
  wire \gen_master_slots[1].reg_slice_mi_n_58 ;
  wire \gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_1 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_10 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_4 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_5 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ;
  wire \gen_master_slots[2].gen_mi_write.wdata_mux_w_n_8 ;
  wire \gen_master_slots[2].r_issuing_cnt[16]_i_1_n_0 ;
  wire \gen_master_slots[2].reg_slice_mi_n_0 ;
  wire \gen_master_slots[2].reg_slice_mi_n_2 ;
  wire \gen_master_slots[2].reg_slice_mi_n_39 ;
  wire \gen_master_slots[2].reg_slice_mi_n_40 ;
  wire \gen_master_slots[2].reg_slice_mi_n_41 ;
  wire \gen_master_slots[2].reg_slice_mi_n_43 ;
  wire \gen_master_slots[2].reg_slice_mi_n_44 ;
  wire \gen_master_slots[2].reg_slice_mi_n_45 ;
  wire \gen_master_slots[2].reg_slice_mi_n_46 ;
  wire \gen_master_slots[2].reg_slice_mi_n_47 ;
  wire \gen_master_slots[2].reg_slice_mi_n_52 ;
  wire \gen_master_slots[2].w_issuing_cnt[16]_i_1_n_0 ;
  wire \gen_master_slots[2].w_issuing_cnt[21]_i_4_n_0 ;
  wire \gen_master_slots[3].gen_mi_write.wdata_mux_w_n_10 ;
  wire \gen_master_slots[3].gen_mi_write.wdata_mux_w_n_4 ;
  wire \gen_master_slots[3].gen_mi_write.wdata_mux_w_n_5 ;
  wire \gen_master_slots[3].gen_mi_write.wdata_mux_w_n_7 ;
  wire \gen_master_slots[3].reg_slice_mi_n_0 ;
  wire \gen_master_slots[3].reg_slice_mi_n_1 ;
  wire \gen_master_slots[3].reg_slice_mi_n_10 ;
  wire \gen_master_slots[3].reg_slice_mi_n_11 ;
  wire \gen_master_slots[3].reg_slice_mi_n_12 ;
  wire \gen_master_slots[3].reg_slice_mi_n_13 ;
  wire \gen_master_slots[3].reg_slice_mi_n_14 ;
  wire \gen_master_slots[3].reg_slice_mi_n_15 ;
  wire \gen_master_slots[3].reg_slice_mi_n_16 ;
  wire \gen_master_slots[3].reg_slice_mi_n_17 ;
  wire \gen_master_slots[3].reg_slice_mi_n_18 ;
  wire \gen_master_slots[3].reg_slice_mi_n_2 ;
  wire \gen_master_slots[3].reg_slice_mi_n_20 ;
  wire \gen_master_slots[3].reg_slice_mi_n_6 ;
  wire \gen_master_slots[3].reg_slice_mi_n_8 ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_35 ;
  wire [3:0]\gen_single_issue.active_target_hot ;
  wire [3:0]\gen_single_issue.active_target_hot_28 ;
  wire [3:0]\gen_single_issue.active_target_hot_33 ;
  wire [3:0]\gen_single_issue.active_target_hot_34 ;
  wire [3:0]\gen_single_thread.active_target_hot ;
  wire [3:0]\gen_single_thread.active_target_hot_38 ;
  wire [3:0]\gen_single_thread.active_target_hot_40 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_0 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_0 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1 ;
  wire \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_0 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_6 ;
  wire \gen_slave_slots[1].gen_si_write.wdata_router_w_n_7 ;
  wire \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_0 ;
  wire \gen_slave_slots[2].gen_si_read.si_transactor_ar_n_1 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_0 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_2 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_1 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_0 ;
  wire \gen_slave_slots[3].gen_si_read.si_transactor_ar_n_1 ;
  wire [0:0]\gen_wmux.wmux_aw_fifo/fifoaddr ;
  wire [0:0]\gen_wmux.wmux_aw_fifo/fifoaddr_27 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in_16 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in_19 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_in6_in_25 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_out ;
  wire \gen_wmux.wmux_aw_fifo/p_0_out_5 ;
  wire \gen_wmux.wmux_aw_fifo/p_0_out_6 ;
  wire \gen_wmux.wmux_aw_fifo/p_7_in ;
  wire m_aready;
  wire m_aready_29;
  wire m_aready_30;
  wire m_aready_31;
  wire m_avalid;
  wire m_avalid_18;
  wire m_avalid_21;
  wire m_avalid_26;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [1:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire [2:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [1:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire [2:0]m_axi_awvalid;
  wire [5:0]m_axi_bid;
  wire [2:0]m_axi_bready;
  wire [5:0]m_axi_bresp;
  wire [2:0]m_axi_bvalid;
  wire [95:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire [2:0]m_axi_rlast;
  wire [5:0]m_axi_rresp;
  wire [2:0]m_axi_rvalid;
  wire [95:0]m_axi_wdata;
  wire [2:0]m_axi_wlast;
  wire [2:0]m_axi_wready;
  wire [11:0]m_axi_wstrb;
  wire [2:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [1:0]m_ready_d_36;
  wire [1:0]m_ready_d_39;
  wire [1:0]m_ready_d_41;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_17;
  wire [1:0]m_select_enc_20;
  wire [1:0]m_select_enc_24;
  wire [1:1]m_select_enc_32;
  wire [1:1]m_select_enc_37;
  wire m_valid_i_reg;
  wire match;
  wire match_11;
  wire match_12;
  wire match_15;
  wire match_3;
  wire match_4;
  wire mi_armaxissuing195_in;
  wire mi_armaxissuing196_in;
  wire mi_armaxissuing198_in;
  wire mi_arready_3;
  wire [2:0]mi_awmaxissuing;
  wire mi_awready_3;
  wire mi_bready_3;
  wire mi_rready_3;
  wire p_18_in;
  wire p_19_in;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire p_25_in;
  wire [1:0]p_28_in;
  wire p_2_in;
  wire p_2_in_22;
  wire r_cmd_pop_0;
  wire r_cmd_pop_1;
  wire r_cmd_pop_2;
  wire r_cmd_pop_3;
  wire [24:0]r_issuing_cnt;
  wire reset;
  wire reset_23;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [11:0]s_axi_arsize;
  wire [3:0]s_axi_arvalid;
  wire [95:0]s_axi_awaddr;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [2:0]s_axi_awready;
  wire [8:0]s_axi_awsize;
  wire [2:0]s_axi_awvalid;
  wire [2:0]s_axi_bready;
  wire [5:0]s_axi_bresp;
  wire [1:0]s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [3:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [7:0]s_axi_rresp;
  wire [3:0]s_axi_rvalid;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [2:0]s_axi_wready;
  wire [11:0]s_axi_wstrb;
  wire [2:0]s_axi_wvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [3:0]s_rvalid_i0;
  wire [3:0]sa_wm_awvalid;
  wire splitter_aw_mi_n_0;
  wire [2:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire ss_wr_awready_1;
  wire ss_wr_awready_2;
  wire ss_wr_awvalid_0;
  wire ss_wr_awvalid_1;
  wire ss_wr_awvalid_2;
  wire [14:0]st_aa_artarget_hot;
  wire [2:0]st_aa_arvalid_qual;
  wire [10:1]st_aa_awtarget_hot;
  wire [7:0]st_mr_bmesg;
  wire [3:0]st_mr_bvalid;
  wire [3:0]st_mr_rlast;
  wire [139:0]st_mr_rmesg;
  wire [3:0]st_mr_rvalid;
  wire [1:1]target_mi_enc;
  wire [1:1]target_mi_enc_0;
  wire [1:1]target_mi_enc_1;
  wire [1:1]target_mi_enc_13;
  wire [1:1]target_mi_enc_7;
  wire [1:1]target_mi_enc_9;
  wire [14:2]tmp_wm_wvalid;
  wire valid_qual_i1;
  wire valid_qual_i142_in;
  wire [24:0]w_issuing_cnt;
  wire wm_mr_wlast_3;
  wire wm_mr_wvalid_3;
  wire [11:11]wr_tmp_wready;
  wire \wrouter_aw_fifo/areset_d1 ;

  mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter addr_arbiter_ar
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2 ),
        .ADDRESS_HIT_0_2(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .D({addr_arbiter_ar_n_2,addr_arbiter_ar_n_3,addr_arbiter_ar_n_4}),
        .E(addr_arbiter_ar_n_107),
        .Q(aa_mi_artarget_hot),
        .SR(reset),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.last_rr_hot[3]_i_3__0_0 (\gen_master_slots[0].reg_slice_mi_n_42 ),
        .\gen_arbiter.last_rr_hot[3]_i_3__0_1 (\gen_master_slots[2].reg_slice_mi_n_41 ),
        .\gen_arbiter.last_rr_hot[3]_i_3__0_2 (\gen_master_slots[0].reg_slice_mi_n_41 ),
        .\gen_arbiter.last_rr_hot[3]_i_3__0_3 (\gen_master_slots[2].reg_slice_mi_n_40 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_0 (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_1 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_1 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1 ),
        .\gen_arbiter.m_mesg_i_reg[0]_0 (addr_arbiter_ar_n_76),
        .\gen_arbiter.m_mesg_i_reg[1]_0 (addr_arbiter_ar_n_16),
        .\gen_arbiter.m_mesg_i_reg[63]_0 ({m_axi_arqos,m_axi_arcache,m_axi_arburst,m_axi_arprot,m_axi_arlock,m_axi_arsize,m_axi_arlen,m_axi_araddr,m_axi_arid}),
        .\gen_arbiter.qual_reg_reg[3]_0 ({\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_0 ,\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_1 ,\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_0 ,\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1 }),
        .\gen_arbiter.s_ready_i_reg[3]_0 (S_AXI_ARREADY),
        .\gen_axi.read_cs_reg[0] (addr_arbiter_ar_n_77),
        .\gen_master_slots[1].r_issuing_cnt_reg[10] (addr_arbiter_ar_n_108),
        .\gen_master_slots[1].r_issuing_cnt_reg[9] ({addr_arbiter_ar_n_6,addr_arbiter_ar_n_7,addr_arbiter_ar_n_8}),
        .\gen_master_slots[2].r_issuing_cnt_reg[17] ({addr_arbiter_ar_n_9,addr_arbiter_ar_n_10,addr_arbiter_ar_n_11}),
        .\gen_master_slots[2].r_issuing_cnt_reg[18] (addr_arbiter_ar_n_109),
        .\gen_master_slots[3].r_issuing_cnt_reg[24] (addr_arbiter_ar_n_106),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .match(match_4),
        .match_0(match_3),
        .match_1(match),
        .mi_armaxissuing195_in(mi_armaxissuing195_in),
        .mi_armaxissuing196_in(mi_armaxissuing196_in),
        .mi_armaxissuing198_in(mi_armaxissuing198_in),
        .mi_arready_3(mi_arready_3),
        .p_19_in(p_19_in),
        .p_24_in(p_24_in),
        .r_cmd_pop_0(r_cmd_pop_0),
        .r_cmd_pop_1(r_cmd_pop_1),
        .r_cmd_pop_2(r_cmd_pop_2),
        .r_cmd_pop_3(r_cmd_pop_3),
        .r_issuing_cnt({r_issuing_cnt[24],r_issuing_cnt[19:16],r_issuing_cnt[11:8],r_issuing_cnt[3:0]}),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[95] (addr_arbiter_ar_n_98),
        .s_axi_araddr_83_sp_1(addr_arbiter_ar_n_100),
        .s_axi_araddr_87_sp_1(addr_arbiter_ar_n_102),
        .s_axi_araddr_88_sp_1(addr_arbiter_ar_n_99),
        .s_axi_araddr_89_sp_1(addr_arbiter_ar_n_103),
        .s_axi_araddr_93_sp_1(addr_arbiter_ar_n_101),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .sel_4__0(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .st_aa_artarget_hot({st_aa_artarget_hot[14:8],st_aa_artarget_hot[6:4],st_aa_artarget_hot[2:0]}),
        .st_aa_arvalid_qual({st_aa_arvalid_qual[2],st_aa_arvalid_qual[0]}),
        .target_mi_enc(target_mi_enc_1),
        .target_mi_enc_3(target_mi_enc_0),
        .target_mi_enc_4(target_mi_enc));
  mcu_xbar_0_axi_crossbar_v2_1_19_addr_arbiter_0 addr_arbiter_aw
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_14 ),
        .ADDRESS_HIT_0_2(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_10 ),
        .ADDRESS_HIT_0_4(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_8 ),
        .D({addr_arbiter_aw_n_6,addr_arbiter_aw_n_7,addr_arbiter_aw_n_8,addr_arbiter_aw_n_9,addr_arbiter_aw_n_10}),
        .E(\gen_wmux.wmux_aw_fifo/p_0_out_6 ),
        .\FSM_onehot_state_reg[0] ({\gen_wmux.wmux_aw_fifo/p_0_in6_in_16 ,\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_7 }),
        .\FSM_onehot_state_reg[1] ({\gen_wmux.wmux_aw_fifo/p_7_in ,\gen_wmux.wmux_aw_fifo/p_0_in6_in_25 ,\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_4 }),
        .\FSM_onehot_state_reg[3] (addr_arbiter_aw_n_53),
        .Q(aa_mi_awtarget_hot),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .fifoaddr(\gen_wmux.wmux_aw_fifo/fifoaddr ),
        .fifoaddr_12(\gen_wmux.wmux_aw_fifo/fifoaddr_27 ),
        .\gen_arbiter.any_grant_reg_0 (\gen_master_slots[1].reg_slice_mi_n_40 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_0 (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_1 (\gen_master_slots[1].reg_slice_mi_n_38 ),
        .\gen_arbiter.m_grant_enc_i_reg[0]_2 (\gen_master_slots[1].reg_slice_mi_n_42 ),
        .\gen_arbiter.m_grant_enc_i_reg[1]_0 (addr_arbiter_aw_n_41),
        .\gen_arbiter.m_mesg_i_reg[63]_0 ({m_axi_awqos,m_axi_awcache,m_axi_awburst,m_axi_awprot,m_axi_awlock,m_axi_awsize,m_axi_awlen,m_axi_awaddr,m_axi_awid}),
        .\gen_arbiter.m_target_hot_i_reg[2]_0 (\gen_wmux.wmux_aw_fifo/p_0_out ),
        .\gen_arbiter.qual_reg_reg[2]_0 ({\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ,\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0 ,\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 }),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_54 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[2] (addr_arbiter_aw_n_62),
        .\gen_master_slots[0].w_issuing_cnt_reg[5] ({addr_arbiter_aw_n_14,addr_arbiter_aw_n_15,addr_arbiter_aw_n_16,addr_arbiter_aw_n_17,addr_arbiter_aw_n_18}),
        .\gen_master_slots[0].w_issuing_cnt_reg[5]_0 (addr_arbiter_aw_n_56),
        .\gen_master_slots[1].w_issuing_cnt_reg[11] ({addr_arbiter_aw_n_11,addr_arbiter_aw_n_12,addr_arbiter_aw_n_13}),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (addr_arbiter_aw_n_55),
        .\gen_master_slots[1].w_issuing_cnt_reg[8]_0 (addr_arbiter_aw_n_64),
        .\gen_master_slots[1].w_issuing_cnt_reg[8]_1 (\gen_master_slots[1].reg_slice_mi_n_58 ),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (\gen_master_slots[2].w_issuing_cnt[21]_i_4_n_0 ),
        .\gen_master_slots[2].w_issuing_cnt_reg[16]_0 (\gen_master_slots[2].reg_slice_mi_n_52 ),
        .\gen_master_slots[2].w_issuing_cnt_reg[18] (addr_arbiter_aw_n_63),
        .\gen_master_slots[2].w_issuing_cnt_reg[21] (addr_arbiter_aw_n_54),
        .\gen_rep[0].fifoaddr_reg[0] (addr_arbiter_aw_n_49),
        .\gen_rep[0].fifoaddr_reg[0]_0 (addr_arbiter_aw_n_52),
        .\gen_rep[0].fifoaddr_reg[0]_1 ({\gen_wmux.wmux_aw_fifo/p_0_in6_in ,\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_6 }),
        .\gen_rep[0].fifoaddr_reg[0]_2 ({\gen_wmux.wmux_aw_fifo/p_0_in6_in_19 ,\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_8 }),
        .m_aready(m_aready_31),
        .m_aready_7(m_aready_30),
        .m_aready_8(m_aready_29),
        .m_aready_9(m_aready),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_ready_d(m_ready_d_36[0]),
        .m_ready_d_10(m_ready_d[0]),
        .m_ready_d_11(m_ready_d_39[0]),
        .m_ready_d_6(m_ready_d_41),
        .\m_ready_d_reg[0] ({addr_arbiter_aw_n_29,addr_arbiter_aw_n_30}),
        .\m_ready_d_reg[0]_0 ({addr_arbiter_aw_n_35,addr_arbiter_aw_n_36}),
        .\m_ready_d_reg[0]_1 ({addr_arbiter_aw_n_37,addr_arbiter_aw_n_38}),
        .\m_ready_d_reg[0]_2 ({addr_arbiter_aw_n_39,addr_arbiter_aw_n_40}),
        .\m_ready_d_reg[0]_3 (addr_arbiter_aw_n_58),
        .\m_ready_d_reg[1] (addr_arbiter_aw_n_57),
        .match(match_15),
        .match_0(match_12),
        .match_1(match_11),
        .mi_awready_3(mi_awready_3),
        .p_0_out(\gen_wmux.wmux_aw_fifo/p_0_out_5 ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .sa_wm_awvalid(sa_wm_awvalid),
        .ss_aa_awready(ss_aa_awready),
        .st_aa_awtarget_hot({st_aa_awtarget_hot[10:8],st_aa_awtarget_hot[6:4],st_aa_awtarget_hot[1]}),
        .target_mi_enc(target_mi_enc_13),
        .target_mi_enc_3(target_mi_enc_9),
        .target_mi_enc_5(target_mi_enc_7),
        .w_issuing_cnt({w_issuing_cnt[21:16],w_issuing_cnt[11:8],w_issuing_cnt[5:0]}));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave \gen_decerr_slave.decerr_slave_inst 
       (.\FSM_onehot_gen_axi.write_cs_reg[1]_0 (\gen_decerr_slave.decerr_slave_inst_n_9 ),
        .\FSM_onehot_gen_axi.write_cs_reg[2]_0 (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .Q(aa_mi_awtarget_hot[3]),
        .SR(reset),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_axi.read_cs_reg[0]_0 (aa_mi_artarget_hot),
        .\gen_axi.s_axi_awready_i_reg_0 (\gen_master_slots[3].reg_slice_mi_n_6 ),
        .\gen_axi.s_axi_bid_i_reg[1]_0 (splitter_aw_mi_n_0),
        .\gen_axi.s_axi_bvalid_i_reg_0 (\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_5 ),
        .\gen_axi.s_axi_rid_i_reg[0]_0 (addr_arbiter_ar_n_76),
        .\gen_axi.s_axi_rid_i_reg[1]_0 (addr_arbiter_ar_n_16),
        .\gen_axi.s_axi_rlast_i_reg_0 (addr_arbiter_ar_n_77),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_awid(m_axi_awid),
        .m_ready_d(m_ready_d_41[1]),
        .mi_arready_3(mi_arready_3),
        .mi_awready_3(mi_awready_3),
        .mi_bready_3(mi_bready_3),
        .mi_rready_3(mi_rready_3),
        .p_18_in(p_18_in),
        .p_19_in(p_19_in),
        .p_21_in(p_21_in),
        .p_24_in(p_24_in),
        .p_25_in(p_25_in),
        .p_28_in(p_28_in));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux \gen_master_slots[0].gen_mi_write.wdata_mux_w 
       (.D({addr_arbiter_aw_n_29,addr_arbiter_aw_n_30}),
        .E(\gen_wmux.wmux_aw_fifo/p_0_out_6 ),
        .Q({\gen_wmux.wmux_aw_fifo/p_0_in6_in ,\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_6 }),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[1] (aa_mi_awtarget_hot[0]),
        .m_aready(m_aready_31),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata[31:0]),
        .m_axi_wlast(m_axi_wlast[0]),
        .m_axi_wready(m_axi_wready[0]),
        .m_axi_wstrb(m_axi_wstrb[3:0]),
        .m_ready_d(m_ready_d_41[0]),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg(\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_7 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid(sa_wm_awvalid[0]),
        .\storage_data1_reg[0] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_4 ),
        .\storage_data1_reg[1] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1 ),
        .\storage_data1_reg[1]_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_9 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].r_issuing_cnt[0]_i_1 
       (.I0(r_issuing_cnt[0]),
        .O(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_107),
        .D(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ),
        .Q(r_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_107),
        .D(addr_arbiter_ar_n_4),
        .Q(r_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_107),
        .D(addr_arbiter_ar_n_3),
        .Q(r_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_107),
        .D(addr_arbiter_ar_n_2),
        .Q(r_issuing_cnt[3]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice \gen_master_slots[0].reg_slice_mi 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0 ),
        .ADDRESS_HIT_0_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_2 ),
        .D({m_axi_bid[1:0],m_axi_bresp[1:0]}),
        .Q({st_mr_rlast[0],st_mr_rmesg[1:0],st_mr_rmesg[34:3]}),
        .aclk(aclk),
        .\gen_arbiter.last_rr_hot[3]_i_11 (addr_arbiter_aw_n_62),
        .\gen_arbiter.qual_reg[1]_i_2 (\gen_master_slots[1].reg_slice_mi_n_0 ),
        .\gen_single_issue.active_target_hot_reg[0] (\gen_master_slots[0].reg_slice_mi_n_44 ),
        .\gen_single_issue.active_target_hot_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_45 ),
        .\gen_single_issue.active_target_hot_reg[0]_1 (\gen_master_slots[0].reg_slice_mi_n_46 ),
        .\gen_single_thread.accept_cnt[5]_i_3 (st_mr_bvalid[1]),
        .\gen_single_thread.accept_cnt[5]_i_3_0 (\gen_master_slots[1].reg_slice_mi_n_56 ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_master_slots[0].reg_slice_mi_n_50 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_52 ),
        .m_axi_bready(m_axi_bready[0]),
        .m_axi_bvalid(m_axi_bvalid[0]),
        .m_axi_rdata(m_axi_rdata[31:0]),
        .m_axi_rid(m_axi_rid[1:0]),
        .m_axi_rlast(m_axi_rlast[0]),
        .m_axi_rresp(m_axi_rresp[1:0]),
        .m_axi_rvalid(m_axi_rvalid[0]),
        .\m_payload_i_reg[1] (st_mr_bmesg[1:0]),
        .\m_payload_i_reg[34] (\gen_master_slots[0].reg_slice_mi_n_4 ),
        .\m_payload_i_reg[36] (\gen_master_slots[0].reg_slice_mi_n_43 ),
        .m_valid_i_reg(\gen_master_slots[0].reg_slice_mi_n_48 ),
        .m_valid_i_reg_0(\gen_master_slots[0].reg_slice_mi_n_49 ),
        .m_valid_i_reg_1(\gen_master_slots[0].reg_slice_mi_n_54 ),
        .m_valid_i_reg_2(\gen_master_slots[3].reg_slice_mi_n_0 ),
        .match(match_4),
        .match_1(match),
        .mi_armaxissuing195_in(mi_armaxissuing195_in),
        .mi_awmaxissuing(mi_awmaxissuing[0]),
        .r_cmd_pop_0(r_cmd_pop_0),
        .s_axi_araddr({s_axi_araddr[95:94],s_axi_araddr[63:62],s_axi_araddr[31:30]}),
        .\s_axi_araddr[31] (\gen_master_slots[0].reg_slice_mi_n_42 ),
        .\s_axi_araddr[63] (\gen_master_slots[0].reg_slice_mi_n_40 ),
        .\s_axi_araddr[95] (\gen_master_slots[0].reg_slice_mi_n_41 ),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bvalid[0] (\gen_single_issue.active_target_hot_28 [0]),
        .\s_axi_bvalid[1] (\gen_single_issue.active_target_hot_34 [0]),
        .\s_axi_bvalid[2] (\gen_single_thread.active_target_hot_38 [0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid[2]),
        .\s_axi_rvalid[0] (\gen_single_issue.active_target_hot [0]),
        .\s_axi_rvalid[1] (\gen_single_issue.active_target_hot_33 [0]),
        .\s_axi_rvalid[2] (st_mr_rvalid[1]),
        .\s_axi_rvalid[2]_0 (\gen_master_slots[1].reg_slice_mi_n_55 ),
        .\s_axi_rvalid[2]_1 (\gen_master_slots[2].reg_slice_mi_n_46 ),
        .\s_axi_rvalid[2]_2 (\gen_master_slots[3].reg_slice_mi_n_17 ),
        .\s_axi_rvalid[2]_3 (\gen_single_thread.active_target_hot [0]),
        .\s_axi_rvalid[3] (\gen_single_thread.active_target_hot_40 [0]),
        .s_ready_i_reg(s_ready_i_reg),
        .s_ready_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_0 ),
        .s_rvalid_i0(s_rvalid_i0[0]),
        .st_aa_artarget_hot(st_aa_artarget_hot[8]),
        .st_mr_bvalid(st_mr_bvalid[0]),
        .st_mr_rvalid(st_mr_rvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].w_issuing_cnt[0]_i_1 
       (.I0(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_4 
       (.I0(w_issuing_cnt[1]),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[3]),
        .I3(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt[5]_i_4_n_0 ));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_56),
        .D(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ),
        .Q(w_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_56),
        .D(addr_arbiter_aw_n_18),
        .Q(w_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_56),
        .D(addr_arbiter_aw_n_17),
        .Q(w_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_56),
        .D(addr_arbiter_aw_n_16),
        .Q(w_issuing_cnt[3]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[4] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_56),
        .D(addr_arbiter_aw_n_15),
        .Q(w_issuing_cnt[4]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[5] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_56),
        .D(addr_arbiter_aw_n_14),
        .Q(w_issuing_cnt[5]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0 \gen_master_slots[1].gen_mi_write.wdata_mux_w 
       (.D({addr_arbiter_aw_n_35,addr_arbiter_aw_n_36}),
        .Q({\gen_wmux.wmux_aw_fifo/p_0_in6_in_16 ,\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_7 }),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[0] (\gen_wmux.wmux_aw_fifo/fifoaddr ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (addr_arbiter_aw_n_49),
        .\gen_rep[0].fifoaddr_reg[2] (aa_mi_awtarget_hot[1]),
        .m_aready(m_aready_30),
        .m_avalid(m_avalid_18),
        .m_axi_wdata(m_axi_wdata[63:32]),
        .m_axi_wlast(m_axi_wlast[1]),
        .m_axi_wready(m_axi_wready[1]),
        .m_axi_wstrb(m_axi_wstrb[7:4]),
        .m_ready_d(m_ready_d_41[0]),
        .m_select_enc(m_select_enc_17),
        .m_valid_i_reg(\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_8 ),
        .p_0_out(\gen_wmux.wmux_aw_fifo/p_0_out_5 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid(sa_wm_awvalid[1]),
        .\storage_data1_reg[0] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_5 ),
        .\storage_data1_reg[1] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_2 ),
        .\storage_data1_reg[1]_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_10 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_1 
       (.I0(r_issuing_cnt[8]),
        .O(\gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0 ));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[10] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_108),
        .D(addr_arbiter_ar_n_7),
        .Q(r_issuing_cnt[10]),
        .R(reset));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[11] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_108),
        .D(addr_arbiter_ar_n_6),
        .Q(r_issuing_cnt[11]),
        .R(reset));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_108),
        .D(\gen_master_slots[1].r_issuing_cnt[8]_i_1_n_0 ),
        .Q(r_issuing_cnt[8]),
        .R(reset));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[9] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_108),
        .D(addr_arbiter_ar_n_8),
        .Q(r_issuing_cnt[9]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1 \gen_master_slots[1].reg_slice_mi 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_14 ),
        .ADDRESS_HIT_0_1(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_8 ),
        .ADDRESS_HIT_0_4(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_10 ),
        .D({m_axi_bid[3:2],m_axi_bresp[3:2]}),
        .Q({st_mr_rlast[1],st_mr_rmesg[36:35],st_mr_rmesg[69:38]}),
        .aclk(aclk),
        .\gen_arbiter.last_rr_hot[3]_i_11 (w_issuing_cnt[11:10]),
        .\gen_arbiter.last_rr_hot[3]_i_11_0 (addr_arbiter_aw_n_64),
        .\gen_arbiter.last_rr_hot[3]_i_3 (mi_awmaxissuing[0]),
        .\gen_arbiter.m_grant_enc_i_reg[0] (addr_arbiter_aw_n_41),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[3].reg_slice_mi_n_8 ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_4 ),
        .\gen_arbiter.qual_reg_reg[0]_1 (\gen_master_slots[2].reg_slice_mi_n_41 ),
        .\gen_arbiter.qual_reg_reg[1] (\gen_master_slots[3].reg_slice_mi_n_11 ),
        .\gen_arbiter.qual_reg_reg[2] (\gen_master_slots[2].reg_slice_mi_n_40 ),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_2 (\gen_single_issue.accept_cnt_35 ),
        .\gen_single_issue.accept_cnt_reg (\gen_master_slots[1].reg_slice_mi_n_40 ),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_master_slots[1].reg_slice_mi_n_42 ),
        .\gen_single_thread.active_target_hot_reg[1] (\gen_master_slots[1].reg_slice_mi_n_56 ),
        .m_axi_bready(m_axi_bready[1]),
        .m_axi_bvalid(m_axi_bvalid[1]),
        .m_axi_rdata(m_axi_rdata[63:32]),
        .m_axi_rid(m_axi_rid[3:2]),
        .m_axi_rlast(m_axi_rlast[1]),
        .m_axi_rresp(m_axi_rresp[3:2]),
        .m_axi_rvalid(m_axi_rvalid[1]),
        .\m_payload_i_reg[1] (st_mr_bmesg[4:3]),
        .\m_payload_i_reg[2] (\gen_master_slots[1].reg_slice_mi_n_58 ),
        .\m_payload_i_reg[34] (\gen_master_slots[1].reg_slice_mi_n_0 ),
        .\m_payload_i_reg[36] (\gen_master_slots[1].reg_slice_mi_n_48 ),
        .\m_payload_i_reg[36]_0 (\gen_master_slots[1].reg_slice_mi_n_55 ),
        .\m_payload_i_reg[36]_1 (s_rvalid_i0[1]),
        .m_valid_i_reg(st_mr_rvalid[1]),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(st_mr_bvalid[1]),
        .m_valid_i_reg_2(\gen_master_slots[1].reg_slice_mi_n_54 ),
        .m_valid_i_reg_3(\gen_master_slots[3].reg_slice_mi_n_0 ),
        .match(match_15),
        .match_0(match_11),
        .match_3(match_12),
        .match_5(match_3),
        .mi_armaxissuing196_in(mi_armaxissuing196_in),
        .r_cmd_pop_1(r_cmd_pop_1),
        .s_axi_araddr({s_axi_araddr[127:126],s_axi_araddr[95:94]}),
        .\s_axi_araddr[126] (\gen_master_slots[1].reg_slice_mi_n_45 ),
        .s_axi_awaddr({s_axi_awaddr[95:94],s_axi_awaddr[63:62],s_axi_awaddr[31:30]}),
        .\s_axi_awaddr[95] (\gen_master_slots[1].reg_slice_mi_n_41 ),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bready[0]_0 (\gen_master_slots[1].reg_slice_mi_n_49 ),
        .s_axi_bready_0_sp_1(\gen_master_slots[1].reg_slice_mi_n_38 ),
        .s_axi_bready_1_sp_1(\gen_master_slots[1].reg_slice_mi_n_53 ),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_bvalid[0]_0 (\gen_master_slots[2].reg_slice_mi_n_43 ),
        .\s_axi_bvalid[0]_1 (\gen_single_issue.active_target_hot_28 [1]),
        .\s_axi_bvalid[1]_0 (\gen_master_slots[2].reg_slice_mi_n_45 ),
        .\s_axi_bvalid[1]_1 (\gen_single_issue.active_target_hot_34 [1]),
        .\s_axi_bvalid[2] (\gen_master_slots[0].reg_slice_mi_n_50 ),
        .\s_axi_bvalid[2]_0 (\gen_master_slots[2].reg_slice_mi_n_47 ),
        .\s_axi_bvalid[2]_1 (\gen_single_thread.active_target_hot_38 [1]),
        .s_axi_bvalid_0_sp_1(\gen_master_slots[0].reg_slice_mi_n_44 ),
        .s_axi_bvalid_1_sp_1(\gen_master_slots[0].reg_slice_mi_n_46 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid({s_axi_rvalid[3],s_axi_rvalid[1]}),
        .\s_axi_rvalid[0] (\gen_single_issue.active_target_hot [1]),
        .\s_axi_rvalid[1]_0 (\gen_master_slots[3].reg_slice_mi_n_14 ),
        .\s_axi_rvalid[1]_1 (\gen_master_slots[2].reg_slice_mi_n_44 ),
        .\s_axi_rvalid[1]_2 (\gen_single_issue.active_target_hot_33 [1]),
        .\s_axi_rvalid[2] (\gen_single_thread.active_target_hot [1]),
        .\s_axi_rvalid[3] (\gen_master_slots[0].reg_slice_mi_n_52 ),
        .\s_axi_rvalid[3]_0 (\gen_single_thread.active_target_hot_40 [1]),
        .s_axi_rvalid_1_sp_1(\gen_master_slots[0].reg_slice_mi_n_45 ),
        .s_ready_i_reg(s_ready_i_reg_0),
        .s_ready_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_0 ),
        .s_rvalid_i0(s_rvalid_i0[3:2]),
        .st_aa_artarget_hot({st_aa_artarget_hot[8],st_aa_artarget_hot[1:0]}),
        .st_mr_bvalid(st_mr_bvalid[0]),
        .st_mr_rvalid(st_mr_rvalid[0]),
        .valid_qual_i1(valid_qual_i1),
        .valid_qual_i142_in(valid_qual_i142_in));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[1].w_issuing_cnt[8]_i_1 
       (.I0(w_issuing_cnt[8]),
        .O(\gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[10] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_55),
        .D(addr_arbiter_aw_n_12),
        .Q(w_issuing_cnt[10]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[11] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_55),
        .D(addr_arbiter_aw_n_11),
        .Q(w_issuing_cnt[11]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_55),
        .D(\gen_master_slots[1].w_issuing_cnt[8]_i_1_n_0 ),
        .Q(w_issuing_cnt[8]),
        .R(reset));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[9] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_55),
        .D(addr_arbiter_aw_n_13),
        .Q(w_issuing_cnt[9]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux_2 \gen_master_slots[2].gen_mi_write.wdata_mux_w 
       (.D({addr_arbiter_aw_n_37,addr_arbiter_aw_n_38}),
        .E(\gen_wmux.wmux_aw_fifo/p_0_out ),
        .Q({\gen_wmux.wmux_aw_fifo/p_0_in6_in_19 ,\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_8 }),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_rep[0].fifoaddr_reg[1] (aa_mi_awtarget_hot[2]),
        .m_aready(m_aready_29),
        .m_avalid(m_avalid_21),
        .m_axi_wdata(m_axi_wdata[95:64]),
        .m_axi_wlast(m_axi_wlast[2]),
        .m_axi_wready(m_axi_wready[2]),
        .\m_axi_wready[2] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ),
        .m_axi_wstrb(m_axi_wstrb[11:8]),
        .m_ready_d(m_ready_d_41[0]),
        .m_select_enc(m_select_enc_20),
        .m_select_enc_0(m_select_enc_32),
        .m_select_enc_1(m_select_enc_37),
        .m_valid_i_reg(\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_5 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wready[0]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_9 ),
        .\s_axi_wready[0]_INST_0_i_1_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_7 ),
        .\s_axi_wready[1]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_4 ),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid(sa_wm_awvalid[2]),
        .\storage_data1_reg[0] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_4 ),
        .\storage_data1_reg[1] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_1 ),
        .\storage_data1_reg[1]_0 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_10 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[2].r_issuing_cnt[16]_i_1 
       (.I0(r_issuing_cnt[16]),
        .O(\gen_master_slots[2].r_issuing_cnt[16]_i_1_n_0 ));
  FDRE \gen_master_slots[2].r_issuing_cnt_reg[16] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_109),
        .D(\gen_master_slots[2].r_issuing_cnt[16]_i_1_n_0 ),
        .Q(r_issuing_cnt[16]),
        .R(reset));
  FDRE \gen_master_slots[2].r_issuing_cnt_reg[17] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_109),
        .D(addr_arbiter_ar_n_11),
        .Q(r_issuing_cnt[17]),
        .R(reset));
  FDRE \gen_master_slots[2].r_issuing_cnt_reg[18] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_109),
        .D(addr_arbiter_ar_n_10),
        .Q(r_issuing_cnt[18]),
        .R(reset));
  FDRE \gen_master_slots[2].r_issuing_cnt_reg[19] 
       (.C(aclk),
        .CE(addr_arbiter_ar_n_109),
        .D(addr_arbiter_ar_n_9),
        .Q(r_issuing_cnt[19]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_3 \gen_master_slots[2].reg_slice_mi 
       (.D({m_axi_bid[5:4],m_axi_bresp[5:4]}),
        .Q({st_mr_rlast[2],st_mr_rmesg[71:70],st_mr_rmesg[104:73]}),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0] (\gen_master_slots[2].reg_slice_mi_n_0 ),
        .\gen_arbiter.last_rr_hot[3]_i_10 (addr_arbiter_aw_n_63),
        .\gen_arbiter.qual_reg[3]_i_2 (\gen_master_slots[3].reg_slice_mi_n_2 ),
        .\gen_single_thread.accept_cnt_reg[0] ({s_rvalid_i0[3],s_rvalid_i0[1:0]}),
        .\gen_single_thread.accept_cnt_reg[5] (\gen_master_slots[0].reg_slice_mi_n_49 ),
        .m_axi_bready(m_axi_bready[2]),
        .m_axi_bvalid(m_axi_bvalid[2]),
        .m_axi_rdata(m_axi_rdata[95:64]),
        .m_axi_rid(m_axi_rid[5:4]),
        .m_axi_rlast(m_axi_rlast[2]),
        .m_axi_rresp(m_axi_rresp[5:4]),
        .m_axi_rvalid(m_axi_rvalid[2]),
        .\m_payload_i_reg[1] (st_mr_bmesg[7:6]),
        .\m_payload_i_reg[34] (\gen_master_slots[2].reg_slice_mi_n_2 ),
        .\m_payload_i_reg[34]_0 (\gen_master_slots[2].reg_slice_mi_n_39 ),
        .\m_payload_i_reg[34]_1 (\gen_master_slots[2].reg_slice_mi_n_41 ),
        .\m_payload_i_reg[36] (\gen_master_slots[2].reg_slice_mi_n_44 ),
        .m_valid_i_reg(\gen_master_slots[2].reg_slice_mi_n_43 ),
        .m_valid_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_45 ),
        .m_valid_i_reg_1(\gen_master_slots[2].reg_slice_mi_n_46 ),
        .m_valid_i_reg_2(\gen_master_slots[2].reg_slice_mi_n_47 ),
        .m_valid_i_reg_3(\gen_master_slots[2].reg_slice_mi_n_52 ),
        .m_valid_i_reg_4(\gen_master_slots[3].reg_slice_mi_n_0 ),
        .match(match_3),
        .match_2(match),
        .mi_armaxissuing198_in(mi_armaxissuing198_in),
        .mi_awmaxissuing(mi_awmaxissuing[2]),
        .p_2_in(p_2_in_22),
        .p_2_in_0(p_2_in),
        .r_cmd_pop_2(r_cmd_pop_2),
        .reset(reset_23),
        .s_axi_araddr(s_axi_araddr[95:94]),
        .\s_axi_araddr[94] (\gen_master_slots[2].reg_slice_mi_n_40 ),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bvalid[0] (\gen_single_issue.active_target_hot_28 [2]),
        .\s_axi_bvalid[0]_0 (\gen_master_slots[3].reg_slice_mi_n_13 ),
        .\s_axi_bvalid[1] (\gen_single_issue.active_target_hot_34 [2]),
        .\s_axi_bvalid[1]_0 (\gen_master_slots[3].reg_slice_mi_n_15 ),
        .\s_axi_bvalid[2] (st_mr_bvalid[3]),
        .\s_axi_bvalid[2]_0 (\gen_single_thread.active_target_hot_38 [2]),
        .\s_axi_bvalid[2]_1 (\gen_master_slots[3].reg_slice_mi_n_18 ),
        .s_axi_rlast(s_axi_rlast[3]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid[0]),
        .\s_axi_rvalid[0] (st_mr_rvalid[3]),
        .\s_axi_rvalid[0]_0 (\gen_master_slots[3].reg_slice_mi_n_12 ),
        .\s_axi_rvalid[0]_1 (\gen_master_slots[0].reg_slice_mi_n_43 ),
        .\s_axi_rvalid[0]_2 (\gen_master_slots[1].reg_slice_mi_n_48 ),
        .\s_axi_rvalid[0]_3 (\gen_single_issue.active_target_hot [2]),
        .\s_axi_rvalid[1] (\gen_single_issue.active_target_hot_33 [2]),
        .\s_axi_rvalid[2] (\gen_single_thread.active_target_hot [2]),
        .\s_axi_rvalid[3] (\gen_single_thread.active_target_hot_40 [2]),
        .s_ready_i_reg(s_ready_i_reg_1),
        .s_rvalid_i0(s_rvalid_i0[2]),
        .st_aa_artarget_hot({st_aa_artarget_hot[10],st_aa_artarget_hot[8]}),
        .target_mi_enc(target_mi_enc),
        .target_mi_enc_1(target_mi_enc_1));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[2].w_issuing_cnt[16]_i_1 
       (.I0(w_issuing_cnt[16]),
        .O(\gen_master_slots[2].w_issuing_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_master_slots[2].w_issuing_cnt[21]_i_4 
       (.I0(w_issuing_cnt[17]),
        .I1(w_issuing_cnt[16]),
        .I2(w_issuing_cnt[19]),
        .I3(w_issuing_cnt[18]),
        .O(\gen_master_slots[2].w_issuing_cnt[21]_i_4_n_0 ));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[16] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_54),
        .D(\gen_master_slots[2].w_issuing_cnt[16]_i_1_n_0 ),
        .Q(w_issuing_cnt[16]),
        .R(reset));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[17] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_54),
        .D(addr_arbiter_aw_n_10),
        .Q(w_issuing_cnt[17]),
        .R(reset));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[18] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_54),
        .D(addr_arbiter_aw_n_9),
        .Q(w_issuing_cnt[18]),
        .R(reset));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[19] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_54),
        .D(addr_arbiter_aw_n_8),
        .Q(w_issuing_cnt[19]),
        .R(reset));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[20] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_54),
        .D(addr_arbiter_aw_n_7),
        .Q(w_issuing_cnt[20]),
        .R(reset));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[21] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_54),
        .D(addr_arbiter_aw_n_6),
        .Q(w_issuing_cnt[21]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1 \gen_master_slots[3].gen_mi_write.wdata_mux_w 
       (.D({addr_arbiter_aw_n_39,addr_arbiter_aw_n_40}),
        .\FSM_onehot_gen_axi.write_cs_reg[1] (\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_5 ),
        .\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_53),
        .Q({\gen_wmux.wmux_aw_fifo/p_7_in ,\gen_wmux.wmux_aw_fifo/p_0_in6_in_25 ,\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_4 }),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .f_decoder_return(f_decoder_return),
        .\gen_axi.s_axi_bvalid_i_reg (\gen_decerr_slave.decerr_slave_inst_n_9 ),
        .\gen_rep[0].fifoaddr_reg[0] (\gen_wmux.wmux_aw_fifo/fifoaddr_27 ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (addr_arbiter_aw_n_52),
        .\gen_rep[0].fifoaddr_reg[1] (aa_mi_awtarget_hot[3]),
        .m_aready(m_aready),
        .m_avalid(m_avalid_26),
        .m_ready_d(m_ready_d_41[0]),
        .m_select_enc(m_select_enc_24),
        .m_select_enc_0(m_select_enc_32),
        .m_select_enc_1(m_select_enc_37),
        .p_18_in(p_18_in),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wready[0]_INST_0_i_1 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_10 ),
        .\s_axi_wready[0]_INST_0_i_1_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_8 ),
        .\s_axi_wready[1]_INST_0_i_1 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_5 ),
        .sa_wm_awvalid(sa_wm_awvalid[3]),
        .\storage_data1_reg[0] (\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_7 ),
        .\storage_data1_reg[1] (\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_10 ),
        .wm_mr_wlast_3(wm_mr_wlast_3),
        .wm_mr_wvalid_3(wm_mr_wvalid_3),
        .wr_tmp_wready(wr_tmp_wready));
  FDRE \gen_master_slots[3].r_issuing_cnt_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_ar_n_106),
        .Q(r_issuing_cnt[24]),
        .R(reset));
  mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_4 \gen_master_slots[3].reg_slice_mi 
       (.Q(\gen_single_issue.active_target_hot [3]),
        .aclk(aclk),
        .\aresetn_d_reg[1] (\gen_master_slots[3].reg_slice_mi_n_0 ),
        .\aresetn_d_reg[1]_0 (\gen_master_slots[2].reg_slice_mi_n_0 ),
        .\gen_arbiter.qual_reg[2]_i_2 (\gen_master_slots[2].reg_slice_mi_n_46 ),
        .\gen_arbiter.qual_reg[2]_i_2_0 (\gen_master_slots[1].reg_slice_mi_n_54 ),
        .\gen_arbiter.qual_reg[2]_i_2_1 (\gen_master_slots[0].reg_slice_mi_n_48 ),
        .\gen_arbiter.qual_reg[2]_i_2_2 (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_0 ),
        .\gen_axi.s_axi_awready_i_reg (\gen_master_slots[3].reg_slice_mi_n_20 ),
        .\gen_axi.s_axi_awready_i_reg_0 (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .\gen_master_slots[3].r_issuing_cnt_reg[24] (\gen_master_slots[3].reg_slice_mi_n_1 ),
        .\gen_master_slots[3].r_issuing_cnt_reg[24]_0 (\gen_master_slots[3].reg_slice_mi_n_2 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24] (\gen_master_slots[3].reg_slice_mi_n_8 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_0 (\gen_master_slots[3].reg_slice_mi_n_10 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_1 (\gen_master_slots[3].reg_slice_mi_n_11 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_2 (splitter_aw_mi_n_0),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_3 (aa_mi_awtarget_hot[3]),
        .\gen_single_issue.active_target_hot_reg[3] (\gen_master_slots[3].reg_slice_mi_n_12 ),
        .\gen_single_issue.active_target_hot_reg[3]_0 (\gen_master_slots[3].reg_slice_mi_n_13 ),
        .\gen_single_issue.active_target_hot_reg[3]_1 (\gen_master_slots[3].reg_slice_mi_n_15 ),
        .\gen_single_thread.active_target_hot_reg[3] (\gen_master_slots[3].reg_slice_mi_n_18 ),
        .\m_payload_i_reg[36] (\gen_master_slots[3].reg_slice_mi_n_14 ),
        .\m_payload_i_reg[36]_0 (s_rvalid_i0[3]),
        .m_valid_i_i_2__0(\gen_single_issue.active_target_hot_28 [3]),
        .m_valid_i_i_2__0_0(\gen_single_issue.active_target_hot_34 [3]),
        .m_valid_i_reg(st_mr_rvalid[3]),
        .m_valid_i_reg_0(st_mr_bvalid[3]),
        .m_valid_i_reg_1(\gen_master_slots[3].reg_slice_mi_n_17 ),
        .match(match_4),
        .match_0(match_15),
        .match_2(match_11),
        .match_4(match_12),
        .mi_awmaxissuing(mi_awmaxissuing[2]),
        .mi_awready_3(mi_awready_3),
        .mi_bready_3(mi_bready_3),
        .mi_rready_3(mi_rready_3),
        .p_19_in(p_19_in),
        .p_21_in(p_21_in),
        .p_24_in(p_24_in),
        .p_25_in(p_25_in),
        .p_28_in(p_28_in),
        .r_cmd_pop_3(r_cmd_pop_3),
        .r_issuing_cnt(r_issuing_cnt[24]),
        .reset(reset_23),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_2_sp_1(\gen_master_slots[3].reg_slice_mi_n_16 ),
        .\s_axi_rvalid[1] (\gen_single_issue.active_target_hot_33 [3]),
        .\s_axi_rvalid[2] (\gen_single_thread.active_target_hot [3]),
        .\s_axi_rvalid[3] (\gen_single_thread.active_target_hot_40 [3]),
        .s_ready_i_reg(\gen_master_slots[3].reg_slice_mi_n_6 ),
        .s_ready_i_reg_0(\gen_single_thread.active_target_hot_38 [3]),
        .st_mr_rlast(st_mr_rlast[3]),
        .st_mr_rmesg(st_mr_rmesg[139]),
        .target_mi_enc(target_mi_enc_13),
        .target_mi_enc_1(target_mi_enc_7),
        .target_mi_enc_3(target_mi_enc_9),
        .w_issuing_cnt(w_issuing_cnt[24]));
  FDRE \gen_master_slots[3].w_issuing_cnt_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_master_slots[3].reg_slice_mi_n_20 ),
        .Q(w_issuing_cnt[24]),
        .R(reset));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor \gen_slave_slots[0].gen_si_read.si_transactor_ar 
       (.D(st_aa_artarget_hot[2:0]),
        .E(S_AXI_ARREADY[0]),
        .Q(\gen_single_issue.active_target_hot ),
        .SR(reset),
        .aclk(aclk),
        .match(match),
        .s_axi_araddr(s_axi_araddr[31:30]),
        .s_axi_arvalid(s_axi_arvalid[0]),
        .\s_axi_arvalid[0] (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_1 ),
        .s_axi_rdata(s_axi_rdata[31:0]),
        .s_axi_rlast(s_axi_rlast[0]),
        .s_axi_rready(s_axi_rready[0]),
        .s_axi_rresp(s_axi_rresp[1:0]),
        .s_axi_rvalid(s_axi_rvalid[0]),
        .st_aa_arvalid_qual(st_aa_arvalid_qual[0]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[139],st_mr_rmesg[104:73],st_mr_rmesg[71:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .target_mi_enc(target_mi_enc_1),
        .valid_qual_i1(valid_qual_i1));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0 \gen_slave_slots[0].gen_si_write.si_transactor_aw 
       (.ADDRESS_HIT_0(\gen_addr_decoder.addr_decoder_inst/ADDRESS_HIT_0_14 ),
        .D(\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1 ),
        .E(s_axi_awready[0]),
        .Q(\gen_single_issue.active_target_hot_28 ),
        .SR(reset),
        .aclk(aclk),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .\gen_single_issue.active_target_enc_reg[0]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_0 ),
        .\gen_single_issue.active_target_hot_reg[1]_0 (st_aa_awtarget_hot[1]),
        .match(match_15),
        .s_axi_bresp(s_axi_bresp[1:0]),
        .st_mr_bmesg({st_mr_bmesg[7:6],st_mr_bmesg[4:3],st_mr_bmesg[1:0]}),
        .target_mi_enc(target_mi_enc_13));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter \gen_slave_slots[0].gen_si_write.splitter_aw_si 
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[1].reg_slice_mi_n_40 ),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_reg (\gen_master_slots[1].reg_slice_mi_n_49 ),
        .m_ready_d(m_ready_d),
        .\m_ready_d_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .\m_ready_d_reg[0]_1 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3 ),
        .s_axi_awready(s_axi_awready[0]),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .ss_aa_awready(ss_aa_awready[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .ss_wr_awvalid_0(ss_wr_awvalid_0));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router \gen_slave_slots[0].gen_si_write.wdata_router_w 
       (.D(\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_1 ),
        .\FSM_onehot_gen_axi.write_cs[2]_i_3 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_7 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .f_decoder_return(f_decoder_return),
        .m_aready(m_aready_31),
        .m_aready_0(m_aready_30),
        .m_aready_1(m_aready_29),
        .m_aready_2(m_aready),
        .m_avalid(m_avalid),
        .m_avalid_3(m_avalid_18),
        .m_avalid_4(m_avalid_21),
        .m_avalid_5(m_avalid_26),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_axi_wvalid[0]_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_9 ),
        .\m_axi_wvalid[1]_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_10 ),
        .\m_axi_wvalid[2]_0 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_10 ),
        .m_axi_wvalid_0_sp_1(\gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ),
        .m_axi_wvalid_1_sp_1(\gen_slave_slots[1].gen_si_write.wdata_router_w_n_5 ),
        .m_axi_wvalid_2_sp_1(\gen_slave_slots[1].gen_si_write.wdata_router_w_n_6 ),
        .m_ready_d(m_ready_d[1]),
        .match(match_15),
        .p_18_in(p_18_in),
        .s_axi_awaddr(s_axi_awaddr[31:30]),
        .\s_axi_awaddr[30] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_0 ),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_wlast(s_axi_wlast[0]),
        .s_axi_wready(s_axi_wready[0]),
        .\s_axi_wready[0]_0 (\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_7 ),
        .s_axi_wready_0_sp_1(\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_4 ),
        .s_axi_wvalid(s_axi_wvalid[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .ss_wr_awvalid_0(ss_wr_awvalid_0),
        .\storage_data1_reg[1] (m_select_enc_32),
        .target_mi_enc(target_mi_enc_13),
        .wm_mr_wlast_3(wm_mr_wlast_3),
        .wm_mr_wvalid_3(wm_mr_wvalid_3));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1 \gen_slave_slots[1].gen_si_read.si_transactor_ar 
       (.D(st_aa_artarget_hot[6:4]),
        .E(S_AXI_ARREADY[1]),
        .Q(\gen_single_issue.active_target_hot_33 ),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[1] (\gen_master_slots[2].reg_slice_mi_n_2 ),
        .\gen_arbiter.qual_reg_reg[1]_0 (\gen_master_slots[3].reg_slice_mi_n_1 ),
        .\gen_arbiter.qual_reg_reg[1]_1 (\gen_master_slots[0].reg_slice_mi_n_40 ),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_1 ),
        .match(match_4),
        .s_axi_araddr(s_axi_araddr[63:62]),
        .s_axi_arvalid(s_axi_arvalid[1]),
        .\s_axi_arvalid[1] (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_0 ),
        .s_axi_rdata(s_axi_rdata[63:32]),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rready(s_axi_rready[1]),
        .s_axi_rresp(s_axi_rresp[3:2]),
        .s_axi_rvalid(s_axi_rvalid[1]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[139],st_mr_rmesg[104:73],st_mr_rmesg[71:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .target_mi_enc(target_mi_enc_0));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2 \gen_slave_slots[1].gen_si_write.si_transactor_aw 
       (.D(\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1 ),
        .E(s_axi_awready[1]),
        .Q(\gen_single_issue.active_target_hot_34 ),
        .SR(reset),
        .aclk(aclk),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt_35 ),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ),
        .\gen_single_issue.active_target_enc_reg[0]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_0 ),
        .\gen_single_issue.active_target_hot_reg[2]_0 (st_aa_awtarget_hot[6:4]),
        .match(match_12),
        .s_axi_bresp(s_axi_bresp[3:2]),
        .st_mr_bmesg({st_mr_bmesg[7:6],st_mr_bmesg[4:3],st_mr_bmesg[1:0]}),
        .target_mi_enc(target_mi_enc_9));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5 \gen_slave_slots[1].gen_si_write.splitter_aw_si 
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.qual_reg_reg[1] (\gen_master_slots[1].reg_slice_mi_n_42 ),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt_35 ),
        .\gen_single_issue.accept_cnt_reg (\gen_master_slots[1].reg_slice_mi_n_53 ),
        .m_ready_d(m_ready_d_36),
        .\m_ready_d_reg[0]_0 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_0 ),
        .\m_ready_d_reg[0]_1 (\gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3 ),
        .s_axi_awready(s_axi_awready[1]),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .ss_aa_awready(ss_aa_awready[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .ss_wr_awvalid_1(ss_wr_awvalid_1));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_6 \gen_slave_slots[1].gen_si_write.wdata_router_w 
       (.D(\gen_slave_slots[1].gen_si_write.si_transactor_aw_n_1 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_ready_d(m_ready_d_36[1]),
        .m_select_enc(m_select_enc),
        .m_select_enc_0(m_select_enc_17),
        .m_select_enc_1(m_select_enc_20),
        .m_select_enc_2(m_select_enc_24),
        .match(match_12),
        .s_axi_awaddr(s_axi_awaddr[63:62]),
        .\s_axi_awaddr[62] (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_0 ),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_axi_wlast(s_axi_wlast[1]),
        .s_axi_wready(s_axi_wready[1]),
        .\s_axi_wready[1] (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_6 ),
        .\s_axi_wready[1]_0 (\gen_master_slots[3].gen_mi_write.wdata_mux_w_n_10 ),
        .s_axi_wvalid(s_axi_wvalid[1]),
        .ss_wr_awready_1(ss_wr_awready_1),
        .ss_wr_awvalid_1(ss_wr_awvalid_1),
        .\storage_data1_reg[0] (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_6 ),
        .\storage_data1_reg[1] (m_select_enc_37),
        .\storage_data1_reg[1]_0 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[1]_1 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_5 ),
        .\storage_data1_reg[1]_2 (\gen_slave_slots[1].gen_si_write.wdata_router_w_n_7 ),
        .target_mi_enc(target_mi_enc_9),
        .tmp_wm_wvalid({tmp_wm_wvalid[14],tmp_wm_wvalid[10],tmp_wm_wvalid[6],tmp_wm_wvalid[2]}));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3 \gen_slave_slots[2].gen_si_read.si_transactor_ar 
       (.D(addr_arbiter_ar_n_98),
        .E(S_AXI_ARREADY[2]),
        .Q(\gen_single_thread.active_target_hot ),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.qual_reg[2]_i_2_0 (addr_arbiter_ar_n_102),
        .\gen_arbiter.qual_reg[2]_i_2_1 (addr_arbiter_ar_n_99),
        .\gen_arbiter.qual_reg_reg[2] (\gen_master_slots[3].reg_slice_mi_n_16 ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_103),
        .\gen_single_thread.active_target_enc_reg[0]_1 (addr_arbiter_ar_n_101),
        .\gen_single_thread.active_target_enc_reg[0]_2 (addr_arbiter_ar_n_100),
        .\gen_single_thread.active_target_hot_reg[3]_0 (st_aa_artarget_hot[11:8]),
        .\m_payload_i_reg[34] (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_0 ),
        .s_axi_araddr({s_axi_araddr[90],s_axi_araddr[88:87]}),
        .s_axi_arvalid(s_axi_arvalid[2]),
        .\s_axi_arvalid[2] (\gen_slave_slots[2].gen_si_read.si_transactor_ar_n_1 ),
        .s_axi_rdata(s_axi_rdata[95:64]),
        .s_axi_rlast(s_axi_rlast[2]),
        .s_axi_rready(s_axi_rready[2]),
        .s_axi_rresp(s_axi_rresp[5:4]),
        .s_axi_rvalid(s_axi_rvalid[2]),
        .st_aa_arvalid_qual(st_aa_arvalid_qual[2]),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[139],st_mr_rmesg[104:73],st_mr_rmesg[71:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .valid_qual_i142_in(valid_qual_i142_in));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4 \gen_slave_slots[2].gen_si_write.si_transactor_aw 
       (.D(\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_0 ),
        .E(s_axi_awready[2]),
        .Q(\gen_single_thread.active_target_hot_38 ),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[2] (\gen_master_slots[1].reg_slice_mi_n_41 ),
        .\gen_arbiter.qual_reg_reg[2]_0 (\gen_master_slots[3].reg_slice_mi_n_10 ),
        .\gen_single_thread.accept_cnt_reg[5]_0 (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_single_thread.accept_cnt_reg[5]_1 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3 ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_1 ),
        .\gen_single_thread.active_target_hot_reg[2]_0 (st_aa_awtarget_hot[10:8]),
        .m_ready_d(m_ready_d_39),
        .match(match_11),
        .p_2_in(p_2_in_22),
        .s_axi_awaddr(s_axi_awaddr[95:94]),
        .\s_axi_awaddr[95] (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1 ),
        .s_axi_bresp(s_axi_bresp[5:4]),
        .ss_aa_awready(ss_aa_awready[2]),
        .ss_wr_awready_2(ss_wr_awready_2),
        .st_mr_bmesg({st_mr_bmesg[7:6],st_mr_bmesg[4:3],st_mr_bmesg[1:0]}),
        .target_mi_enc(target_mi_enc_7));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter_7 \gen_slave_slots[2].gen_si_write.splitter_aw_si 
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_arbiter.qual_reg_reg[2] (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_1 ),
        .\gen_single_thread.accept_cnt_reg[5] (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_2 ),
        .m_ready_d(m_ready_d_39),
        .\m_ready_d_reg[0]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ),
        .p_2_in(p_2_in_22),
        .s_axi_awready(s_axi_awready[2]),
        .s_axi_awvalid(s_axi_awvalid[2]),
        .s_ready_i_reg(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_3 ),
        .ss_aa_awready(ss_aa_awready[2]),
        .ss_wr_awready_2(ss_wr_awready_2),
        .ss_wr_awvalid_2(ss_wr_awvalid_2));
  mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0 \gen_slave_slots[2].gen_si_write.wdata_router_w 
       (.D(\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_0 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_avalid(m_avalid_18),
        .m_avalid_0(m_avalid),
        .m_axi_wready(m_axi_wready[1:0]),
        .m_ready_d(m_ready_d_39[1]),
        .match(match_11),
        .s_axi_awaddr(s_axi_awaddr[95:94]),
        .\s_axi_awaddr[94] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_1 ),
        .s_axi_awvalid(s_axi_awvalid[2]),
        .s_axi_wlast(s_axi_wlast[2]),
        .s_axi_wready(s_axi_wready[2]),
        .\s_axi_wready[2] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_2 ),
        .\s_axi_wready[2]_INST_0_i_1 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_1 ),
        .\s_axi_wready[2]_INST_0_i_1_0 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_1 ),
        .\s_axi_wready[2]_INST_0_i_1_1 (\gen_master_slots[2].gen_mi_write.wdata_mux_w_n_5 ),
        .s_axi_wvalid(s_axi_wvalid[2]),
        .ss_wr_awready_2(ss_wr_awready_2),
        .ss_wr_awvalid_2(ss_wr_awvalid_2),
        .target_mi_enc(target_mi_enc_7),
        .tmp_wm_wvalid({tmp_wm_wvalid[14],tmp_wm_wvalid[10],tmp_wm_wvalid[6],tmp_wm_wvalid[2]}),
        .wr_tmp_wready(wr_tmp_wready));
  mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5 \gen_slave_slots[3].gen_si_read.si_transactor_ar 
       (.D(st_aa_artarget_hot[14:12]),
        .E(S_AXI_ARREADY[3]),
        .Q(\gen_single_thread.active_target_hot_40 ),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[3] (\gen_master_slots[2].reg_slice_mi_n_39 ),
        .\gen_arbiter.qual_reg_reg[3]_0 (\gen_master_slots[0].reg_slice_mi_n_4 ),
        .\gen_arbiter.qual_reg_reg[3]_1 (\gen_master_slots[1].reg_slice_mi_n_45 ),
        .\m_payload_i_reg[34] (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_1 ),
        .match(match_3),
        .p_2_in(p_2_in),
        .s_axi_araddr(s_axi_araddr[127:126]),
        .s_axi_arvalid(s_axi_arvalid[3]),
        .\s_axi_arvalid[3] (\gen_slave_slots[3].gen_si_read.si_transactor_ar_n_0 ),
        .s_axi_rdata(s_axi_rdata[127:96]),
        .s_axi_rlast(s_axi_rlast[3]),
        .s_axi_rresp(s_axi_rresp[7:6]),
        .sel_4__0(\gen_addr_decoder.addr_decoder_inst/gen_target[1].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4__0 ),
        .st_mr_rlast(st_mr_rlast),
        .st_mr_rmesg({st_mr_rmesg[139],st_mr_rmesg[104:73],st_mr_rmesg[71:38],st_mr_rmesg[36:3],st_mr_rmesg[1:0]}),
        .target_mi_enc(target_mi_enc));
  mcu_xbar_0_axi_crossbar_v2_1_19_splitter_8 splitter_aw_mi
       (.aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_ready_d(m_ready_d_41),
        .\m_ready_d_reg[1]_0 (splitter_aw_mi_n_0),
        .\m_ready_d_reg[1]_1 (addr_arbiter_aw_n_57),
        .\m_ready_d_reg[1]_2 (addr_arbiter_aw_n_58));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_decerr_slave" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_decerr_slave
   (p_24_in,
    mi_awready_3,
    p_18_in,
    p_25_in,
    p_19_in,
    mi_arready_3,
    p_21_in,
    \FSM_onehot_gen_axi.write_cs_reg[2]_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[1]_0 ,
    p_28_in,
    SR,
    \gen_axi.s_axi_rid_i_reg[1]_0 ,
    aclk,
    \gen_axi.s_axi_rid_i_reg[0]_0 ,
    Q,
    aa_sa_awvalid,
    m_ready_d,
    mi_bready_3,
    \gen_axi.s_axi_bvalid_i_reg_0 ,
    aresetn_d,
    mi_rready_3,
    aa_mi_arvalid,
    \gen_axi.read_cs_reg[0]_0 ,
    m_axi_arlen,
    \gen_axi.s_axi_bid_i_reg[1]_0 ,
    \gen_axi.s_axi_awready_i_reg_0 ,
    \gen_axi.s_axi_rlast_i_reg_0 ,
    m_axi_awid);
  output [1:0]p_24_in;
  output mi_awready_3;
  output p_18_in;
  output p_25_in;
  output p_19_in;
  output mi_arready_3;
  output p_21_in;
  output \FSM_onehot_gen_axi.write_cs_reg[2]_0 ;
  output \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  output [1:0]p_28_in;
  input [0:0]SR;
  input \gen_axi.s_axi_rid_i_reg[1]_0 ;
  input aclk;
  input \gen_axi.s_axi_rid_i_reg[0]_0 ;
  input [0:0]Q;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input mi_bready_3;
  input \gen_axi.s_axi_bvalid_i_reg_0 ;
  input aresetn_d;
  input mi_rready_3;
  input aa_mi_arvalid;
  input [0:0]\gen_axi.read_cs_reg[0]_0 ;
  input [7:0]m_axi_arlen;
  input \gen_axi.s_axi_bid_i_reg[1]_0 ;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input \gen_axi.s_axi_rlast_i_reg_0 ;
  input [1:0]m_axi_awid;

  wire \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[2]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_mi_arvalid;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire \gen_axi.read_cnt[4]_i_2_n_0 ;
  wire \gen_axi.read_cnt[5]_i_2_n_0 ;
  wire \gen_axi.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.read_cnt[7]_i_3_n_0 ;
  wire \gen_axi.read_cnt[7]_i_4_n_0 ;
  wire [7:1]\gen_axi.read_cnt_reg__0 ;
  wire [0:0]\gen_axi.read_cnt_reg__0__0 ;
  wire \gen_axi.read_cs[0]_i_1_n_0 ;
  wire [0:0]\gen_axi.read_cs_reg[0]_0 ;
  wire \gen_axi.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_i_2_n_0 ;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_axi.s_axi_bid_i[0]_i_1_n_0 ;
  wire \gen_axi.s_axi_bid_i[1]_i_1_n_0 ;
  wire \gen_axi.s_axi_bid_i_reg[1]_0 ;
  wire \gen_axi.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.s_axi_bvalid_i_reg_0 ;
  wire \gen_axi.s_axi_rid_i_reg[0]_0 ;
  wire \gen_axi.s_axi_rid_i_reg[1]_0 ;
  wire \gen_axi.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_5_n_0 ;
  wire \gen_axi.s_axi_rlast_i_reg_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire [7:0]m_axi_arlen;
  wire [1:0]m_axi_awid;
  wire [0:0]m_ready_d;
  wire mi_arready_3;
  wire mi_awready_3;
  wire mi_bready_3;
  wire mi_rready_3;
  wire [7:0]p_0_in;
  wire p_18_in;
  wire p_19_in;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire p_25_in;
  wire [1:0]p_28_in;
  wire s_axi_wready_i;

  LUT5 #(
    .INIT(32'hAAAFAAA8)) 
    \FSM_onehot_gen_axi.write_cs[0]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I1(mi_bready_3),
        .I2(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I3(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0007FFF80000)) 
    \FSM_onehot_gen_axi.write_cs[1]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I1(mi_bready_3),
        .I2(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I3(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I5(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFA0002)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I1(mi_bready_3),
        .I2(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ),
        .I3(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_2 
       (.I0(mi_awready_3),
        .I1(Q),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_axi.read_cnt[0]_i_1 
       (.I0(\gen_axi.read_cnt_reg__0__0 ),
        .I1(p_19_in),
        .I2(m_axi_arlen[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \gen_axi.read_cnt[1]_i_1 
       (.I0(m_axi_arlen[1]),
        .I1(p_19_in),
        .I2(\gen_axi.read_cnt_reg__0__0 ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[2]_i_1 
       (.I0(m_axi_arlen[2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(\gen_axi.read_cnt_reg__0__0 ),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(p_19_in),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \gen_axi.read_cnt[3]_i_1 
       (.I0(m_axi_arlen[3]),
        .I1(\gen_axi.read_cnt_reg__0 [2]),
        .I2(\gen_axi.read_cnt_reg__0__0 ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .I4(\gen_axi.read_cnt_reg__0 [3]),
        .I5(p_19_in),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[4]_i_1 
       (.I0(m_axi_arlen[4]),
        .I1(\gen_axi.read_cnt[4]_i_2_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(p_19_in),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.read_cnt[4]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0__0 ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [3]),
        .O(\gen_axi.read_cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[5]_i_1 
       (.I0(m_axi_arlen[5]),
        .I1(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [5]),
        .I3(p_19_in),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_axi.read_cnt[5]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(\gen_axi.read_cnt_reg__0__0 ),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(\gen_axi.read_cnt_reg__0 [4]),
        .O(\gen_axi.read_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[6]_i_1 
       (.I0(m_axi_arlen[6]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [6]),
        .I3(p_19_in),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \gen_axi.read_cnt[7]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_3),
        .I2(p_19_in),
        .I3(aa_mi_arvalid),
        .I4(\gen_axi.read_cs_reg[0]_0 ),
        .I5(mi_arready_3),
        .O(\gen_axi.read_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[7]_i_2 
       (.I0(m_axi_arlen[7]),
        .I1(\gen_axi.read_cnt_reg__0 [6]),
        .I2(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I3(\gen_axi.read_cnt_reg__0 [7]),
        .I4(p_19_in),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_axi.read_cnt[7]_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [6]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [7]),
        .O(\gen_axi.read_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.read_cnt[7]_i_4 
       (.I0(\gen_axi.read_cnt_reg__0 [4]),
        .I1(\gen_axi.read_cnt_reg__0 [2]),
        .I2(\gen_axi.read_cnt_reg__0__0 ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .I4(\gen_axi.read_cnt_reg__0 [3]),
        .I5(\gen_axi.read_cnt_reg__0 [5]),
        .O(\gen_axi.read_cnt[7]_i_4_n_0 ));
  FDRE \gen_axi.read_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_axi.read_cnt_reg__0__0 ),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_axi.read_cnt_reg__0 [1]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_axi.read_cnt_reg__0 [2]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_axi.read_cnt_reg__0 [3]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_axi.read_cnt_reg__0 [4]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_axi.read_cnt_reg__0 [5]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[6] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_axi.read_cnt_reg__0 [6]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[7] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_axi.read_cnt_reg__0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFB0B0B0B0B0B0B0)) 
    \gen_axi.read_cs[0]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_3),
        .I2(p_19_in),
        .I3(aa_mi_arvalid),
        .I4(\gen_axi.read_cs_reg[0]_0 ),
        .I5(mi_arready_3),
        .O(\gen_axi.read_cs[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.read_cs[0]_i_1_n_0 ),
        .Q(p_19_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA08AA00000000)) 
    \gen_axi.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(mi_rready_3),
        .I2(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I3(p_19_in),
        .I4(mi_arready_3),
        .I5(\gen_axi.s_axi_arready_i_i_2_n_0 ),
        .O(\gen_axi.s_axi_arready_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_axi.s_axi_arready_i_i_2 
       (.I0(mi_arready_3),
        .I1(\gen_axi.read_cs_reg[0]_0 ),
        .I2(aa_mi_arvalid),
        .I3(p_19_in),
        .O(\gen_axi.s_axi_arready_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready_3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFF00)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(\gen_axi.s_axi_bid_i_reg[1]_0 ),
        .I2(Q),
        .I3(\gen_axi.s_axi_awready_i_reg_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I5(mi_awready_3),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready_3),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \gen_axi.s_axi_bid_i[0]_i_1 
       (.I0(m_axi_awid[0]),
        .I1(mi_awready_3),
        .I2(Q),
        .I3(\gen_axi.s_axi_bid_i_reg[1]_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I5(p_28_in[0]),
        .O(\gen_axi.s_axi_bid_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \gen_axi.s_axi_bid_i[1]_i_1 
       (.I0(m_axi_awid[1]),
        .I1(mi_awready_3),
        .I2(Q),
        .I3(\gen_axi.s_axi_bid_i_reg[1]_0 ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I5(p_28_in[1]),
        .O(\gen_axi.s_axi_bid_i[1]_i_1_n_0 ));
  FDRE \gen_axi.s_axi_bid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bid_i[0]_i_1_n_0 ),
        .Q(p_28_in[0]),
        .R(SR));
  FDRE \gen_axi.s_axi_bid_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bid_i[1]_i_1_n_0 ),
        .Q(p_28_in[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[2]_0 ),
        .I2(mi_bready_3),
        .I3(p_25_in),
        .O(\gen_axi.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_i_1_n_0 ),
        .Q(p_25_in),
        .R(SR));
  FDRE \gen_axi.s_axi_rid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rid_i_reg[0]_0 ),
        .Q(p_24_in[0]),
        .R(SR));
  FDRE \gen_axi.s_axi_rid_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rid_i_reg[1]_0 ),
        .Q(p_24_in[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \gen_axi.s_axi_rlast_i_i_1 
       (.I0(p_19_in),
        .I1(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I2(\gen_axi.s_axi_rlast_i_reg_0 ),
        .I3(\gen_axi.s_axi_rlast_i_i_3_n_0 ),
        .I4(p_21_in),
        .O(\gen_axi.s_axi_rlast_i_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \gen_axi.s_axi_rlast_i_i_3 
       (.I0(\gen_axi.s_axi_rlast_i_i_5_n_0 ),
        .I1(\gen_axi.read_cnt_reg__0 [3]),
        .I2(\gen_axi.read_cnt_reg__0 [2]),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .I4(\gen_axi.s_axi_arready_i_i_2_n_0 ),
        .O(\gen_axi.s_axi_rlast_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_axi.s_axi_rlast_i_i_5 
       (.I0(\gen_axi.read_cnt_reg__0 [6]),
        .I1(\gen_axi.read_cnt_reg__0 [7]),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(\gen_axi.read_cnt_reg__0 [5]),
        .I4(mi_rready_3),
        .I5(p_19_in),
        .O(\gen_axi.s_axi_rlast_i_i_5_n_0 ));
  FDRE \gen_axi.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rlast_i_i_1_n_0 ),
        .Q(p_21_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(mi_awready_3),
        .I1(Q),
        .I2(\gen_axi.s_axi_bid_i_reg[1]_0 ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I4(s_axi_wready_i),
        .I5(p_18_in),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \gen_axi.s_axi_wready_i_i_2 
       (.I0(\gen_axi.s_axi_bvalid_i_reg_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[0] ),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(Q),
        .I5(mi_awready_3),
        .O(s_axi_wready_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(p_18_in),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor
   (s_axi_rlast,
    \s_axi_arvalid[0] ,
    st_aa_arvalid_qual,
    s_axi_rresp,
    s_axi_rdata,
    Q,
    SR,
    aclk,
    s_axi_araddr,
    match,
    target_mi_enc,
    s_axi_rready,
    s_axi_rvalid,
    E,
    valid_qual_i1,
    s_axi_arvalid,
    D,
    st_mr_rmesg,
    st_mr_rlast);
  output [0:0]s_axi_rlast;
  output [0:0]\s_axi_arvalid[0] ;
  output [0:0]st_aa_arvalid_qual;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [3:0]Q;
  input [0:0]SR;
  input aclk;
  input [1:0]s_axi_araddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]s_axi_rready;
  input [0:0]s_axi_rvalid;
  input [0:0]E;
  input valid_qual_i1;
  input [0:0]s_axi_arvalid;
  input [2:0]D;
  input [102:0]st_mr_rmesg;
  input [3:0]st_mr_rlast;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_i_1__2_n_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire \gen_single_issue.active_target_enc[0]_i_1_n_0 ;
  wire \gen_single_issue.active_target_enc[1]_i_1_n_0 ;
  wire match;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [0:0]\s_axi_arvalid[0] ;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [3:3]st_aa_artarget_hot;
  wire [0:0]st_aa_arvalid_qual;
  wire [3:0]st_mr_rlast;
  wire [102:0]st_mr_rmesg;
  wire [0:0]target_mi_enc;
  wire valid_qual_i1;

  LUT3 #(
    .INIT(8'h8F)) 
    \gen_arbiter.qual_reg[0]_i_1__0 
       (.I0(st_aa_arvalid_qual),
        .I1(valid_qual_i1),
        .I2(s_axi_arvalid),
        .O(\s_axi_arvalid[0] ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \gen_arbiter.qual_reg[0]_i_2__0 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rlast),
        .I2(s_axi_rready),
        .I3(\gen_single_issue.accept_cnt ),
        .O(st_aa_arvalid_qual));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    \gen_single_issue.accept_cnt_i_1__2 
       (.I0(s_axi_rready),
        .I1(s_axi_rlast),
        .I2(s_axi_rvalid),
        .I3(E),
        .I4(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.accept_cnt_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_i_1__2_n_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_single_issue.active_target_enc[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(match),
        .O(\gen_single_issue.active_target_enc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_single_issue.active_target_enc[1]_i_1 
       (.I0(target_mi_enc),
        .I1(match),
        .O(\gen_single_issue.active_target_enc[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_enc[0]_i_1_n_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_enc[1]_i_1_n_0 ),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_issue.active_target_hot[3]_i_1 
       (.I0(match),
        .O(st_aa_artarget_hot));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_artarget_hot),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(st_mr_rmesg[70]),
        .I1(st_mr_rmesg[36]),
        .I2(st_mr_rmesg[2]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(st_mr_rmesg[80]),
        .I1(st_mr_rmesg[46]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[12]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(st_mr_rmesg[81]),
        .I1(st_mr_rmesg[47]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[13]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(st_mr_rmesg[82]),
        .I1(st_mr_rmesg[48]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[14]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(st_mr_rmesg[83]),
        .I1(st_mr_rmesg[49]),
        .I2(st_mr_rmesg[15]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(st_mr_rmesg[84]),
        .I1(st_mr_rmesg[50]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[16]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(st_mr_rmesg[85]),
        .I1(st_mr_rmesg[51]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[17]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(st_mr_rmesg[86]),
        .I1(st_mr_rmesg[52]),
        .I2(st_mr_rmesg[18]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(st_mr_rmesg[87]),
        .I1(st_mr_rmesg[53]),
        .I2(st_mr_rmesg[19]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(st_mr_rmesg[88]),
        .I1(st_mr_rmesg[54]),
        .I2(st_mr_rmesg[20]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(st_mr_rmesg[89]),
        .I1(st_mr_rmesg[55]),
        .I2(st_mr_rmesg[21]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[19]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(st_mr_rmesg[71]),
        .I1(st_mr_rmesg[37]),
        .I2(st_mr_rmesg[3]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[1]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(st_mr_rmesg[90]),
        .I1(st_mr_rmesg[56]),
        .I2(st_mr_rmesg[22]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(st_mr_rmesg[91]),
        .I1(st_mr_rmesg[57]),
        .I2(st_mr_rmesg[23]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(st_mr_rmesg[92]),
        .I1(st_mr_rmesg[58]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[24]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(st_mr_rmesg[93]),
        .I1(st_mr_rmesg[59]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[25]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(st_mr_rmesg[94]),
        .I1(st_mr_rmesg[60]),
        .I2(st_mr_rmesg[26]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(st_mr_rmesg[95]),
        .I1(st_mr_rmesg[61]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[27]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(st_mr_rmesg[96]),
        .I1(st_mr_rmesg[62]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[28]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(st_mr_rmesg[97]),
        .I1(st_mr_rmesg[63]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[29]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(st_mr_rmesg[98]),
        .I1(st_mr_rmesg[64]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[30]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(st_mr_rmesg[99]),
        .I1(st_mr_rmesg[65]),
        .I2(st_mr_rmesg[31]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(st_mr_rmesg[72]),
        .I1(st_mr_rmesg[38]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[4]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(st_mr_rmesg[100]),
        .I1(st_mr_rmesg[66]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[32]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(st_mr_rmesg[101]),
        .I1(st_mr_rmesg[67]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[33]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(st_mr_rmesg[73]),
        .I1(st_mr_rmesg[39]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[5]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(st_mr_rmesg[74]),
        .I1(st_mr_rmesg[40]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[6]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[4]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(st_mr_rmesg[75]),
        .I1(st_mr_rmesg[41]),
        .I2(st_mr_rmesg[7]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(st_mr_rmesg[76]),
        .I1(st_mr_rmesg[42]),
        .I2(st_mr_rmesg[8]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(st_mr_rmesg[77]),
        .I1(st_mr_rmesg[43]),
        .I2(st_mr_rmesg[9]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[7]));
  LUT5 #(
    .INIT(32'h00AACCF0)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(st_mr_rmesg[78]),
        .I1(st_mr_rmesg[44]),
        .I2(st_mr_rmesg[10]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(\gen_single_issue.active_target_enc [1]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(st_mr_rmesg[79]),
        .I1(st_mr_rmesg[45]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[11]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rlast[0]_INST_0 
       (.I0(st_mr_rlast[2]),
        .I1(st_mr_rlast[1]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rlast[0]),
        .I5(st_mr_rlast[3]),
        .O(s_axi_rlast));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(st_mr_rmesg[68]),
        .I1(st_mr_rmesg[34]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[0]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rresp[0]));
  LUT6 #(
    .INIT(64'hFCAFFCA00CAF0CA0)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(st_mr_rmesg[69]),
        .I1(st_mr_rmesg[35]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[1]),
        .I5(st_mr_rmesg[102]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized0
   (\gen_single_issue.accept_cnt ,
    D,
    s_axi_bresp,
    Q,
    SR,
    \gen_single_issue.accept_cnt_reg_0 ,
    aclk,
    target_mi_enc,
    match,
    \gen_single_issue.active_target_hot_reg[1]_0 ,
    ADDRESS_HIT_0,
    st_mr_bmesg,
    E,
    \gen_single_issue.active_target_enc_reg[0]_0 );
  output \gen_single_issue.accept_cnt ;
  output [0:0]D;
  output [1:0]s_axi_bresp;
  output [3:0]Q;
  input [0:0]SR;
  input \gen_single_issue.accept_cnt_reg_0 ;
  input aclk;
  input [0:0]target_mi_enc;
  input match;
  input [0:0]\gen_single_issue.active_target_hot_reg[1]_0 ;
  input ADDRESS_HIT_0;
  input [5:0]st_mr_bmesg;
  input [0:0]E;
  input [0:0]\gen_single_issue.active_target_enc_reg[0]_0 ;

  wire ADDRESS_HIT_0;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_enc_reg[0]_0 ;
  wire [0:0]\gen_single_issue.active_target_hot_reg[1]_0 ;
  wire match;
  wire [1:0]s_axi_bresp;
  wire [3:0]st_aa_awtarget_hot;
  wire [5:0]st_mr_bmesg;
  wire [0:0]target_mi_enc;

  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_reg_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_single_issue.active_target_enc[1]_i_1__0 
       (.I0(target_mi_enc),
        .I1(match),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[0]_i_1__0 
       (.I0(match),
        .I1(ADDRESS_HIT_0),
        .O(st_aa_awtarget_hot[0]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.active_target_hot[2]_i_1__0 
       (.I0(target_mi_enc),
        .I1(match),
        .O(st_aa_awtarget_hot[2]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_issue.active_target_hot[3]_i_1__0 
       (.I0(match),
        .O(st_aa_awtarget_hot[3]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_hot[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_hot_reg[1]_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_hot[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_hot[3]),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFCFCAFA0)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(st_mr_bmesg[4]),
        .I1(st_mr_bmesg[2]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(st_mr_bmesg[0]),
        .I4(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_bresp[0]));
  LUT5 #(
    .INIT(32'hFCFCAFA0)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(st_mr_bmesg[5]),
        .I1(st_mr_bmesg[3]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(st_mr_bmesg[1]),
        .I4(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized1
   (\s_axi_arvalid[1] ,
    \gen_single_issue.accept_cnt_reg_0 ,
    s_axi_rlast,
    s_axi_rresp,
    s_axi_rdata,
    Q,
    SR,
    aclk,
    s_axi_araddr,
    match,
    target_mi_enc,
    s_axi_arvalid,
    \gen_arbiter.qual_reg_reg[1] ,
    D,
    \gen_arbiter.qual_reg_reg[1]_0 ,
    \gen_arbiter.qual_reg_reg[1]_1 ,
    s_axi_rready,
    s_axi_rvalid,
    st_mr_rmesg,
    st_mr_rlast,
    E);
  output [0:0]\s_axi_arvalid[1] ;
  output \gen_single_issue.accept_cnt_reg_0 ;
  output [0:0]s_axi_rlast;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [3:0]Q;
  input [0:0]SR;
  input aclk;
  input [1:0]s_axi_araddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]s_axi_arvalid;
  input \gen_arbiter.qual_reg_reg[1] ;
  input [2:0]D;
  input \gen_arbiter.qual_reg_reg[1]_0 ;
  input \gen_arbiter.qual_reg_reg[1]_1 ;
  input [0:0]s_axi_rready;
  input [0:0]s_axi_rvalid;
  input [102:0]st_mr_rmesg;
  input [3:0]st_mr_rlast;
  input [0:0]E;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_arbiter.qual_reg_reg[1]_0 ;
  wire \gen_arbiter.qual_reg_reg[1]_1 ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_i_1__0_n_0 ;
  wire \gen_single_issue.accept_cnt_i_2__0_n_0 ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire \gen_single_issue.active_target_enc[0]_i_1__1_n_0 ;
  wire \gen_single_issue.active_target_enc[1]_i_1__1_n_0 ;
  wire match;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [0:0]\s_axi_arvalid[1] ;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [7:7]st_aa_artarget_hot;
  wire [3:0]st_mr_rlast;
  wire [102:0]st_mr_rmesg;
  wire [0:0]target_mi_enc;

  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.qual_reg[1]_i_1__0 
       (.I0(\gen_single_issue.accept_cnt_reg_0 ),
        .I1(s_axi_arvalid),
        .O(\s_axi_arvalid[1] ));
  LUT6 #(
    .INIT(64'hFFF4FFF40000FFF4)) 
    \gen_arbiter.qual_reg[1]_i_2 
       (.I0(\gen_arbiter.qual_reg_reg[1] ),
        .I1(D[2]),
        .I2(\gen_arbiter.qual_reg_reg[1]_0 ),
        .I3(\gen_arbiter.qual_reg_reg[1]_1 ),
        .I4(\gen_single_issue.accept_cnt ),
        .I5(\gen_single_issue.accept_cnt_i_2__0_n_0 ),
        .O(\gen_single_issue.accept_cnt_reg_0 ));
  LUT3 #(
    .INIT(8'hDC)) 
    \gen_single_issue.accept_cnt_i_1__0 
       (.I0(\gen_single_issue.accept_cnt_i_2__0_n_0 ),
        .I1(E),
        .I2(\gen_single_issue.accept_cnt ),
        .O(\gen_single_issue.accept_cnt_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_single_issue.accept_cnt_i_2__0 
       (.I0(s_axi_rready),
        .I1(s_axi_rlast),
        .I2(s_axi_rvalid),
        .O(\gen_single_issue.accept_cnt_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_i_1__0_n_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_single_issue.active_target_enc[0]_i_1__1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(match),
        .O(\gen_single_issue.active_target_enc[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_single_issue.active_target_enc[1]_i_1__1 
       (.I0(target_mi_enc),
        .I1(match),
        .O(\gen_single_issue.active_target_enc[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_enc[0]_i_1__1_n_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_enc[1]_i_1__1_n_0 ),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_issue.active_target_hot[3]_i_1__1 
       (.I0(match),
        .O(st_aa_artarget_hot));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_artarget_hot),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(st_mr_rmesg[2]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[36]),
        .I4(st_mr_rmesg[70]),
        .O(s_axi_rdata[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[37]),
        .I4(st_mr_rmesg[71]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[4]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[38]),
        .I5(st_mr_rmesg[72]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[5]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[39]),
        .I5(st_mr_rmesg[73]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[6]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[40]),
        .I5(st_mr_rmesg[74]),
        .O(s_axi_rdata[4]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(st_mr_rmesg[7]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[41]),
        .I4(st_mr_rmesg[75]),
        .O(s_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[42]),
        .I4(st_mr_rmesg[76]),
        .O(s_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[43]),
        .I4(st_mr_rmesg[77]),
        .O(s_axi_rdata[7]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[44]),
        .I4(st_mr_rmesg[78]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[11]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[45]),
        .I5(st_mr_rmesg[79]),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[12]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[46]),
        .I5(st_mr_rmesg[80]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[13]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[47]),
        .I5(st_mr_rmesg[81]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[14]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[48]),
        .I5(st_mr_rmesg[82]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(st_mr_rmesg[15]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[49]),
        .I4(st_mr_rmesg[83]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[16]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[50]),
        .I5(st_mr_rmesg[84]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[17]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[51]),
        .I5(st_mr_rmesg[85]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(st_mr_rmesg[18]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[52]),
        .I4(st_mr_rmesg[86]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[53]),
        .I4(st_mr_rmesg[87]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[54]),
        .I4(st_mr_rmesg[88]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[55]),
        .I4(st_mr_rmesg[89]),
        .O(s_axi_rdata[19]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[56]),
        .I4(st_mr_rmesg[90]),
        .O(s_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[57]),
        .I4(st_mr_rmesg[91]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[24]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[58]),
        .I5(st_mr_rmesg[92]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[25]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[59]),
        .I5(st_mr_rmesg[93]),
        .O(s_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(st_mr_rmesg[26]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[60]),
        .I4(st_mr_rmesg[94]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[27]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[61]),
        .I5(st_mr_rmesg[95]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[28]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[62]),
        .I5(st_mr_rmesg[96]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[29]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[63]),
        .I5(st_mr_rmesg[97]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[30]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[64]),
        .I5(st_mr_rmesg[98]),
        .O(s_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(st_mr_rmesg[31]),
        .I1(\gen_single_issue.active_target_enc [1]),
        .I2(\gen_single_issue.active_target_enc [0]),
        .I3(st_mr_rmesg[65]),
        .I4(st_mr_rmesg[99]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[32]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[66]),
        .I5(st_mr_rmesg[100]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[33]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[67]),
        .I5(st_mr_rmesg[101]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rlast[1]_INST_0 
       (.I0(st_mr_rlast[3]),
        .I1(st_mr_rlast[0]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rlast[1]),
        .I5(st_mr_rlast[2]),
        .O(s_axi_rlast));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rresp[2]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[0]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[34]),
        .I5(st_mr_rmesg[68]),
        .O(s_axi_rresp[0]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rresp[3]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[1]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(\gen_single_issue.active_target_enc [0]),
        .I4(st_mr_rmesg[35]),
        .I5(st_mr_rmesg[69]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized2
   (\gen_single_issue.accept_cnt ,
    D,
    s_axi_bresp,
    Q,
    SR,
    \gen_single_issue.accept_cnt_reg_0 ,
    aclk,
    target_mi_enc,
    match,
    \gen_single_issue.active_target_hot_reg[2]_0 ,
    st_mr_bmesg,
    E,
    \gen_single_issue.active_target_enc_reg[0]_0 );
  output \gen_single_issue.accept_cnt ;
  output [0:0]D;
  output [1:0]s_axi_bresp;
  output [3:0]Q;
  input [0:0]SR;
  input \gen_single_issue.accept_cnt_reg_0 ;
  input aclk;
  input [0:0]target_mi_enc;
  input match;
  input [2:0]\gen_single_issue.active_target_hot_reg[2]_0 ;
  input [5:0]st_mr_bmesg;
  input [0:0]E;
  input [0:0]\gen_single_issue.active_target_enc_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire [1:0]\gen_single_issue.active_target_enc ;
  wire [0:0]\gen_single_issue.active_target_enc_reg[0]_0 ;
  wire [2:0]\gen_single_issue.active_target_hot_reg[2]_0 ;
  wire match;
  wire [1:0]s_axi_bresp;
  wire [7:7]st_aa_awtarget_hot;
  wire [5:0]st_mr_bmesg;
  wire [0:0]target_mi_enc;

  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.accept_cnt_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_issue.accept_cnt_reg_0 ),
        .Q(\gen_single_issue.accept_cnt ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_single_issue.active_target_enc[1]_i_1__2 
       (.I0(target_mi_enc),
        .I1(match),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_issue.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D),
        .Q(\gen_single_issue.active_target_enc [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_issue.active_target_hot[3]_i_1__2 
       (.I0(match),
        .O(st_aa_awtarget_hot));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_hot_reg[2]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_hot_reg[2]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_issue.active_target_hot_reg[2]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_issue.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_hot),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFCFCAFA0)) 
    \s_axi_bresp[2]_INST_0 
       (.I0(st_mr_bmesg[4]),
        .I1(st_mr_bmesg[2]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(st_mr_bmesg[0]),
        .I4(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_bresp[0]));
  LUT5 #(
    .INIT(32'hFCFCAFA0)) 
    \s_axi_bresp[3]_INST_0 
       (.I0(st_mr_bmesg[5]),
        .I1(st_mr_bmesg[3]),
        .I2(\gen_single_issue.active_target_enc [1]),
        .I3(st_mr_bmesg[1]),
        .I4(\gen_single_issue.active_target_enc [0]),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized3
   (\m_payload_i_reg[34] ,
    \s_axi_arvalid[2] ,
    st_aa_arvalid_qual,
    s_axi_rresp,
    s_axi_rdata,
    s_axi_rlast,
    Q,
    s_axi_rvalid,
    s_axi_rready,
    E,
    valid_qual_i142_in,
    s_axi_arvalid,
    D,
    \gen_arbiter.qual_reg_reg[2] ,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    \gen_arbiter.qual_reg[2]_i_2_0 ,
    \gen_single_thread.active_target_enc_reg[0]_1 ,
    \gen_single_thread.active_target_enc_reg[0]_2 ,
    \gen_arbiter.qual_reg[2]_i_2_1 ,
    s_axi_araddr,
    st_mr_rmesg,
    st_mr_rlast,
    SR,
    aclk,
    \gen_single_thread.active_target_hot_reg[3]_0 );
  output \m_payload_i_reg[34] ;
  output [0:0]\s_axi_arvalid[2] ;
  output [0:0]st_aa_arvalid_qual;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rlast;
  output [3:0]Q;
  input [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  input [0:0]E;
  input valid_qual_i142_in;
  input [0:0]s_axi_arvalid;
  input [0:0]D;
  input \gen_arbiter.qual_reg_reg[2] ;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input \gen_arbiter.qual_reg[2]_i_2_0 ;
  input \gen_single_thread.active_target_enc_reg[0]_1 ;
  input \gen_single_thread.active_target_enc_reg[0]_2 ;
  input \gen_arbiter.qual_reg[2]_i_2_1 ;
  input [2:0]s_axi_araddr;
  input [102:0]st_mr_rmesg;
  input [3:0]st_mr_rlast;
  input [0:0]SR;
  input aclk;
  input [3:0]\gen_single_thread.active_target_hot_reg[3]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.qual_reg[2]_i_2_0 ;
  wire \gen_arbiter.qual_reg[2]_i_2_1 ;
  wire \gen_arbiter.qual_reg[2]_i_5_n_0 ;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__1_n_0 ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc[0]_i_1_n_0 ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc_reg[0]_1 ;
  wire \gen_single_thread.active_target_enc_reg[0]_2 ;
  wire [3:0]\gen_single_thread.active_target_hot_reg[3]_0 ;
  wire \m_payload_i_reg[34] ;
  wire [2:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [0:0]\s_axi_arvalid[2] ;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]st_aa_arvalid_qual;
  wire [3:0]st_mr_rlast;
  wire [102:0]st_mr_rmesg;
  wire valid_qual_i142_in;

  LUT3 #(
    .INIT(8'h8F)) 
    \gen_arbiter.qual_reg[2]_i_1__0 
       (.I0(st_aa_arvalid_qual),
        .I1(valid_qual_i142_in),
        .I2(s_axi_arvalid),
        .O(\s_axi_arvalid[2] ));
  LUT6 #(
    .INIT(64'h00005555C3C3D755)) 
    \gen_arbiter.qual_reg[2]_i_2 
       (.I0(\gen_single_thread.accept_cnt [1]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(D),
        .I3(\gen_arbiter.qual_reg_reg[2] ),
        .I4(\gen_single_thread.accept_cnt [0]),
        .I5(\gen_arbiter.qual_reg[2]_i_5_n_0 ),
        .O(st_aa_arvalid_qual));
  LUT6 #(
    .INIT(64'h5555555955555599)) 
    \gen_arbiter.qual_reg[2]_i_5 
       (.I0(\gen_single_thread.active_target_enc [0]),
        .I1(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .I2(\gen_arbiter.qual_reg[2]_i_2_0 ),
        .I3(\gen_single_thread.active_target_enc_reg[0]_1 ),
        .I4(\gen_single_thread.active_target_enc_reg[0]_2 ),
        .I5(\gen_arbiter.qual_reg[2]_i_2_1 ),
        .O(\gen_arbiter.qual_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555A555AAAA4AAA)) 
    \gen_single_thread.accept_cnt[0]_i_1__1 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .I4(\m_payload_i_reg[34] ),
        .I5(E),
        .O(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6666C666CCCC8CCC)) 
    \gen_single_thread.accept_cnt[1]_i_1__1 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .I4(\m_payload_i_reg[34] ),
        .I5(E),
        .O(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    \gen_single_thread.accept_cnt[1]_i_2 
       (.I0(st_mr_rlast[3]),
        .I1(st_mr_rlast[2]),
        .I2(st_mr_rlast[0]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rlast[1]),
        .O(\m_payload_i_reg[34] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEFFEFFFFFFFFFF)) 
    \gen_single_thread.active_target_enc[0]_i_1 
       (.I0(\gen_single_thread.active_target_enc_reg[0]_2 ),
        .I1(\gen_single_thread.active_target_enc_reg[0]_1 ),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .O(\gen_single_thread.active_target_enc[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_enc[0]_i_1_n_0 ),
        .Q(\gen_single_thread.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D),
        .Q(\gen_single_thread.active_target_enc [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[3]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[3]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[64]_INST_0 
       (.I0(st_mr_rmesg[2]),
        .I1(st_mr_rmesg[36]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[70]),
        .O(s_axi_rdata[0]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[65]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(st_mr_rmesg[37]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[71]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[66]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[38]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[72]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[67]_INST_0 
       (.I0(st_mr_rmesg[5]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[73]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(\gen_single_thread.active_target_enc [0]),
        .I5(st_mr_rmesg[39]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \s_axi_rdata[68]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[74]),
        .I2(st_mr_rmesg[6]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[40]),
        .O(s_axi_rdata[4]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[69]_INST_0 
       (.I0(st_mr_rmesg[7]),
        .I1(st_mr_rmesg[75]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[41]),
        .O(s_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[70]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(st_mr_rmesg[42]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[76]),
        .O(s_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[71]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(st_mr_rmesg[43]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[77]),
        .O(s_axi_rdata[7]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[72]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(st_mr_rmesg[44]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[78]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[73]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[79]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(\gen_single_thread.active_target_enc [0]),
        .I5(st_mr_rmesg[45]),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[74]_INST_0 
       (.I0(st_mr_rmesg[12]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[46]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[80]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[75]_INST_0 
       (.I0(st_mr_rmesg[13]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[81]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(\gen_single_thread.active_target_enc [0]),
        .I5(st_mr_rmesg[47]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[76]_INST_0 
       (.I0(st_mr_rmesg[14]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[48]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[82]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[77]_INST_0 
       (.I0(st_mr_rmesg[15]),
        .I1(st_mr_rmesg[83]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[49]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[78]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[50]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[84]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[79]_INST_0 
       (.I0(st_mr_rmesg[17]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[85]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(\gen_single_thread.active_target_enc [0]),
        .I5(st_mr_rmesg[51]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[80]_INST_0 
       (.I0(st_mr_rmesg[18]),
        .I1(st_mr_rmesg[52]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[86]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h0AFC0A0C)) 
    \s_axi_rdata[81]_INST_0 
       (.I0(st_mr_rmesg[87]),
        .I1(st_mr_rmesg[19]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[53]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h0AFC0A0C)) 
    \s_axi_rdata[82]_INST_0 
       (.I0(st_mr_rmesg[88]),
        .I1(st_mr_rmesg[20]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[54]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[83]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(st_mr_rmesg[89]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[55]),
        .O(s_axi_rdata[19]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[84]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(st_mr_rmesg[56]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[90]),
        .O(s_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h0FCA00CA)) 
    \s_axi_rdata[85]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(st_mr_rmesg[57]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[91]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[86]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[58]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[92]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \s_axi_rdata[87]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[93]),
        .I2(st_mr_rmesg[25]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[59]),
        .O(s_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h0AFC0A0C)) 
    \s_axi_rdata[88]_INST_0 
       (.I0(st_mr_rmesg[94]),
        .I1(st_mr_rmesg[26]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[60]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAACCFFF0AACC00F0)) 
    \s_axi_rdata[89]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[95]),
        .I2(st_mr_rmesg[27]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[61]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \s_axi_rdata[90]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[62]),
        .I2(st_mr_rmesg[28]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[96]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \s_axi_rdata[91]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[63]),
        .I2(st_mr_rmesg[29]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[97]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \s_axi_rdata[92]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[64]),
        .I2(st_mr_rmesg[30]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[98]),
        .O(s_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h0AFC0A0C)) 
    \s_axi_rdata[93]_INST_0 
       (.I0(st_mr_rmesg[99]),
        .I1(st_mr_rmesg[31]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(st_mr_rmesg[65]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[94]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[66]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[100]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rdata[95]_INST_0 
       (.I0(st_mr_rmesg[33]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[67]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[101]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hEFECE3E02F2C2320)) 
    \s_axi_rlast[2]_INST_0 
       (.I0(st_mr_rlast[1]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rlast[0]),
        .I4(st_mr_rlast[2]),
        .I5(st_mr_rlast[3]),
        .O(s_axi_rlast));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rresp[4]_INST_0 
       (.I0(st_mr_rmesg[0]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[34]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[68]),
        .O(s_axi_rresp[0]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \s_axi_rresp[5]_INST_0 
       (.I0(st_mr_rmesg[1]),
        .I1(st_mr_rmesg[102]),
        .I2(st_mr_rmesg[35]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(\gen_single_thread.active_target_enc [1]),
        .I5(st_mr_rmesg[69]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized4
   (D,
    \s_axi_awaddr[95] ,
    \gen_single_thread.accept_cnt_reg[5]_0 ,
    s_axi_bresp,
    Q,
    target_mi_enc,
    match,
    ss_wr_awready_2,
    m_ready_d,
    ss_aa_awready,
    \gen_arbiter.qual_reg_reg[2] ,
    \gen_arbiter.qual_reg_reg[2]_0 ,
    p_2_in,
    s_axi_awaddr,
    \gen_single_thread.active_target_hot_reg[2]_0 ,
    st_mr_bmesg,
    E,
    SR,
    aclk,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    \gen_single_thread.accept_cnt_reg[5]_1 );
  output [0:0]D;
  output \s_axi_awaddr[95] ;
  output \gen_single_thread.accept_cnt_reg[5]_0 ;
  output [1:0]s_axi_bresp;
  output [3:0]Q;
  input [0:0]target_mi_enc;
  input match;
  input ss_wr_awready_2;
  input [1:0]m_ready_d;
  input [0:0]ss_aa_awready;
  input \gen_arbiter.qual_reg_reg[2] ;
  input \gen_arbiter.qual_reg_reg[2]_0 ;
  input p_2_in;
  input [1:0]s_axi_awaddr;
  input [2:0]\gen_single_thread.active_target_hot_reg[2]_0 ;
  input [5:0]st_mr_bmesg;
  input [0:0]E;
  input [0:0]SR;
  input aclk;
  input [0:0]\gen_single_thread.active_target_enc_reg[0]_0 ;
  input [0:0]\gen_single_thread.accept_cnt_reg[5]_1 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire \gen_arbiter.qual_reg_reg[2]_0 ;
  wire \gen_single_thread.accept_cnt[0]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[4]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[5]_i_2_n_0 ;
  wire \gen_single_thread.accept_cnt[5]_i_5_n_0 ;
  wire [5:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[5]_0 ;
  wire [0:0]\gen_single_thread.accept_cnt_reg[5]_1 ;
  wire \gen_single_thread.accept_limit00_in ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_enc_reg[0]_0 ;
  wire [2:0]\gen_single_thread.active_target_hot_reg[2]_0 ;
  wire \gen_single_thread.s_avalid_en11_in ;
  wire [1:0]m_ready_d;
  wire match;
  wire p_2_in;
  wire [1:0]s_axi_awaddr;
  wire \s_axi_awaddr[95] ;
  wire [1:0]s_axi_bresp;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_2;
  wire [11:11]st_aa_awtarget_hot;
  wire [5:0]st_mr_bmesg;
  wire [0:0]target_mi_enc;

  LUT6 #(
    .INIT(64'h44F444F444F4FFFF)) 
    \gen_arbiter.last_rr_hot[3]_i_2 
       (.I0(\gen_arbiter.qual_reg_reg[2] ),
        .I1(\gen_arbiter.qual_reg_reg[2]_0 ),
        .I2(\gen_single_thread.accept_limit00_in ),
        .I3(p_2_in),
        .I4(\gen_single_thread.accept_cnt_reg[5]_0 ),
        .I5(\gen_single_thread.s_avalid_en11_in ),
        .O(\s_axi_awaddr[95] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_arbiter.last_rr_hot[3]_i_8__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [4]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [5]),
        .I4(\gen_single_thread.accept_cnt_reg [3]),
        .I5(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_limit00_in ));
  LUT6 #(
    .INIT(64'h65000065AA00AA00)) 
    \gen_arbiter.last_rr_hot[3]_i_9__0 
       (.I0(\gen_single_thread.active_target_enc [0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(target_mi_enc),
        .I5(match),
        .O(\gen_single_thread.s_avalid_en11_in ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h565656AAA9A9A955)) 
    \gen_single_thread.accept_cnt[1]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(ss_wr_awready_2),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_single_thread.accept_cnt[2]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_single_thread.accept_cnt[3]_i_1 
       (.I0(E),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \gen_single_thread.accept_cnt[4]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(E),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .I4(\gen_single_thread.accept_cnt_reg [4]),
        .I5(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \gen_single_thread.accept_cnt[5]_i_2 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt[5]_i_5_n_0 ),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [5]),
        .I5(\gen_single_thread.accept_cnt_reg [4]),
        .O(\gen_single_thread.accept_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_single_thread.accept_cnt[5]_i_4 
       (.I0(\gen_single_thread.accept_cnt_reg [5]),
        .I1(\gen_single_thread.accept_cnt_reg [4]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .I4(\gen_single_thread.accept_cnt_reg [3]),
        .I5(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFDFDFD5554545400)) 
    \gen_single_thread.accept_cnt[5]_i_5 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[1]),
        .I4(ss_wr_awready_2),
        .I5(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .D(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .D(\gen_single_thread.accept_cnt[4]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt_reg[5]_1 ),
        .D(\gen_single_thread.accept_cnt[5]_i_2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_single_thread.active_target_enc[1]_i_1__0 
       (.I0(target_mi_enc),
        .I1(match),
        .O(D));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D),
        .Q(\gen_single_thread.active_target_enc [1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.active_target_hot[3]_i_1__0 
       (.I0(match),
        .O(st_aa_awtarget_hot));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[2]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[2]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_hot_reg[2]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_awtarget_hot),
        .Q(Q[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFECEF2C2)) 
    \s_axi_bresp[4]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_bmesg[2]),
        .I4(st_mr_bmesg[4]),
        .O(s_axi_bresp[0]));
  LUT5 #(
    .INIT(32'hFECEF2C2)) 
    \s_axi_bresp[5]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_bmesg[3]),
        .I4(st_mr_bmesg[5]),
        .O(s_axi_bresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_si_transactor" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_si_transactor__parameterized5
   (\s_axi_arvalid[3] ,
    \m_payload_i_reg[34] ,
    s_axi_rresp,
    s_axi_rdata,
    s_axi_rlast,
    Q,
    target_mi_enc,
    match,
    s_axi_araddr,
    E,
    s_axi_arvalid,
    \gen_arbiter.qual_reg_reg[3] ,
    \gen_arbiter.qual_reg_reg[3]_0 ,
    D,
    \gen_arbiter.qual_reg_reg[3]_1 ,
    sel_4__0,
    st_mr_rmesg,
    p_2_in,
    st_mr_rlast,
    SR,
    aclk);
  output [0:0]\s_axi_arvalid[3] ;
  output \m_payload_i_reg[34] ;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [0:0]s_axi_rlast;
  output [3:0]Q;
  input [0:0]target_mi_enc;
  input match;
  input [1:0]s_axi_araddr;
  input [0:0]E;
  input [0:0]s_axi_arvalid;
  input \gen_arbiter.qual_reg_reg[3] ;
  input \gen_arbiter.qual_reg_reg[3]_0 ;
  input [2:0]D;
  input \gen_arbiter.qual_reg_reg[3]_1 ;
  input sel_4__0;
  input [102:0]st_mr_rmesg;
  input p_2_in;
  input [3:0]st_mr_rlast;
  input [0:0]SR;
  input aclk;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.qual_reg[3]_i_11_n_0 ;
  wire \gen_arbiter.qual_reg[3]_i_6_n_0 ;
  wire \gen_arbiter.qual_reg_reg[3] ;
  wire \gen_arbiter.qual_reg_reg[3]_0 ;
  wire \gen_arbiter.qual_reg_reg[3]_1 ;
  wire \gen_single_thread.accept_cnt[0]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_2_n_0 ;
  wire [3:0]\gen_single_thread.accept_cnt_reg ;
  wire [1:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc[0]_i_1__1_n_0 ;
  wire \gen_single_thread.active_target_enc[1]_i_1__1_n_0 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \m_payload_i_reg[34] ;
  wire match;
  wire p_2_in;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [0:0]\s_axi_arvalid[3] ;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire sel_4__0;
  wire [15:15]st_aa_artarget_hot;
  wire [3:0]st_mr_rlast;
  wire [102:0]st_mr_rmesg;
  wire [0:0]target_mi_enc;

  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.qual_reg[3]_i_1 
       (.I0(\m_payload_i_reg[34] ),
        .I1(s_axi_arvalid),
        .O(\s_axi_arvalid[3] ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_arbiter.qual_reg[3]_i_11 
       (.I0(\gen_single_thread.accept_cnt_reg [3]),
        .I1(\gen_single_thread.accept_cnt_reg [2]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_arbiter.qual_reg[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFBA00000000)) 
    \gen_arbiter.qual_reg[3]_i_2 
       (.I0(\gen_arbiter.qual_reg_reg[3] ),
        .I1(\gen_arbiter.qual_reg_reg[3]_0 ),
        .I2(D[0]),
        .I3(\gen_arbiter.qual_reg_reg[3]_1 ),
        .I4(\gen_arbiter.qual_reg[3]_i_6_n_0 ),
        .I5(\gen_single_thread.s_avalid_en ),
        .O(\m_payload_i_reg[34] ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \gen_arbiter.qual_reg[3]_i_6 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .I4(p_2_in),
        .O(\gen_arbiter.qual_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFBAEBBAAAAAAEAAE)) 
    \gen_arbiter.qual_reg[3]_i_7 
       (.I0(\gen_arbiter.qual_reg[3]_i_11_n_0 ),
        .I1(match),
        .I2(target_mi_enc),
        .I3(\gen_single_thread.active_target_enc [1]),
        .I4(sel_4__0),
        .I5(\gen_single_thread.active_target_enc [0]),
        .O(\gen_single_thread.s_avalid_en ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_single_thread.accept_cnt[1]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_single_thread.accept_cnt[2]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(E),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .O(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666662)) 
    \gen_single_thread.accept_cnt[3]_i_1__0 
       (.I0(E),
        .I1(p_2_in),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .I5(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_single_thread.accept_cnt[3]_i_2 
       (.I0(E),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_single_thread.active_target_enc[0]_i_1__1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(match),
        .O(\gen_single_thread.active_target_enc[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_single_thread.active_target_enc[1]_i_1__1 
       (.I0(target_mi_enc),
        .I1(match),
        .O(\gen_single_thread.active_target_enc[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_enc[0]_i_1__1_n_0 ),
        .Q(\gen_single_thread.active_target_enc [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_single_thread.active_target_enc[1]_i_1__1_n_0 ),
        .Q(\gen_single_thread.active_target_enc [1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.active_target_hot[3]_i_1__1 
       (.I0(match),
        .O(st_aa_artarget_hot));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(st_aa_artarget_hot),
        .Q(Q[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[100]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[6]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[40]),
        .I5(st_mr_rmesg[74]),
        .O(s_axi_rdata[4]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[101]_INST_0 
       (.I0(st_mr_rmesg[7]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[41]),
        .I4(st_mr_rmesg[75]),
        .O(s_axi_rdata[5]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[102]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[42]),
        .I4(st_mr_rmesg[76]),
        .O(s_axi_rdata[6]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[103]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[43]),
        .I4(st_mr_rmesg[77]),
        .O(s_axi_rdata[7]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[104]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[44]),
        .I4(st_mr_rmesg[78]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[105]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[11]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[45]),
        .I5(st_mr_rmesg[79]),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[106]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[12]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[46]),
        .I5(st_mr_rmesg[80]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[107]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[13]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[47]),
        .I5(st_mr_rmesg[81]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[108]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[14]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[48]),
        .I5(st_mr_rmesg[82]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[109]_INST_0 
       (.I0(st_mr_rmesg[15]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[49]),
        .I4(st_mr_rmesg[83]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[110]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[16]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[50]),
        .I5(st_mr_rmesg[84]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[111]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[17]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[51]),
        .I5(st_mr_rmesg[85]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[112]_INST_0 
       (.I0(st_mr_rmesg[18]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[52]),
        .I4(st_mr_rmesg[86]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[113]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[53]),
        .I4(st_mr_rmesg[87]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[114]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[54]),
        .I4(st_mr_rmesg[88]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[115]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[55]),
        .I4(st_mr_rmesg[89]),
        .O(s_axi_rdata[19]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[116]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[56]),
        .I4(st_mr_rmesg[90]),
        .O(s_axi_rdata[20]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[117]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[57]),
        .I4(st_mr_rmesg[91]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[118]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[24]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[58]),
        .I5(st_mr_rmesg[92]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[119]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[25]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[59]),
        .I5(st_mr_rmesg[93]),
        .O(s_axi_rdata[23]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[120]_INST_0 
       (.I0(st_mr_rmesg[26]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[60]),
        .I4(st_mr_rmesg[94]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[121]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[27]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[61]),
        .I5(st_mr_rmesg[95]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[122]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[28]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[62]),
        .I5(st_mr_rmesg[96]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[123]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[29]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[63]),
        .I5(st_mr_rmesg[97]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[124]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[30]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[64]),
        .I5(st_mr_rmesg[98]),
        .O(s_axi_rdata[28]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[125]_INST_0 
       (.I0(st_mr_rmesg[31]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[65]),
        .I4(st_mr_rmesg[99]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[126]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[32]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[66]),
        .I5(st_mr_rmesg[100]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[127]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[33]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[67]),
        .I5(st_mr_rmesg[101]),
        .O(s_axi_rdata[31]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[96]_INST_0 
       (.I0(st_mr_rmesg[2]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[36]),
        .I4(st_mr_rmesg[70]),
        .O(s_axi_rdata[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \s_axi_rdata[97]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(\gen_single_thread.active_target_enc [1]),
        .I2(\gen_single_thread.active_target_enc [0]),
        .I3(st_mr_rmesg[37]),
        .I4(st_mr_rmesg[71]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[98]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[4]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[38]),
        .I5(st_mr_rmesg[72]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rdata[99]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[5]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[39]),
        .I5(st_mr_rmesg[73]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rlast[3]_INST_0 
       (.I0(st_mr_rlast[3]),
        .I1(st_mr_rlast[0]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rlast[1]),
        .I5(st_mr_rlast[2]),
        .O(s_axi_rlast));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rresp[6]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[0]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[34]),
        .I5(st_mr_rmesg[68]),
        .O(s_axi_rresp[0]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \s_axi_rresp[7]_INST_0 
       (.I0(st_mr_rmesg[102]),
        .I1(st_mr_rmesg[1]),
        .I2(\gen_single_thread.active_target_enc [1]),
        .I3(\gen_single_thread.active_target_enc [0]),
        .I4(st_mr_rmesg[35]),
        .I5(st_mr_rmesg[69]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter
   (\m_ready_d_reg[0]_0 ,
    m_ready_d,
    \m_ready_d_reg[0]_1 ,
    s_axi_awready,
    ss_wr_awvalid_0,
    s_axi_awvalid,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_single_issue.accept_cnt_reg ,
    ss_aa_awready,
    ss_wr_awready_0,
    \gen_single_issue.accept_cnt ,
    aresetn_d,
    aclk);
  output [0:0]\m_ready_d_reg[0]_0 ;
  output [1:0]m_ready_d;
  output \m_ready_d_reg[0]_1 ;
  output [0:0]s_axi_awready;
  output ss_wr_awvalid_0;
  input [0:0]s_axi_awvalid;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_single_issue.accept_cnt_reg ;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_0;
  input \gen_single_issue.accept_cnt ;
  input aresetn_d;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire [0:0]\m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[0]_1 ;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire ss_wr_awvalid_0;

  LUT3 #(
    .INIT(8'hBF)) 
    \gen_arbiter.qual_reg[0]_i_1 
       (.I0(m_ready_d[0]),
        .I1(s_axi_awvalid),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .O(\m_ready_d_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rep[0].fifoaddr[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[1]),
        .O(ss_wr_awvalid_0));
  LUT6 #(
    .INIT(64'hFDFDFD55FCFCFC00)) 
    \gen_single_issue.accept_cnt_i_1 
       (.I0(\gen_single_issue.accept_cnt_reg ),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[1]),
        .I4(ss_wr_awready_0),
        .I5(\gen_single_issue.accept_cnt ),
        .O(\m_ready_d_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_0),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_0),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[0]_INST_0 
       (.I0(ss_wr_awready_0),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter_5
   (\m_ready_d_reg[0]_0 ,
    m_ready_d,
    \m_ready_d_reg[0]_1 ,
    s_axi_awready,
    ss_wr_awvalid_1,
    s_axi_awvalid,
    \gen_arbiter.qual_reg_reg[1] ,
    \gen_single_issue.accept_cnt_reg ,
    ss_aa_awready,
    ss_wr_awready_1,
    \gen_single_issue.accept_cnt ,
    aresetn_d,
    aclk);
  output [0:0]\m_ready_d_reg[0]_0 ;
  output [1:0]m_ready_d;
  output \m_ready_d_reg[0]_1 ;
  output [0:0]s_axi_awready;
  output ss_wr_awvalid_1;
  input [0:0]s_axi_awvalid;
  input \gen_arbiter.qual_reg_reg[1] ;
  input \gen_single_issue.accept_cnt_reg ;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_1;
  input \gen_single_issue.accept_cnt ;
  input aresetn_d;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_reg ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire [0:0]\m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[0]_1 ;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_1;
  wire ss_wr_awvalid_1;

  LUT3 #(
    .INIT(8'hBF)) 
    \gen_arbiter.qual_reg[1]_i_1 
       (.I0(m_ready_d[0]),
        .I1(s_axi_awvalid),
        .I2(\gen_arbiter.qual_reg_reg[1] ),
        .O(\m_ready_d_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_rep[0].fifoaddr[1]_i_2__0 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[1]),
        .O(ss_wr_awvalid_1));
  LUT6 #(
    .INIT(64'hFDFDFD55FCFCFC00)) 
    \gen_single_issue.accept_cnt_i_1__1 
       (.I0(\gen_single_issue.accept_cnt_reg ),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[1]),
        .I4(ss_wr_awready_1),
        .I5(\gen_single_issue.accept_cnt ),
        .O(\m_ready_d_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_1),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_1),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[1]_INST_0 
       (.I0(ss_wr_awready_1),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter_7
   (\m_ready_d_reg[0]_0 ,
    m_ready_d,
    s_ready_i_reg,
    s_axi_awready,
    ss_wr_awvalid_2,
    s_axi_awvalid,
    \gen_arbiter.qual_reg_reg[2] ,
    ss_wr_awready_2,
    ss_aa_awready,
    p_2_in,
    \gen_single_thread.accept_cnt_reg[5] ,
    aresetn_d,
    aclk);
  output [0:0]\m_ready_d_reg[0]_0 ;
  output [1:0]m_ready_d;
  output [0:0]s_ready_i_reg;
  output [0:0]s_axi_awready;
  output ss_wr_awvalid_2;
  input [0:0]s_axi_awvalid;
  input \gen_arbiter.qual_reg_reg[2] ;
  input ss_wr_awready_2;
  input [0:0]ss_aa_awready;
  input p_2_in;
  input \gen_single_thread.accept_cnt_reg[5] ;
  input aresetn_d;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire \gen_single_thread.accept_cnt_reg[5] ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire [0:0]\m_ready_d_reg[0]_0 ;
  wire p_2_in;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_ready_i_reg;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_2;
  wire ss_wr_awvalid_2;

  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_3__1 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[1]),
        .O(ss_wr_awvalid_2));
  LUT3 #(
    .INIT(8'hBF)) 
    \gen_arbiter.qual_reg[2]_i_1 
       (.I0(m_ready_d[0]),
        .I1(s_axi_awvalid),
        .I2(\gen_arbiter.qual_reg_reg[2] ),
        .O(\m_ready_d_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000EEE0111FEEE0)) 
    \gen_single_thread.accept_cnt[5]_i_1 
       (.I0(ss_wr_awready_2),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .I4(p_2_in),
        .I5(\gen_single_thread.accept_cnt_reg[5] ),
        .O(s_ready_i_reg));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_2),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_2),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[2]_INST_0 
       (.I0(ss_wr_awready_2),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_splitter" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_splitter_8
   (\m_ready_d_reg[1]_0 ,
    m_ready_d,
    aa_sa_awvalid,
    aresetn_d,
    \m_ready_d_reg[1]_1 ,
    \m_ready_d_reg[1]_2 ,
    aclk);
  output \m_ready_d_reg[1]_0 ;
  output [1:0]m_ready_d;
  input aa_sa_awvalid;
  input aresetn_d;
  input \m_ready_d_reg[1]_1 ;
  input \m_ready_d_reg[1]_2 ;
  input aclk;

  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;
  wire \m_ready_d_reg[1]_2 ;

  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_axi.s_axi_bid_i[1]_i_2 
       (.I0(m_ready_d[1]),
        .I1(aa_sa_awvalid),
        .O(\m_ready_d_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \m_ready_d[0]_i_1 
       (.I0(m_ready_d[0]),
        .I1(aa_sa_awvalid),
        .I2(aresetn_d),
        .I3(\m_ready_d_reg[1]_1 ),
        .I4(\m_ready_d_reg[1]_2 ),
        .O(\m_ready_d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'hE0000000)) 
    \m_ready_d[1]_i_1 
       (.I0(aa_sa_awvalid),
        .I1(m_ready_d[1]),
        .I2(aresetn_d),
        .I3(\m_ready_d_reg[1]_1 ),
        .I4(\m_ready_d_reg[1]_2 ),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_mux" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux
   (m_avalid,
    \storage_data1_reg[1] ,
    m_select_enc,
    \storage_data1_reg[0] ,
    Q,
    m_valid_i_reg,
    m_axi_wlast,
    \storage_data1_reg[1]_0 ,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    sa_wm_awvalid,
    m_aready,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1] ,
    m_axi_wready,
    s_axi_wlast,
    D,
    SR,
    E,
    s_axi_wstrb,
    s_axi_wdata);
  output m_avalid;
  output \storage_data1_reg[1] ;
  output [1:0]m_select_enc;
  output \storage_data1_reg[0] ;
  output [1:0]Q;
  output m_valid_i_reg;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1]_0 ;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input [0:0]sa_wm_awvalid;
  input m_aready;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  input [0:0]m_axi_wready;
  input [2:0]s_axi_wlast;
  input [1:0]D;
  input [0:0]SR;
  input [0:0]E;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire m_aready;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire m_valid_i_reg;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [11:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1_28 \gen_wmux.wmux_aw_fifo 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1] ),
        .m_aready(m_aready),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_valid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid(sa_wm_awvalid),
        .\storage_data1_reg[0]_0 (m_select_enc[0]),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (m_select_enc[1]),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_mux" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux_2
   (m_avalid,
    \storage_data1_reg[1] ,
    m_select_enc,
    \storage_data1_reg[0] ,
    m_valid_i_reg,
    \m_axi_wready[2] ,
    Q,
    m_axi_wlast,
    \storage_data1_reg[1]_0 ,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    m_select_enc_0,
    \s_axi_wready[0]_INST_0_i_1 ,
    \s_axi_wready[0]_INST_0_i_1_0 ,
    m_axi_wready,
    m_select_enc_1,
    \s_axi_wready[1]_INST_0_i_1 ,
    sa_wm_awvalid,
    m_aready,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1] ,
    s_axi_wlast,
    D,
    SR,
    E,
    s_axi_wstrb,
    s_axi_wdata);
  output m_avalid;
  output \storage_data1_reg[1] ;
  output [1:0]m_select_enc;
  output \storage_data1_reg[0] ;
  output m_valid_i_reg;
  output \m_axi_wready[2] ;
  output [1:0]Q;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1]_0 ;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input [0:0]m_select_enc_0;
  input \s_axi_wready[0]_INST_0_i_1 ;
  input \s_axi_wready[0]_INST_0_i_1_0 ;
  input [0:0]m_axi_wready;
  input [0:0]m_select_enc_1;
  input \s_axi_wready[1]_INST_0_i_1 ;
  input [0:0]sa_wm_awvalid;
  input m_aready;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  input [2:0]s_axi_wlast;
  input [1:0]D;
  input [0:0]SR;
  input [0:0]E;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire m_aready;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire \m_axi_wready[2] ;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [0:0]m_select_enc_0;
  wire [0:0]m_select_enc_1;
  wire m_valid_i_reg;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_0 ;
  wire \s_axi_wready[1]_INST_0_i_1 ;
  wire [11:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1 \gen_wmux.wmux_aw_fifo 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1] ),
        .m_aready(m_aready),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .\m_axi_wready[2] (\m_axi_wready[2] ),
        .m_axi_wstrb(m_axi_wstrb),
        .m_ready_d(m_ready_d),
        .m_select_enc_0(m_select_enc_0),
        .m_select_enc_1(m_select_enc_1),
        .m_valid_i_reg_0(m_valid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wready[0]_INST_0_i_1 (\s_axi_wready[0]_INST_0_i_1 ),
        .\s_axi_wready[0]_INST_0_i_1_0 (\s_axi_wready[0]_INST_0_i_1_0 ),
        .\s_axi_wready[1]_INST_0_i_1 (\s_axi_wready[1]_INST_0_i_1 ),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid(sa_wm_awvalid),
        .\storage_data1_reg[0]_0 (m_select_enc[0]),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (m_select_enc[1]),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_mux" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized0
   (\gen_rep[0].fifoaddr_reg[0] ,
    m_avalid,
    \storage_data1_reg[1] ,
    m_select_enc,
    \storage_data1_reg[0] ,
    Q,
    m_valid_i_reg,
    m_axi_wlast,
    \storage_data1_reg[1]_0 ,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    SR,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    areset_d1,
    p_0_out,
    sa_wm_awvalid,
    m_aready,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[2] ,
    m_axi_wready,
    s_axi_wlast,
    D,
    s_axi_wstrb,
    s_axi_wdata);
  output [0:0]\gen_rep[0].fifoaddr_reg[0] ;
  output m_avalid;
  output \storage_data1_reg[1] ;
  output [1:0]m_select_enc;
  output \storage_data1_reg[0] ;
  output [1:0]Q;
  output m_valid_i_reg;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1]_0 ;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input [0:0]SR;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input areset_d1;
  input p_0_out;
  input [0:0]sa_wm_awvalid;
  input m_aready;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[2] ;
  input [0:0]m_axi_wready;
  input [2:0]s_axi_wlast;
  input [1:0]D;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0] ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[2] ;
  wire m_aready;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire m_valid_i_reg;
  wire p_0_out;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [11:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2 \gen_wmux.wmux_aw_fifo 
       (.A(\gen_rep[0].fifoaddr_reg[0] ),
        .D(D),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0]_0 ),
        .\gen_rep[0].fifoaddr_reg[2]_0 (\gen_rep[0].fifoaddr_reg[2] ),
        .m_aready(m_aready),
        .m_avalid(m_avalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_valid_i_reg),
        .p_0_out(p_0_out),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .sa_wm_awvalid(sa_wm_awvalid),
        .\storage_data1_reg[0]_0 (m_select_enc[0]),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (m_select_enc[1]),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_mux" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_mux__parameterized1
   (\gen_rep[0].fifoaddr_reg[0] ,
    m_avalid,
    Q,
    \FSM_onehot_gen_axi.write_cs_reg[1] ,
    wm_mr_wlast_3,
    \storage_data1_reg[0] ,
    m_select_enc,
    \storage_data1_reg[1] ,
    wr_tmp_wready,
    f_decoder_return,
    aa_wm_awgrant_enc,
    aclk,
    SR,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    areset_d1,
    m_aready,
    \FSM_onehot_state_reg[1] ,
    wm_mr_wvalid_3,
    \gen_axi.s_axi_bvalid_i_reg ,
    m_select_enc_0,
    \s_axi_wready[0]_INST_0_i_1 ,
    \s_axi_wready[0]_INST_0_i_1_0 ,
    m_select_enc_1,
    \s_axi_wready[1]_INST_0_i_1 ,
    sa_wm_awvalid,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1] ,
    p_18_in,
    s_axi_wlast,
    D);
  output [0:0]\gen_rep[0].fifoaddr_reg[0] ;
  output m_avalid;
  output [2:0]Q;
  output \FSM_onehot_gen_axi.write_cs_reg[1] ;
  output wm_mr_wlast_3;
  output \storage_data1_reg[0] ;
  output [1:0]m_select_enc;
  output \storage_data1_reg[1] ;
  output [0:0]wr_tmp_wready;
  output [0:0]f_decoder_return;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input [0:0]SR;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input areset_d1;
  input m_aready;
  input \FSM_onehot_state_reg[1] ;
  input wm_mr_wvalid_3;
  input \gen_axi.s_axi_bvalid_i_reg ;
  input [0:0]m_select_enc_0;
  input \s_axi_wready[0]_INST_0_i_1 ;
  input \s_axi_wready[0]_INST_0_i_1_0 ;
  input [0:0]m_select_enc_1;
  input \s_axi_wready[1]_INST_0_i_1 ;
  input [0:0]sa_wm_awvalid;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  input p_18_in;
  input [2:0]s_axi_wlast;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_onehot_gen_axi.write_cs_reg[1] ;
  wire \FSM_onehot_state_reg[1] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [0:0]f_decoder_return;
  wire \gen_axi.s_axi_bvalid_i_reg ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[0] ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire m_aready;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [0:0]m_select_enc_0;
  wire [0:0]m_select_enc_1;
  wire p_18_in;
  wire [2:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_0 ;
  wire \s_axi_wready[1]_INST_0_i_1 ;
  wire [0:0]sa_wm_awvalid;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire wm_mr_wlast_3;
  wire wm_mr_wvalid_3;
  wire [0:0]wr_tmp_wready;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3 \gen_wmux.wmux_aw_fifo 
       (.A(\gen_rep[0].fifoaddr_reg[0] ),
        .D(D),
        .\FSM_onehot_gen_axi.write_cs_reg[1] (\FSM_onehot_gen_axi.write_cs_reg[1] ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .f_decoder_return(f_decoder_return),
        .\gen_axi.s_axi_bvalid_i_reg (\gen_axi.s_axi_bvalid_i_reg ),
        .\gen_rep[0].fifoaddr_reg[0]_0 (\gen_rep[0].fifoaddr_reg[0]_0 ),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1] ),
        .m_aready(m_aready),
        .m_avalid(m_avalid),
        .m_ready_d(m_ready_d),
        .m_select_enc_0(m_select_enc_0),
        .m_select_enc_1(m_select_enc_1),
        .p_18_in(p_18_in),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wready[0]_INST_0_i_1 (\s_axi_wready[0]_INST_0_i_1 ),
        .\s_axi_wready[0]_INST_0_i_1_0 (\s_axi_wready[0]_INST_0_i_1_0 ),
        .\s_axi_wready[1]_INST_0_i_1 (\s_axi_wready[1]_INST_0_i_1 ),
        .sa_wm_awvalid(sa_wm_awvalid),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_1 (m_select_enc[0]),
        .\storage_data1_reg[1]_0 (m_select_enc[1]),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1] ),
        .wm_mr_wlast_3(wm_mr_wlast_3),
        .wm_mr_wvalid_3(wm_mr_wvalid_3),
        .wr_tmp_wready(wr_tmp_wready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_router" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router
   (\s_axi_awaddr[30] ,
    ss_wr_awready_0,
    \storage_data1_reg[1] ,
    s_axi_wready,
    m_aready,
    m_axi_wvalid,
    m_aready_0,
    m_aready_1,
    m_aready_2,
    wm_mr_wvalid_3,
    aclk,
    D,
    areset_d1,
    SR,
    s_axi_awaddr,
    match,
    target_mi_enc,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready_0_sp_1,
    \s_axi_wready[0]_0 ,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wvalid_0_sp_1,
    \m_axi_wvalid[0]_0 ,
    m_avalid,
    m_axi_wvalid_1_sp_1,
    \m_axi_wvalid[1]_0 ,
    m_avalid_3,
    m_axi_wvalid_2_sp_1,
    \m_axi_wvalid[2]_0 ,
    m_avalid_4,
    wm_mr_wlast_3,
    p_18_in,
    \FSM_onehot_gen_axi.write_cs[2]_i_3 ,
    f_decoder_return,
    m_avalid_5,
    ss_wr_awvalid_0);
  output [0:0]\s_axi_awaddr[30] ;
  output ss_wr_awready_0;
  output [0:0]\storage_data1_reg[1] ;
  output [0:0]s_axi_wready;
  output m_aready;
  output [2:0]m_axi_wvalid;
  output m_aready_0;
  output m_aready_1;
  output m_aready_2;
  output wm_mr_wvalid_3;
  input aclk;
  input [0:0]D;
  input areset_d1;
  input [0:0]SR;
  input [1:0]s_axi_awaddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input s_axi_wready_0_sp_1;
  input \s_axi_wready[0]_0 ;
  input [2:0]m_axi_wlast;
  input [2:0]m_axi_wready;
  input m_axi_wvalid_0_sp_1;
  input \m_axi_wvalid[0]_0 ;
  input m_avalid;
  input m_axi_wvalid_1_sp_1;
  input \m_axi_wvalid[1]_0 ;
  input m_avalid_3;
  input m_axi_wvalid_2_sp_1;
  input \m_axi_wvalid[2]_0 ;
  input m_avalid_4;
  input wm_mr_wlast_3;
  input p_18_in;
  input \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  input [0:0]f_decoder_return;
  input m_avalid_5;
  input ss_wr_awvalid_0;

  wire [0:0]D;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [0:0]f_decoder_return;
  wire m_aready;
  wire m_aready_0;
  wire m_aready_1;
  wire m_aready_2;
  wire m_avalid;
  wire m_avalid_3;
  wire m_avalid_4;
  wire m_avalid_5;
  wire [2:0]m_axi_wlast;
  wire [2:0]m_axi_wready;
  wire [2:0]m_axi_wvalid;
  wire \m_axi_wvalid[0]_0 ;
  wire \m_axi_wvalid[1]_0 ;
  wire \m_axi_wvalid[2]_0 ;
  wire m_axi_wvalid_0_sn_1;
  wire m_axi_wvalid_1_sn_1;
  wire m_axi_wvalid_2_sn_1;
  wire [0:0]m_ready_d;
  wire match;
  wire p_18_in;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[30] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire \s_axi_wready[0]_0 ;
  wire s_axi_wready_0_sn_1;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_0;
  wire ss_wr_awvalid_0;
  wire [0:0]\storage_data1_reg[1] ;
  wire [0:0]target_mi_enc;
  wire wm_mr_wlast_3;
  wire wm_mr_wvalid_3;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  assign m_axi_wvalid_1_sn_1 = m_axi_wvalid_1_sp_1;
  assign m_axi_wvalid_2_sn_1 = m_axi_wvalid_2_sp_1;
  assign s_axi_wready_0_sn_1 = s_axi_wready_0_sp_1;
  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_13 wrouter_aw_fifo
       (.D(D),
        .\FSM_onehot_gen_axi.write_cs[2]_i_3 (\FSM_onehot_gen_axi.write_cs[2]_i_3 ),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .f_decoder_return(f_decoder_return),
        .m_aready(m_aready),
        .m_aready_0(m_aready_0),
        .m_aready_1(m_aready_1),
        .m_aready_2(m_aready_2),
        .m_avalid(m_avalid),
        .m_avalid_3(m_avalid_3),
        .m_avalid_4(m_avalid_4),
        .m_avalid_5(m_avalid_5),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_axi_wvalid[0]_0 (\m_axi_wvalid[0]_0 ),
        .\m_axi_wvalid[1]_0 (\m_axi_wvalid[1]_0 ),
        .\m_axi_wvalid[2]_0 (\m_axi_wvalid[2]_0 ),
        .m_axi_wvalid_0_sp_1(m_axi_wvalid_0_sn_1),
        .m_axi_wvalid_1_sp_1(m_axi_wvalid_1_sn_1),
        .m_axi_wvalid_2_sp_1(m_axi_wvalid_2_sn_1),
        .m_ready_d(m_ready_d),
        .match(match),
        .p_18_in(p_18_in),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[30] (\s_axi_awaddr[30] ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[0]_0 (\s_axi_wready[0]_0 ),
        .s_axi_wready_0_sp_1(s_axi_wready_0_sn_1),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(ss_wr_awready_0),
        .ss_wr_awvalid_0(ss_wr_awvalid_0),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .target_mi_enc(target_mi_enc),
        .wm_mr_wlast_3(wm_mr_wlast_3),
        .wm_mr_wvalid_3(wm_mr_wvalid_3));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_router" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router_6
   (\s_axi_awaddr[62] ,
    ss_wr_awready_1,
    \storage_data1_reg[1] ,
    s_axi_wready,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0] ,
    \storage_data1_reg[1]_2 ,
    aclk,
    D,
    areset_d1,
    SR,
    s_axi_awaddr,
    match,
    target_mi_enc,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    \s_axi_wready[1] ,
    \s_axi_wready[1]_0 ,
    m_select_enc,
    tmp_wm_wvalid,
    m_select_enc_0,
    m_select_enc_1,
    m_select_enc_2,
    ss_wr_awvalid_1);
  output [0:0]\s_axi_awaddr[62] ;
  output ss_wr_awready_1;
  output [0:0]\storage_data1_reg[1] ;
  output [0:0]s_axi_wready;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[1]_2 ;
  input aclk;
  input [0:0]D;
  input areset_d1;
  input [0:0]SR;
  input [1:0]s_axi_awaddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input \s_axi_wready[1] ;
  input \s_axi_wready[1]_0 ;
  input [1:0]m_select_enc;
  input [3:0]tmp_wm_wvalid;
  input [1:0]m_select_enc_0;
  input [1:0]m_select_enc_1;
  input [1:0]m_select_enc_2;
  input ss_wr_awvalid_1;

  wire [0:0]D;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_0;
  wire [1:0]m_select_enc_1;
  wire [1:0]m_select_enc_2;
  wire match;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[62] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire \s_axi_wready[1] ;
  wire \s_axi_wready[1]_0 ;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_1;
  wire ss_wr_awvalid_1;
  wire \storage_data1_reg[0] ;
  wire [0:0]\storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire [0:0]target_mi_enc;
  wire [3:0]tmp_wm_wvalid;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo wrouter_aw_fifo
       (.D(D),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_0(m_select_enc_0),
        .m_select_enc_1(m_select_enc_1),
        .m_select_enc_2(m_select_enc_2),
        .match(match),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[62] (\s_axi_awaddr[62] ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[1] (\s_axi_wready[1] ),
        .\s_axi_wready[1]_0 (\s_axi_wready[1]_0 ),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(ss_wr_awready_1),
        .ss_wr_awvalid_1(ss_wr_awvalid_1),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_2 (\storage_data1_reg[1]_1 ),
        .\storage_data1_reg[1]_3 (\storage_data1_reg[1]_2 ),
        .target_mi_enc(target_mi_enc),
        .tmp_wm_wvalid(tmp_wm_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_19_wdata_router" *) 
module mcu_xbar_0_axi_crossbar_v2_1_19_wdata_router__parameterized0
   (areset_d1,
    \s_axi_awaddr[94] ,
    ss_wr_awready_2,
    tmp_wm_wvalid,
    s_axi_wready,
    SR,
    aclk,
    s_axi_awaddr,
    match,
    target_mi_enc,
    D,
    s_axi_awvalid,
    m_ready_d,
    ss_wr_awvalid_2,
    s_axi_wvalid,
    s_axi_wlast,
    m_avalid,
    m_axi_wready,
    \s_axi_wready[2] ,
    m_avalid_0,
    \s_axi_wready[2]_INST_0_i_1 ,
    wr_tmp_wready,
    \s_axi_wready[2]_INST_0_i_1_0 ,
    \s_axi_wready[2]_INST_0_i_1_1 );
  output areset_d1;
  output [0:0]\s_axi_awaddr[94] ;
  output ss_wr_awready_2;
  output [3:0]tmp_wm_wvalid;
  output [0:0]s_axi_wready;
  input [0:0]SR;
  input aclk;
  input [1:0]s_axi_awaddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]D;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input ss_wr_awvalid_2;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input m_avalid;
  input [1:0]m_axi_wready;
  input \s_axi_wready[2] ;
  input m_avalid_0;
  input \s_axi_wready[2]_INST_0_i_1 ;
  input [0:0]wr_tmp_wready;
  input \s_axi_wready[2]_INST_0_i_1_0 ;
  input \s_axi_wready[2]_INST_0_i_1_1 ;

  wire [0:0]D;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire m_avalid;
  wire m_avalid_0;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire match;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[94] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire \s_axi_wready[2] ;
  wire \s_axi_wready[2]_INST_0_i_1 ;
  wire \s_axi_wready[2]_INST_0_i_1_0 ;
  wire \s_axi_wready[2]_INST_0_i_1_1 ;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_2;
  wire ss_wr_awvalid_2;
  wire [0:0]target_mi_enc;
  wire [3:0]tmp_wm_wvalid;
  wire [0:0]wr_tmp_wready;

  mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0 wrouter_aw_fifo
       (.D(D),
        .SR(SR),
        .SS(areset_d1),
        .aclk(aclk),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .match(match),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[94] (\s_axi_awaddr[94] ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[2] (\s_axi_wready[2] ),
        .\s_axi_wready[2]_INST_0_i_1 (\s_axi_wready[2]_INST_0_i_1 ),
        .\s_axi_wready[2]_INST_0_i_1_0 (\s_axi_wready[2]_INST_0_i_1_0 ),
        .\s_axi_wready[2]_INST_0_i_1_1 (\s_axi_wready[2]_INST_0_i_1_1 ),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(ss_wr_awready_2),
        .ss_wr_awvalid_2(ss_wr_awvalid_2),
        .target_mi_enc(target_mi_enc),
        .tmp_wm_wvalid(tmp_wm_wvalid),
        .wr_tmp_wready(wr_tmp_wready));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo
   (\s_axi_awaddr[62] ,
    s_ready_i_reg_0,
    \storage_data1_reg[1]_0 ,
    s_axi_wready,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[1]_2 ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[1]_3 ,
    aclk,
    D,
    areset_d1,
    SR,
    s_axi_awaddr,
    match,
    target_mi_enc,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    \s_axi_wready[1] ,
    \s_axi_wready[1]_0 ,
    m_select_enc,
    tmp_wm_wvalid,
    m_select_enc_0,
    m_select_enc_1,
    m_select_enc_2,
    ss_wr_awvalid_1);
  output [0:0]\s_axi_awaddr[62] ;
  output s_ready_i_reg_0;
  output \storage_data1_reg[1]_0 ;
  output [0:0]s_axi_wready;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[1]_2 ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[1]_3 ;
  input aclk;
  input [0:0]D;
  input areset_d1;
  input [0:0]SR;
  input [1:0]s_axi_awaddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input \s_axi_wready[1] ;
  input \s_axi_wready[1]_0 ;
  input [1:0]m_select_enc;
  input [3:0]tmp_wm_wvalid;
  input [1:0]m_select_enc_0;
  input [1:0]m_select_enc_1;
  input [1:0]m_select_enc_2;
  input ss_wr_awvalid_1;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_state[1]_i_3__0_n_0 ;
  wire \FSM_onehot_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_3__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_3__0_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[2].srl_nx1_n_2 ;
  wire \gen_srls[0].gen_rep[2].srl_nx1_n_3 ;
  wire load_s1;
  wire m_avalid;
  wire \m_axi_wvalid[2]_INST_0_i_4_n_0 ;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire [1:0]m_select_enc_0;
  wire [1:0]m_select_enc_1;
  wire [1:0]m_select_enc_2;
  wire [2:0]m_select_enc_3;
  wire m_valid_i;
  wire m_valid_i_i_1__0_n_0;
  wire match;
  wire p_0_in8_in;
  wire p_0_out;
  wire p_3_out;
  wire p_9_in;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[62] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire \s_axi_wready[1] ;
  wire \s_axi_wready[1]_0 ;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_i_2__0_n_0;
  wire s_ready_i_reg_0;
  wire ss_wr_awvalid_1;
  wire \storage_data1[0]_i_1__0_n_0 ;
  wire \storage_data1[2]_i_1__0_n_0 ;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;
  wire \storage_data1_reg[1]_3 ;
  wire [0:0]target_mi_enc;
  wire [3:0]tmp_wm_wvalid;

  LUT6 #(
    .INIT(64'h0008FF0000080000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_6 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(m_select_enc_3[0]),
        .I2(\m_axi_wvalid[2]_INST_0_i_4_n_0 ),
        .I3(m_select_enc_2[1]),
        .I4(m_select_enc_2[0]),
        .I5(tmp_wm_wvalid[3]),
        .O(\storage_data1_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'hF020)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d),
        .I2(p_0_in8_in),
        .I3(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(fifoaddr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(fifoaddr[1]),
        .I4(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .I5(\FSM_onehot_state[1]_i_3__0_n_0 ),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(s_ready_i_reg_0),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(\FSM_onehot_state[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[1]_i_3__0 
       (.I0(p_9_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(\FSM_onehot_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h55F555E544F44444)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I2(s_axi_awvalid),
        .I3(m_ready_d),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d),
        .I2(p_0_in8_in),
        .I3(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0404000404040404)) 
    \FSM_onehot_state[3]_i_3__0 
       (.I0(fifoaddr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[1]),
        .I3(s_axi_awvalid),
        .I4(m_ready_d),
        .I5(s_ready_i_reg_0),
        .O(\FSM_onehot_state[3]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(p_0_in8_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h5B1B7BBBA4E48444)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ss_wr_awvalid_1),
        .I3(s_ready_i_reg_0),
        .I4(p_0_in8_in),
        .I5(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDFCFFFFFCDD0000)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(ss_wr_awvalid_1),
        .I1(\gen_rep[0].fifoaddr[1]_i_3__0_n_0 ),
        .I2(push),
        .I3(fifoaddr[0]),
        .I4(p_0_out),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000099909990999)) 
    \gen_rep[0].fifoaddr[1]_i_3__0 
       (.I0(fifoaddr[0]),
        .I1(fifoaddr[1]),
        .I2(s_ready_i_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(p_0_in8_in),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\gen_rep[0].fifoaddr[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0E000A00F3FF0000)) 
    \gen_rep[0].fifoaddr[1]_i_4__0 
       (.I0(p_0_in8_in),
        .I1(s_ready_i_reg_0),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(p_0_out));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl \gen_srls[0].gen_rep[0].srl_nx1 
       (.aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_rep[0].fifoaddr_reg[1] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .match(match),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[62] (\s_axi_awaddr[62] ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11 \gen_srls[0].gen_rep[1].srl_nx1 
       (.D(D),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .match(match),
        .push(push),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ),
        .target_mi_enc(target_mi_enc));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12 \gen_srls[0].gen_rep[2].srl_nx1 
       (.Q({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .m_avalid(m_avalid),
        .m_ready_d(m_ready_d),
        .m_select_enc_3({m_select_enc_3[2],m_select_enc_3[0]}),
        .p_3_out(p_3_out),
        .push(push),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wlast[1] (\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .\s_axi_wready[1] (\s_axi_wready[1] ),
        .\s_axi_wready[1]_0 (\s_axi_wready[1]_0 ),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(s_ready_i_reg_0),
        .\storage_data1_reg[0] (\gen_srls[0].gen_rep[2].srl_nx1_n_3 ));
  LUT6 #(
    .INIT(64'h0001FF0000010000)) 
    \m_axi_wvalid[0]_INST_0_i_1 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(m_select_enc_3[0]),
        .I2(\m_axi_wvalid[2]_INST_0_i_4_n_0 ),
        .I3(m_select_enc[1]),
        .I4(m_select_enc[0]),
        .I5(tmp_wm_wvalid[0]),
        .O(\storage_data1_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0004FF0000040000)) 
    \m_axi_wvalid[1]_INST_0_i_1 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(m_select_enc_3[0]),
        .I2(\m_axi_wvalid[2]_INST_0_i_4_n_0 ),
        .I3(m_select_enc_0[1]),
        .I4(m_select_enc_0[0]),
        .I5(tmp_wm_wvalid[1]),
        .O(\storage_data1_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0004FF0000040000)) 
    \m_axi_wvalid[2]_INST_0_i_1 
       (.I0(m_select_enc_3[0]),
        .I1(\storage_data1_reg[1]_0 ),
        .I2(\m_axi_wvalid[2]_INST_0_i_4_n_0 ),
        .I3(m_select_enc_1[1]),
        .I4(m_select_enc_1[0]),
        .I5(tmp_wm_wvalid[2]),
        .O(\storage_data1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \m_axi_wvalid[2]_INST_0_i_4 
       (.I0(m_avalid),
        .I1(m_select_enc_3[2]),
        .I2(s_axi_wvalid),
        .O(\m_axi_wvalid[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E00FFFF0C00)) 
    m_valid_i_i_1__0
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(m_valid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__0_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_wready[1]_INST_0 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_3 ),
        .I1(m_avalid),
        .I2(m_select_enc_3[2]),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFFFEFFFEEEEEEEE)) 
    s_ready_i_i_1__0
       (.I0(s_ready_i_i_2__0_n_0),
        .I1(areset_d1),
        .I2(push),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_ready_i_i_2__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(s_ready_i_i_2__0_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(s_ready_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__0 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\s_axi_awaddr[62] ),
        .I3(load_s1),
        .I4(m_select_enc_3[0]),
        .O(\storage_data1[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \storage_data1[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_3_out),
        .I2(load_s1),
        .I3(m_select_enc_3[2]),
        .O(\storage_data1[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0ACF0A0A0ACE0A0A)) 
    \storage_data1[2]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I3(m_ready_d),
        .I4(s_axi_awvalid),
        .I5(p_0_in8_in),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1__0_n_0 ),
        .Q(m_select_enc_3[0]),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[2]_i_1__0_n_0 ),
        .Q(m_select_enc_3[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo_13
   (\s_axi_awaddr[30] ,
    s_ready_i_reg_0,
    \storage_data1_reg[1]_0 ,
    s_axi_wready,
    m_aready,
    m_axi_wvalid,
    m_aready_0,
    m_aready_1,
    m_aready_2,
    wm_mr_wvalid_3,
    aclk,
    D,
    areset_d1,
    SR,
    s_axi_awaddr,
    match,
    target_mi_enc,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready_0_sp_1,
    \s_axi_wready[0]_0 ,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wvalid_0_sp_1,
    \m_axi_wvalid[0]_0 ,
    m_avalid,
    m_axi_wvalid_1_sp_1,
    \m_axi_wvalid[1]_0 ,
    m_avalid_3,
    m_axi_wvalid_2_sp_1,
    \m_axi_wvalid[2]_0 ,
    m_avalid_4,
    wm_mr_wlast_3,
    p_18_in,
    \FSM_onehot_gen_axi.write_cs[2]_i_3 ,
    f_decoder_return,
    m_avalid_5,
    ss_wr_awvalid_0);
  output [0:0]\s_axi_awaddr[30] ;
  output s_ready_i_reg_0;
  output \storage_data1_reg[1]_0 ;
  output [0:0]s_axi_wready;
  output m_aready;
  output [2:0]m_axi_wvalid;
  output m_aready_0;
  output m_aready_1;
  output m_aready_2;
  output wm_mr_wvalid_3;
  input aclk;
  input [0:0]D;
  input areset_d1;
  input [0:0]SR;
  input [1:0]s_axi_awaddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input s_axi_wready_0_sp_1;
  input \s_axi_wready[0]_0 ;
  input [2:0]m_axi_wlast;
  input [2:0]m_axi_wready;
  input m_axi_wvalid_0_sp_1;
  input \m_axi_wvalid[0]_0 ;
  input m_avalid;
  input m_axi_wvalid_1_sp_1;
  input \m_axi_wvalid[1]_0 ;
  input m_avalid_3;
  input m_axi_wvalid_2_sp_1;
  input \m_axi_wvalid[2]_0 ;
  input m_avalid_4;
  input wm_mr_wlast_3;
  input p_18_in;
  input \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  input [0:0]f_decoder_return;
  input m_avalid_5;
  input ss_wr_awvalid_0;

  wire [0:0]D;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_3 ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [0:0]f_decoder_return;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_3_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[2].srl_nx1_n_2 ;
  wire \gen_srls[0].gen_rep[2].srl_nx1_n_3 ;
  wire load_s1;
  wire m_aready;
  wire m_aready_0;
  wire m_aready_1;
  wire m_aready_2;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_3;
  wire m_avalid_4;
  wire m_avalid_5;
  wire [2:0]m_axi_wlast;
  wire [2:0]m_axi_wready;
  wire [2:0]m_axi_wvalid;
  wire \m_axi_wvalid[0]_0 ;
  wire \m_axi_wvalid[1]_0 ;
  wire \m_axi_wvalid[2]_0 ;
  wire \m_axi_wvalid[2]_INST_0_i_2_n_0 ;
  wire m_axi_wvalid_0_sn_1;
  wire m_axi_wvalid_1_sn_1;
  wire m_axi_wvalid_2_sn_1;
  wire [0:0]m_ready_d;
  wire [2:0]m_select_enc;
  wire m_valid_i;
  wire m_valid_i_i_1_n_0;
  wire match;
  wire p_0_in8_in;
  wire p_0_out;
  wire p_18_in;
  wire p_3_out;
  wire p_9_in;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[30] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire \s_axi_wready[0]_0 ;
  wire s_axi_wready_0_sn_1;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_i_2_n_0;
  wire s_ready_i_reg_0;
  wire ss_wr_awvalid_0;
  wire \storage_data1[0]_i_1_n_0 ;
  wire \storage_data1[2]_i_1_n_0 ;
  wire \storage_data1_reg[1]_0 ;
  wire [0:0]target_mi_enc;
  wire wm_mr_wlast_3;
  wire wm_mr_wvalid_3;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  assign m_axi_wvalid_1_sn_1 = m_axi_wvalid_1_sp_1;
  assign m_axi_wvalid_2_sn_1 = m_axi_wvalid_2_sp_1;
  assign s_axi_wready_0_sn_1 = s_axi_wready_0_sp_1;
  LUT6 #(
    .INIT(64'hBAAAAAAA00000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_5 
       (.I0(\FSM_onehot_gen_axi.write_cs[2]_i_3 ),
        .I1(\m_axi_wvalid[2]_INST_0_i_2_n_0 ),
        .I2(m_select_enc[0]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(f_decoder_return),
        .I5(m_avalid_5),
        .O(wm_mr_wvalid_3));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'hF020)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d),
        .I2(p_0_in8_in),
        .I3(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(fifoaddr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(fifoaddr[1]),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(\FSM_onehot_state[1]_i_3_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_ready_i_reg_0),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(p_9_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55F555E544F44444)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(\FSM_onehot_state[3]_i_3_n_0 ),
        .I2(s_axi_awvalid),
        .I3(m_ready_d),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d),
        .I2(p_0_in8_in),
        .I3(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404000404040404)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(fifoaddr[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[1]),
        .I3(s_axi_awvalid),
        .I4(m_ready_d),
        .I5(s_ready_i_reg_0),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__2 
       (.I0(m_axi_wvalid[0]),
        .I1(m_axi_wlast[0]),
        .I2(m_axi_wready[0]),
        .O(m_aready));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__3 
       (.I0(m_axi_wvalid[1]),
        .I1(m_axi_wlast[1]),
        .I2(m_axi_wready[1]),
        .O(m_aready_0));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__4 
       (.I0(m_axi_wvalid[2]),
        .I1(m_axi_wlast[2]),
        .I2(m_axi_wready[2]),
        .O(m_aready_1));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__5 
       (.I0(wm_mr_wvalid_3),
        .I1(wm_mr_wlast_3),
        .I2(p_18_in),
        .O(m_aready_2));
  LUT6 #(
    .INIT(64'h5B1B7BBBA4E48444)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ss_wr_awvalid_0),
        .I3(s_ready_i_reg_0),
        .I4(p_0_in8_in),
        .I5(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDFCFFFFFCDD0000)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(ss_wr_awvalid_0),
        .I1(\gen_rep[0].fifoaddr[1]_i_3_n_0 ),
        .I2(push),
        .I3(fifoaddr[0]),
        .I4(p_0_out),
        .I5(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000099909990999)) 
    \gen_rep[0].fifoaddr[1]_i_3 
       (.I0(fifoaddr[0]),
        .I1(fifoaddr[1]),
        .I2(s_ready_i_reg_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(p_0_in8_in),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\gen_rep[0].fifoaddr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E000A00F3FF0000)) 
    \gen_rep[0].fifoaddr[1]_i_4 
       (.I0(p_0_in8_in),
        .I1(s_ready_i_reg_0),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(p_0_out));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_14 \gen_srls[0].gen_rep[0].srl_nx1 
       (.aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_rep[0].fifoaddr_reg[1] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .match(match),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[30] (\s_axi_awaddr[30] ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_15 \gen_srls[0].gen_rep[1].srl_nx1 
       (.D(D),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .match(match),
        .push(push),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ),
        .target_mi_enc(target_mi_enc));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_16 \gen_srls[0].gen_rep[2].srl_nx1 
       (.Q({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .m_avalid_0(m_avalid_0),
        .m_ready_d(m_ready_d),
        .m_select_enc({m_select_enc[2],m_select_enc[0]}),
        .p_3_out(p_3_out),
        .push(push),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wlast_0_sp_1(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .\s_axi_wready[0] (s_axi_wready_0_sn_1),
        .\s_axi_wready[0]_0 (\s_axi_wready[0]_0 ),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(s_ready_i_reg_0),
        .\storage_data1_reg[0] (\gen_srls[0].gen_rep[2].srl_nx1_n_3 ));
  LUT6 #(
    .INIT(64'hAAABAAAA00000000)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(m_axi_wvalid_0_sn_1),
        .I1(\m_axi_wvalid[2]_INST_0_i_2_n_0 ),
        .I2(m_select_enc[0]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\m_axi_wvalid[0]_0 ),
        .I5(m_avalid),
        .O(m_axi_wvalid[0]));
  LUT6 #(
    .INIT(64'hAABAAAAA00000000)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(m_axi_wvalid_1_sn_1),
        .I1(\m_axi_wvalid[2]_INST_0_i_2_n_0 ),
        .I2(m_select_enc[0]),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(\m_axi_wvalid[1]_0 ),
        .I5(m_avalid_3),
        .O(m_axi_wvalid[1]));
  LUT6 #(
    .INIT(64'hAABAAAAA00000000)) 
    \m_axi_wvalid[2]_INST_0 
       (.I0(m_axi_wvalid_2_sn_1),
        .I1(\m_axi_wvalid[2]_INST_0_i_2_n_0 ),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc[0]),
        .I4(\m_axi_wvalid[2]_0 ),
        .I5(m_avalid_4),
        .O(m_axi_wvalid[2]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \m_axi_wvalid[2]_INST_0_i_2 
       (.I0(m_avalid_0),
        .I1(m_select_enc[2]),
        .I2(s_axi_wvalid),
        .O(\m_axi_wvalid[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E00FFFF0C00)) 
    m_valid_i_i_1
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_state[3]_i_3_n_0 ),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1_n_0),
        .Q(m_avalid_0),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_wready[0]_INST_0 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_3 ),
        .I1(m_avalid_0),
        .I2(m_select_enc[2]),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFFFEFFFEEEEEEEE)) 
    s_ready_i_i_1
       (.I0(s_ready_i_i_2_n_0),
        .I1(areset_d1),
        .I2(push),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_ready_i_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(s_ready_i_i_2_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\s_axi_awaddr[30] ),
        .I3(load_s1),
        .I4(m_select_enc[0]),
        .O(\storage_data1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \storage_data1[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_3_out),
        .I2(load_s1),
        .I3(m_select_enc[2]),
        .O(\storage_data1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0ACF0A0A0ACE0A0A)) 
    \storage_data1[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I3(m_ready_d),
        .I4(s_axi_awvalid),
        .I5(p_0_in8_in),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1_n_0 ),
        .Q(m_select_enc[0]),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[2]_i_1_n_0 ),
        .Q(m_select_enc[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized0
   (SS,
    \s_axi_awaddr[94] ,
    s_ready_i_reg_0,
    tmp_wm_wvalid,
    s_axi_wready,
    SR,
    aclk,
    s_axi_awaddr,
    match,
    target_mi_enc,
    D,
    s_axi_awvalid,
    m_ready_d,
    ss_wr_awvalid_2,
    s_axi_wvalid,
    s_axi_wlast,
    m_avalid,
    m_axi_wready,
    \s_axi_wready[2] ,
    m_avalid_0,
    \s_axi_wready[2]_INST_0_i_1 ,
    wr_tmp_wready,
    \s_axi_wready[2]_INST_0_i_1_0 ,
    \s_axi_wready[2]_INST_0_i_1_1 );
  output [0:0]SS;
  output [0:0]\s_axi_awaddr[94] ;
  output s_ready_i_reg_0;
  output [3:0]tmp_wm_wvalid;
  output [0:0]s_axi_wready;
  input [0:0]SR;
  input aclk;
  input [1:0]s_axi_awaddr;
  input match;
  input [0:0]target_mi_enc;
  input [0:0]D;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input ss_wr_awvalid_2;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input m_avalid;
  input [1:0]m_axi_wready;
  input \s_axi_wready[2] ;
  input m_avalid_0;
  input \s_axi_wready[2]_INST_0_i_1 ;
  input [0:0]wr_tmp_wready;
  input \s_axi_wready[2]_INST_0_i_1_0 ;
  input \s_axi_wready[2]_INST_0_i_1_1 ;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1__1_n_0 ;
  wire \FSM_onehot_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_state[1]_i_2__1_n_0 ;
  wire \FSM_onehot_state[3]_i_2__1_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire [4:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[4]_i_2_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[2].srl_nx1_n_2 ;
  wire \gen_srls[0].gen_rep[2].srl_nx1_n_3 ;
  wire load_s1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire [2:0]m_select_enc;
  wire m_valid_i;
  wire m_valid_i_i_1__1_n_0;
  wire m_valid_i_i_2_n_0;
  wire match;
  wire p_0_in8_in;
  wire p_0_out;
  wire p_3_out;
  wire p_9_in;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[94] ;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire \s_axi_wready[2] ;
  wire \s_axi_wready[2]_INST_0_i_1 ;
  wire \s_axi_wready[2]_INST_0_i_1_0 ;
  wire \s_axi_wready[2]_INST_0_i_1_1 ;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1__1_n_0;
  wire s_ready_i_i_2__1_n_0;
  wire s_ready_i_reg_0;
  wire ss_wr_awvalid_2;
  wire \storage_data1[0]_i_1__1_n_0 ;
  wire \storage_data1[2]_i_1__1_n_0 ;
  wire [0:0]target_mi_enc;
  wire [3:0]tmp_wm_wvalid;
  wire [0:0]wr_tmp_wready;

  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_8 
       (.I0(m_select_enc[0]),
        .I1(m_select_enc[2]),
        .I2(m_select_enc[1]),
        .I3(s_axi_wvalid),
        .I4(m_avalid_1),
        .O(tmp_wm_wvalid[3]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h88A8)) 
    \FSM_onehot_state[0]_i_1__1 
       (.I0(p_0_in8_in),
        .I1(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I2(s_axi_awvalid),
        .I3(m_ready_d),
        .O(\FSM_onehot_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h30303030AABA3030)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(p_9_in),
        .I1(\FSM_onehot_state[3]_i_4_n_0 ),
        .I2(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I3(s_ready_i_reg_0),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(\FSM_onehot_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCCBFBB8F888F88)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(p_9_in),
        .I1(ss_wr_awvalid_2),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\FSM_onehot_state[3]_i_5_n_0 ),
        .I4(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  LUT4 #(
    .INIT(16'h2202)) 
    \FSM_onehot_state[3]_i_2__1 
       (.I0(p_0_in8_in),
        .I1(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I2(s_axi_awvalid),
        .I3(m_ready_d),
        .O(\FSM_onehot_state[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(fifoaddr[3]),
        .I1(fifoaddr[4]),
        .I2(fifoaddr[1]),
        .I3(fifoaddr[2]),
        .I4(fifoaddr[0]),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'h44440444)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_ready_i_reg_0),
        .I3(s_axi_awvalid),
        .I4(m_ready_d),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .Q(p_0_in8_in),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__1_n_0 ),
        .Q(p_9_in),
        .S(SS));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(SS),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[1]_i_1__2 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_rep[0].fifoaddr[2]_i_1 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_rep[0].fifoaddr[3]_i_1__1 
       (.I0(fifoaddr[3]),
        .I1(fifoaddr[2]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .I4(push),
        .O(\gen_rep[0].fifoaddr[3]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[4]_i_1 
       (.I0(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I1(push),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_rep[0].fifoaddr[4]_i_2 
       (.I0(fifoaddr[4]),
        .I1(fifoaddr[2]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .I4(push),
        .I5(fifoaddr[3]),
        .O(\gen_rep[0].fifoaddr[4]_i_2_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[1]_i_1__2_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[3]_i_1__1_n_0 ),
        .Q(fifoaddr[3]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[4] 
       (.C(aclk),
        .CE(p_0_out),
        .D(\gen_rep[0].fifoaddr[4]_i_2_n_0 ),
        .Q(fifoaddr[4]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q(fifoaddr),
        .aclk(aclk),
        .\gen_rep[0].fifoaddr_reg[4] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .match(match),
        .push(push),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[94] (\s_axi_awaddr[94] ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_9 \gen_srls[0].gen_rep[1].srl_nx1 
       (.D(D),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_0 ),
        .Q(fifoaddr),
        .aclk(aclk),
        .load_s1(load_s1),
        .m_select_enc(m_select_enc[1]),
        .match(match),
        .push(push),
        .\storage_data1_reg[1] (\FSM_onehot_state_reg_n_0_[0] ),
        .target_mi_enc(target_mi_enc));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_10 \gen_srls[0].gen_rep[2].srl_nx1 
       (.Q(fifoaddr),
        .aclk(aclk),
        .\gen_rep[0].fifoaddr_reg[1] ({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .\gen_rep[0].fifoaddr_reg[1]_0 (s_ready_i_reg_0),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_avalid_1(m_avalid_1),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_valid_i_reg(\gen_srls[0].gen_rep[2].srl_nx1_n_3 ),
        .p_3_out(p_3_out),
        .push(push),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wlast[2] (\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .\s_axi_wready[2] (\s_axi_wready[2] ),
        .\s_axi_wready[2]_INST_0_i_1_0 (\s_axi_wready[2]_INST_0_i_1 ),
        .\s_axi_wready[2]_INST_0_i_1_1 (\s_axi_wready[2]_INST_0_i_1_0 ),
        .\s_axi_wready[2]_INST_0_i_1_2 (\s_axi_wready[2]_INST_0_i_1_1 ),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_tmp_wready(wr_tmp_wready));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \m_axi_wvalid[0]_INST_0_i_3 
       (.I0(m_select_enc[2]),
        .I1(m_select_enc[1]),
        .I2(m_select_enc[0]),
        .I3(s_axi_wvalid),
        .I4(m_avalid_1),
        .O(tmp_wm_wvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \m_axi_wvalid[1]_INST_0_i_3 
       (.I0(m_select_enc[0]),
        .I1(m_select_enc[2]),
        .I2(m_select_enc[1]),
        .I3(s_axi_wvalid),
        .I4(m_avalid_1),
        .O(tmp_wm_wvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \m_axi_wvalid[2]_INST_0_i_5 
       (.I0(m_select_enc[2]),
        .I1(m_select_enc[1]),
        .I2(m_select_enc[0]),
        .I3(s_axi_wvalid),
        .I4(m_avalid_1),
        .O(tmp_wm_wvalid[2]));
  LUT6 #(
    .INIT(64'hEEEEFFEEAAAABFAA)) 
    m_valid_i_i_1__1
       (.I0(m_valid_i_i_2_n_0),
        .I1(ss_wr_awvalid_2),
        .I2(s_ready_i_reg_0),
        .I3(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I4(\FSM_onehot_state[3]_i_4_n_0 ),
        .I5(p_9_in),
        .O(m_valid_i_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    m_valid_i_i_2
       (.I0(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .I1(p_0_in8_in),
        .I2(s_axi_awvalid),
        .I3(m_ready_d),
        .O(m_valid_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__1_n_0),
        .Q(m_avalid_1),
        .R(SS));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[2]_INST_0 
       (.I0(m_avalid_1),
        .I1(\gen_srls[0].gen_rep[2].srl_nx1_n_3 ),
        .O(s_axi_wready));
  LUT5 #(
    .INIT(32'hFEFFEEEE)) 
    s_ready_i_i_1__1
       (.I0(\FSM_onehot_state[1]_i_2__1_n_0 ),
        .I1(SS),
        .I2(s_ready_i_i_2__1_n_0),
        .I3(push),
        .I4(s_ready_i_reg_0),
        .O(s_ready_i_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    s_ready_i_i_2__1
       (.I0(fifoaddr[3]),
        .I1(fifoaddr[4]),
        .I2(fifoaddr[1]),
        .I3(fifoaddr[2]),
        .I4(fifoaddr[0]),
        .O(s_ready_i_i_2__1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__1_n_0),
        .Q(s_ready_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__1 
       (.I0(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\s_axi_awaddr[94] ),
        .I3(load_s1),
        .I4(m_select_enc[0]),
        .O(\storage_data1[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \storage_data1[2]_i_1__1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_3_out),
        .I2(load_s1),
        .I3(m_select_enc[2]),
        .O(\storage_data1[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA00CCCCFECC)) 
    \storage_data1[2]_i_2__1 
       (.I0(p_9_in),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(p_0_in8_in),
        .I3(s_axi_awvalid),
        .I4(m_ready_d),
        .I5(\gen_srls[0].gen_rep[2].srl_nx1_n_2 ),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1__1_n_0 ),
        .Q(m_select_enc[0]),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_0 ),
        .Q(m_select_enc[1]),
        .R(1'b0));
  FDRE \storage_data1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[2]_i_1__1_n_0 ),
        .Q(m_select_enc[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1
   (m_avalid,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    m_valid_i_reg_0,
    \m_axi_wready[2] ,
    Q,
    m_axi_wlast,
    \storage_data1_reg[1]_2 ,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    m_select_enc_0,
    \s_axi_wready[0]_INST_0_i_1 ,
    \s_axi_wready[0]_INST_0_i_1_0 ,
    m_axi_wready,
    m_select_enc_1,
    \s_axi_wready[1]_INST_0_i_1 ,
    sa_wm_awvalid,
    m_aready,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    s_axi_wlast,
    D,
    SR,
    E,
    s_axi_wstrb,
    s_axi_wdata);
  output m_avalid;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  output m_valid_i_reg_0;
  output \m_axi_wready[2] ;
  output [1:0]Q;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1]_2 ;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input [0:0]m_select_enc_0;
  input \s_axi_wready[0]_INST_0_i_1 ;
  input \s_axi_wready[0]_INST_0_i_1_0 ;
  input [0:0]m_axi_wready;
  input [0:0]m_select_enc_1;
  input \s_axi_wready[1]_INST_0_i_1 ;
  input [0:0]sa_wm_awvalid;
  input m_aready;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  input [2:0]s_axi_wlast;
  input [1:0]D;
  input [0:0]SR;
  input [0:0]E;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__4_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [4:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__2_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[4]_i_2__1_n_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire load_s1;
  wire m_aready;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire \m_axi_wready[2] ;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire [0:0]m_select_enc_0;
  wire [0:0]m_select_enc_1;
  wire m_valid_i;
  wire m_valid_i_i_1__6_n_0;
  wire m_valid_i_reg_0;
  wire p_7_in;
  wire push;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_0 ;
  wire \s_axi_wready[1]_INST_0_i_1 ;
  wire \s_axi_wready[1]_INST_0_i_4_n_0 ;
  wire [11:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid;
  wire state2;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;

  LUT5 #(
    .INIT(32'hFF800080)) 
    \FSM_onehot_state[1]_i_1__4 
       (.I0(state2),
        .I1(Q[0]),
        .I2(m_aready),
        .I3(sa_wm_awvalid),
        .I4(p_7_in),
        .O(\FSM_onehot_state[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hEEECECEC62606060)) 
    \FSM_onehot_state[3]_i_1__4 
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(p_7_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[3]_i_4__2 
       (.I0(fifoaddr[3]),
        .I1(fifoaddr[1]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[4]),
        .I4(fifoaddr[2]),
        .O(state2));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[0]),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__4_n_0 ),
        .Q(Q[1]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[1]),
        .Q(p_7_in),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__2 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[1]_i_1__1 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_rep[0].fifoaddr[2]_i_1__2 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_rep[0].fifoaddr[3]_i_1__0 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[1]),
        .I3(fifoaddr[3]),
        .I4(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \gen_rep[0].fifoaddr[4]_i_2__1 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(push),
        .I3(fifoaddr[2]),
        .I4(fifoaddr[4]),
        .I5(fifoaddr[3]),
        .O(\gen_rep[0].fifoaddr[4]_i_2__1_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[0]_i_1__2_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[1]_i_1__1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[2]_i_1__2_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[3]_i_1__0_n_0 ),
        .Q(fifoaddr[3]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[4]_i_2__1_n_0 ),
        .Q(fifoaddr[4]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_21 \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(fifoaddr),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .load_s1(load_s1),
        .push(push),
        .\storage_data1_reg[0] (Q[0]),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_22 \gen_srls[0].gen_rep[1].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(fifoaddr),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .\gen_rep[0].fifoaddr_reg[1] (Q),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1]_0 ),
        .load_s1(load_s1),
        .m_aready(m_aready),
        .m_axi_wlast(m_axi_wlast),
        .\m_axi_wlast[2] (\storage_data1_reg[0]_0 ),
        .m_ready_d(m_ready_d),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_2 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[64]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[32]),
        .I4(s_axi_wdata[64]),
        .O(m_axi_wdata[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[65]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[33]),
        .I4(s_axi_wdata[65]),
        .O(m_axi_wdata[1]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[66]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[34]),
        .I4(s_axi_wdata[66]),
        .O(m_axi_wdata[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[67]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[35]),
        .I4(s_axi_wdata[67]),
        .O(m_axi_wdata[3]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[68]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[36]),
        .I4(s_axi_wdata[68]),
        .O(m_axi_wdata[4]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[69]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[37]),
        .I4(s_axi_wdata[69]),
        .O(m_axi_wdata[5]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[70]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[38]),
        .I4(s_axi_wdata[70]),
        .O(m_axi_wdata[6]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[71]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[39]),
        .I4(s_axi_wdata[71]),
        .O(m_axi_wdata[7]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[72]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[40]),
        .I4(s_axi_wdata[72]),
        .O(m_axi_wdata[8]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[73]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[41]),
        .I4(s_axi_wdata[73]),
        .O(m_axi_wdata[9]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[74]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[42]),
        .I4(s_axi_wdata[74]),
        .O(m_axi_wdata[10]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[75]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[43]),
        .I4(s_axi_wdata[75]),
        .O(m_axi_wdata[11]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[76]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[44]),
        .I4(s_axi_wdata[76]),
        .O(m_axi_wdata[12]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[77]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[45]),
        .I4(s_axi_wdata[77]),
        .O(m_axi_wdata[13]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[78]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[46]),
        .I4(s_axi_wdata[78]),
        .O(m_axi_wdata[14]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[79]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[47]),
        .I4(s_axi_wdata[79]),
        .O(m_axi_wdata[15]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[80]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[48]),
        .I4(s_axi_wdata[80]),
        .O(m_axi_wdata[16]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[81]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[49]),
        .I4(s_axi_wdata[81]),
        .O(m_axi_wdata[17]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[82]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[50]),
        .I4(s_axi_wdata[82]),
        .O(m_axi_wdata[18]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[83]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[51]),
        .I4(s_axi_wdata[83]),
        .O(m_axi_wdata[19]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[84]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[52]),
        .I4(s_axi_wdata[84]),
        .O(m_axi_wdata[20]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[85]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[53]),
        .I4(s_axi_wdata[85]),
        .O(m_axi_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[86]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[54]),
        .I4(s_axi_wdata[86]),
        .O(m_axi_wdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[87]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[55]),
        .I4(s_axi_wdata[87]),
        .O(m_axi_wdata[23]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[88]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[56]),
        .I4(s_axi_wdata[88]),
        .O(m_axi_wdata[24]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[89]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[57]),
        .I4(s_axi_wdata[89]),
        .O(m_axi_wdata[25]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[90]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[58]),
        .I4(s_axi_wdata[90]),
        .O(m_axi_wdata[26]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[91]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[59]),
        .I4(s_axi_wdata[91]),
        .O(m_axi_wdata[27]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[92]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[60]),
        .I4(s_axi_wdata[92]),
        .O(m_axi_wdata[28]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[93]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[61]),
        .I4(s_axi_wdata[93]),
        .O(m_axi_wdata[29]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[94]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[62]),
        .I4(s_axi_wdata[94]),
        .O(m_axi_wdata[30]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[95]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[63]),
        .I4(s_axi_wdata[95]),
        .O(m_axi_wdata[31]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[10]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[6]),
        .I4(s_axi_wstrb[10]),
        .O(m_axi_wstrb[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[11]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[7]),
        .I4(s_axi_wstrb[11]),
        .O(m_axi_wstrb[3]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[8]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[4]),
        .I4(s_axi_wstrb[8]),
        .O(m_axi_wstrb[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[9]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[5]),
        .I4(s_axi_wstrb[9]),
        .O(m_axi_wstrb[1]));
  LUT6 #(
    .INIT(64'hEECCCCCC62404040)) 
    m_valid_i_i_1__6
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(p_7_in),
        .O(m_valid_i_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__6_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \s_axi_wready[0]_INST_0_i_2 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(m_valid_i_reg_0),
        .I3(m_select_enc_0),
        .I4(\s_axi_wready[0]_INST_0_i_1 ),
        .I5(\s_axi_wready[0]_INST_0_i_1_0 ),
        .O(\storage_data1_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h80FF800080008000)) 
    \s_axi_wready[1]_INST_0_i_2 
       (.I0(\s_axi_wready[1]_INST_0_i_4_n_0 ),
        .I1(m_axi_wready),
        .I2(m_avalid),
        .I3(m_select_enc_1),
        .I4(\s_axi_wready[1]_INST_0_i_1 ),
        .I5(\s_axi_wready[0]_INST_0_i_1_0 ),
        .O(\m_axi_wready[2] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[1]_INST_0_i_4 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .O(\s_axi_wready[1]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[2]_INST_0_i_7 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(\storage_data1_reg[0]_0 ),
        .O(\storage_data1_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[2]_INST_0_i_8 
       (.I0(m_avalid),
        .I1(m_axi_wready),
        .O(m_valid_i_reg_0));
  LUT5 #(
    .INIT(32'hFFA0E0A0)) 
    \storage_data1[1]_i_2__1 
       (.I0(p_7_in),
        .I1(Q[1]),
        .I2(sa_wm_awvalid),
        .I3(m_aready),
        .I4(Q[0]),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(\storage_data1_reg[1]_1 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized1_28
   (m_avalid,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    Q,
    m_valid_i_reg_0,
    m_axi_wlast,
    \storage_data1_reg[1]_2 ,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    areset_d1,
    sa_wm_awvalid,
    m_aready,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    m_axi_wready,
    s_axi_wlast,
    D,
    SR,
    E,
    s_axi_wstrb,
    s_axi_wdata);
  output m_avalid;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  output [1:0]Q;
  output m_valid_i_reg_0;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1]_2 ;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input areset_d1;
  input [0:0]sa_wm_awvalid;
  input m_aready;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  input [0:0]m_axi_wready;
  input [2:0]s_axi_wlast;
  input [1:0]D;
  input [0:0]SR;
  input [0:0]E;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1__2_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [4:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[3]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[4]_i_2__0_n_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_2 ;
  wire load_s1;
  wire m_aready;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__2_n_0;
  wire m_valid_i_reg_0;
  wire p_7_in;
  wire push;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [11:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid;
  wire state2;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;

  LUT5 #(
    .INIT(32'hFF800080)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(state2),
        .I1(Q[0]),
        .I2(m_aready),
        .I3(sa_wm_awvalid),
        .I4(p_7_in),
        .O(\FSM_onehot_state[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hEEECECEC62606060)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(p_7_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(fifoaddr[3]),
        .I1(fifoaddr[1]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[4]),
        .I4(fifoaddr[2]),
        .O(state2));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[0]),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[1]),
        .Q(p_7_in),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \gen_rep[0].fifoaddr[2]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(push),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \gen_rep[0].fifoaddr[3]_i_1 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[1]),
        .I3(fifoaddr[3]),
        .I4(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \gen_rep[0].fifoaddr[4]_i_2__0 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(push),
        .I3(fifoaddr[2]),
        .I4(fifoaddr[4]),
        .I5(fifoaddr[3]),
        .O(\gen_rep[0].fifoaddr[4]_i_2__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[2]_i_1__0_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[3]_i_1_n_0 ),
        .Q(fifoaddr[3]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\gen_rep[0].fifoaddr[4]_i_2__0_n_0 ),
        .Q(fifoaddr[4]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_29 \gen_srls[0].gen_rep[0].srl_nx1 
       (.Q(fifoaddr),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .\gen_arbiter.m_grant_enc_i_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .load_s1(load_s1),
        .push(push),
        .\storage_data1_reg[0] (Q[0]),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_30 \gen_srls[0].gen_rep[1].srl_nx1 
       (.Q(fifoaddr),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .\gen_arbiter.m_grant_enc_i_reg[1] (\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .\gen_rep[0].fifoaddr_reg[1] (Q),
        .\gen_rep[0].fifoaddr_reg[1]_0 (\gen_rep[0].fifoaddr_reg[1]_0 ),
        .load_s1(load_s1),
        .m_aready(m_aready),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wlast_0_sp_1(\storage_data1_reg[0]_0 ),
        .m_ready_d(m_ready_d),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[32]),
        .I4(s_axi_wdata[64]),
        .O(m_axi_wdata[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[42]),
        .I4(s_axi_wdata[74]),
        .O(m_axi_wdata[10]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[43]),
        .I4(s_axi_wdata[75]),
        .O(m_axi_wdata[11]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[44]),
        .I4(s_axi_wdata[76]),
        .O(m_axi_wdata[12]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[45]),
        .I4(s_axi_wdata[77]),
        .O(m_axi_wdata[13]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[46]),
        .I4(s_axi_wdata[78]),
        .O(m_axi_wdata[14]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[47]),
        .I4(s_axi_wdata[79]),
        .O(m_axi_wdata[15]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[48]),
        .I4(s_axi_wdata[80]),
        .O(m_axi_wdata[16]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[49]),
        .I4(s_axi_wdata[81]),
        .O(m_axi_wdata[17]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[50]),
        .I4(s_axi_wdata[82]),
        .O(m_axi_wdata[18]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[51]),
        .I4(s_axi_wdata[83]),
        .O(m_axi_wdata[19]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[33]),
        .I4(s_axi_wdata[65]),
        .O(m_axi_wdata[1]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[52]),
        .I4(s_axi_wdata[84]),
        .O(m_axi_wdata[20]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[53]),
        .I4(s_axi_wdata[85]),
        .O(m_axi_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[54]),
        .I4(s_axi_wdata[86]),
        .O(m_axi_wdata[22]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[55]),
        .I4(s_axi_wdata[87]),
        .O(m_axi_wdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[56]),
        .I4(s_axi_wdata[88]),
        .O(m_axi_wdata[24]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[57]),
        .I4(s_axi_wdata[89]),
        .O(m_axi_wdata[25]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[58]),
        .I4(s_axi_wdata[90]),
        .O(m_axi_wdata[26]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[59]),
        .I4(s_axi_wdata[91]),
        .O(m_axi_wdata[27]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[60]),
        .I4(s_axi_wdata[92]),
        .O(m_axi_wdata[28]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[61]),
        .I4(s_axi_wdata[93]),
        .O(m_axi_wdata[29]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[34]),
        .I4(s_axi_wdata[66]),
        .O(m_axi_wdata[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[62]),
        .I4(s_axi_wdata[94]),
        .O(m_axi_wdata[30]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[63]),
        .I4(s_axi_wdata[95]),
        .O(m_axi_wdata[31]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[35]),
        .I4(s_axi_wdata[67]),
        .O(m_axi_wdata[3]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[36]),
        .I4(s_axi_wdata[68]),
        .O(m_axi_wdata[4]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[37]),
        .I4(s_axi_wdata[69]),
        .O(m_axi_wdata[5]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[38]),
        .I4(s_axi_wdata[70]),
        .O(m_axi_wdata[6]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[39]),
        .I4(s_axi_wdata[71]),
        .O(m_axi_wdata[7]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[40]),
        .I4(s_axi_wdata[72]),
        .O(m_axi_wdata[8]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[41]),
        .I4(s_axi_wdata[73]),
        .O(m_axi_wdata[9]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[4]),
        .I4(s_axi_wstrb[8]),
        .O(m_axi_wstrb[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[5]),
        .I4(s_axi_wstrb[9]),
        .O(m_axi_wstrb[1]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[6]),
        .I4(s_axi_wstrb[10]),
        .O(m_axi_wstrb[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[7]),
        .I4(s_axi_wstrb[11]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axi_wvalid[0]_INST_0_i_2 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(\storage_data1_reg[0]_0 ),
        .O(\storage_data1_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hEECCCCCC62404040)) 
    m_valid_i_i_1__2
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(p_7_in),
        .O(m_valid_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__2_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[1]_INST_0_i_5 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .O(\storage_data1_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[1]_INST_0_i_6 
       (.I0(m_avalid),
        .I1(m_axi_wready),
        .O(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[2]_INST_0_i_9 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(\storage_data1_reg[0]_0 ),
        .O(\storage_data1_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFA0E0A0)) 
    \storage_data1[1]_i_2 
       (.I0(p_7_in),
        .I1(Q[1]),
        .I2(sa_wm_awvalid),
        .I3(m_aready),
        .I4(Q[0]),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .Q(\storage_data1_reg[1]_1 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized2
   (A,
    m_avalid,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    Q,
    m_valid_i_reg_0,
    m_axi_wlast,
    \storage_data1_reg[1]_2 ,
    m_axi_wstrb,
    m_axi_wdata,
    aa_wm_awgrant_enc,
    aclk,
    SR,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    areset_d1,
    p_0_out,
    sa_wm_awvalid,
    m_aready,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[2]_0 ,
    m_axi_wready,
    s_axi_wlast,
    D,
    s_axi_wstrb,
    s_axi_wdata);
  output [0:0]A;
  output m_avalid;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  output [1:0]Q;
  output m_valid_i_reg_0;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1]_2 ;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input [0:0]SR;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input areset_d1;
  input p_0_out;
  input [0:0]sa_wm_awvalid;
  input m_aready;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[2]_0 ;
  input [0:0]m_axi_wready;
  input [2:0]s_axi_wlast;
  input [1:0]D;
  input [11:0]s_axi_wstrb;
  input [95:0]s_axi_wdata;

  wire [0:0]A;
  wire [1:0]D;
  wire \FSM_onehot_state[1]_i_1__3_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [2:1]fifoaddr;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1__1_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[2]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_2 ;
  wire load_s1;
  wire m_aready;
  wire m_avalid;
  wire [31:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__4_n_0;
  wire m_valid_i_reg_0;
  wire p_0_out;
  wire p_7_in;
  wire push;
  wire [95:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [11:0]s_axi_wstrb;
  wire [0:0]sa_wm_awvalid;
  wire state2;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire \storage_data1_reg[1]_2 ;

  LUT5 #(
    .INIT(32'hFF800080)) 
    \FSM_onehot_state[1]_i_1__3 
       (.I0(state2),
        .I1(Q[0]),
        .I2(m_aready),
        .I3(sa_wm_awvalid),
        .I4(p_7_in),
        .O(\FSM_onehot_state[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hEEECECEC62606060)) 
    \FSM_onehot_state[3]_i_1__3 
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(p_7_in),
        .O(m_valid_i));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[3]_i_4__1 
       (.I0(fifoaddr[1]),
        .I1(A),
        .I2(fifoaddr[2]),
        .O(state2));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[0]),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[1]),
        .Q(p_7_in),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h6F90)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(push),
        .I1(A),
        .I2(p_0_out),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7EFF8100)) 
    \gen_rep[0].fifoaddr[2]_i_1__1 
       (.I0(push),
        .I1(fifoaddr[1]),
        .I2(A),
        .I3(p_0_out),
        .I4(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[2]_i_1__1_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .Q(A),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[2]_i_1__1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3 \gen_srls[0].gen_rep[0].srl_nx1 
       (.A({fifoaddr,A}),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(Q[0]),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .load_s1(load_s1),
        .push(push),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_0 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_25 \gen_srls[0].gen_rep[1].srl_nx1 
       (.A({fifoaddr,A}),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .Q(Q),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .\gen_rep[0].fifoaddr_reg[2] (\gen_rep[0].fifoaddr_reg[2]_0 ),
        .load_s1(load_s1),
        .m_aready(m_aready),
        .m_axi_wlast(m_axi_wlast),
        .\m_axi_wlast[1] (\storage_data1_reg[0]_0 ),
        .m_ready_d(m_ready_d),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[32]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[32]),
        .I4(s_axi_wdata[64]),
        .O(m_axi_wdata[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[33]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[33]),
        .I4(s_axi_wdata[65]),
        .O(m_axi_wdata[1]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[34]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[34]),
        .I4(s_axi_wdata[66]),
        .O(m_axi_wdata[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[35]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[35]),
        .I4(s_axi_wdata[67]),
        .O(m_axi_wdata[3]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[36]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[36]),
        .I4(s_axi_wdata[68]),
        .O(m_axi_wdata[4]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[37]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[37]),
        .I4(s_axi_wdata[69]),
        .O(m_axi_wdata[5]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[38]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[38]),
        .I4(s_axi_wdata[70]),
        .O(m_axi_wdata[6]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[39]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[39]),
        .I4(s_axi_wdata[71]),
        .O(m_axi_wdata[7]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[40]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[40]),
        .I4(s_axi_wdata[72]),
        .O(m_axi_wdata[8]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[41]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[41]),
        .I4(s_axi_wdata[73]),
        .O(m_axi_wdata[9]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[42]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[42]),
        .I4(s_axi_wdata[74]),
        .O(m_axi_wdata[10]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[43]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[43]),
        .I4(s_axi_wdata[75]),
        .O(m_axi_wdata[11]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[44]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[44]),
        .I4(s_axi_wdata[76]),
        .O(m_axi_wdata[12]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[45]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[45]),
        .I4(s_axi_wdata[77]),
        .O(m_axi_wdata[13]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[46]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[46]),
        .I4(s_axi_wdata[78]),
        .O(m_axi_wdata[14]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[47]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[47]),
        .I4(s_axi_wdata[79]),
        .O(m_axi_wdata[15]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[48]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[48]),
        .I4(s_axi_wdata[80]),
        .O(m_axi_wdata[16]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[49]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[49]),
        .I4(s_axi_wdata[81]),
        .O(m_axi_wdata[17]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[50]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[50]),
        .I4(s_axi_wdata[82]),
        .O(m_axi_wdata[18]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[51]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[51]),
        .I4(s_axi_wdata[83]),
        .O(m_axi_wdata[19]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[52]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[52]),
        .I4(s_axi_wdata[84]),
        .O(m_axi_wdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[53]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[53]),
        .I4(s_axi_wdata[85]),
        .O(m_axi_wdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[54]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[54]),
        .I4(s_axi_wdata[86]),
        .O(m_axi_wdata[22]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[55]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[55]),
        .I4(s_axi_wdata[87]),
        .O(m_axi_wdata[23]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[56]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[56]),
        .I4(s_axi_wdata[88]),
        .O(m_axi_wdata[24]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[57]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[57]),
        .I4(s_axi_wdata[89]),
        .O(m_axi_wdata[25]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[58]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[58]),
        .I4(s_axi_wdata[90]),
        .O(m_axi_wdata[26]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[59]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[59]),
        .I4(s_axi_wdata[91]),
        .O(m_axi_wdata[27]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[60]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[60]),
        .I4(s_axi_wdata[92]),
        .O(m_axi_wdata[28]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[61]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[61]),
        .I4(s_axi_wdata[93]),
        .O(m_axi_wdata[29]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[62]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[62]),
        .I4(s_axi_wdata[94]),
        .O(m_axi_wdata[30]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wdata[63]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wdata[63]),
        .I4(s_axi_wdata[95]),
        .O(m_axi_wdata[31]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[4]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[4]),
        .I4(s_axi_wstrb[8]),
        .O(m_axi_wstrb[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[5]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[5]),
        .I4(s_axi_wstrb[9]),
        .O(m_axi_wstrb[1]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[6]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[6]),
        .I4(s_axi_wstrb[10]),
        .O(m_axi_wstrb[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \m_axi_wstrb[7]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(\storage_data1_reg[1]_1 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(s_axi_wstrb[7]),
        .I4(s_axi_wstrb[11]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axi_wvalid[1]_INST_0_i_2 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(\storage_data1_reg[0]_0 ),
        .O(\storage_data1_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hEECCCCCC62404040)) 
    m_valid_i_i_1__4
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(p_7_in),
        .O(m_valid_i_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__4_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[1]_INST_0_i_8 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(\storage_data1_reg[1]_1 ),
        .O(\storage_data1_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[1]_INST_0_i_9 
       (.I0(m_avalid),
        .I1(m_axi_wready),
        .O(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_wready[2]_INST_0_i_4 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(\storage_data1_reg[0]_0 ),
        .O(\storage_data1_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFA0E0A0)) 
    \storage_data1[1]_i_2__0 
       (.I0(p_7_in),
        .I1(Q[1]),
        .I2(sa_wm_awvalid),
        .I3(m_aready),
        .I4(Q[0]),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .Q(\storage_data1_reg[1]_1 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_axic_reg_srl_fifo" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_axic_reg_srl_fifo__parameterized3
   (A,
    m_avalid,
    Q,
    \FSM_onehot_gen_axi.write_cs_reg[1] ,
    wm_mr_wlast_3,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    wr_tmp_wready,
    f_decoder_return,
    aa_wm_awgrant_enc,
    aclk,
    SR,
    \gen_rep[0].fifoaddr_reg[0]_0 ,
    areset_d1,
    m_aready,
    \FSM_onehot_state_reg[1]_0 ,
    wm_mr_wvalid_3,
    \gen_axi.s_axi_bvalid_i_reg ,
    m_select_enc_0,
    \s_axi_wready[0]_INST_0_i_1 ,
    \s_axi_wready[0]_INST_0_i_1_0 ,
    m_select_enc_1,
    \s_axi_wready[1]_INST_0_i_1 ,
    sa_wm_awvalid,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    p_18_in,
    s_axi_wlast,
    D);
  output [0:0]A;
  output m_avalid;
  output [2:0]Q;
  output \FSM_onehot_gen_axi.write_cs_reg[1] ;
  output wm_mr_wlast_3;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output [0:0]wr_tmp_wready;
  output [0:0]f_decoder_return;
  input [1:0]aa_wm_awgrant_enc;
  input aclk;
  input [0:0]SR;
  input \gen_rep[0].fifoaddr_reg[0]_0 ;
  input areset_d1;
  input m_aready;
  input \FSM_onehot_state_reg[1]_0 ;
  input wm_mr_wvalid_3;
  input \gen_axi.s_axi_bvalid_i_reg ;
  input [0:0]m_select_enc_0;
  input \s_axi_wready[0]_INST_0_i_1 ;
  input \s_axi_wready[0]_INST_0_i_1_0 ;
  input [0:0]m_select_enc_1;
  input \s_axi_wready[1]_INST_0_i_1 ;
  input [0:0]sa_wm_awvalid;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  input p_18_in;
  input [2:0]s_axi_wlast;
  input [1:0]D;

  wire [0:0]A;
  wire [1:0]D;
  wire \FSM_onehot_gen_axi.write_cs_reg[1] ;
  wire \FSM_onehot_state[1]_i_1__5_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire S_WREADY0;
  wire aa_sa_awvalid;
  wire [1:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [0:0]f_decoder_return;
  wire [1:1]fifoaddr;
  wire \gen_axi.s_axi_bvalid_i_reg ;
  wire \gen_rep[0].fifoaddr[1]_i_1__3_n_0 ;
  wire \gen_rep[0].fifoaddr_reg[0]_0 ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire load_s1;
  wire m_aready;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire [0:0]m_select_enc_0;
  wire [0:0]m_select_enc_1;
  wire m_valid_i;
  wire m_valid_i_i_1__8_n_0;
  wire p_18_in;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \s_axi_wready[0]_INST_0_i_1 ;
  wire \s_axi_wready[0]_INST_0_i_1_0 ;
  wire \s_axi_wready[1]_INST_0_i_1 ;
  wire [0:0]sa_wm_awvalid;
  wire state2;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire wm_mr_wlast_3;
  wire wm_mr_wvalid_3;
  wire [0:0]wr_tmp_wready;

  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_3 
       (.I0(wm_mr_wlast_3),
        .I1(wm_mr_wvalid_3),
        .I2(\gen_axi.s_axi_bvalid_i_reg ),
        .O(\FSM_onehot_gen_axi.write_cs_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    \FSM_onehot_state[1]_i_1__5 
       (.I0(m_aready),
        .I1(Q[0]),
        .I2(fifoaddr),
        .I3(A),
        .I4(push),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hEEECECEC62606060)) 
    \FSM_onehot_state[3]_i_1__5 
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(Q[2]),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_4__3 
       (.I0(A),
        .I1(fifoaddr),
        .O(state2));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[0]),
        .Q(Q[0]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__5_n_0 ),
        .Q(Q[1]),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(D[1]),
        .Q(Q[2]),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h8FF77008)) 
    \gen_rep[0].fifoaddr[1]_i_1__3 
       (.I0(m_aready),
        .I1(Q[0]),
        .I2(A),
        .I3(push),
        .I4(fifoaddr),
        .O(\gen_rep[0].fifoaddr[1]_i_1__3_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr_reg[0]_0 ),
        .Q(A),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__3_n_0 ),
        .Q(fifoaddr),
        .S(SR));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_17 \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(Q[0]),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[0]),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .push(push),
        .\storage_data1_reg[0] (A),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0]_1 ));
  mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_18 \gen_srls[0].gen_rep[1].srl_nx1 
       (.\FSM_onehot_gen_axi.write_cs[2]_i_5 (\storage_data1_reg[0]_1 ),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(Q[1:0]),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc[1]),
        .aclk(aclk),
        .f_decoder_return(f_decoder_return),
        .fifoaddr(fifoaddr),
        .\gen_rep[0].fifoaddr_reg[1] (\gen_rep[0].fifoaddr_reg[1]_0 ),
        .load_s1(load_s1),
        .m_aready(m_aready),
        .m_ready_d(m_ready_d),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (A),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1]_0 ),
        .wm_mr_wlast_3(wm_mr_wlast_3));
  LUT6 #(
    .INIT(64'hEECCCCCC62404040)) 
    m_valid_i_i_1__8
       (.I0(m_aready),
        .I1(sa_wm_awvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(state2),
        .I5(Q[2]),
        .O(m_valid_i_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__8_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'h10FF100010001000)) 
    \s_axi_wready[0]_INST_0_i_3 
       (.I0(\storage_data1_reg[0]_1 ),
        .I1(\storage_data1_reg[1]_0 ),
        .I2(S_WREADY0),
        .I3(m_select_enc_0),
        .I4(\s_axi_wready[0]_INST_0_i_1 ),
        .I5(\s_axi_wready[0]_INST_0_i_1_0 ),
        .O(\storage_data1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \s_axi_wready[1]_INST_0_i_3 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(\storage_data1_reg[0]_1 ),
        .I2(S_WREADY0),
        .I3(m_select_enc_1),
        .I4(\s_axi_wready[1]_INST_0_i_1 ),
        .I5(\s_axi_wready[0]_INST_0_i_1_0 ),
        .O(\storage_data1_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[1]_INST_0_i_7 
       (.I0(m_avalid),
        .I1(p_18_in),
        .O(S_WREADY0));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_wready[2]_INST_0_i_6 
       (.I0(\storage_data1_reg[0]_1 ),
        .I1(\storage_data1_reg[1]_0 ),
        .I2(p_18_in),
        .I3(m_avalid),
        .O(wr_tmp_wready));
  LUT5 #(
    .INIT(32'hFFA0E0A0)) 
    \storage_data1[1]_i_2__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(sa_wm_awvalid),
        .I3(m_aready),
        .I4(Q[0]),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\storage_data1_reg[0]_1 ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl
   (\gen_rep[0].fifoaddr_reg[1] ,
    \s_axi_awaddr[62] ,
    push,
    fifoaddr,
    aclk,
    s_axi_awaddr,
    match);
  output \gen_rep[0].fifoaddr_reg[1] ;
  output [0:0]\s_axi_awaddr[62] ;
  input push;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]s_axi_awaddr;
  input match;

  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr_reg[1] ;
  wire match;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[62] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(\s_axi_awaddr[62] ),
        .Q(\gen_rep[0].fifoaddr_reg[1] ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_single_issue.active_target_enc[0]_i_1__2 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(match),
        .O(\s_axi_awaddr[62] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_11
   (\FSM_onehot_state_reg[0] ,
    push,
    D,
    fifoaddr,
    aclk,
    target_mi_enc,
    match,
    Q,
    load_s1,
    \storage_data1_reg[1] );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]D;
  input [1:0]fifoaddr;
  input aclk;
  input [0:0]target_mi_enc;
  input match;
  input [0:0]Q;
  input load_s1;
  input \storage_data1_reg[1] ;

  wire [0:0]D;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire load_s1;
  wire match;
  wire p_2_out;
  wire push;
  wire \storage_data1_reg[1] ;
  wire [0:0]target_mi_enc;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(D),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hF0BBFFFFF0BB0000)) 
    \storage_data1[1]_i_1__4 
       (.I0(target_mi_enc),
        .I1(match),
        .I2(p_2_out),
        .I3(Q),
        .I4(load_s1),
        .I5(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_12
   (p_3_out,
    push,
    \s_axi_wlast[1] ,
    \storage_data1_reg[0] ,
    fifoaddr,
    aclk,
    s_ready_i_reg,
    Q,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    m_select_enc_3,
    m_avalid,
    \s_axi_wready[1] ,
    \s_axi_wready[1]_0 );
  output p_3_out;
  output push;
  output \s_axi_wlast[1] ;
  output \storage_data1_reg[0] ;
  input [1:0]fifoaddr;
  input aclk;
  input s_ready_i_reg;
  input [1:0]Q;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input [1:0]m_select_enc_3;
  input m_avalid;
  input \s_axi_wready[1] ;
  input \s_axi_wready[1]_0 ;

  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire m_avalid;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc_3;
  wire p_3_out;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire \s_axi_wlast[1] ;
  wire \s_axi_wready[1] ;
  wire \s_axi_wready[1]_0 ;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_reg;
  wire \storage_data1_reg[0] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(p_3_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h00000000F8880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0 
       (.I0(s_ready_i_reg),
        .I1(Q[0]),
        .I2(\s_axi_wlast[1] ),
        .I3(Q[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 
       (.I0(s_axi_wlast),
        .I1(\storage_data1_reg[0] ),
        .I2(s_axi_wvalid),
        .I3(m_select_enc_3[1]),
        .I4(m_avalid),
        .O(\s_axi_wlast[1] ));
  MUXF7 \s_axi_wready[1]_INST_0_i_1 
       (.I0(\s_axi_wready[1] ),
        .I1(\s_axi_wready[1]_0 ),
        .O(\storage_data1_reg[0] ),
        .S(m_select_enc_3[0]));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_14
   (\gen_rep[0].fifoaddr_reg[1] ,
    \s_axi_awaddr[30] ,
    push,
    fifoaddr,
    aclk,
    s_axi_awaddr,
    match);
  output \gen_rep[0].fifoaddr_reg[1] ;
  output [0:0]\s_axi_awaddr[30] ;
  input push;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]s_axi_awaddr;
  input match;

  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_rep[0].fifoaddr_reg[1] ;
  wire match;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[30] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(\s_axi_awaddr[30] ),
        .Q(\gen_rep[0].fifoaddr_reg[1] ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_single_issue.active_target_enc[0]_i_1__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(match),
        .O(\s_axi_awaddr[30] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_15
   (\FSM_onehot_state_reg[0] ,
    push,
    D,
    fifoaddr,
    aclk,
    target_mi_enc,
    match,
    Q,
    load_s1,
    \storage_data1_reg[1] );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]D;
  input [1:0]fifoaddr;
  input aclk;
  input [0:0]target_mi_enc;
  input match;
  input [0:0]Q;
  input load_s1;
  input \storage_data1_reg[1] ;

  wire [0:0]D;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire load_s1;
  wire match;
  wire p_2_out;
  wire push;
  wire \storage_data1_reg[1] ;
  wire [0:0]target_mi_enc;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(D),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hF0BBFFFFF0BB0000)) 
    \storage_data1[1]_i_1__3 
       (.I0(target_mi_enc),
        .I1(match),
        .I2(p_2_out),
        .I3(Q),
        .I4(load_s1),
        .I5(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_16
   (p_3_out,
    push,
    s_axi_wlast_0_sp_1,
    \storage_data1_reg[0] ,
    fifoaddr,
    aclk,
    s_ready_i_reg,
    Q,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wlast,
    s_axi_wvalid,
    m_select_enc,
    m_avalid_0,
    \s_axi_wready[0] ,
    \s_axi_wready[0]_0 );
  output p_3_out;
  output push;
  output s_axi_wlast_0_sp_1;
  output \storage_data1_reg[0] ;
  input [1:0]fifoaddr;
  input aclk;
  input s_ready_i_reg;
  input [1:0]Q;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input [1:0]m_select_enc;
  input m_avalid_0;
  input \s_axi_wready[0] ;
  input \s_axi_wready[0]_0 ;

  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire m_avalid_0;
  wire [0:0]m_ready_d;
  wire [1:0]m_select_enc;
  wire p_3_out;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire s_axi_wlast_0_sn_1;
  wire \s_axi_wready[0] ;
  wire \s_axi_wready[0]_0 ;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_reg;
  wire \storage_data1_reg[0] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  assign s_axi_wlast_0_sp_1 = s_axi_wlast_0_sn_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(p_3_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h00000000F8880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1 
       (.I0(s_ready_i_reg),
        .I1(Q[0]),
        .I2(s_axi_wlast_0_sn_1),
        .I3(Q[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2 
       (.I0(s_axi_wlast),
        .I1(\storage_data1_reg[0] ),
        .I2(s_axi_wvalid),
        .I3(m_select_enc[1]),
        .I4(m_avalid_0),
        .O(s_axi_wlast_0_sn_1));
  MUXF7 \s_axi_wready[0]_INST_0_i_1 
       (.I0(\s_axi_wready[0] ),
        .I1(\s_axi_wready[0]_0 ),
        .O(\storage_data1_reg[0] ),
        .S(m_select_enc[0]));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_17
   (\FSM_onehot_state_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    fifoaddr,
    \storage_data1_reg[0] ,
    aclk,
    Q,
    load_s1,
    \storage_data1_reg[0]_0 );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [0:0]fifoaddr;
  input \storage_data1_reg[0] ;
  input aclk;
  input [0:0]Q;
  input load_s1;
  input \storage_data1_reg[0]_0 ;

  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [0:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire push;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr,\storage_data1_reg[0] }),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__2 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(Q),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl_18
   (push,
    wm_mr_wlast_3,
    f_decoder_return,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    fifoaddr,
    \storage_data1_reg[1] ,
    aclk,
    Q,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1] ,
    m_aready,
    s_axi_wlast,
    \FSM_onehot_gen_axi.write_cs[2]_i_5 ,
    \storage_data1_reg[1]_0 ,
    load_s1);
  output push;
  output wm_mr_wlast_3;
  output [0:0]f_decoder_return;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [0:0]fifoaddr;
  input \storage_data1_reg[1] ;
  input aclk;
  input [1:0]Q;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  input m_aready;
  input [2:0]s_axi_wlast;
  input \FSM_onehot_gen_axi.write_cs[2]_i_5 ;
  input \storage_data1_reg[1]_0 ;
  input load_s1;

  wire \FSM_onehot_gen_axi.write_cs[2]_i_5 ;
  wire \FSM_onehot_state_reg[0] ;
  wire [1:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [0:0]f_decoder_return;
  wire [0:0]fifoaddr;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire load_s1;
  wire m_aready;
  wire [0:0]m_ready_d;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire wm_mr_wlast_3;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_4 
       (.I0(s_axi_wlast[0]),
        .I1(s_axi_wlast[2]),
        .I2(\FSM_onehot_gen_axi.write_cs[2]_i_5 ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(s_axi_wlast[1]),
        .O(wm_mr_wlast_3));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_7 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs[2]_i_5 ),
        .O(f_decoder_return));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[3].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr,\storage_data1_reg[1] }),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0A0000000E000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(\gen_rep[0].fifoaddr_reg[1] ),
        .I5(m_aready),
        .O(push));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[1]_i_1__2 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[1]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1
   (\gen_rep[0].fifoaddr_reg[4] ,
    \s_axi_awaddr[94] ,
    push,
    Q,
    aclk,
    s_axi_awaddr,
    match);
  output \gen_rep[0].fifoaddr_reg[4] ;
  output [0:0]\s_axi_awaddr[94] ;
  input push;
  input [4:0]Q;
  input aclk;
  input [1:0]s_axi_awaddr;
  input match;

  wire [4:0]Q;
  wire aclk;
  wire \gen_rep[0].fifoaddr_reg[4] ;
  wire match;
  wire push;
  wire [1:0]s_axi_awaddr;
  wire [0:0]\s_axi_awaddr[94] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(\s_axi_awaddr[94] ),
        .Q(\gen_rep[0].fifoaddr_reg[4] ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h4F)) 
    \gen_single_thread.active_target_enc[0]_i_1__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awaddr[1]),
        .I2(match),
        .O(\s_axi_awaddr[94] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_10
   (p_3_out,
    push,
    \s_axi_wlast[2] ,
    m_valid_i_reg,
    Q,
    aclk,
    m_select_enc,
    \gen_rep[0].fifoaddr_reg[1] ,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    m_ready_d,
    s_axi_awvalid,
    s_axi_wlast,
    m_avalid_1,
    s_axi_wvalid,
    m_avalid,
    m_axi_wready,
    \s_axi_wready[2] ,
    m_avalid_0,
    \s_axi_wready[2]_INST_0_i_1_0 ,
    wr_tmp_wready,
    \s_axi_wready[2]_INST_0_i_1_1 ,
    \s_axi_wready[2]_INST_0_i_1_2 );
  output p_3_out;
  output push;
  output \s_axi_wlast[2] ;
  output m_valid_i_reg;
  input [4:0]Q;
  input aclk;
  input [2:0]m_select_enc;
  input [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  input \gen_rep[0].fifoaddr_reg[1]_0 ;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input [0:0]s_axi_wlast;
  input m_avalid_1;
  input [0:0]s_axi_wvalid;
  input m_avalid;
  input [1:0]m_axi_wready;
  input \s_axi_wready[2] ;
  input m_avalid_0;
  input \s_axi_wready[2]_INST_0_i_1_0 ;
  input [0:0]wr_tmp_wready;
  input \s_axi_wready[2]_INST_0_i_1_1 ;
  input \s_axi_wready[2]_INST_0_i_1_2 ;

  wire [4:0]Q;
  wire aclk;
  wire [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire \gen_rep[0].fifoaddr_reg[1]_0 ;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire [1:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire [2:0]m_select_enc;
  wire m_valid_i_reg;
  wire p_3_out;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire \s_axi_wlast[2] ;
  wire \s_axi_wready[2] ;
  wire \s_axi_wready[2]_INST_0_i_1_0 ;
  wire \s_axi_wready[2]_INST_0_i_1_1 ;
  wire \s_axi_wready[2]_INST_0_i_1_2 ;
  wire \s_axi_wready[2]_INST_0_i_2_n_0 ;
  wire \s_axi_wready[2]_INST_0_i_3_n_0 ;
  wire \s_axi_wready[2]_INST_0_i_5_n_0 ;
  wire [0:0]s_axi_wvalid;
  wire [0:0]wr_tmp_wready;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(p_3_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0F00080008000800)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1 
       (.I0(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I1(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .I4(\gen_rep[0].fifoaddr_reg[1] [1]),
        .I5(\s_axi_wlast[2] ),
        .O(push));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1 
       (.I0(m_valid_i_reg),
        .I1(s_axi_wlast),
        .I2(m_avalid_1),
        .I3(s_axi_wvalid),
        .O(\s_axi_wlast[2] ));
  LUT6 #(
    .INIT(64'h2222222202222222)) 
    \s_axi_wready[2]_INST_0_i_1 
       (.I0(\s_axi_wready[2]_INST_0_i_2_n_0 ),
        .I1(\s_axi_wready[2]_INST_0_i_3_n_0 ),
        .I2(m_avalid),
        .I3(m_axi_wready[1]),
        .I4(\s_axi_wready[2] ),
        .I5(\s_axi_wready[2]_INST_0_i_5_n_0 ),
        .O(m_valid_i_reg));
  LUT6 #(
    .INIT(64'hFF4FFF7FFF7FFF7F)) 
    \s_axi_wready[2]_INST_0_i_2 
       (.I0(wr_tmp_wready),
        .I1(m_select_enc[0]),
        .I2(m_select_enc[1]),
        .I3(m_select_enc[2]),
        .I4(\s_axi_wready[2]_INST_0_i_1_1 ),
        .I5(\s_axi_wready[2]_INST_0_i_1_2 ),
        .O(\s_axi_wready[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \s_axi_wready[2]_INST_0_i_3 
       (.I0(m_avalid_0),
        .I1(m_axi_wready[0]),
        .I2(\s_axi_wready[2]_INST_0_i_1_0 ),
        .I3(m_select_enc[2]),
        .I4(m_select_enc[1]),
        .I5(m_select_enc[0]),
        .O(\s_axi_wready[2]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \s_axi_wready[2]_INST_0_i_5 
       (.I0(m_select_enc[1]),
        .I1(m_select_enc[2]),
        .I2(m_select_enc[0]),
        .O(\s_axi_wready[2]_INST_0_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_21
   (\FSM_onehot_state_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    Q,
    aclk,
    \storage_data1_reg[0] ,
    load_s1,
    \storage_data1_reg[0]_0 );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [4:0]Q;
  input aclk;
  input [0:0]\storage_data1_reg[0] ;
  input load_s1;
  input \storage_data1_reg[0]_0 ;

  wire \FSM_onehot_state_reg[0] ;
  wire [4:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire push;
  wire [0:0]\storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__1 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(\storage_data1_reg[0] ),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[0]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_22
   (push,
    m_axi_wlast,
    \storage_data1_reg[1] ,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    Q,
    aclk,
    \gen_rep[0].fifoaddr_reg[1] ,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    m_aready,
    s_axi_wlast,
    \m_axi_wlast[2] ,
    \storage_data1_reg[1]_0 ,
    load_s1);
  output push;
  output [0:0]m_axi_wlast;
  output \storage_data1_reg[1] ;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [4:0]Q;
  input aclk;
  input [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  input m_aready;
  input [2:0]s_axi_wlast;
  input \m_axi_wlast[2] ;
  input \storage_data1_reg[1]_0 ;
  input load_s1;

  wire \FSM_onehot_state_reg[0] ;
  wire [4:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  wire load_s1;
  wire m_aready;
  wire [0:0]m_axi_wlast;
  wire \m_axi_wlast[2] ;
  wire [0:0]m_ready_d;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[2].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0A0000000E000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__4 
       (.I0(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I1(\gen_rep[0].fifoaddr_reg[1] [1]),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I5(m_aready),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \m_axi_wlast[2]_INST_0 
       (.I0(s_axi_wlast[0]),
        .I1(s_axi_wlast[2]),
        .I2(\m_axi_wlast[2] ),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(s_axi_wlast[1]),
        .O(m_axi_wlast));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axi_wvalid[2]_INST_0_i_3 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(\m_axi_wlast[2] ),
        .O(\storage_data1_reg[1] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[1]_i_1__1 
       (.I0(p_2_out),
        .I1(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[1]_0 ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_29
   (\gen_arbiter.m_grant_enc_i_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    Q,
    aclk,
    \storage_data1_reg[0] ,
    load_s1,
    \storage_data1_reg[0]_0 );
  output \gen_arbiter.m_grant_enc_i_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [4:0]Q;
  input aclk;
  input [0:0]\storage_data1_reg[0] ;
  input load_s1;
  input \storage_data1_reg[0]_0 ;

  wire [4:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_arbiter.m_grant_enc_i_reg[0] ;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire push;
  wire [0:0]\storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \storage_data1[0]_i_1 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(aa_wm_awgrant_enc),
        .I2(\storage_data1_reg[0] ),
        .I3(load_s1),
        .I4(\storage_data1_reg[0]_0 ),
        .O(\gen_arbiter.m_grant_enc_i_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_30
   (push,
    m_axi_wlast,
    \gen_arbiter.m_grant_enc_i_reg[1] ,
    aa_wm_awgrant_enc,
    Q,
    aclk,
    \gen_rep[0].fifoaddr_reg[1] ,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[1]_0 ,
    m_aready,
    s_axi_wlast,
    m_axi_wlast_0_sp_1,
    \storage_data1_reg[1] ,
    load_s1);
  output push;
  output [0:0]m_axi_wlast;
  output \gen_arbiter.m_grant_enc_i_reg[1] ;
  input [0:0]aa_wm_awgrant_enc;
  input [4:0]Q;
  input aclk;
  input [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  input m_aready;
  input [2:0]s_axi_wlast;
  input m_axi_wlast_0_sp_1;
  input \storage_data1_reg[1] ;
  input load_s1;

  wire [4:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_arbiter.m_grant_enc_i_reg[1] ;
  wire [1:0]\gen_rep[0].fifoaddr_reg[1] ;
  wire [0:0]\gen_rep[0].fifoaddr_reg[1]_0 ;
  wire load_s1;
  wire m_aready;
  wire [0:0]m_axi_wlast;
  wire m_axi_wlast_0_sn_1;
  wire [0:0]m_ready_d;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  assign m_axi_wlast_0_sn_1 = m_axi_wlast_0_sp_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0A0000000E000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__2 
       (.I0(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I1(\gen_rep[0].fifoaddr_reg[1] [1]),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(\gen_rep[0].fifoaddr_reg[1]_0 ),
        .I5(m_aready),
        .O(push));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \m_axi_wlast[0]_INST_0 
       (.I0(s_axi_wlast[0]),
        .I1(s_axi_wlast[2]),
        .I2(m_axi_wlast_0_sn_1),
        .I3(\storage_data1_reg[1] ),
        .I4(s_axi_wlast[1]),
        .O(m_axi_wlast));
  LUT5 #(
    .INIT(32'hACFFAC00)) 
    \storage_data1[1]_i_1 
       (.I0(p_2_out),
        .I1(aa_wm_awgrant_enc),
        .I2(\gen_rep[0].fifoaddr_reg[1] [0]),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\gen_arbiter.m_grant_enc_i_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized1_9
   (\FSM_onehot_state_reg[0] ,
    push,
    D,
    Q,
    aclk,
    target_mi_enc,
    match,
    \storage_data1_reg[1] ,
    load_s1,
    m_select_enc);
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]D;
  input [4:0]Q;
  input aclk;
  input [0:0]target_mi_enc;
  input match;
  input [0:0]\storage_data1_reg[1] ;
  input load_s1;
  input [0:0]m_select_enc;

  wire [0:0]D;
  wire \FSM_onehot_state_reg[0] ;
  wire [4:0]Q;
  wire aclk;
  wire load_s1;
  wire [0:0]m_select_enc;
  wire match;
  wire p_2_out;
  wire push;
  wire [0:0]\storage_data1_reg[1] ;
  wire [0:0]target_mi_enc;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A(Q),
        .CE(push),
        .CLK(aclk),
        .D(D),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hF0BBFFFFF0BB0000)) 
    \storage_data1[1]_i_1__5 
       (.I0(target_mi_enc),
        .I1(match),
        .I2(p_2_out),
        .I3(\storage_data1_reg[1] ),
        .I4(load_s1),
        .I5(m_select_enc),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3
   (\FSM_onehot_state_reg[0] ,
    push,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    load_s1,
    \storage_data1_reg[0] );
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [0:0]aa_wm_awgrant_enc;
  input [2:0]A;
  input aclk;
  input [0:0]Q;
  input load_s1;
  input \storage_data1_reg[0] ;

  wire [2:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire push;
  wire \storage_data1_reg[0] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[0]_i_1__0 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I1(Q),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[0] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_17_ndeep_srl" *) 
module mcu_xbar_0_axi_data_fifo_v2_1_17_ndeep_srl__parameterized3_25
   (push,
    m_axi_wlast,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    m_ready_d,
    aa_sa_awvalid,
    \gen_rep[0].fifoaddr_reg[2] ,
    m_aready,
    s_axi_wlast,
    \m_axi_wlast[1] ,
    \storage_data1_reg[1] ,
    load_s1);
  output push;
  output [0:0]m_axi_wlast;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [2:0]A;
  input aclk;
  input [1:0]Q;
  input [0:0]m_ready_d;
  input aa_sa_awvalid;
  input [0:0]\gen_rep[0].fifoaddr_reg[2] ;
  input m_aready;
  input [2:0]s_axi_wlast;
  input \m_axi_wlast[1] ;
  input \storage_data1_reg[1] ;
  input load_s1;

  wire [2:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [1:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [0:0]\gen_rep[0].fifoaddr_reg[2] ;
  wire load_s1;
  wire m_aready;
  wire [0:0]m_axi_wlast;
  wire \m_axi_wlast[1] ;
  wire [0:0]m_ready_d;
  wire p_2_out;
  wire push;
  wire [2:0]s_axi_wlast;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0A0000000E000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(\gen_rep[0].fifoaddr_reg[2] ),
        .I5(m_aready),
        .O(push));
  LUT5 #(
    .INIT(32'h0CFA0C0A)) 
    \m_axi_wlast[1]_INST_0 
       (.I0(s_axi_wlast[0]),
        .I1(s_axi_wlast[2]),
        .I2(\m_axi_wlast[1] ),
        .I3(\storage_data1_reg[1] ),
        .I4(s_axi_wlast[1]),
        .O(m_axi_wlast));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[1]_i_1__0 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axi_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice
   (st_mr_bvalid,
    m_axi_bready,
    st_mr_rvalid,
    s_ready_i_reg,
    \m_payload_i_reg[34] ,
    Q,
    \s_axi_araddr[63] ,
    \s_axi_araddr[95] ,
    \s_axi_araddr[31] ,
    \m_payload_i_reg[36] ,
    \gen_single_issue.active_target_hot_reg[0] ,
    \gen_single_issue.active_target_hot_reg[0]_0 ,
    \gen_single_issue.active_target_hot_reg[0]_1 ,
    s_axi_rvalid,
    m_valid_i_reg,
    m_valid_i_reg_0,
    \gen_single_thread.active_target_hot_reg[0] ,
    s_rvalid_i0,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    mi_awmaxissuing,
    m_valid_i_reg_1,
    r_cmd_pop_0,
    \m_payload_i_reg[1] ,
    aclk,
    mi_armaxissuing195_in,
    m_axi_rvalid,
    s_ready_i_reg_0,
    m_valid_i_reg_2,
    ADDRESS_HIT_0,
    \gen_arbiter.qual_reg[1]_i_2 ,
    s_axi_araddr,
    match,
    st_aa_artarget_hot,
    ADDRESS_HIT_0_0,
    match_1,
    \s_axi_rvalid[0] ,
    \s_axi_bvalid[0] ,
    \s_axi_rvalid[1] ,
    \s_axi_bvalid[1] ,
    \s_axi_rvalid[2] ,
    \s_axi_rvalid[2]_0 ,
    \s_axi_rvalid[2]_1 ,
    \s_axi_rvalid[2]_2 ,
    s_axi_rready,
    \s_axi_rvalid[2]_3 ,
    \s_axi_bvalid[2] ,
    \gen_single_thread.accept_cnt[5]_i_3 ,
    \gen_single_thread.accept_cnt[5]_i_3_0 ,
    \s_axi_rvalid[3] ,
    m_axi_bvalid,
    \gen_arbiter.last_rr_hot[3]_i_11 ,
    s_axi_bready,
    D,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output [0:0]st_mr_bvalid;
  output [0:0]m_axi_bready;
  output [0:0]st_mr_rvalid;
  output s_ready_i_reg;
  output \m_payload_i_reg[34] ;
  output [34:0]Q;
  output \s_axi_araddr[63] ;
  output \s_axi_araddr[95] ;
  output \s_axi_araddr[31] ;
  output \m_payload_i_reg[36] ;
  output \gen_single_issue.active_target_hot_reg[0] ;
  output \gen_single_issue.active_target_hot_reg[0]_0 ;
  output \gen_single_issue.active_target_hot_reg[0]_1 ;
  output [0:0]s_axi_rvalid;
  output m_valid_i_reg;
  output m_valid_i_reg_0;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output [0:0]s_rvalid_i0;
  output \gen_single_thread.active_target_hot_reg[0]_0 ;
  output [0:0]mi_awmaxissuing;
  output m_valid_i_reg_1;
  output r_cmd_pop_0;
  output [1:0]\m_payload_i_reg[1] ;
  input aclk;
  input mi_armaxissuing195_in;
  input [0:0]m_axi_rvalid;
  input s_ready_i_reg_0;
  input m_valid_i_reg_2;
  input ADDRESS_HIT_0;
  input \gen_arbiter.qual_reg[1]_i_2 ;
  input [5:0]s_axi_araddr;
  input match;
  input [0:0]st_aa_artarget_hot;
  input ADDRESS_HIT_0_0;
  input match_1;
  input [0:0]\s_axi_rvalid[0] ;
  input [0:0]\s_axi_bvalid[0] ;
  input [0:0]\s_axi_rvalid[1] ;
  input [0:0]\s_axi_bvalid[1] ;
  input [0:0]\s_axi_rvalid[2] ;
  input \s_axi_rvalid[2]_0 ;
  input \s_axi_rvalid[2]_1 ;
  input \s_axi_rvalid[2]_2 ;
  input [3:0]s_axi_rready;
  input [0:0]\s_axi_rvalid[2]_3 ;
  input [0:0]\s_axi_bvalid[2] ;
  input [0:0]\gen_single_thread.accept_cnt[5]_i_3 ;
  input \gen_single_thread.accept_cnt[5]_i_3_0 ;
  input [0:0]\s_axi_rvalid[3] ;
  input [0:0]m_axi_bvalid;
  input \gen_arbiter.last_rr_hot[3]_i_11 ;
  input [2:0]s_axi_bready;
  input [3:0]D;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_0;
  wire [3:0]D;
  wire [34:0]Q;
  wire aclk;
  wire \gen_arbiter.last_rr_hot[3]_i_11 ;
  wire \gen_arbiter.qual_reg[1]_i_2 ;
  wire \gen_single_issue.active_target_hot_reg[0] ;
  wire \gen_single_issue.active_target_hot_reg[0]_0 ;
  wire \gen_single_issue.active_target_hot_reg[0]_1 ;
  wire [0:0]\gen_single_thread.accept_cnt[5]_i_3 ;
  wire \gen_single_thread.accept_cnt[5]_i_3_0 ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [1:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[34] ;
  wire \m_payload_i_reg[36] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire match;
  wire match_1;
  wire mi_armaxissuing195_in;
  wire [0:0]mi_awmaxissuing;
  wire r_cmd_pop_0;
  wire [5:0]s_axi_araddr;
  wire \s_axi_araddr[31] ;
  wire \s_axi_araddr[63] ;
  wire \s_axi_araddr[95] ;
  wire [2:0]s_axi_bready;
  wire [0:0]\s_axi_bvalid[0] ;
  wire [0:0]\s_axi_bvalid[1] ;
  wire [0:0]\s_axi_bvalid[2] ;
  wire [3:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire [0:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire \s_axi_rvalid[2]_0 ;
  wire \s_axi_rvalid[2]_1 ;
  wire \s_axi_rvalid[2]_2 ;
  wire [0:0]\s_axi_rvalid[2]_3 ;
  wire [0:0]\s_axi_rvalid[3] ;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]s_rvalid_i0;
  wire [0:0]st_aa_artarget_hot;
  wire [0:0]st_mr_bvalid;
  wire [0:0]st_mr_rvalid;

  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_26 \b.b_pipe 
       (.D(D),
        .aclk(aclk),
        .\gen_arbiter.last_rr_hot[3]_i_11 (\gen_arbiter.last_rr_hot[3]_i_11 ),
        .\gen_single_issue.active_target_hot_reg[0] (\gen_single_issue.active_target_hot_reg[0] ),
        .\gen_single_issue.active_target_hot_reg[0]_0 (\gen_single_issue.active_target_hot_reg[0]_1 ),
        .\gen_single_thread.accept_cnt[5]_i_3 (\gen_single_thread.accept_cnt[5]_i_3 ),
        .\gen_single_thread.accept_cnt[5]_i_3_0 (\gen_single_thread.accept_cnt[5]_i_3_0 ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_single_thread.active_target_hot_reg[0] ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .m_valid_i_reg_0(st_mr_bvalid),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .m_valid_i_reg_2(m_valid_i_reg_1),
        .mi_awmaxissuing(mi_awmaxissuing),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bvalid[0] (\s_axi_bvalid[0] ),
        .\s_axi_bvalid[1] (\s_axi_bvalid[1] ),
        .\s_axi_bvalid[2] (\s_axi_bvalid[2] ),
        .s_ready_i_reg_0(m_valid_i_reg_2),
        .s_ready_i_reg_1(s_ready_i_reg_0));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_27 \r.r_pipe 
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .ADDRESS_HIT_0_0(ADDRESS_HIT_0_0),
        .Q(Q),
        .aclk(aclk),
        .\gen_arbiter.qual_reg[1]_i_2 (\gen_arbiter.qual_reg[1]_i_2 ),
        .\gen_single_issue.active_target_hot_reg[0] (\gen_single_issue.active_target_hot_reg[0]_0 ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_single_thread.active_target_hot_reg[0]_0 ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .m_valid_i_reg_0(st_mr_rvalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .m_valid_i_reg_2(m_valid_i_reg_2),
        .match(match),
        .match_1(match_1),
        .mi_armaxissuing195_in(mi_armaxissuing195_in),
        .r_cmd_pop_0(r_cmd_pop_0),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[31] (\s_axi_araddr[31] ),
        .\s_axi_araddr[63] (\s_axi_araddr[63] ),
        .\s_axi_araddr[95] (\s_axi_araddr[95] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0] (\s_axi_rvalid[0] ),
        .\s_axi_rvalid[1] (\s_axi_rvalid[1] ),
        .\s_axi_rvalid[2] (\s_axi_rvalid[2] ),
        .\s_axi_rvalid[2]_0 (\s_axi_rvalid[2]_0 ),
        .\s_axi_rvalid[2]_1 (\s_axi_rvalid[2]_1 ),
        .\s_axi_rvalid[2]_2 (\s_axi_rvalid[2]_2 ),
        .\s_axi_rvalid[2]_3 (\s_axi_rvalid[2]_3 ),
        .\s_axi_rvalid[3] (\s_axi_rvalid[3] ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .s_rvalid_i0(s_rvalid_i0),
        .st_aa_artarget_hot(st_aa_artarget_hot));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axi_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_1
   (\m_payload_i_reg[34] ,
    Q,
    m_valid_i_reg,
    s_ready_i_reg,
    s_axi_bready_0_sp_1,
    m_valid_i_reg_0,
    \gen_single_issue.accept_cnt_reg ,
    \s_axi_awaddr[95] ,
    \gen_single_issue.accept_cnt_reg_0 ,
    s_axi_bvalid,
    \s_axi_araddr[126] ,
    valid_qual_i142_in,
    valid_qual_i1,
    \m_payload_i_reg[36] ,
    \s_axi_bready[0]_0 ,
    m_valid_i_reg_1,
    s_axi_rvalid,
    s_axi_bready_1_sp_1,
    m_valid_i_reg_2,
    \m_payload_i_reg[36]_0 ,
    \gen_single_thread.active_target_hot_reg[1] ,
    \m_payload_i_reg[36]_1 ,
    \m_payload_i_reg[2] ,
    r_cmd_pop_1,
    \m_payload_i_reg[1] ,
    m_axi_bready,
    mi_armaxissuing196_in,
    m_axi_rvalid,
    s_ready_i_reg_0,
    m_valid_i_reg_3,
    \gen_arbiter.m_grant_enc_i_reg[0] ,
    s_axi_bready,
    \gen_single_issue.accept_cnt ,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_arbiter.last_rr_hot[3]_i_3 ,
    s_axi_awaddr,
    match,
    ADDRESS_HIT_0,
    match_0,
    ADDRESS_HIT_0_1,
    \gen_arbiter.qual_reg_reg[1] ,
    \gen_single_issue.accept_cnt_2 ,
    match_3,
    ADDRESS_HIT_0_4,
    match_5,
    s_axi_araddr,
    st_aa_artarget_hot,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    \gen_arbiter.qual_reg_reg[2] ,
    \gen_arbiter.qual_reg_reg[0]_1 ,
    \s_axi_rvalid[0] ,
    s_axi_bvalid_0_sp_1,
    st_mr_bvalid,
    \s_axi_bvalid[0]_0 ,
    \s_axi_bvalid[0]_1 ,
    s_axi_rvalid_1_sp_1,
    st_mr_rvalid,
    \s_axi_rvalid[1]_0 ,
    \s_axi_rvalid[1]_1 ,
    \s_axi_rvalid[1]_2 ,
    s_axi_bvalid_1_sp_1,
    \s_axi_bvalid[1]_0 ,
    \s_axi_bvalid[1]_1 ,
    s_axi_rready,
    \s_axi_rvalid[2] ,
    \s_axi_bvalid[2] ,
    \s_axi_bvalid[2]_0 ,
    \s_axi_bvalid[2]_1 ,
    \s_axi_rvalid[3] ,
    s_rvalid_i0,
    \s_axi_rvalid[3]_0 ,
    \gen_arbiter.last_rr_hot[3]_i_11 ,
    \gen_arbiter.last_rr_hot[3]_i_11_0 ,
    D,
    aclk,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_bvalid);
  output \m_payload_i_reg[34] ;
  output [34:0]Q;
  output [0:0]m_valid_i_reg;
  output s_ready_i_reg;
  output s_axi_bready_0_sp_1;
  output m_valid_i_reg_0;
  output \gen_single_issue.accept_cnt_reg ;
  output \s_axi_awaddr[95] ;
  output \gen_single_issue.accept_cnt_reg_0 ;
  output [1:0]s_axi_bvalid;
  output \s_axi_araddr[126] ;
  output valid_qual_i142_in;
  output valid_qual_i1;
  output \m_payload_i_reg[36] ;
  output \s_axi_bready[0]_0 ;
  output [0:0]m_valid_i_reg_1;
  output [1:0]s_axi_rvalid;
  output s_axi_bready_1_sp_1;
  output m_valid_i_reg_2;
  output \m_payload_i_reg[36]_0 ;
  output \gen_single_thread.active_target_hot_reg[1] ;
  output [0:0]\m_payload_i_reg[36]_1 ;
  output \m_payload_i_reg[2] ;
  output r_cmd_pop_1;
  output [1:0]\m_payload_i_reg[1] ;
  output [0:0]m_axi_bready;
  input mi_armaxissuing196_in;
  input [0:0]m_axi_rvalid;
  input s_ready_i_reg_0;
  input m_valid_i_reg_3;
  input \gen_arbiter.m_grant_enc_i_reg[0] ;
  input [2:0]s_axi_bready;
  input \gen_single_issue.accept_cnt ;
  input \gen_arbiter.qual_reg_reg[0] ;
  input [0:0]\gen_arbiter.last_rr_hot[3]_i_3 ;
  input [5:0]s_axi_awaddr;
  input match;
  input ADDRESS_HIT_0;
  input match_0;
  input ADDRESS_HIT_0_1;
  input \gen_arbiter.qual_reg_reg[1] ;
  input \gen_single_issue.accept_cnt_2 ;
  input match_3;
  input ADDRESS_HIT_0_4;
  input match_5;
  input [3:0]s_axi_araddr;
  input [2:0]st_aa_artarget_hot;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input \gen_arbiter.qual_reg_reg[2] ;
  input \gen_arbiter.qual_reg_reg[0]_1 ;
  input [0:0]\s_axi_rvalid[0] ;
  input s_axi_bvalid_0_sp_1;
  input [0:0]st_mr_bvalid;
  input \s_axi_bvalid[0]_0 ;
  input [0:0]\s_axi_bvalid[0]_1 ;
  input s_axi_rvalid_1_sp_1;
  input [0:0]st_mr_rvalid;
  input \s_axi_rvalid[1]_0 ;
  input \s_axi_rvalid[1]_1 ;
  input [0:0]\s_axi_rvalid[1]_2 ;
  input s_axi_bvalid_1_sp_1;
  input \s_axi_bvalid[1]_0 ;
  input [0:0]\s_axi_bvalid[1]_1 ;
  input [3:0]s_axi_rready;
  input [0:0]\s_axi_rvalid[2] ;
  input \s_axi_bvalid[2] ;
  input \s_axi_bvalid[2]_0 ;
  input [0:0]\s_axi_bvalid[2]_1 ;
  input \s_axi_rvalid[3] ;
  input [1:0]s_rvalid_i0;
  input [0:0]\s_axi_rvalid[3]_0 ;
  input [1:0]\gen_arbiter.last_rr_hot[3]_i_11 ;
  input \gen_arbiter.last_rr_hot[3]_i_11_0 ;
  input [3:0]D;
  input aclk;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input [0:0]m_axi_bvalid;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_1;
  wire ADDRESS_HIT_0_4;
  wire [3:0]D;
  wire [34:0]Q;
  wire aclk;
  wire [1:0]\gen_arbiter.last_rr_hot[3]_i_11 ;
  wire \gen_arbiter.last_rr_hot[3]_i_11_0 ;
  wire [0:0]\gen_arbiter.last_rr_hot[3]_i_3 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_arbiter.qual_reg_reg[0]_1 ;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_2 ;
  wire \gen_single_issue.accept_cnt_reg ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire \gen_single_thread.active_target_hot_reg[1] ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [1:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[2] ;
  wire \m_payload_i_reg[34] ;
  wire \m_payload_i_reg[36] ;
  wire \m_payload_i_reg[36]_0 ;
  wire [0:0]\m_payload_i_reg[36]_1 ;
  wire [0:0]m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire [0:0]m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire m_valid_i_reg_3;
  wire match;
  wire match_0;
  wire match_3;
  wire match_5;
  wire mi_armaxissuing196_in;
  wire r_cmd_pop_1;
  wire [3:0]s_axi_araddr;
  wire \s_axi_araddr[126] ;
  wire [5:0]s_axi_awaddr;
  wire \s_axi_awaddr[95] ;
  wire [2:0]s_axi_bready;
  wire \s_axi_bready[0]_0 ;
  wire s_axi_bready_0_sn_1;
  wire s_axi_bready_1_sn_1;
  wire [1:0]s_axi_bvalid;
  wire \s_axi_bvalid[0]_0 ;
  wire [0:0]\s_axi_bvalid[0]_1 ;
  wire \s_axi_bvalid[1]_0 ;
  wire [0:0]\s_axi_bvalid[1]_1 ;
  wire \s_axi_bvalid[2] ;
  wire \s_axi_bvalid[2]_0 ;
  wire [0:0]\s_axi_bvalid[2]_1 ;
  wire s_axi_bvalid_0_sn_1;
  wire s_axi_bvalid_1_sn_1;
  wire [3:0]s_axi_rready;
  wire [1:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire \s_axi_rvalid[1]_0 ;
  wire \s_axi_rvalid[1]_1 ;
  wire [0:0]\s_axi_rvalid[1]_2 ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire \s_axi_rvalid[3] ;
  wire [0:0]\s_axi_rvalid[3]_0 ;
  wire s_axi_rvalid_1_sn_1;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [1:0]s_rvalid_i0;
  wire [2:0]st_aa_artarget_hot;
  wire [0:0]st_mr_bvalid;
  wire [0:0]st_mr_rvalid;
  wire valid_qual_i1;
  wire valid_qual_i142_in;

  assign s_axi_bready_0_sp_1 = s_axi_bready_0_sn_1;
  assign s_axi_bready_1_sp_1 = s_axi_bready_1_sn_1;
  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  assign s_axi_bvalid_1_sn_1 = s_axi_bvalid_1_sp_1;
  assign s_axi_rvalid_1_sn_1 = s_axi_rvalid_1_sp_1;
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_23 \b.b_pipe 
       (.ADDRESS_HIT_0(ADDRESS_HIT_0),
        .ADDRESS_HIT_0_1(ADDRESS_HIT_0_1),
        .ADDRESS_HIT_0_4(ADDRESS_HIT_0_4),
        .D(D),
        .aclk(aclk),
        .\gen_arbiter.last_rr_hot[3]_i_11_0 (\gen_arbiter.last_rr_hot[3]_i_11 ),
        .\gen_arbiter.last_rr_hot[3]_i_11_1 (\gen_arbiter.last_rr_hot[3]_i_11_0 ),
        .\gen_arbiter.last_rr_hot[3]_i_3_0 (\gen_arbiter.last_rr_hot[3]_i_3 ),
        .\gen_arbiter.m_grant_enc_i_reg[0] (\gen_arbiter.m_grant_enc_i_reg[0] ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0] ),
        .\gen_arbiter.qual_reg_reg[1] (\gen_arbiter.qual_reg_reg[1] ),
        .\gen_single_issue.accept_cnt (\gen_single_issue.accept_cnt ),
        .\gen_single_issue.accept_cnt_2 (\gen_single_issue.accept_cnt_2 ),
        .\gen_single_issue.accept_cnt_reg (\gen_single_issue.accept_cnt_reg ),
        .\gen_single_issue.accept_cnt_reg_0 (\gen_single_issue.accept_cnt_reg_0 ),
        .\gen_single_thread.active_target_hot_reg[1] (\gen_single_thread.active_target_hot_reg[1] ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .\m_payload_i_reg[2]_0 (\m_payload_i_reg[2] ),
        .m_valid_i_reg_0(m_valid_i_reg_1),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .match(match),
        .match_0(match_0),
        .match_3(match_3),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[95] (\s_axi_awaddr[95] ),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bready[0]_0 (\s_axi_bready[0]_0 ),
        .s_axi_bready_0_sp_1(s_axi_bready_0_sn_1),
        .s_axi_bready_1_sp_1(s_axi_bready_1_sn_1),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_bvalid[0]_0 (\s_axi_bvalid[0]_0 ),
        .\s_axi_bvalid[0]_1 (\s_axi_bvalid[0]_1 ),
        .\s_axi_bvalid[1]_0 (\s_axi_bvalid[1]_0 ),
        .\s_axi_bvalid[1]_1 (\s_axi_bvalid[1]_1 ),
        .\s_axi_bvalid[2] (\s_axi_bvalid[2] ),
        .\s_axi_bvalid[2]_0 (\s_axi_bvalid[2]_0 ),
        .\s_axi_bvalid[2]_1 (\s_axi_bvalid[2]_1 ),
        .s_axi_bvalid_0_sp_1(s_axi_bvalid_0_sn_1),
        .s_axi_bvalid_1_sp_1(s_axi_bvalid_1_sn_1),
        .s_ready_i_reg_0(m_valid_i_reg_3),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .st_mr_bvalid(st_mr_bvalid));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_24 \r.r_pipe 
       (.Q(Q),
        .aclk(aclk),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0]_0 ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_arbiter.qual_reg_reg[0]_1 ),
        .\gen_arbiter.qual_reg_reg[2] (\gen_arbiter.qual_reg_reg[2] ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[36]_1 (\m_payload_i_reg[36]_0 ),
        .\m_payload_i_reg[36]_2 (\m_payload_i_reg[36]_1 ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_2),
        .m_valid_i_reg_2(m_valid_i_reg_3),
        .match_5(match_5),
        .mi_armaxissuing196_in(mi_armaxissuing196_in),
        .r_cmd_pop_1(r_cmd_pop_1),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[126] (\s_axi_araddr[126] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0] (\s_axi_rvalid[0] ),
        .\s_axi_rvalid[1]_0 (\s_axi_rvalid[1]_0 ),
        .\s_axi_rvalid[1]_1 (\s_axi_rvalid[1]_1 ),
        .\s_axi_rvalid[1]_2 (\s_axi_rvalid[1]_2 ),
        .\s_axi_rvalid[2] (\s_axi_rvalid[2] ),
        .\s_axi_rvalid[3] (\s_axi_rvalid[3] ),
        .\s_axi_rvalid[3]_0 (\s_axi_rvalid[3]_0 ),
        .s_axi_rvalid_1_sp_1(s_axi_rvalid_1_sn_1),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .s_rvalid_i0(s_rvalid_i0),
        .st_aa_artarget_hot(st_aa_artarget_hot),
        .st_mr_rvalid(st_mr_rvalid),
        .valid_qual_i1(valid_qual_i1),
        .valid_qual_i142_in(valid_qual_i142_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axi_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_3
   (\aresetn_d_reg[0] ,
    reset,
    \m_payload_i_reg[34] ,
    Q,
    s_ready_i_reg,
    \m_payload_i_reg[34]_0 ,
    \s_axi_araddr[94] ,
    \m_payload_i_reg[34]_1 ,
    s_axi_rvalid,
    m_valid_i_reg,
    \m_payload_i_reg[36] ,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    m_valid_i_reg_2,
    p_2_in,
    p_2_in_0,
    s_rvalid_i0,
    mi_awmaxissuing,
    m_valid_i_reg_3,
    r_cmd_pop_2,
    \m_payload_i_reg[1] ,
    m_axi_bready,
    aclk,
    mi_armaxissuing198_in,
    \s_axi_rvalid[0] ,
    m_axi_rvalid,
    m_valid_i_reg_4,
    target_mi_enc,
    \gen_arbiter.qual_reg[3]_i_2 ,
    match,
    st_aa_artarget_hot,
    s_axi_araddr,
    target_mi_enc_1,
    match_2,
    \s_axi_rvalid[0]_0 ,
    \s_axi_rvalid[0]_1 ,
    \s_axi_rvalid[0]_2 ,
    \s_axi_rvalid[0]_3 ,
    \s_axi_bvalid[2] ,
    \s_axi_bvalid[0] ,
    \s_axi_bvalid[0]_0 ,
    \s_axi_rvalid[1] ,
    \s_axi_bvalid[1] ,
    \s_axi_bvalid[1]_0 ,
    s_axi_rready,
    \s_axi_rvalid[2] ,
    \s_axi_bvalid[2]_0 ,
    \s_axi_bvalid[2]_1 ,
    \gen_single_thread.accept_cnt_reg[5] ,
    s_axi_bready,
    \gen_single_thread.accept_cnt_reg[0] ,
    s_axi_rlast,
    \s_axi_rvalid[3] ,
    aresetn,
    \gen_arbiter.last_rr_hot[3]_i_10 ,
    D,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_bvalid);
  output \aresetn_d_reg[0] ;
  output reset;
  output \m_payload_i_reg[34] ;
  output [34:0]Q;
  output s_ready_i_reg;
  output \m_payload_i_reg[34]_0 ;
  output \s_axi_araddr[94] ;
  output \m_payload_i_reg[34]_1 ;
  output [0:0]s_axi_rvalid;
  output m_valid_i_reg;
  output \m_payload_i_reg[36] ;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output m_valid_i_reg_2;
  output p_2_in;
  output p_2_in_0;
  output [0:0]s_rvalid_i0;
  output [0:0]mi_awmaxissuing;
  output m_valid_i_reg_3;
  output r_cmd_pop_2;
  output [1:0]\m_payload_i_reg[1] ;
  output [0:0]m_axi_bready;
  input aclk;
  input mi_armaxissuing198_in;
  input [0:0]\s_axi_rvalid[0] ;
  input [0:0]m_axi_rvalid;
  input m_valid_i_reg_4;
  input [0:0]target_mi_enc;
  input \gen_arbiter.qual_reg[3]_i_2 ;
  input match;
  input [1:0]st_aa_artarget_hot;
  input [1:0]s_axi_araddr;
  input [0:0]target_mi_enc_1;
  input match_2;
  input \s_axi_rvalid[0]_0 ;
  input \s_axi_rvalid[0]_1 ;
  input \s_axi_rvalid[0]_2 ;
  input [0:0]\s_axi_rvalid[0]_3 ;
  input [0:0]\s_axi_bvalid[2] ;
  input [0:0]\s_axi_bvalid[0] ;
  input \s_axi_bvalid[0]_0 ;
  input [0:0]\s_axi_rvalid[1] ;
  input [0:0]\s_axi_bvalid[1] ;
  input \s_axi_bvalid[1]_0 ;
  input [3:0]s_axi_rready;
  input [0:0]\s_axi_rvalid[2] ;
  input [0:0]\s_axi_bvalid[2]_0 ;
  input \s_axi_bvalid[2]_1 ;
  input \gen_single_thread.accept_cnt_reg[5] ;
  input [2:0]s_axi_bready;
  input [2:0]\gen_single_thread.accept_cnt_reg[0] ;
  input [0:0]s_axi_rlast;
  input [0:0]\s_axi_rvalid[3] ;
  input aresetn;
  input \gen_arbiter.last_rr_hot[3]_i_10 ;
  input [3:0]D;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input [0:0]m_axi_bvalid;

  wire [3:0]D;
  wire [34:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0] ;
  wire \gen_arbiter.last_rr_hot[3]_i_10 ;
  wire \gen_arbiter.qual_reg[3]_i_2 ;
  wire [2:0]\gen_single_thread.accept_cnt_reg[0] ;
  wire \gen_single_thread.accept_cnt_reg[5] ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [1:0]\m_payload_i_reg[1] ;
  wire \m_payload_i_reg[34] ;
  wire \m_payload_i_reg[34]_0 ;
  wire \m_payload_i_reg[34]_1 ;
  wire \m_payload_i_reg[36] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire m_valid_i_reg_3;
  wire m_valid_i_reg_4;
  wire match;
  wire match_2;
  wire mi_armaxissuing198_in;
  wire [0:0]mi_awmaxissuing;
  wire p_2_in;
  wire p_2_in_0;
  wire r_cmd_pop_2;
  wire reset;
  wire [1:0]s_axi_araddr;
  wire \s_axi_araddr[94] ;
  wire [2:0]s_axi_bready;
  wire [0:0]\s_axi_bvalid[0] ;
  wire \s_axi_bvalid[0]_0 ;
  wire [0:0]\s_axi_bvalid[1] ;
  wire \s_axi_bvalid[1]_0 ;
  wire [0:0]\s_axi_bvalid[2] ;
  wire [0:0]\s_axi_bvalid[2]_0 ;
  wire \s_axi_bvalid[2]_1 ;
  wire [0:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire \s_axi_rvalid[0]_0 ;
  wire \s_axi_rvalid[0]_1 ;
  wire \s_axi_rvalid[0]_2 ;
  wire [0:0]\s_axi_rvalid[0]_3 ;
  wire [0:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire [0:0]\s_axi_rvalid[3] ;
  wire s_ready_i_reg;
  wire [0:0]s_rvalid_i0;
  wire [1:0]st_aa_artarget_hot;
  wire [0:0]target_mi_enc;
  wire [0:0]target_mi_enc_1;

  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_19 \b.b_pipe 
       (.D(D),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0] ),
        .\gen_arbiter.last_rr_hot[3]_i_10 (\gen_arbiter.last_rr_hot[3]_i_10 ),
        .\gen_single_thread.accept_cnt_reg[5] (\gen_single_thread.accept_cnt_reg[5] ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[1]_0 (\m_payload_i_reg[1] ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .m_valid_i_reg_2(m_valid_i_reg_2),
        .m_valid_i_reg_3(m_valid_i_reg_3),
        .mi_awmaxissuing(mi_awmaxissuing),
        .p_2_in(p_2_in),
        .reset(reset),
        .s_axi_bready(s_axi_bready),
        .\s_axi_bvalid[0] (\s_axi_bvalid[0] ),
        .\s_axi_bvalid[0]_0 (\s_axi_bvalid[0]_0 ),
        .\s_axi_bvalid[1] (\s_axi_bvalid[1] ),
        .\s_axi_bvalid[1]_0 (\s_axi_bvalid[1]_0 ),
        .\s_axi_bvalid[2] (\s_axi_bvalid[2] ),
        .\s_axi_bvalid[2]_0 (\s_axi_bvalid[2]_0 ),
        .\s_axi_bvalid[2]_1 (\s_axi_bvalid[2]_1 ),
        .s_ready_i_reg_0(m_valid_i_reg_4));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_20 \r.r_pipe 
       (.Q(Q),
        .aclk(aclk),
        .\gen_arbiter.qual_reg[3]_i_2 (\gen_arbiter.qual_reg[3]_i_2 ),
        .\gen_single_thread.accept_cnt_reg[0] (\gen_single_thread.accept_cnt_reg[0] ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .\m_payload_i_reg[34]_1 (\m_payload_i_reg[34]_0 ),
        .\m_payload_i_reg[34]_2 (\m_payload_i_reg[34]_1 ),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .m_valid_i_reg_0(m_valid_i_reg_1),
        .m_valid_i_reg_1(m_valid_i_reg_4),
        .match(match),
        .match_2(match_2),
        .mi_armaxissuing198_in(mi_armaxissuing198_in),
        .p_2_in_0(p_2_in_0),
        .r_cmd_pop_2(r_cmd_pop_2),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[94] (\s_axi_araddr[94] ),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0]_0 (\s_axi_rvalid[0] ),
        .\s_axi_rvalid[0]_1 (\s_axi_rvalid[0]_1 ),
        .\s_axi_rvalid[0]_2 (\s_axi_rvalid[0]_2 ),
        .\s_axi_rvalid[0]_3 (\s_axi_rvalid[0]_3 ),
        .\s_axi_rvalid[1] (\s_axi_rvalid[1] ),
        .\s_axi_rvalid[2] (\s_axi_rvalid[2] ),
        .\s_axi_rvalid[3] (\s_axi_rvalid[3] ),
        .s_axi_rvalid_0_sp_1(\s_axi_rvalid[0]_0 ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(\aresetn_d_reg[0] ),
        .s_rvalid_i0(s_rvalid_i0),
        .st_aa_artarget_hot(st_aa_artarget_hot),
        .target_mi_enc(target_mi_enc),
        .target_mi_enc_1(target_mi_enc_1));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axi_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axi_register_slice_4
   (\aresetn_d_reg[1] ,
    \gen_master_slots[3].r_issuing_cnt_reg[24] ,
    \gen_master_slots[3].r_issuing_cnt_reg[24]_0 ,
    st_mr_rlast,
    m_valid_i_reg,
    mi_rready_3,
    s_ready_i_reg,
    mi_bready_3,
    \gen_master_slots[3].w_issuing_cnt_reg[24] ,
    m_valid_i_reg_0,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_0 ,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_1 ,
    \gen_single_issue.active_target_hot_reg[3] ,
    \gen_single_issue.active_target_hot_reg[3]_0 ,
    \m_payload_i_reg[36] ,
    \gen_single_issue.active_target_hot_reg[3]_1 ,
    s_axi_rready_2_sp_1,
    m_valid_i_reg_1,
    \gen_single_thread.active_target_hot_reg[3] ,
    \m_payload_i_reg[36]_0 ,
    \gen_axi.s_axi_awready_i_reg ,
    r_cmd_pop_3,
    st_mr_rmesg,
    reset,
    \aresetn_d_reg[1]_0 ,
    aclk,
    match,
    r_issuing_cnt,
    p_19_in,
    p_24_in,
    p_21_in,
    \gen_axi.s_axi_awready_i_reg_0 ,
    w_issuing_cnt,
    mi_awmaxissuing,
    target_mi_enc,
    match_0,
    target_mi_enc_1,
    match_2,
    target_mi_enc_3,
    match_4,
    Q,
    m_valid_i_i_2__0,
    \s_axi_rvalid[1] ,
    m_valid_i_i_2__0_0,
    \gen_arbiter.qual_reg[2]_i_2 ,
    \gen_arbiter.qual_reg[2]_i_2_0 ,
    \gen_arbiter.qual_reg[2]_i_2_1 ,
    s_axi_rready,
    \gen_arbiter.qual_reg[2]_i_2_2 ,
    \s_axi_rvalid[2] ,
    s_ready_i_reg_0,
    \s_axi_rvalid[3] ,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_2 ,
    mi_awready_3,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_3 ,
    s_axi_bready,
    p_28_in,
    p_25_in);
  output \aresetn_d_reg[1] ;
  output \gen_master_slots[3].r_issuing_cnt_reg[24] ;
  output \gen_master_slots[3].r_issuing_cnt_reg[24]_0 ;
  output [0:0]st_mr_rlast;
  output [0:0]m_valid_i_reg;
  output mi_rready_3;
  output s_ready_i_reg;
  output mi_bready_3;
  output \gen_master_slots[3].w_issuing_cnt_reg[24] ;
  output [0:0]m_valid_i_reg_0;
  output \gen_master_slots[3].w_issuing_cnt_reg[24]_0 ;
  output \gen_master_slots[3].w_issuing_cnt_reg[24]_1 ;
  output \gen_single_issue.active_target_hot_reg[3] ;
  output \gen_single_issue.active_target_hot_reg[3]_0 ;
  output \m_payload_i_reg[36] ;
  output \gen_single_issue.active_target_hot_reg[3]_1 ;
  output s_axi_rready_2_sp_1;
  output m_valid_i_reg_1;
  output \gen_single_thread.active_target_hot_reg[3] ;
  output [0:0]\m_payload_i_reg[36]_0 ;
  output \gen_axi.s_axi_awready_i_reg ;
  output r_cmd_pop_3;
  output [0:0]st_mr_rmesg;
  input reset;
  input \aresetn_d_reg[1]_0 ;
  input aclk;
  input match;
  input [0:0]r_issuing_cnt;
  input p_19_in;
  input [1:0]p_24_in;
  input p_21_in;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input [0:0]w_issuing_cnt;
  input [0:0]mi_awmaxissuing;
  input [0:0]target_mi_enc;
  input match_0;
  input [0:0]target_mi_enc_1;
  input match_2;
  input [0:0]target_mi_enc_3;
  input match_4;
  input [0:0]Q;
  input [0:0]m_valid_i_i_2__0;
  input [0:0]\s_axi_rvalid[1] ;
  input [0:0]m_valid_i_i_2__0_0;
  input \gen_arbiter.qual_reg[2]_i_2 ;
  input \gen_arbiter.qual_reg[2]_i_2_0 ;
  input \gen_arbiter.qual_reg[2]_i_2_1 ;
  input [3:0]s_axi_rready;
  input \gen_arbiter.qual_reg[2]_i_2_2 ;
  input [0:0]\s_axi_rvalid[2] ;
  input [0:0]s_ready_i_reg_0;
  input [0:0]\s_axi_rvalid[3] ;
  input \gen_master_slots[3].w_issuing_cnt_reg[24]_2 ;
  input mi_awready_3;
  input [0:0]\gen_master_slots[3].w_issuing_cnt_reg[24]_3 ;
  input [2:0]s_axi_bready;
  input [1:0]p_28_in;
  input p_25_in;

  wire [0:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \gen_arbiter.qual_reg[2]_i_2 ;
  wire \gen_arbiter.qual_reg[2]_i_2_0 ;
  wire \gen_arbiter.qual_reg[2]_i_2_1 ;
  wire \gen_arbiter.qual_reg[2]_i_2_2 ;
  wire \gen_axi.s_axi_awready_i_reg ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_master_slots[3].r_issuing_cnt_reg[24] ;
  wire \gen_master_slots[3].r_issuing_cnt_reg[24]_0 ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24] ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24]_0 ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24]_1 ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24]_2 ;
  wire [0:0]\gen_master_slots[3].w_issuing_cnt_reg[24]_3 ;
  wire \gen_single_issue.active_target_hot_reg[3] ;
  wire \gen_single_issue.active_target_hot_reg[3]_0 ;
  wire \gen_single_issue.active_target_hot_reg[3]_1 ;
  wire \gen_single_thread.active_target_hot_reg[3] ;
  wire \m_payload_i_reg[36] ;
  wire [0:0]\m_payload_i_reg[36]_0 ;
  wire [0:0]m_valid_i_i_2__0;
  wire [0:0]m_valid_i_i_2__0_0;
  wire [0:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire match_0;
  wire match_2;
  wire match_4;
  wire [0:0]mi_awmaxissuing;
  wire mi_awready_3;
  wire mi_bready_3;
  wire mi_rready_3;
  wire p_19_in;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire p_25_in;
  wire [1:0]p_28_in;
  wire r_cmd_pop_3;
  wire [0:0]r_issuing_cnt;
  wire reset;
  wire [2:0]s_axi_bready;
  wire [3:0]s_axi_rready;
  wire s_axi_rready_2_sn_1;
  wire [0:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire [0:0]\s_axi_rvalid[3] ;
  wire s_ready_i_reg;
  wire [0:0]s_ready_i_reg_0;
  wire [0:0]st_mr_rlast;
  wire [0:0]st_mr_rmesg;
  wire [0:0]target_mi_enc;
  wire [0:0]target_mi_enc_1;
  wire [0:0]target_mi_enc_3;
  wire [0:0]w_issuing_cnt;

  assign s_axi_rready_2_sp_1 = s_axi_rready_2_sn_1;
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1 \b.b_pipe 
       (.aclk(aclk),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1]_0 ),
        .\gen_axi.s_axi_awready_i_reg (\gen_axi.s_axi_awready_i_reg ),
        .\gen_axi.s_axi_awready_i_reg_0 (\gen_axi.s_axi_awready_i_reg_0 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24] (\gen_master_slots[3].w_issuing_cnt_reg[24] ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_0 (\gen_master_slots[3].w_issuing_cnt_reg[24]_0 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_1 (\gen_master_slots[3].w_issuing_cnt_reg[24]_1 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_2 (\gen_master_slots[3].w_issuing_cnt_reg[24]_2 ),
        .\gen_master_slots[3].w_issuing_cnt_reg[24]_3 (\gen_master_slots[3].w_issuing_cnt_reg[24]_3 ),
        .\gen_single_issue.active_target_hot_reg[3] (\gen_single_issue.active_target_hot_reg[3]_0 ),
        .\gen_single_issue.active_target_hot_reg[3]_0 (\gen_single_issue.active_target_hot_reg[3]_1 ),
        .\gen_single_thread.active_target_hot_reg[3] (\gen_single_thread.active_target_hot_reg[3] ),
        .m_valid_i_i_2__0_0(m_valid_i_i_2__0),
        .m_valid_i_i_2__0_1(m_valid_i_i_2__0_0),
        .m_valid_i_reg_0(m_valid_i_reg_0),
        .match_0(match_0),
        .match_2(match_2),
        .match_4(match_4),
        .mi_awmaxissuing(mi_awmaxissuing),
        .mi_awready_3(mi_awready_3),
        .mi_bready_3(mi_bready_3),
        .p_25_in(p_25_in),
        .p_28_in(p_28_in),
        .reset(reset),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .target_mi_enc(target_mi_enc),
        .target_mi_enc_1(target_mi_enc_1),
        .target_mi_enc_3(target_mi_enc_3),
        .w_issuing_cnt(w_issuing_cnt));
  mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2 \r.r_pipe 
       (.Q(Q),
        .aclk(aclk),
        .\gen_arbiter.qual_reg[2]_i_2 (\gen_arbiter.qual_reg[2]_i_2 ),
        .\gen_arbiter.qual_reg[2]_i_2_0 (\gen_arbiter.qual_reg[2]_i_2_0 ),
        .\gen_arbiter.qual_reg[2]_i_2_1 (\gen_arbiter.qual_reg[2]_i_2_1 ),
        .\gen_arbiter.qual_reg[2]_i_2_2 (\gen_arbiter.qual_reg[2]_i_2_2 ),
        .\gen_master_slots[3].r_issuing_cnt_reg[24] (\gen_master_slots[3].r_issuing_cnt_reg[24] ),
        .\gen_master_slots[3].r_issuing_cnt_reg[24]_0 (\gen_master_slots[3].r_issuing_cnt_reg[24]_0 ),
        .\gen_single_issue.active_target_hot_reg[3] (\gen_single_issue.active_target_hot_reg[3] ),
        .\m_payload_i_reg[34]_0 (st_mr_rlast),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[36]_1 (\m_payload_i_reg[36]_0 ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_1),
        .m_valid_i_reg_2(\aresetn_d_reg[1] ),
        .match(match),
        .p_19_in(p_19_in),
        .p_21_in(p_21_in),
        .p_24_in(p_24_in),
        .r_cmd_pop_3(r_cmd_pop_3),
        .r_issuing_cnt(r_issuing_cnt),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_2_sp_1(s_axi_rready_2_sn_1),
        .\s_axi_rvalid[1] (\s_axi_rvalid[1] ),
        .\s_axi_rvalid[2] (\s_axi_rvalid[2] ),
        .\s_axi_rvalid[3] (\s_axi_rvalid[3] ),
        .s_ready_i_reg_0(mi_rready_3),
        .s_ready_i_reg_1(\aresetn_d_reg[1]_0 ),
        .st_mr_rmesg(st_mr_rmesg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1
   (\aresetn_d_reg[1]_0 ,
    m_valid_i_reg_0,
    mi_bready_3,
    s_ready_i_reg_0,
    \gen_master_slots[3].w_issuing_cnt_reg[24] ,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_0 ,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_1 ,
    \gen_single_issue.active_target_hot_reg[3] ,
    \gen_single_issue.active_target_hot_reg[3]_0 ,
    \gen_single_thread.active_target_hot_reg[3] ,
    \gen_axi.s_axi_awready_i_reg ,
    reset,
    \aresetn_d_reg[1]_1 ,
    aclk,
    \gen_axi.s_axi_awready_i_reg_0 ,
    w_issuing_cnt,
    mi_awmaxissuing,
    target_mi_enc,
    match_0,
    target_mi_enc_1,
    match_2,
    target_mi_enc_3,
    match_4,
    m_valid_i_i_2__0_0,
    m_valid_i_i_2__0_1,
    s_ready_i_reg_1,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_2 ,
    mi_awready_3,
    \gen_master_slots[3].w_issuing_cnt_reg[24]_3 ,
    s_axi_bready,
    p_25_in,
    p_28_in);
  output \aresetn_d_reg[1]_0 ;
  output m_valid_i_reg_0;
  output mi_bready_3;
  output s_ready_i_reg_0;
  output \gen_master_slots[3].w_issuing_cnt_reg[24] ;
  output \gen_master_slots[3].w_issuing_cnt_reg[24]_0 ;
  output \gen_master_slots[3].w_issuing_cnt_reg[24]_1 ;
  output \gen_single_issue.active_target_hot_reg[3] ;
  output \gen_single_issue.active_target_hot_reg[3]_0 ;
  output \gen_single_thread.active_target_hot_reg[3] ;
  output \gen_axi.s_axi_awready_i_reg ;
  input reset;
  input \aresetn_d_reg[1]_1 ;
  input aclk;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input [0:0]w_issuing_cnt;
  input [0:0]mi_awmaxissuing;
  input [0:0]target_mi_enc;
  input match_0;
  input [0:0]target_mi_enc_1;
  input match_2;
  input [0:0]target_mi_enc_3;
  input match_4;
  input [0:0]m_valid_i_i_2__0_0;
  input [0:0]m_valid_i_i_2__0_1;
  input [0:0]s_ready_i_reg_1;
  input \gen_master_slots[3].w_issuing_cnt_reg[24]_2 ;
  input mi_awready_3;
  input [0:0]\gen_master_slots[3].w_issuing_cnt_reg[24]_3 ;
  input [2:0]s_axi_bready;
  input p_25_in;
  input [1:0]p_28_in;

  wire aclk;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \gen_axi.s_axi_awready_i_reg ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24] ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24]_0 ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24]_1 ;
  wire \gen_master_slots[3].w_issuing_cnt_reg[24]_2 ;
  wire [0:0]\gen_master_slots[3].w_issuing_cnt_reg[24]_3 ;
  wire \gen_single_issue.active_target_hot_reg[3] ;
  wire \gen_single_issue.active_target_hot_reg[3]_0 ;
  wire \gen_single_thread.active_target_hot_reg[3] ;
  wire \m_payload_i[2]_i_1_n_0 ;
  wire \m_payload_i[3]_i_1_n_0 ;
  wire m_valid_i_i_1__9_n_0;
  wire [0:0]m_valid_i_i_2__0_0;
  wire [0:0]m_valid_i_i_2__0_1;
  wire m_valid_i_i_2__0_n_0;
  wire m_valid_i_i_3_n_0;
  wire m_valid_i_reg_0;
  wire match_0;
  wire match_2;
  wire match_4;
  wire [0:0]mi_awmaxissuing;
  wire mi_awready_3;
  wire mi_bready_3;
  wire p_25_in;
  wire [1:0]p_28_in;
  wire reset;
  wire [2:0]s_axi_bready;
  wire s_ready_i_i_1__5_n_0;
  wire s_ready_i_reg_0;
  wire [0:0]s_ready_i_reg_1;
  wire [7:6]st_mr_bid;
  wire [0:0]target_mi_enc;
  wire [0:0]target_mi_enc_1;
  wire [0:0]target_mi_enc_3;
  wire [0:0]w_issuing_cnt;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(reset));
  LUT6 #(
    .INIT(64'hFF00FFFF8A8A8A8A)) 
    \gen_arbiter.last_rr_hot[3]_i_10 
       (.I0(w_issuing_cnt),
        .I1(m_valid_i_i_2__0_n_0),
        .I2(m_valid_i_reg_0),
        .I3(mi_awmaxissuing),
        .I4(target_mi_enc),
        .I5(match_0),
        .O(\gen_master_slots[3].w_issuing_cnt_reg[24] ));
  LUT6 #(
    .INIT(64'hFF00FFFF8A8A8A8A)) 
    \gen_arbiter.last_rr_hot[3]_i_13 
       (.I0(w_issuing_cnt),
        .I1(m_valid_i_i_2__0_n_0),
        .I2(m_valid_i_reg_0),
        .I3(mi_awmaxissuing),
        .I4(target_mi_enc_3),
        .I5(match_4),
        .O(\gen_master_slots[3].w_issuing_cnt_reg[24]_1 ));
  LUT6 #(
    .INIT(64'hFF00FFFF8A8A8A8A)) 
    \gen_arbiter.last_rr_hot[3]_i_7 
       (.I0(w_issuing_cnt),
        .I1(m_valid_i_i_2__0_n_0),
        .I2(m_valid_i_reg_0),
        .I3(mi_awmaxissuing),
        .I4(target_mi_enc_1),
        .I5(match_2),
        .O(\gen_master_slots[3].w_issuing_cnt_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_axi.s_axi_awready_i_i_2 
       (.I0(mi_bready_3),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .O(s_ready_i_reg_0));
  LUT6 #(
    .INIT(64'hBF40BFBF40004040)) 
    \gen_master_slots[3].w_issuing_cnt[24]_i_1 
       (.I0(\gen_master_slots[3].w_issuing_cnt_reg[24]_2 ),
        .I1(mi_awready_3),
        .I2(\gen_master_slots[3].w_issuing_cnt_reg[24]_3 ),
        .I3(m_valid_i_i_2__0_n_0),
        .I4(m_valid_i_reg_0),
        .I5(w_issuing_cnt),
        .O(\gen_axi.s_axi_awready_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[2]_i_1 
       (.I0(p_28_in[0]),
        .I1(m_valid_i_reg_0),
        .I2(st_mr_bid[6]),
        .O(\m_payload_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[3]_i_1 
       (.I0(p_28_in[1]),
        .I1(m_valid_i_reg_0),
        .I2(st_mr_bid[7]),
        .O(\m_payload_i[3]_i_1_n_0 ));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[2]_i_1_n_0 ),
        .Q(st_mr_bid[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[3]_i_1_n_0 ),
        .Q(st_mr_bid[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    m_valid_i_i_1__9
       (.I0(m_valid_i_i_2__0_n_0),
        .I1(mi_bready_3),
        .I2(p_25_in),
        .I3(\aresetn_d_reg[1]_0 ),
        .O(m_valid_i_i_1__9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    m_valid_i_i_2__0
       (.I0(s_axi_bready[2]),
        .I1(s_ready_i_reg_1),
        .I2(st_mr_bid[7]),
        .I3(st_mr_bid[6]),
        .I4(m_valid_i_i_3_n_0),
        .O(m_valid_i_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h000000008888F000)) 
    m_valid_i_i_3
       (.I0(s_axi_bready[1]),
        .I1(m_valid_i_i_2__0_1),
        .I2(s_axi_bready[0]),
        .I3(m_valid_i_i_2__0_0),
        .I4(st_mr_bid[6]),
        .I5(st_mr_bid[7]),
        .O(m_valid_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__9_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_bvalid[0]_INST_0_i_4 
       (.I0(m_valid_i_i_2__0_0),
        .I1(st_mr_bid[6]),
        .I2(st_mr_bid[7]),
        .O(\gen_single_issue.active_target_hot_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_bvalid[1]_INST_0_i_4 
       (.I0(m_valid_i_i_2__0_1),
        .I1(st_mr_bid[6]),
        .I2(st_mr_bid[7]),
        .O(\gen_single_issue.active_target_hot_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_bvalid[2]_INST_0_i_4 
       (.I0(s_ready_i_reg_1),
        .I1(st_mr_bid[7]),
        .I2(st_mr_bid[6]),
        .O(\gen_single_thread.active_target_hot_reg[3] ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    s_ready_i_i_1__5
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(m_valid_i_i_2__0_n_0),
        .I2(m_valid_i_reg_0),
        .I3(p_25_in),
        .I4(\aresetn_d_reg[1]_1 ),
        .O(s_ready_i_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__5_n_0),
        .Q(mi_bready_3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_19
   (\aresetn_d_reg[0]_0 ,
    reset,
    m_axi_bready,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    m_valid_i_reg_2,
    p_2_in,
    mi_awmaxissuing,
    m_valid_i_reg_3,
    \m_payload_i_reg[1]_0 ,
    aclk,
    \s_axi_bvalid[0] ,
    \s_axi_bvalid[2] ,
    \s_axi_bvalid[0]_0 ,
    \s_axi_bvalid[1] ,
    \s_axi_bvalid[1]_0 ,
    \s_axi_bvalid[2]_0 ,
    \s_axi_bvalid[2]_1 ,
    \gen_single_thread.accept_cnt_reg[5] ,
    s_axi_bready,
    aresetn,
    \gen_arbiter.last_rr_hot[3]_i_10 ,
    m_axi_bvalid,
    s_ready_i_reg_0,
    D);
  output \aresetn_d_reg[0]_0 ;
  output reset;
  output [0:0]m_axi_bready;
  output m_valid_i_reg_0;
  output m_valid_i_reg_1;
  output m_valid_i_reg_2;
  output p_2_in;
  output [0:0]mi_awmaxissuing;
  output m_valid_i_reg_3;
  output [1:0]\m_payload_i_reg[1]_0 ;
  input aclk;
  input [0:0]\s_axi_bvalid[0] ;
  input [0:0]\s_axi_bvalid[2] ;
  input \s_axi_bvalid[0]_0 ;
  input [0:0]\s_axi_bvalid[1] ;
  input \s_axi_bvalid[1]_0 ;
  input [0:0]\s_axi_bvalid[2]_0 ;
  input \s_axi_bvalid[2]_1 ;
  input \gen_single_thread.accept_cnt_reg[5] ;
  input [2:0]s_axi_bready;
  input aresetn;
  input \gen_arbiter.last_rr_hot[3]_i_10 ;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input [3:0]D;

  wire [3:0]D;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0]_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_10 ;
  wire \gen_arbiter.last_rr_hot[3]_i_21_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[5] ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[3]_i_1__1_n_0 ;
  wire [1:0]\m_payload_i_reg[1]_0 ;
  wire m_valid_i_i_1__7_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire m_valid_i_reg_3;
  wire [0:0]mi_awmaxissuing;
  wire p_2_in;
  wire reset;
  wire [2:0]s_axi_bready;
  wire [0:0]\s_axi_bvalid[0] ;
  wire \s_axi_bvalid[0]_0 ;
  wire [0:0]\s_axi_bvalid[1] ;
  wire \s_axi_bvalid[1]_0 ;
  wire [0:0]\s_axi_bvalid[2] ;
  wire [0:0]\s_axi_bvalid[2]_0 ;
  wire \s_axi_bvalid[2]_1 ;
  wire s_ready_i_i_1__4_n_0;
  wire s_ready_i_i_2__2_n_0;
  wire s_ready_i_i_3__0_n_0;
  wire s_ready_i_reg_0;
  wire [5:4]st_mr_bid;
  wire [2:2]st_mr_bvalid;

  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[0]_i_1 
       (.I0(aresetn),
        .O(reset));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(reset));
  LUT5 #(
    .INIT(32'h002AAAAA)) 
    \gen_arbiter.last_rr_hot[3]_i_16 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_10 ),
        .I1(s_axi_bready[2]),
        .I2(\gen_arbiter.last_rr_hot[3]_i_21_n_0 ),
        .I3(s_ready_i_i_3__0_n_0),
        .I4(st_mr_bvalid),
        .O(mi_awmaxissuing));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \gen_arbiter.last_rr_hot[3]_i_21 
       (.I0(\s_axi_bvalid[2]_0 ),
        .I1(st_mr_bid[5]),
        .I2(st_mr_bid[4]),
        .O(\gen_arbiter.last_rr_hot[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8A88888888888888)) 
    \gen_master_slots[2].w_issuing_cnt[21]_i_5 
       (.I0(st_mr_bvalid),
        .I1(s_ready_i_i_3__0_n_0),
        .I2(st_mr_bid[4]),
        .I3(st_mr_bid[5]),
        .I4(\s_axi_bvalid[2]_0 ),
        .I5(s_axi_bready[2]),
        .O(m_valid_i_reg_3));
  LUT3 #(
    .INIT(8'hE0)) 
    \gen_single_thread.accept_cnt[5]_i_3 
       (.I0(m_valid_i_reg_2),
        .I1(\gen_single_thread.accept_cnt_reg[5] ),
        .I2(s_axi_bready[2]),
        .O(p_2_in));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[3]_i_1__1 
       (.I0(st_mr_bvalid),
        .O(\m_payload_i[3]_i_1__1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__1_n_0 ),
        .D(D[0]),
        .Q(\m_payload_i_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__1_n_0 ),
        .D(D[1]),
        .Q(\m_payload_i_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__1_n_0 ),
        .D(D[2]),
        .Q(st_mr_bid[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__1_n_0 ),
        .D(D[3]),
        .Q(st_mr_bid[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE200)) 
    m_valid_i_i_1__7
       (.I0(s_ready_i_i_2__2_n_0),
        .I1(m_axi_bready),
        .I2(m_axi_bvalid),
        .I3(s_ready_i_reg_0),
        .O(m_valid_i_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__7_n_0),
        .Q(st_mr_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF800880088008)) 
    \s_axi_bvalid[0]_INST_0_i_3 
       (.I0(st_mr_bvalid),
        .I1(\s_axi_bvalid[0] ),
        .I2(st_mr_bid[5]),
        .I3(st_mr_bid[4]),
        .I4(\s_axi_bvalid[2] ),
        .I5(\s_axi_bvalid[0]_0 ),
        .O(m_valid_i_reg_0));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \s_axi_bvalid[1]_INST_0_i_3 
       (.I0(st_mr_bvalid),
        .I1(\s_axi_bvalid[1] ),
        .I2(st_mr_bid[4]),
        .I3(st_mr_bid[5]),
        .I4(\s_axi_bvalid[2] ),
        .I5(\s_axi_bvalid[1]_0 ),
        .O(m_valid_i_reg_1));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \s_axi_bvalid[2]_INST_0_i_3 
       (.I0(st_mr_bvalid),
        .I1(\s_axi_bvalid[2]_0 ),
        .I2(st_mr_bid[5]),
        .I3(st_mr_bid[4]),
        .I4(\s_axi_bvalid[2] ),
        .I5(\s_axi_bvalid[2]_1 ),
        .O(m_valid_i_reg_2));
  LUT5 #(
    .INIT(32'h757F0000)) 
    s_ready_i_i_1__4
       (.I0(s_ready_i_reg_0),
        .I1(s_ready_i_i_2__2_n_0),
        .I2(st_mr_bvalid),
        .I3(m_axi_bvalid),
        .I4(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    s_ready_i_i_2__2
       (.I0(s_axi_bready[2]),
        .I1(\s_axi_bvalid[2]_0 ),
        .I2(st_mr_bid[5]),
        .I3(st_mr_bid[4]),
        .I4(s_ready_i_i_3__0_n_0),
        .O(s_ready_i_i_2__2_n_0));
  LUT6 #(
    .INIT(64'hF00088880000F000)) 
    s_ready_i_i_3__0
       (.I0(s_axi_bready[1]),
        .I1(\s_axi_bvalid[1] ),
        .I2(s_axi_bready[0]),
        .I3(\s_axi_bvalid[0] ),
        .I4(st_mr_bid[5]),
        .I5(st_mr_bid[4]),
        .O(s_ready_i_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__4_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_23
   (m_valid_i_reg_0,
    m_axi_bready,
    s_axi_bready_0_sp_1,
    m_valid_i_reg_1,
    \gen_single_issue.accept_cnt_reg ,
    \s_axi_awaddr[95] ,
    \gen_single_issue.accept_cnt_reg_0 ,
    s_axi_bvalid,
    \s_axi_bready[0]_0 ,
    s_axi_bready_1_sp_1,
    \gen_single_thread.active_target_hot_reg[1] ,
    \m_payload_i_reg[2]_0 ,
    \m_payload_i_reg[1]_0 ,
    aclk,
    \gen_arbiter.m_grant_enc_i_reg[0] ,
    s_axi_bready,
    \gen_single_issue.accept_cnt ,
    \gen_arbiter.qual_reg_reg[0] ,
    s_axi_awaddr,
    \gen_arbiter.last_rr_hot[3]_i_3_0 ,
    match,
    ADDRESS_HIT_0,
    match_0,
    ADDRESS_HIT_0_1,
    \gen_arbiter.qual_reg_reg[1] ,
    \gen_single_issue.accept_cnt_2 ,
    match_3,
    ADDRESS_HIT_0_4,
    s_axi_bvalid_0_sp_1,
    st_mr_bvalid,
    \s_axi_bvalid[0]_0 ,
    \s_axi_bvalid[0]_1 ,
    s_axi_bvalid_1_sp_1,
    \s_axi_bvalid[1]_0 ,
    \s_axi_bvalid[1]_1 ,
    \s_axi_bvalid[2] ,
    \s_axi_bvalid[2]_0 ,
    \s_axi_bvalid[2]_1 ,
    \gen_arbiter.last_rr_hot[3]_i_11_0 ,
    \gen_arbiter.last_rr_hot[3]_i_11_1 ,
    m_axi_bvalid,
    s_ready_i_reg_0,
    s_ready_i_reg_1,
    D);
  output m_valid_i_reg_0;
  output [0:0]m_axi_bready;
  output s_axi_bready_0_sp_1;
  output m_valid_i_reg_1;
  output \gen_single_issue.accept_cnt_reg ;
  output \s_axi_awaddr[95] ;
  output \gen_single_issue.accept_cnt_reg_0 ;
  output [1:0]s_axi_bvalid;
  output \s_axi_bready[0]_0 ;
  output s_axi_bready_1_sp_1;
  output \gen_single_thread.active_target_hot_reg[1] ;
  output \m_payload_i_reg[2]_0 ;
  output [1:0]\m_payload_i_reg[1]_0 ;
  input aclk;
  input \gen_arbiter.m_grant_enc_i_reg[0] ;
  input [2:0]s_axi_bready;
  input \gen_single_issue.accept_cnt ;
  input \gen_arbiter.qual_reg_reg[0] ;
  input [5:0]s_axi_awaddr;
  input [0:0]\gen_arbiter.last_rr_hot[3]_i_3_0 ;
  input match;
  input ADDRESS_HIT_0;
  input match_0;
  input ADDRESS_HIT_0_1;
  input \gen_arbiter.qual_reg_reg[1] ;
  input \gen_single_issue.accept_cnt_2 ;
  input match_3;
  input ADDRESS_HIT_0_4;
  input s_axi_bvalid_0_sp_1;
  input [0:0]st_mr_bvalid;
  input \s_axi_bvalid[0]_0 ;
  input [0:0]\s_axi_bvalid[0]_1 ;
  input s_axi_bvalid_1_sp_1;
  input \s_axi_bvalid[1]_0 ;
  input [0:0]\s_axi_bvalid[1]_1 ;
  input \s_axi_bvalid[2] ;
  input \s_axi_bvalid[2]_0 ;
  input [0:0]\s_axi_bvalid[2]_1 ;
  input [1:0]\gen_arbiter.last_rr_hot[3]_i_11_0 ;
  input \gen_arbiter.last_rr_hot[3]_i_11_1 ;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input s_ready_i_reg_1;
  input [3:0]D;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_1;
  wire ADDRESS_HIT_0_4;
  wire [3:0]D;
  wire aclk;
  wire [1:0]\gen_arbiter.last_rr_hot[3]_i_11_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_11_1 ;
  wire \gen_arbiter.last_rr_hot[3]_i_11_n_0 ;
  wire \gen_arbiter.last_rr_hot[3]_i_12_n_0 ;
  wire [0:0]\gen_arbiter.last_rr_hot[3]_i_3_0 ;
  wire \gen_arbiter.m_grant_enc_i_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[1] ;
  wire \gen_single_issue.accept_cnt ;
  wire \gen_single_issue.accept_cnt_2 ;
  wire \gen_single_issue.accept_cnt_reg ;
  wire \gen_single_issue.accept_cnt_reg_0 ;
  wire \gen_single_thread.active_target_hot_reg[1] ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[3]_i_1__0_n_0 ;
  wire [1:0]\m_payload_i_reg[1]_0 ;
  wire \m_payload_i_reg[2]_0 ;
  wire m_valid_i_i_1__5_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire match_0;
  wire match_3;
  wire [1:1]mi_awmaxissuing;
  wire [1:1]p_22_out;
  wire [5:0]s_axi_awaddr;
  wire \s_axi_awaddr[95] ;
  wire [2:0]s_axi_bready;
  wire \s_axi_bready[0]_0 ;
  wire s_axi_bready_0_sn_1;
  wire s_axi_bready_1_sn_1;
  wire [1:0]s_axi_bvalid;
  wire \s_axi_bvalid[0]_0 ;
  wire [0:0]\s_axi_bvalid[0]_1 ;
  wire \s_axi_bvalid[0]_INST_0_i_1_n_0 ;
  wire \s_axi_bvalid[1]_0 ;
  wire [0:0]\s_axi_bvalid[1]_1 ;
  wire \s_axi_bvalid[1]_INST_0_i_1_n_0 ;
  wire \s_axi_bvalid[2] ;
  wire \s_axi_bvalid[2]_0 ;
  wire [0:0]\s_axi_bvalid[2]_1 ;
  wire s_axi_bvalid_0_sn_1;
  wire s_axi_bvalid_1_sn_1;
  wire s_ready_i_i_1__3_n_0;
  wire s_ready_i_i_2__3_n_0;
  wire s_ready_i_i_3__1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [3:2]st_mr_bid;
  wire [0:0]st_mr_bvalid;

  assign s_axi_bready_0_sp_1 = s_axi_bready_0_sn_1;
  assign s_axi_bready_1_sp_1 = s_axi_bready_1_sn_1;
  assign s_axi_bvalid_0_sn_1 = s_axi_bvalid_0_sp_1;
  assign s_axi_bvalid_1_sn_1 = s_axi_bvalid_1_sp_1;
  LUT6 #(
    .INIT(64'h04FF000004040000)) 
    \gen_arbiter.last_rr_hot[3]_i_11 
       (.I0(mi_awmaxissuing),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_awaddr[0]),
        .I3(\gen_arbiter.last_rr_hot[3]_i_3_0 ),
        .I4(match),
        .I5(ADDRESS_HIT_0),
        .O(\gen_arbiter.last_rr_hot[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h04FF000004040000)) 
    \gen_arbiter.last_rr_hot[3]_i_12 
       (.I0(mi_awmaxissuing),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_awaddr[2]),
        .I3(\gen_arbiter.last_rr_hot[3]_i_3_0 ),
        .I4(match_3),
        .I5(ADDRESS_HIT_0_4),
        .O(\gen_arbiter.last_rr_hot[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000570000)) 
    \gen_arbiter.last_rr_hot[3]_i_14 
       (.I0(m_valid_i_reg_0),
        .I1(p_22_out),
        .I2(s_ready_i_i_3__1_n_0),
        .I3(\gen_arbiter.last_rr_hot[3]_i_11_0 [0]),
        .I4(\gen_arbiter.last_rr_hot[3]_i_11_0 [1]),
        .I5(\gen_arbiter.last_rr_hot[3]_i_11_1 ),
        .O(mi_awmaxissuing));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_arbiter.last_rr_hot[3]_i_17 
       (.I0(st_mr_bid[2]),
        .I1(st_mr_bid[3]),
        .I2(\s_axi_bvalid[2]_1 ),
        .I3(s_axi_bready[2]),
        .O(p_22_out));
  LUT6 #(
    .INIT(64'h80AA80AA000080AA)) 
    \gen_arbiter.last_rr_hot[3]_i_3 
       (.I0(\gen_arbiter.m_grant_enc_i_reg[0] ),
        .I1(s_axi_bready[0]),
        .I2(m_valid_i_reg_1),
        .I3(\gen_single_issue.accept_cnt ),
        .I4(\gen_arbiter.qual_reg_reg[0] ),
        .I5(\gen_arbiter.last_rr_hot[3]_i_11_n_0 ),
        .O(s_axi_bready_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \gen_arbiter.last_rr_hot[3]_i_4 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_12_n_0 ),
        .I1(\gen_arbiter.qual_reg_reg[1] ),
        .I2(\gen_single_issue.accept_cnt_2 ),
        .I3(s_axi_bvalid[0]),
        .I4(s_axi_bready[1]),
        .O(\gen_single_issue.accept_cnt_reg_0 ));
  LUT6 #(
    .INIT(64'h04FF000004040000)) 
    \gen_arbiter.last_rr_hot[3]_i_6 
       (.I0(mi_awmaxissuing),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_awaddr[4]),
        .I3(\gen_arbiter.last_rr_hot[3]_i_3_0 ),
        .I4(match_0),
        .I5(ADDRESS_HIT_0_1),
        .O(\s_axi_awaddr[95] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h44F4F4F4)) 
    \gen_arbiter.qual_reg[0]_i_2 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_11_n_0 ),
        .I1(\gen_arbiter.qual_reg_reg[0] ),
        .I2(\gen_single_issue.accept_cnt ),
        .I3(m_valid_i_reg_1),
        .I4(s_axi_bready[0]),
        .O(\gen_single_issue.accept_cnt_reg ));
  LUT6 #(
    .INIT(64'h45555555FFFFFFFF)) 
    \gen_master_slots[1].w_issuing_cnt[11]_i_4 
       (.I0(s_ready_i_i_3__1_n_0),
        .I1(st_mr_bid[2]),
        .I2(st_mr_bid[3]),
        .I3(\s_axi_bvalid[2]_1 ),
        .I4(s_axi_bready[2]),
        .I5(m_valid_i_reg_0),
        .O(\m_payload_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.accept_cnt_i_2 
       (.I0(m_valid_i_reg_1),
        .I1(s_axi_bready[0]),
        .O(\s_axi_bready[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_single_issue.accept_cnt_i_2__1 
       (.I0(s_axi_bvalid[0]),
        .I1(s_axi_bready[1]),
        .O(s_axi_bready_1_sn_1));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[3]_i_1__0 
       (.I0(m_valid_i_reg_0),
        .O(\m_payload_i[3]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(D[0]),
        .Q(\m_payload_i_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(D[1]),
        .Q(\m_payload_i_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(D[2]),
        .Q(st_mr_bid[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1__0_n_0 ),
        .D(D[3]),
        .Q(st_mr_bid[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE200)) 
    m_valid_i_i_1__5
       (.I0(s_ready_i_i_2__3_n_0),
        .I1(m_axi_bready),
        .I2(m_axi_bvalid),
        .I3(s_ready_i_reg_0),
        .O(m_valid_i_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__5_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(\s_axi_bvalid[0]_INST_0_i_1_n_0 ),
        .I1(m_valid_i_reg_0),
        .I2(s_axi_bvalid_0_sn_1),
        .I3(st_mr_bvalid),
        .I4(\s_axi_bvalid[0]_0 ),
        .O(m_valid_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \s_axi_bvalid[0]_INST_0_i_1 
       (.I0(\s_axi_bvalid[0]_1 ),
        .I1(st_mr_bid[3]),
        .I2(st_mr_bid[2]),
        .O(\s_axi_bvalid[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_bvalid[1]_INST_0 
       (.I0(\s_axi_bvalid[1]_INST_0_i_1_n_0 ),
        .I1(m_valid_i_reg_0),
        .I2(s_axi_bvalid_1_sn_1),
        .I3(st_mr_bvalid),
        .I4(\s_axi_bvalid[1]_0 ),
        .O(s_axi_bvalid[0]));
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_bvalid[1]_INST_0_i_1 
       (.I0(\s_axi_bvalid[1]_1 ),
        .I1(st_mr_bid[2]),
        .I2(st_mr_bid[3]),
        .O(\s_axi_bvalid[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \s_axi_bvalid[2]_INST_0 
       (.I0(\gen_single_thread.active_target_hot_reg[1] ),
        .I1(m_valid_i_reg_0),
        .I2(\s_axi_bvalid[2] ),
        .I3(st_mr_bvalid),
        .I4(\s_axi_bvalid[2]_0 ),
        .O(s_axi_bvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_bvalid[2]_INST_0_i_1 
       (.I0(\s_axi_bvalid[2]_1 ),
        .I1(st_mr_bid[3]),
        .I2(st_mr_bid[2]),
        .O(\gen_single_thread.active_target_hot_reg[1] ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    s_ready_i_i_1__3
       (.I0(s_ready_i_reg_0),
        .I1(s_ready_i_i_2__3_n_0),
        .I2(m_valid_i_reg_0),
        .I3(m_axi_bvalid),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h0000FF7F)) 
    s_ready_i_i_2__3
       (.I0(s_axi_bready[2]),
        .I1(\s_axi_bvalid[2]_1 ),
        .I2(st_mr_bid[3]),
        .I3(st_mr_bid[2]),
        .I4(s_ready_i_i_3__1_n_0),
        .O(s_ready_i_i_2__3_n_0));
  LUT6 #(
    .INIT(64'hF00088880000F000)) 
    s_ready_i_i_3__1
       (.I0(s_axi_bready[1]),
        .I1(\s_axi_bvalid[1]_1 ),
        .I2(s_axi_bready[0]),
        .I3(\s_axi_bvalid[0]_1 ),
        .I4(st_mr_bid[3]),
        .I5(st_mr_bid[2]),
        .O(s_ready_i_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__3_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized1_26
   (m_valid_i_reg_0,
    m_axi_bready,
    \gen_single_issue.active_target_hot_reg[0] ,
    \gen_single_issue.active_target_hot_reg[0]_0 ,
    m_valid_i_reg_1,
    \gen_single_thread.active_target_hot_reg[0] ,
    mi_awmaxissuing,
    m_valid_i_reg_2,
    \m_payload_i_reg[1]_0 ,
    aclk,
    \s_axi_bvalid[0] ,
    \s_axi_bvalid[1] ,
    \s_axi_bvalid[2] ,
    \gen_single_thread.accept_cnt[5]_i_3 ,
    \gen_single_thread.accept_cnt[5]_i_3_0 ,
    m_axi_bvalid,
    s_ready_i_reg_0,
    s_ready_i_reg_1,
    \gen_arbiter.last_rr_hot[3]_i_11 ,
    s_axi_bready,
    D);
  output m_valid_i_reg_0;
  output [0:0]m_axi_bready;
  output \gen_single_issue.active_target_hot_reg[0] ;
  output \gen_single_issue.active_target_hot_reg[0]_0 ;
  output m_valid_i_reg_1;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output [0:0]mi_awmaxissuing;
  output m_valid_i_reg_2;
  output [1:0]\m_payload_i_reg[1]_0 ;
  input aclk;
  input [0:0]\s_axi_bvalid[0] ;
  input [0:0]\s_axi_bvalid[1] ;
  input [0:0]\s_axi_bvalid[2] ;
  input [0:0]\gen_single_thread.accept_cnt[5]_i_3 ;
  input \gen_single_thread.accept_cnt[5]_i_3_0 ;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input s_ready_i_reg_1;
  input \gen_arbiter.last_rr_hot[3]_i_11 ;
  input [2:0]s_axi_bready;
  input [3:0]D;

  wire [3:0]D;
  wire aclk;
  wire \gen_arbiter.last_rr_hot[3]_i_11 ;
  wire \gen_single_issue.active_target_hot_reg[0] ;
  wire \gen_single_issue.active_target_hot_reg[0]_0 ;
  wire [0:0]\gen_single_thread.accept_cnt[5]_i_3 ;
  wire \gen_single_thread.accept_cnt[5]_i_3_0 ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[3]_i_1_n_0 ;
  wire [1:0]\m_payload_i_reg[1]_0 ;
  wire m_valid_i_i_1__3_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire [0:0]mi_awmaxissuing;
  wire [2:0]s_axi_bready;
  wire [0:0]\s_axi_bvalid[0] ;
  wire [0:0]\s_axi_bvalid[1] ;
  wire [0:0]\s_axi_bvalid[2] ;
  wire s_ready_i_i_1__2_n_0;
  wire s_ready_i_i_2__4_n_0;
  wire s_ready_i_i_3__2_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [1:0]st_mr_bid;

  LUT5 #(
    .INIT(32'h002AAAAA)) 
    \gen_arbiter.last_rr_hot[3]_i_15 
       (.I0(\gen_arbiter.last_rr_hot[3]_i_11 ),
        .I1(s_axi_bready[0]),
        .I2(\gen_single_issue.active_target_hot_reg[0] ),
        .I3(s_ready_i_i_3__2_n_0),
        .I4(m_valid_i_reg_0),
        .O(mi_awmaxissuing));
  LUT6 #(
    .INIT(64'hA88A888888888888)) 
    \gen_master_slots[0].w_issuing_cnt[5]_i_5 
       (.I0(m_valid_i_reg_0),
        .I1(s_ready_i_i_3__2_n_0),
        .I2(st_mr_bid[0]),
        .I3(st_mr_bid[1]),
        .I4(\s_axi_bvalid[0] ),
        .I5(s_axi_bready[0]),
        .O(m_valid_i_reg_2));
  LUT6 #(
    .INIT(64'hFFFF008000800080)) 
    \gen_single_thread.accept_cnt[5]_i_6 
       (.I0(m_valid_i_reg_0),
        .I1(\s_axi_bvalid[2] ),
        .I2(st_mr_bid[1]),
        .I3(st_mr_bid[0]),
        .I4(\gen_single_thread.accept_cnt[5]_i_3 ),
        .I5(\gen_single_thread.accept_cnt[5]_i_3_0 ),
        .O(m_valid_i_reg_1));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[3]_i_1 
       (.I0(m_valid_i_reg_0),
        .O(\m_payload_i[3]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(D[0]),
        .Q(\m_payload_i_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(D[1]),
        .Q(\m_payload_i_reg[1]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(D[2]),
        .Q(st_mr_bid[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(D[3]),
        .Q(st_mr_bid[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE200)) 
    m_valid_i_i_1__3
       (.I0(s_ready_i_i_2__4_n_0),
        .I1(m_axi_bready),
        .I2(m_axi_bvalid),
        .I3(s_ready_i_reg_0),
        .O(m_valid_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__3_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \s_axi_bvalid[0]_INST_0_i_2 
       (.I0(\s_axi_bvalid[0] ),
        .I1(st_mr_bid[1]),
        .I2(st_mr_bid[0]),
        .O(\gen_single_issue.active_target_hot_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_bvalid[1]_INST_0_i_2 
       (.I0(\s_axi_bvalid[1] ),
        .I1(st_mr_bid[0]),
        .I2(st_mr_bid[1]),
        .O(\gen_single_issue.active_target_hot_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_bvalid[2]_INST_0_i_2 
       (.I0(\s_axi_bvalid[2] ),
        .I1(st_mr_bid[1]),
        .I2(st_mr_bid[0]),
        .O(\gen_single_thread.active_target_hot_reg[0] ));
  LUT5 #(
    .INIT(32'h757F0000)) 
    s_ready_i_i_1__2
       (.I0(s_ready_i_reg_0),
        .I1(s_ready_i_i_2__4_n_0),
        .I2(m_valid_i_reg_0),
        .I3(m_axi_bvalid),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00007FF7)) 
    s_ready_i_i_2__4
       (.I0(s_axi_bready[0]),
        .I1(\s_axi_bvalid[0] ),
        .I2(st_mr_bid[1]),
        .I3(st_mr_bid[0]),
        .I4(s_ready_i_i_3__2_n_0),
        .O(s_ready_i_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h00008888F0000000)) 
    s_ready_i_i_3__2
       (.I0(s_axi_bready[2]),
        .I1(\s_axi_bvalid[2] ),
        .I2(s_axi_bready[1]),
        .I3(\s_axi_bvalid[1] ),
        .I4(st_mr_bid[0]),
        .I5(st_mr_bid[1]),
        .O(s_ready_i_i_3__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__2_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \gen_master_slots[3].r_issuing_cnt_reg[24] ,
    \gen_master_slots[3].r_issuing_cnt_reg[24]_0 ,
    \m_payload_i_reg[34]_0 ,
    \gen_single_issue.active_target_hot_reg[3] ,
    \m_payload_i_reg[36]_0 ,
    s_axi_rready_2_sp_1,
    m_valid_i_reg_1,
    \m_payload_i_reg[36]_1 ,
    r_cmd_pop_3,
    st_mr_rmesg,
    aclk,
    match,
    r_issuing_cnt,
    p_19_in,
    s_ready_i_reg_1,
    m_valid_i_reg_2,
    p_24_in,
    p_21_in,
    Q,
    \s_axi_rvalid[1] ,
    \gen_arbiter.qual_reg[2]_i_2 ,
    \gen_arbiter.qual_reg[2]_i_2_0 ,
    \gen_arbiter.qual_reg[2]_i_2_1 ,
    s_axi_rready,
    \gen_arbiter.qual_reg[2]_i_2_2 ,
    \s_axi_rvalid[2] ,
    \s_axi_rvalid[3] );
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \gen_master_slots[3].r_issuing_cnt_reg[24] ;
  output \gen_master_slots[3].r_issuing_cnt_reg[24]_0 ;
  output \m_payload_i_reg[34]_0 ;
  output \gen_single_issue.active_target_hot_reg[3] ;
  output \m_payload_i_reg[36]_0 ;
  output s_axi_rready_2_sp_1;
  output m_valid_i_reg_1;
  output [0:0]\m_payload_i_reg[36]_1 ;
  output r_cmd_pop_3;
  output [0:0]st_mr_rmesg;
  input aclk;
  input match;
  input [0:0]r_issuing_cnt;
  input p_19_in;
  input s_ready_i_reg_1;
  input m_valid_i_reg_2;
  input [1:0]p_24_in;
  input p_21_in;
  input [0:0]Q;
  input [0:0]\s_axi_rvalid[1] ;
  input \gen_arbiter.qual_reg[2]_i_2 ;
  input \gen_arbiter.qual_reg[2]_i_2_0 ;
  input \gen_arbiter.qual_reg[2]_i_2_1 ;
  input [3:0]s_axi_rready;
  input \gen_arbiter.qual_reg[2]_i_2_2 ;
  input [0:0]\s_axi_rvalid[2] ;
  input [0:0]\s_axi_rvalid[3] ;

  wire [0:0]Q;
  wire aclk;
  wire \gen_arbiter.qual_reg[2]_i_2 ;
  wire \gen_arbiter.qual_reg[2]_i_2_0 ;
  wire \gen_arbiter.qual_reg[2]_i_2_1 ;
  wire \gen_arbiter.qual_reg[2]_i_2_2 ;
  wire \gen_master_slots[3].r_issuing_cnt_reg[24] ;
  wire \gen_master_slots[3].r_issuing_cnt_reg[24]_0 ;
  wire \gen_single_issue.active_target_hot_reg[3] ;
  wire \m_payload_i[31]_i_1_n_0 ;
  wire \m_payload_i[31]_i_3_n_0 ;
  wire \m_payload_i[31]_i_5_n_0 ;
  wire \m_payload_i[31]_i_7_n_0 ;
  wire \m_payload_i[34]_i_1_n_0 ;
  wire \m_payload_i[35]_i_1_n_0 ;
  wire \m_payload_i[36]_i_1__2_n_0 ;
  wire \m_payload_i_reg[34]_0 ;
  wire \m_payload_i_reg[36]_0 ;
  wire [0:0]\m_payload_i_reg[36]_1 ;
  wire m_valid_i_i_1__13_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire match;
  wire [3:3]p_0_out;
  wire p_19_in;
  wire p_1_in;
  wire p_1_in_0;
  wire p_21_in;
  wire [1:0]p_24_in;
  wire [3:3]p_37_out;
  wire r_cmd_pop_3;
  wire [0:0]r_issuing_cnt;
  wire [15:15]rready_carry;
  wire [3:0]s_axi_rready;
  wire s_axi_rready_2_sn_1;
  wire [0:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire [0:0]\s_axi_rvalid[3] ;
  wire s_ready_i_i_1__9_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [36:34]skid_buffer;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire [7:6]st_mr_rid;
  wire [0:0]st_mr_rmesg;

  assign s_axi_rready_2_sp_1 = s_axi_rready_2_sn_1;
  LUT2 #(
    .INIT(4'h1)) 
    \gen_arbiter.qual_reg[1]_i_4 
       (.I0(match),
        .I1(\gen_master_slots[3].r_issuing_cnt_reg[24]_0 ),
        .O(\gen_master_slots[3].r_issuing_cnt_reg[24] ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \gen_arbiter.qual_reg[2]_i_4 
       (.I0(m_valid_i_reg_1),
        .I1(\gen_arbiter.qual_reg[2]_i_2 ),
        .I2(\gen_arbiter.qual_reg[2]_i_2_0 ),
        .I3(\gen_arbiter.qual_reg[2]_i_2_1 ),
        .I4(s_axi_rready[2]),
        .I5(\gen_arbiter.qual_reg[2]_i_2_2 ),
        .O(s_axi_rready_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[3]_i_12 
       (.I0(s_axi_rready[2]),
        .I1(\s_axi_rvalid[2] ),
        .I2(st_mr_rid[6]),
        .I3(st_mr_rid[7]),
        .O(p_37_out));
  LUT6 #(
    .INIT(64'h2222222AAAAAAAAA)) 
    \gen_arbiter.qual_reg[3]_i_8 
       (.I0(r_issuing_cnt),
        .I1(\m_payload_i_reg[34]_0 ),
        .I2(p_0_out),
        .I3(p_1_in),
        .I4(p_37_out),
        .I5(m_valid_i_reg_0),
        .O(\gen_master_slots[3].r_issuing_cnt_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA0800000000)) 
    \gen_master_slots[3].r_issuing_cnt[24]_i_2 
       (.I0(m_valid_i_reg_0),
        .I1(s_axi_rready[2]),
        .I2(\m_payload_i[31]_i_5_n_0 ),
        .I3(p_1_in),
        .I4(p_0_out),
        .I5(\m_payload_i_reg[34]_0 ),
        .O(r_cmd_pop_3));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_master_slots[3].r_issuing_cnt[24]_i_3 
       (.I0(st_mr_rid[7]),
        .I1(st_mr_rid[6]),
        .I2(\s_axi_rvalid[3] ),
        .I3(s_axi_rready[3]),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'hB0)) 
    \m_payload_i[31]_i_1 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .O(\m_payload_i[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[31]_i_2 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .O(p_1_in_0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[31]_i_3 
       (.I0(s_ready_i_reg_0),
        .O(\m_payload_i[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF2F2F2)) 
    \m_payload_i[31]_i_4 
       (.I0(s_axi_rready[2]),
        .I1(\m_payload_i[31]_i_5_n_0 ),
        .I2(p_1_in),
        .I3(s_axi_rready[3]),
        .I4(\m_payload_i[31]_i_7_n_0 ),
        .O(rready_carry));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \m_payload_i[31]_i_5 
       (.I0(st_mr_rid[7]),
        .I1(st_mr_rid[6]),
        .I2(\s_axi_rvalid[2] ),
        .O(\m_payload_i[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0008888)) 
    \m_payload_i[31]_i_6 
       (.I0(s_axi_rready[0]),
        .I1(Q),
        .I2(s_axi_rready[1]),
        .I3(\s_axi_rvalid[1] ),
        .I4(st_mr_rid[6]),
        .I5(st_mr_rid[7]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_payload_i[31]_i_7 
       (.I0(\s_axi_rvalid[3] ),
        .I1(st_mr_rid[6]),
        .I2(st_mr_rid[7]),
        .O(\m_payload_i[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF44B0B0BB00)) 
    \m_payload_i[34]_i_1 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(p_21_in),
        .I3(\skid_buffer_reg_n_0_[34] ),
        .I4(s_ready_i_reg_0),
        .I5(\m_payload_i_reg[34]_0 ),
        .O(\m_payload_i[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF44B0B0BB00)) 
    \m_payload_i[35]_i_1 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(p_24_in[0]),
        .I3(\skid_buffer_reg_n_0_[35] ),
        .I4(s_ready_i_reg_0),
        .I5(st_mr_rid[6]),
        .O(\m_payload_i[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF44B0B0BB00)) 
    \m_payload_i[36]_i_1__2 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(p_24_in[1]),
        .I3(\skid_buffer_reg_n_0_[36] ),
        .I4(s_ready_i_reg_0),
        .I5(st_mr_rid[7]),
        .O(\m_payload_i[36]_i_1__2_n_0 ));
  FDSE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(\m_payload_i[31]_i_3_n_0 ),
        .Q(st_mr_rmesg),
        .S(\m_payload_i[31]_i_1_n_0 ));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[34]_i_1_n_0 ),
        .Q(\m_payload_i_reg[34]_0 ),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[35]_i_1_n_0 ),
        .Q(st_mr_rid[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[36]_i_1__2_n_0 ),
        .Q(st_mr_rid[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4F0000)) 
    m_valid_i_i_1__13
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .I3(p_19_in),
        .I4(m_valid_i_reg_2),
        .O(m_valid_i_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__13_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rvalid[0]_INST_0_i_2 
       (.I0(Q),
        .I1(st_mr_rid[6]),
        .I2(st_mr_rid[7]),
        .O(\gen_single_issue.active_target_hot_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_rvalid[1]_INST_0_i_3 
       (.I0(st_mr_rid[7]),
        .I1(st_mr_rid[6]),
        .I2(\s_axi_rvalid[1] ),
        .I3(m_valid_i_reg_0),
        .O(\m_payload_i_reg[36]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_rvalid[2]_INST_0_i_4 
       (.I0(m_valid_i_reg_0),
        .I1(\s_axi_rvalid[2] ),
        .I2(st_mr_rid[6]),
        .I3(st_mr_rid[7]),
        .O(m_valid_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_rvalid[3]_INST_0_i_3 
       (.I0(st_mr_rid[7]),
        .I1(st_mr_rid[6]),
        .I2(\s_axi_rvalid[3] ),
        .I3(m_valid_i_reg_0),
        .O(\m_payload_i_reg[36]_1 ));
  LUT5 #(
    .INIT(32'hBBFB0000)) 
    s_ready_i_i_1__9
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .I3(p_19_in),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__9_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skid_buffer[34]_i_1 
       (.I0(p_21_in),
        .I1(\skid_buffer_reg_n_0_[34] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \skid_buffer[35]_i_1 
       (.I0(p_24_in[0]),
        .I1(\skid_buffer_reg_n_0_[35] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \skid_buffer[36]_i_1 
       (.I0(p_24_in[1]),
        .I1(\skid_buffer_reg_n_0_[36] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[36]));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[34]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[35]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[36]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_20
   (s_ready_i_reg_0,
    \m_payload_i_reg[34]_0 ,
    Q,
    \m_payload_i_reg[34]_1 ,
    \s_axi_araddr[94] ,
    \m_payload_i_reg[34]_2 ,
    s_axi_rvalid,
    \m_payload_i_reg[36]_0 ,
    m_valid_i_reg_0,
    p_2_in_0,
    s_rvalid_i0,
    r_cmd_pop_2,
    aclk,
    mi_armaxissuing198_in,
    m_axi_rvalid,
    s_ready_i_reg_1,
    m_valid_i_reg_1,
    target_mi_enc,
    \gen_arbiter.qual_reg[3]_i_2 ,
    match,
    st_aa_artarget_hot,
    s_axi_araddr,
    target_mi_enc_1,
    match_2,
    s_axi_rvalid_0_sp_1,
    \s_axi_rvalid[0]_0 ,
    \s_axi_rvalid[0]_1 ,
    \s_axi_rvalid[0]_2 ,
    \s_axi_rvalid[0]_3 ,
    \s_axi_rvalid[1] ,
    s_axi_rready,
    \s_axi_rvalid[2] ,
    \gen_single_thread.accept_cnt_reg[0] ,
    s_axi_rlast,
    \s_axi_rvalid[3] ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output s_ready_i_reg_0;
  output \m_payload_i_reg[34]_0 ;
  output [34:0]Q;
  output \m_payload_i_reg[34]_1 ;
  output \s_axi_araddr[94] ;
  output \m_payload_i_reg[34]_2 ;
  output [0:0]s_axi_rvalid;
  output \m_payload_i_reg[36]_0 ;
  output m_valid_i_reg_0;
  output p_2_in_0;
  output [0:0]s_rvalid_i0;
  output r_cmd_pop_2;
  input aclk;
  input mi_armaxissuing198_in;
  input [0:0]m_axi_rvalid;
  input s_ready_i_reg_1;
  input m_valid_i_reg_1;
  input [0:0]target_mi_enc;
  input \gen_arbiter.qual_reg[3]_i_2 ;
  input match;
  input [1:0]st_aa_artarget_hot;
  input [1:0]s_axi_araddr;
  input [0:0]target_mi_enc_1;
  input match_2;
  input s_axi_rvalid_0_sp_1;
  input [0:0]\s_axi_rvalid[0]_0 ;
  input \s_axi_rvalid[0]_1 ;
  input \s_axi_rvalid[0]_2 ;
  input [0:0]\s_axi_rvalid[0]_3 ;
  input [0:0]\s_axi_rvalid[1] ;
  input [3:0]s_axi_rready;
  input [0:0]\s_axi_rvalid[2] ;
  input [2:0]\gen_single_thread.accept_cnt_reg[0] ;
  input [0:0]s_axi_rlast;
  input [0:0]\s_axi_rvalid[3] ;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;

  wire [34:0]Q;
  wire aclk;
  wire \gen_arbiter.qual_reg[3]_i_2 ;
  wire [2:0]\gen_single_thread.accept_cnt_reg[0] ;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire \m_payload_i_reg[34]_0 ;
  wire \m_payload_i_reg[34]_1 ;
  wire \m_payload_i_reg[34]_2 ;
  wire \m_payload_i_reg[36]_0 ;
  wire m_valid_i_i_1__12_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire match_2;
  wire mi_armaxissuing198_in;
  wire [2:2]p_0_out;
  wire p_1_in;
  wire p_2_in_0;
  wire [2:2]p_37_out;
  wire p_7_in;
  wire r_cmd_pop_2;
  wire [14:14]rready_carry;
  wire [1:0]s_axi_araddr;
  wire \s_axi_araddr[94] ;
  wire [0:0]s_axi_rlast;
  wire [3:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0]_0 ;
  wire \s_axi_rvalid[0]_1 ;
  wire \s_axi_rvalid[0]_2 ;
  wire [0:0]\s_axi_rvalid[0]_3 ;
  wire \s_axi_rvalid[0]_INST_0_i_1_n_0 ;
  wire [0:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire [0:0]\s_axi_rvalid[3] ;
  wire s_axi_rvalid_0_sn_1;
  wire s_ready_i_i_1__8_n_0;
  wire s_ready_i_i_3_n_0;
  wire s_ready_i_i_5_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [0:0]s_rvalid_i0;
  wire [36:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [1:0]st_aa_artarget_hot;
  wire [5:4]st_mr_rid;
  wire [2:2]st_mr_rvalid;
  wire [0:0]target_mi_enc;
  wire [0:0]target_mi_enc_1;

  assign s_axi_rvalid_0_sn_1 = s_axi_rvalid_0_sp_1;
  LUT4 #(
    .INIT(16'h440F)) 
    \gen_arbiter.qual_reg[0]_i_4 
       (.I0(\m_payload_i_reg[34]_0 ),
        .I1(target_mi_enc_1),
        .I2(\gen_arbiter.qual_reg[3]_i_2 ),
        .I3(match_2),
        .O(\m_payload_i_reg[34]_2 ));
  LUT6 #(
    .INIT(64'h2222222AAAAAAAAA)) 
    \gen_arbiter.qual_reg[1]_i_3 
       (.I0(mi_armaxissuing198_in),
        .I1(Q[34]),
        .I2(p_0_out),
        .I3(p_7_in),
        .I4(p_37_out),
        .I5(st_mr_rvalid),
        .O(\m_payload_i_reg[34]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[1]_i_7 
       (.I0(s_axi_rready[2]),
        .I1(\s_axi_rvalid[2] ),
        .I2(st_mr_rid[4]),
        .I3(st_mr_rid[5]),
        .O(p_37_out));
  LUT6 #(
    .INIT(64'h5503550055035503)) 
    \gen_arbiter.qual_reg[2]_i_7 
       (.I0(\m_payload_i_reg[34]_0 ),
        .I1(\gen_arbiter.qual_reg[3]_i_2 ),
        .I2(st_aa_artarget_hot[0]),
        .I3(st_aa_artarget_hot[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_araddr[94] ));
  LUT4 #(
    .INIT(16'h440F)) 
    \gen_arbiter.qual_reg[3]_i_3 
       (.I0(\m_payload_i_reg[34]_0 ),
        .I1(target_mi_enc),
        .I2(\gen_arbiter.qual_reg[3]_i_2 ),
        .I3(match),
        .O(\m_payload_i_reg[34]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAA0800000000)) 
    \gen_master_slots[2].r_issuing_cnt[19]_i_4 
       (.I0(st_mr_rvalid),
        .I1(s_axi_rready[2]),
        .I2(s_ready_i_i_3_n_0),
        .I3(p_7_in),
        .I4(p_0_out),
        .I5(Q[34]),
        .O(r_cmd_pop_2));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_master_slots[2].r_issuing_cnt[19]_i_6 
       (.I0(st_mr_rid[5]),
        .I1(st_mr_rid[4]),
        .I2(\s_axi_rvalid[3] ),
        .I3(s_axi_rready[3]),
        .O(p_0_out));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \gen_single_thread.accept_cnt[3]_i_3 
       (.I0(s_rvalid_i0),
        .I1(\gen_single_thread.accept_cnt_reg[0] [2]),
        .I2(\gen_single_thread.accept_cnt_reg[0] [0]),
        .I3(\gen_single_thread.accept_cnt_reg[0] [1]),
        .I4(s_axi_rready[3]),
        .I5(s_axi_rlast),
        .O(p_2_in_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[0]_i_1__1 
       (.I0(m_axi_rdata[0]),
        .I1(\skid_buffer_reg_n_0_[0] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[10]_i_1__1 
       (.I0(m_axi_rdata[10]),
        .I1(\skid_buffer_reg_n_0_[10] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[11]_i_1__1 
       (.I0(m_axi_rdata[11]),
        .I1(\skid_buffer_reg_n_0_[11] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[12]_i_1__1 
       (.I0(m_axi_rdata[12]),
        .I1(\skid_buffer_reg_n_0_[12] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[13]_i_1__1 
       (.I0(m_axi_rdata[13]),
        .I1(\skid_buffer_reg_n_0_[13] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[14]_i_1__1 
       (.I0(m_axi_rdata[14]),
        .I1(\skid_buffer_reg_n_0_[14] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[15]_i_1__1 
       (.I0(m_axi_rdata[15]),
        .I1(\skid_buffer_reg_n_0_[15] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[16]_i_1__1 
       (.I0(m_axi_rdata[16]),
        .I1(\skid_buffer_reg_n_0_[16] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[17]_i_1__1 
       (.I0(m_axi_rdata[17]),
        .I1(\skid_buffer_reg_n_0_[17] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[18]_i_1__1 
       (.I0(m_axi_rdata[18]),
        .I1(\skid_buffer_reg_n_0_[18] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[19]_i_1__1 
       (.I0(m_axi_rdata[19]),
        .I1(\skid_buffer_reg_n_0_[19] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[1]_i_1__1 
       (.I0(m_axi_rdata[1]),
        .I1(\skid_buffer_reg_n_0_[1] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[20]_i_1__1 
       (.I0(m_axi_rdata[20]),
        .I1(\skid_buffer_reg_n_0_[20] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[21]_i_1__1 
       (.I0(m_axi_rdata[21]),
        .I1(\skid_buffer_reg_n_0_[21] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[22]_i_1__1 
       (.I0(m_axi_rdata[22]),
        .I1(\skid_buffer_reg_n_0_[22] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[23]_i_1__1 
       (.I0(m_axi_rdata[23]),
        .I1(\skid_buffer_reg_n_0_[23] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[24]_i_1__1 
       (.I0(m_axi_rdata[24]),
        .I1(\skid_buffer_reg_n_0_[24] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[25]_i_1__1 
       (.I0(m_axi_rdata[25]),
        .I1(\skid_buffer_reg_n_0_[25] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[26]_i_1__1 
       (.I0(m_axi_rdata[26]),
        .I1(\skid_buffer_reg_n_0_[26] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[27]_i_1__1 
       (.I0(m_axi_rdata[27]),
        .I1(\skid_buffer_reg_n_0_[27] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[28]_i_1__1 
       (.I0(m_axi_rdata[28]),
        .I1(\skid_buffer_reg_n_0_[28] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[29]_i_1__1 
       (.I0(m_axi_rdata[29]),
        .I1(\skid_buffer_reg_n_0_[29] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[2]_i_1__1 
       (.I0(m_axi_rdata[2]),
        .I1(\skid_buffer_reg_n_0_[2] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[30]_i_1__1 
       (.I0(m_axi_rdata[30]),
        .I1(\skid_buffer_reg_n_0_[30] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[31]_i_1__1 
       (.I0(m_axi_rdata[31]),
        .I1(\skid_buffer_reg_n_0_[31] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[32]_i_1__1 
       (.I0(m_axi_rresp[0]),
        .I1(\skid_buffer_reg_n_0_[32] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[33]_i_1__1 
       (.I0(m_axi_rresp[1]),
        .I1(\skid_buffer_reg_n_0_[33] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[34]_i_1__1 
       (.I0(m_axi_rlast),
        .I1(\skid_buffer_reg_n_0_[34] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[35]_i_1__1 
       (.I0(m_axi_rid[0]),
        .I1(\skid_buffer_reg_n_0_[35] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[35]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[36]_i_1__1 
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[36]_i_2__1 
       (.I0(m_axi_rid[1]),
        .I1(\skid_buffer_reg_n_0_[36] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[3]_i_1__1 
       (.I0(m_axi_rdata[3]),
        .I1(\skid_buffer_reg_n_0_[3] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[4]_i_1__1 
       (.I0(m_axi_rdata[4]),
        .I1(\skid_buffer_reg_n_0_[4] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[5]_i_1__1 
       (.I0(m_axi_rdata[5]),
        .I1(\skid_buffer_reg_n_0_[5] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[6]_i_1__1 
       (.I0(m_axi_rdata[6]),
        .I1(\skid_buffer_reg_n_0_[6] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[7]_i_1__1 
       (.I0(m_axi_rdata[7]),
        .I1(\skid_buffer_reg_n_0_[7] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[8]_i_1__1 
       (.I0(m_axi_rdata[8]),
        .I1(\skid_buffer_reg_n_0_[8] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[9]_i_1__1 
       (.I0(m_axi_rdata[9]),
        .I1(\skid_buffer_reg_n_0_[9] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[35]),
        .Q(st_mr_rid[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[36]),
        .Q(st_mr_rid[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4F0000)) 
    m_valid_i_i_1__12
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(m_valid_i_reg_1),
        .O(m_valid_i_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__12_n_0),
        .Q(st_mr_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(\s_axi_rvalid[0]_INST_0_i_1_n_0 ),
        .I1(st_mr_rvalid),
        .I2(s_axi_rvalid_0_sn_1),
        .I3(\s_axi_rvalid[0]_0 ),
        .I4(\s_axi_rvalid[0]_1 ),
        .I5(\s_axi_rvalid[0]_2 ),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \s_axi_rvalid[0]_INST_0_i_1 
       (.I0(\s_axi_rvalid[0]_3 ),
        .I1(st_mr_rid[4]),
        .I2(st_mr_rid[5]),
        .O(\s_axi_rvalid[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_rvalid[1]_INST_0_i_4 
       (.I0(st_mr_rid[5]),
        .I1(st_mr_rid[4]),
        .I2(\s_axi_rvalid[1] ),
        .I3(st_mr_rvalid),
        .O(\m_payload_i_reg[36]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \s_axi_rvalid[2]_INST_0_i_3 
       (.I0(st_mr_rvalid),
        .I1(\s_axi_rvalid[2] ),
        .I2(st_mr_rid[4]),
        .I3(st_mr_rid[5]),
        .O(m_valid_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \s_axi_rvalid[3]_INST_0_i_4 
       (.I0(st_mr_rid[5]),
        .I1(st_mr_rid[4]),
        .I2(\s_axi_rvalid[3] ),
        .I3(st_mr_rvalid),
        .O(s_rvalid_i0));
  LUT5 #(
    .INIT(32'hBBFB0000)) 
    s_ready_i_i_1__8
       (.I0(rready_carry),
        .I1(st_mr_rvalid),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1__8_n_0));
  LUT5 #(
    .INIT(32'hFFF2F2F2)) 
    s_ready_i_i_2__7
       (.I0(s_axi_rready[2]),
        .I1(s_ready_i_i_3_n_0),
        .I2(p_7_in),
        .I3(s_axi_rready[3]),
        .I4(s_ready_i_i_5_n_0),
        .O(rready_carry));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    s_ready_i_i_3
       (.I0(st_mr_rid[5]),
        .I1(st_mr_rid[4]),
        .I2(\s_axi_rvalid[2] ),
        .O(s_ready_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000F0008888)) 
    s_ready_i_i_4
       (.I0(s_axi_rready[0]),
        .I1(\s_axi_rvalid[0]_3 ),
        .I2(s_axi_rready[1]),
        .I3(\s_axi_rvalid[1] ),
        .I4(st_mr_rid[4]),
        .I5(st_mr_rid[5]),
        .O(p_7_in));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h80)) 
    s_ready_i_i_5
       (.I0(\s_axi_rvalid[3] ),
        .I1(st_mr_rid[4]),
        .I2(st_mr_rid[5]),
        .O(s_ready_i_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__8_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_24
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \m_payload_i_reg[34]_0 ,
    Q,
    \s_axi_araddr[126] ,
    valid_qual_i142_in,
    valid_qual_i1,
    \m_payload_i_reg[36]_0 ,
    s_axi_rvalid,
    m_valid_i_reg_1,
    \m_payload_i_reg[36]_1 ,
    \m_payload_i_reg[36]_2 ,
    r_cmd_pop_1,
    aclk,
    mi_armaxissuing196_in,
    m_axi_rvalid,
    s_ready_i_reg_1,
    m_valid_i_reg_2,
    match_5,
    s_axi_araddr,
    st_aa_artarget_hot,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_arbiter.qual_reg_reg[2] ,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    \s_axi_rvalid[0] ,
    s_axi_rvalid_1_sp_1,
    st_mr_rvalid,
    \s_axi_rvalid[1]_0 ,
    \s_axi_rvalid[1]_1 ,
    \s_axi_rvalid[1]_2 ,
    s_axi_rready,
    \s_axi_rvalid[2] ,
    \s_axi_rvalid[3] ,
    s_rvalid_i0,
    \s_axi_rvalid[3]_0 ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \m_payload_i_reg[34]_0 ;
  output [34:0]Q;
  output \s_axi_araddr[126] ;
  output valid_qual_i142_in;
  output valid_qual_i1;
  output \m_payload_i_reg[36]_0 ;
  output [1:0]s_axi_rvalid;
  output m_valid_i_reg_1;
  output \m_payload_i_reg[36]_1 ;
  output [0:0]\m_payload_i_reg[36]_2 ;
  output r_cmd_pop_1;
  input aclk;
  input mi_armaxissuing196_in;
  input [0:0]m_axi_rvalid;
  input s_ready_i_reg_1;
  input m_valid_i_reg_2;
  input match_5;
  input [3:0]s_axi_araddr;
  input [2:0]st_aa_artarget_hot;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_arbiter.qual_reg_reg[2] ;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input [0:0]\s_axi_rvalid[0] ;
  input s_axi_rvalid_1_sp_1;
  input [0:0]st_mr_rvalid;
  input \s_axi_rvalid[1]_0 ;
  input \s_axi_rvalid[1]_1 ;
  input [0:0]\s_axi_rvalid[1]_2 ;
  input [3:0]s_axi_rready;
  input [0:0]\s_axi_rvalid[2] ;
  input \s_axi_rvalid[3] ;
  input [1:0]s_rvalid_i0;
  input [0:0]\s_axi_rvalid[3]_0 ;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;

  wire [34:0]Q;
  wire aclk;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_arbiter.qual_reg_reg[2] ;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire \m_payload_i_reg[34]_0 ;
  wire \m_payload_i_reg[36]_0 ;
  wire \m_payload_i_reg[36]_1 ;
  wire [0:0]\m_payload_i_reg[36]_2 ;
  wire m_valid_i_i_1__11_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire match_5;
  wire mi_armaxissuing196_in;
  wire [1:1]p_0_out;
  wire p_13_in;
  wire p_1_in;
  wire [1:1]p_37_out;
  wire r_cmd_pop_1;
  wire [13:13]rready_carry;
  wire [3:0]s_axi_araddr;
  wire \s_axi_araddr[126] ;
  wire [3:0]s_axi_rready;
  wire [1:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire \s_axi_rvalid[1]_0 ;
  wire \s_axi_rvalid[1]_1 ;
  wire [0:0]\s_axi_rvalid[1]_2 ;
  wire \s_axi_rvalid[1]_INST_0_i_1_n_0 ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire \s_axi_rvalid[3] ;
  wire [0:0]\s_axi_rvalid[3]_0 ;
  wire \s_axi_rvalid[3]_INST_0_i_1_n_0 ;
  wire s_axi_rvalid_1_sn_1;
  wire s_ready_i_i_1__7_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [1:0]s_rvalid_i0;
  wire [36:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [2:0]st_aa_artarget_hot;
  wire [3:2]st_mr_rid;
  wire [0:0]st_mr_rvalid;
  wire valid_qual_i1;
  wire valid_qual_i142_in;

  assign s_axi_rvalid_1_sn_1 = s_axi_rvalid_1_sp_1;
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \gen_arbiter.qual_reg[0]_i_3 
       (.I0(st_aa_artarget_hot[1]),
        .I1(\m_payload_i_reg[34]_0 ),
        .I2(st_aa_artarget_hot[0]),
        .I3(\gen_arbiter.qual_reg_reg[0] ),
        .I4(\gen_arbiter.qual_reg_reg[0]_0 ),
        .O(valid_qual_i1));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[2]_i_11 
       (.I0(s_axi_rready[2]),
        .I1(\s_axi_rvalid[2] ),
        .I2(st_mr_rid[2]),
        .I3(st_mr_rid[3]),
        .O(p_37_out));
  LUT6 #(
    .INIT(64'hFFFFFFFF0404FF04)) 
    \gen_arbiter.qual_reg[2]_i_3 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_araddr[1]),
        .I2(\m_payload_i_reg[34]_0 ),
        .I3(st_aa_artarget_hot[2]),
        .I4(\gen_arbiter.qual_reg_reg[0] ),
        .I5(\gen_arbiter.qual_reg_reg[2] ),
        .O(valid_qual_i142_in));
  LUT6 #(
    .INIT(64'h2222222AAAAAAAAA)) 
    \gen_arbiter.qual_reg[2]_i_6 
       (.I0(mi_armaxissuing196_in),
        .I1(Q[34]),
        .I2(p_0_out),
        .I3(p_13_in),
        .I4(p_37_out),
        .I5(m_valid_i_reg_0),
        .O(\m_payload_i_reg[34]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[2]_i_8 
       (.I0(m_valid_i_reg_0),
        .I1(\s_axi_rvalid[2] ),
        .I2(st_mr_rid[2]),
        .I3(st_mr_rid[3]),
        .O(m_valid_i_reg_1));
  LUT4 #(
    .INIT(16'h0020)) 
    \gen_arbiter.qual_reg[3]_i_5 
       (.I0(match_5),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_araddr[3]),
        .I3(\m_payload_i_reg[34]_0 ),
        .O(\s_axi_araddr[126] ));
  LUT6 #(
    .INIT(64'hAAAAAA0800000000)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_4 
       (.I0(m_valid_i_reg_0),
        .I1(s_axi_rready[2]),
        .I2(\m_payload_i_reg[36]_1 ),
        .I3(p_13_in),
        .I4(p_0_out),
        .I5(Q[34]),
        .O(r_cmd_pop_1));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_master_slots[1].r_issuing_cnt[11]_i_6 
       (.I0(st_mr_rid[3]),
        .I1(st_mr_rid[2]),
        .I2(\s_axi_rvalid[3]_0 ),
        .I3(s_axi_rready[3]),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_single_thread.accept_cnt[3]_i_5 
       (.I0(st_mr_rid[3]),
        .I1(st_mr_rid[2]),
        .I2(\s_axi_rvalid[3]_0 ),
        .I3(m_valid_i_reg_0),
        .O(\m_payload_i_reg[36]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[0]_i_1__0 
       (.I0(m_axi_rdata[0]),
        .I1(\skid_buffer_reg_n_0_[0] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[10]_i_1__0 
       (.I0(m_axi_rdata[10]),
        .I1(\skid_buffer_reg_n_0_[10] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[11]_i_1__0 
       (.I0(m_axi_rdata[11]),
        .I1(\skid_buffer_reg_n_0_[11] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[12]_i_1__0 
       (.I0(m_axi_rdata[12]),
        .I1(\skid_buffer_reg_n_0_[12] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[13]_i_1__0 
       (.I0(m_axi_rdata[13]),
        .I1(\skid_buffer_reg_n_0_[13] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[14]_i_1__0 
       (.I0(m_axi_rdata[14]),
        .I1(\skid_buffer_reg_n_0_[14] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[15]_i_1__0 
       (.I0(m_axi_rdata[15]),
        .I1(\skid_buffer_reg_n_0_[15] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[16]_i_1__0 
       (.I0(m_axi_rdata[16]),
        .I1(\skid_buffer_reg_n_0_[16] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[17]_i_1__0 
       (.I0(m_axi_rdata[17]),
        .I1(\skid_buffer_reg_n_0_[17] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[18]_i_1__0 
       (.I0(m_axi_rdata[18]),
        .I1(\skid_buffer_reg_n_0_[18] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[19]_i_1__0 
       (.I0(m_axi_rdata[19]),
        .I1(\skid_buffer_reg_n_0_[19] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[1]_i_1__0 
       (.I0(m_axi_rdata[1]),
        .I1(\skid_buffer_reg_n_0_[1] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[20]_i_1__0 
       (.I0(m_axi_rdata[20]),
        .I1(\skid_buffer_reg_n_0_[20] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[21]_i_1__0 
       (.I0(m_axi_rdata[21]),
        .I1(\skid_buffer_reg_n_0_[21] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[22]_i_1__0 
       (.I0(m_axi_rdata[22]),
        .I1(\skid_buffer_reg_n_0_[22] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[23]_i_1__0 
       (.I0(m_axi_rdata[23]),
        .I1(\skid_buffer_reg_n_0_[23] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[24]_i_1__0 
       (.I0(m_axi_rdata[24]),
        .I1(\skid_buffer_reg_n_0_[24] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[25]_i_1__0 
       (.I0(m_axi_rdata[25]),
        .I1(\skid_buffer_reg_n_0_[25] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[26]_i_1__0 
       (.I0(m_axi_rdata[26]),
        .I1(\skid_buffer_reg_n_0_[26] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[27]_i_1__0 
       (.I0(m_axi_rdata[27]),
        .I1(\skid_buffer_reg_n_0_[27] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[28]_i_1__0 
       (.I0(m_axi_rdata[28]),
        .I1(\skid_buffer_reg_n_0_[28] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[29]_i_1__0 
       (.I0(m_axi_rdata[29]),
        .I1(\skid_buffer_reg_n_0_[29] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[2]_i_1__0 
       (.I0(m_axi_rdata[2]),
        .I1(\skid_buffer_reg_n_0_[2] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[30]_i_1__0 
       (.I0(m_axi_rdata[30]),
        .I1(\skid_buffer_reg_n_0_[30] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[31]_i_1__0 
       (.I0(m_axi_rdata[31]),
        .I1(\skid_buffer_reg_n_0_[31] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[32]_i_1__0 
       (.I0(m_axi_rresp[0]),
        .I1(\skid_buffer_reg_n_0_[32] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[33]_i_1__0 
       (.I0(m_axi_rresp[1]),
        .I1(\skid_buffer_reg_n_0_[33] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[34]_i_1__0 
       (.I0(m_axi_rlast),
        .I1(\skid_buffer_reg_n_0_[34] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[35]_i_1__0 
       (.I0(m_axi_rid[0]),
        .I1(\skid_buffer_reg_n_0_[35] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[35]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[36]_i_1__0 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[36]_i_2__0 
       (.I0(m_axi_rid[1]),
        .I1(\skid_buffer_reg_n_0_[36] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[3]_i_1__0 
       (.I0(m_axi_rdata[3]),
        .I1(\skid_buffer_reg_n_0_[3] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[4]_i_1__0 
       (.I0(m_axi_rdata[4]),
        .I1(\skid_buffer_reg_n_0_[4] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[5]_i_1__0 
       (.I0(m_axi_rdata[5]),
        .I1(\skid_buffer_reg_n_0_[5] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[6]_i_1__0 
       (.I0(m_axi_rdata[6]),
        .I1(\skid_buffer_reg_n_0_[6] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[7]_i_1__0 
       (.I0(m_axi_rdata[7]),
        .I1(\skid_buffer_reg_n_0_[7] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[8]_i_1__0 
       (.I0(m_axi_rdata[8]),
        .I1(\skid_buffer_reg_n_0_[8] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[9]_i_1__0 
       (.I0(m_axi_rdata[9]),
        .I1(\skid_buffer_reg_n_0_[9] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[35]),
        .Q(st_mr_rid[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[36]),
        .Q(st_mr_rid[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4F0000)) 
    m_valid_i_i_1__11
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(m_valid_i_reg_2),
        .O(m_valid_i_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__11_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_rvalid[0]_INST_0_i_4 
       (.I0(st_mr_rid[3]),
        .I1(st_mr_rid[2]),
        .I2(\s_axi_rvalid[0] ),
        .I3(m_valid_i_reg_0),
        .O(\m_payload_i_reg[36]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rvalid[1]_INST_0 
       (.I0(\s_axi_rvalid[1]_INST_0_i_1_n_0 ),
        .I1(m_valid_i_reg_0),
        .I2(s_axi_rvalid_1_sn_1),
        .I3(st_mr_rvalid),
        .I4(\s_axi_rvalid[1]_0 ),
        .I5(\s_axi_rvalid[1]_1 ),
        .O(s_axi_rvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_rvalid[1]_INST_0_i_1 
       (.I0(\s_axi_rvalid[1]_2 ),
        .I1(st_mr_rid[2]),
        .I2(st_mr_rid[3]),
        .O(\s_axi_rvalid[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \s_axi_rvalid[2]_INST_0_i_2 
       (.I0(st_mr_rid[3]),
        .I1(st_mr_rid[2]),
        .I2(\s_axi_rvalid[2] ),
        .O(\m_payload_i_reg[36]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_rvalid[3]_INST_0 
       (.I0(\s_axi_rvalid[3]_INST_0_i_1_n_0 ),
        .I1(m_valid_i_reg_0),
        .I2(\s_axi_rvalid[3] ),
        .I3(st_mr_rvalid),
        .I4(s_rvalid_i0[1]),
        .I5(s_rvalid_i0[0]),
        .O(s_axi_rvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rvalid[3]_INST_0_i_1 
       (.I0(\s_axi_rvalid[3]_0 ),
        .I1(st_mr_rid[2]),
        .I2(st_mr_rid[3]),
        .O(\s_axi_rvalid[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBFB0000)) 
    s_ready_i_i_1__7
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1__7_n_0));
  LUT5 #(
    .INIT(32'hFFF2F2F2)) 
    s_ready_i_i_2__6
       (.I0(s_axi_rready[2]),
        .I1(\m_payload_i_reg[36]_1 ),
        .I2(p_13_in),
        .I3(s_axi_rready[3]),
        .I4(\s_axi_rvalid[3]_INST_0_i_1_n_0 ),
        .O(rready_carry));
  LUT6 #(
    .INIT(64'h00000000F0008888)) 
    s_ready_i_i_3__4
       (.I0(s_axi_rready[0]),
        .I1(\s_axi_rvalid[0] ),
        .I2(s_axi_rready[1]),
        .I3(\s_axi_rvalid[1]_2 ),
        .I4(st_mr_rid[2]),
        .I5(st_mr_rid[3]),
        .O(p_13_in));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__7_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module mcu_xbar_0_axi_register_slice_v2_1_18_axic_register_slice__parameterized2_27
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \m_payload_i_reg[34]_0 ,
    Q,
    \s_axi_araddr[63] ,
    \s_axi_araddr[95] ,
    \s_axi_araddr[31] ,
    \m_payload_i_reg[36]_0 ,
    \gen_single_issue.active_target_hot_reg[0] ,
    s_axi_rvalid,
    m_valid_i_reg_1,
    s_rvalid_i0,
    \gen_single_thread.active_target_hot_reg[0] ,
    r_cmd_pop_0,
    aclk,
    mi_armaxissuing195_in,
    m_axi_rvalid,
    s_ready_i_reg_1,
    m_valid_i_reg_2,
    ADDRESS_HIT_0,
    \gen_arbiter.qual_reg[1]_i_2 ,
    s_axi_araddr,
    match,
    st_aa_artarget_hot,
    ADDRESS_HIT_0_0,
    match_1,
    \s_axi_rvalid[0] ,
    \s_axi_rvalid[1] ,
    \s_axi_rvalid[2] ,
    \s_axi_rvalid[2]_0 ,
    \s_axi_rvalid[2]_1 ,
    \s_axi_rvalid[2]_2 ,
    s_axi_rready,
    \s_axi_rvalid[2]_3 ,
    \s_axi_rvalid[3] ,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \m_payload_i_reg[34]_0 ;
  output [34:0]Q;
  output \s_axi_araddr[63] ;
  output \s_axi_araddr[95] ;
  output \s_axi_araddr[31] ;
  output \m_payload_i_reg[36]_0 ;
  output \gen_single_issue.active_target_hot_reg[0] ;
  output [0:0]s_axi_rvalid;
  output m_valid_i_reg_1;
  output [0:0]s_rvalid_i0;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output r_cmd_pop_0;
  input aclk;
  input mi_armaxissuing195_in;
  input [0:0]m_axi_rvalid;
  input s_ready_i_reg_1;
  input m_valid_i_reg_2;
  input ADDRESS_HIT_0;
  input \gen_arbiter.qual_reg[1]_i_2 ;
  input [5:0]s_axi_araddr;
  input match;
  input [0:0]st_aa_artarget_hot;
  input ADDRESS_HIT_0_0;
  input match_1;
  input [0:0]\s_axi_rvalid[0] ;
  input [0:0]\s_axi_rvalid[1] ;
  input [0:0]\s_axi_rvalid[2] ;
  input \s_axi_rvalid[2]_0 ;
  input \s_axi_rvalid[2]_1 ;
  input \s_axi_rvalid[2]_2 ;
  input [3:0]s_axi_rready;
  input [0:0]\s_axi_rvalid[2]_3 ;
  input [0:0]\s_axi_rvalid[3] ;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;

  wire ADDRESS_HIT_0;
  wire ADDRESS_HIT_0_0;
  wire [34:0]Q;
  wire aclk;
  wire \gen_arbiter.qual_reg[1]_i_2 ;
  wire \gen_single_issue.active_target_hot_reg[0] ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire \m_payload_i_reg[34]_0 ;
  wire \m_payload_i_reg[36]_0 ;
  wire m_valid_i_i_1__10_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire match;
  wire match_1;
  wire mi_armaxissuing195_in;
  wire [0:0]p_0_out;
  wire p_19_in__0;
  wire p_1_in;
  wire [0:0]p_37_out;
  wire r_cmd_pop_0;
  wire [12:12]rready_carry;
  wire [5:0]s_axi_araddr;
  wire \s_axi_araddr[31] ;
  wire \s_axi_araddr[63] ;
  wire \s_axi_araddr[95] ;
  wire [3:0]s_axi_rready;
  wire [0:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire [0:0]\s_axi_rvalid[1] ;
  wire [0:0]\s_axi_rvalid[2] ;
  wire \s_axi_rvalid[2]_0 ;
  wire \s_axi_rvalid[2]_1 ;
  wire \s_axi_rvalid[2]_2 ;
  wire [0:0]\s_axi_rvalid[2]_3 ;
  wire \s_axi_rvalid[2]_INST_0_i_1_n_0 ;
  wire [0:0]\s_axi_rvalid[3] ;
  wire s_ready_i_i_1__6_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [0:0]s_rvalid_i0;
  wire [36:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [0:0]st_aa_artarget_hot;
  wire [1:0]st_mr_rid;

  LUT5 #(
    .INIT(32'h44444F44)) 
    \gen_arbiter.last_rr_hot[3]_i_10__0 
       (.I0(\m_payload_i_reg[34]_0 ),
        .I1(st_aa_artarget_hot),
        .I2(\gen_arbiter.qual_reg[1]_i_2 ),
        .I3(s_axi_araddr[5]),
        .I4(s_axi_araddr[4]),
        .O(\s_axi_araddr[95] ));
  LUT6 #(
    .INIT(64'h44444F4400000000)) 
    \gen_arbiter.last_rr_hot[3]_i_11__0 
       (.I0(\m_payload_i_reg[34]_0 ),
        .I1(ADDRESS_HIT_0_0),
        .I2(\gen_arbiter.qual_reg[1]_i_2 ),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(match_1),
        .O(\s_axi_araddr[31] ));
  LUT6 #(
    .INIT(64'h44444F4400000000)) 
    \gen_arbiter.qual_reg[1]_i_5 
       (.I0(\m_payload_i_reg[34]_0 ),
        .I1(ADDRESS_HIT_0),
        .I2(\gen_arbiter.qual_reg[1]_i_2 ),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .I5(match),
        .O(\s_axi_araddr[63] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[2]_i_9 
       (.I0(m_valid_i_reg_0),
        .I1(\s_axi_rvalid[2]_3 ),
        .I2(st_mr_rid[0]),
        .I3(st_mr_rid[1]),
        .O(m_valid_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.qual_reg[3]_i_10 
       (.I0(s_axi_rready[2]),
        .I1(\s_axi_rvalid[2]_3 ),
        .I2(st_mr_rid[0]),
        .I3(st_mr_rid[1]),
        .O(p_37_out));
  LUT6 #(
    .INIT(64'h2222222AAAAAAAAA)) 
    \gen_arbiter.qual_reg[3]_i_4 
       (.I0(mi_armaxissuing195_in),
        .I1(Q[34]),
        .I2(p_0_out),
        .I3(p_19_in__0),
        .I4(p_37_out),
        .I5(m_valid_i_reg_0),
        .O(\m_payload_i_reg[34]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA0800000000)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_4 
       (.I0(m_valid_i_reg_0),
        .I1(s_axi_rready[2]),
        .I2(\s_axi_rvalid[2]_INST_0_i_1_n_0 ),
        .I3(p_19_in__0),
        .I4(p_0_out),
        .I5(Q[34]),
        .O(r_cmd_pop_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_6 
       (.I0(st_mr_rid[1]),
        .I1(st_mr_rid[0]),
        .I2(\s_axi_rvalid[3] ),
        .I3(s_axi_rready[3]),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_single_thread.accept_cnt[3]_i_4 
       (.I0(st_mr_rid[1]),
        .I1(st_mr_rid[0]),
        .I2(\s_axi_rvalid[3] ),
        .I3(m_valid_i_reg_0),
        .O(s_rvalid_i0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(\skid_buffer_reg_n_0_[0] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(\skid_buffer_reg_n_0_[10] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(\skid_buffer_reg_n_0_[11] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(\skid_buffer_reg_n_0_[12] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(\skid_buffer_reg_n_0_[13] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(\skid_buffer_reg_n_0_[14] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[15]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(\skid_buffer_reg_n_0_[15] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(\skid_buffer_reg_n_0_[16] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(\skid_buffer_reg_n_0_[17] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(\skid_buffer_reg_n_0_[18] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(\skid_buffer_reg_n_0_[19] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(\skid_buffer_reg_n_0_[1] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(\skid_buffer_reg_n_0_[20] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(\skid_buffer_reg_n_0_[21] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(\skid_buffer_reg_n_0_[22] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[23]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(\skid_buffer_reg_n_0_[23] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[24]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(\skid_buffer_reg_n_0_[24] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[25]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(\skid_buffer_reg_n_0_[25] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[26]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(\skid_buffer_reg_n_0_[26] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[27]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(\skid_buffer_reg_n_0_[27] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[28]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(\skid_buffer_reg_n_0_[28] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[29]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(\skid_buffer_reg_n_0_[29] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(\skid_buffer_reg_n_0_[2] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[30]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(\skid_buffer_reg_n_0_[30] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[31]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(\skid_buffer_reg_n_0_[31] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[32]_i_1 
       (.I0(m_axi_rresp[0]),
        .I1(\skid_buffer_reg_n_0_[32] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[33]_i_1 
       (.I0(m_axi_rresp[1]),
        .I1(\skid_buffer_reg_n_0_[33] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[34]_i_1 
       (.I0(m_axi_rlast),
        .I1(\skid_buffer_reg_n_0_[34] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[35]_i_1 
       (.I0(m_axi_rid[0]),
        .I1(\skid_buffer_reg_n_0_[35] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[35]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[36]_i_1 
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[36]_i_2 
       (.I0(m_axi_rid[1]),
        .I1(\skid_buffer_reg_n_0_[36] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[3]_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(\skid_buffer_reg_n_0_[3] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(\skid_buffer_reg_n_0_[4] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(\skid_buffer_reg_n_0_[5] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(\skid_buffer_reg_n_0_[6] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[7]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(\skid_buffer_reg_n_0_[7] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(\skid_buffer_reg_n_0_[8] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_payload_i[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(\skid_buffer_reg_n_0_[9] ),
        .I2(s_ready_i_reg_0),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[35]),
        .Q(st_mr_rid[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[36]),
        .Q(st_mr_rid[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF4F0000)) 
    m_valid_i_i_1__10
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(m_valid_i_reg_2),
        .O(m_valid_i_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__10_n_0),
        .Q(m_valid_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \s_axi_rvalid[0]_INST_0_i_3 
       (.I0(st_mr_rid[1]),
        .I1(st_mr_rid[0]),
        .I2(\s_axi_rvalid[0] ),
        .I3(m_valid_i_reg_0),
        .O(\m_payload_i_reg[36]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s_axi_rvalid[1]_INST_0_i_2 
       (.I0(\s_axi_rvalid[1] ),
        .I1(st_mr_rid[0]),
        .I2(st_mr_rid[1]),
        .O(\gen_single_issue.active_target_hot_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF22F2)) 
    \s_axi_rvalid[2]_INST_0 
       (.I0(m_valid_i_reg_0),
        .I1(\s_axi_rvalid[2]_INST_0_i_1_n_0 ),
        .I2(\s_axi_rvalid[2] ),
        .I3(\s_axi_rvalid[2]_0 ),
        .I4(\s_axi_rvalid[2]_1 ),
        .I5(\s_axi_rvalid[2]_2 ),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \s_axi_rvalid[2]_INST_0_i_1 
       (.I0(st_mr_rid[1]),
        .I1(st_mr_rid[0]),
        .I2(\s_axi_rvalid[2]_3 ),
        .O(\s_axi_rvalid[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rvalid[3]_INST_0_i_2 
       (.I0(\s_axi_rvalid[3] ),
        .I1(st_mr_rid[0]),
        .I2(st_mr_rid[1]),
        .O(\gen_single_thread.active_target_hot_reg[0] ));
  LUT5 #(
    .INIT(32'hBBFB0000)) 
    s_ready_i_i_1__6
       (.I0(rready_carry),
        .I1(m_valid_i_reg_0),
        .I2(s_ready_i_reg_0),
        .I3(m_axi_rvalid),
        .I4(s_ready_i_reg_1),
        .O(s_ready_i_i_1__6_n_0));
  LUT5 #(
    .INIT(32'hFFF2F2F2)) 
    s_ready_i_i_2__5
       (.I0(s_axi_rready[2]),
        .I1(\s_axi_rvalid[2]_INST_0_i_1_n_0 ),
        .I2(p_19_in__0),
        .I3(s_axi_rready[3]),
        .I4(\gen_single_thread.active_target_hot_reg[0] ),
        .O(rready_carry));
  LUT6 #(
    .INIT(64'h00000000F0008888)) 
    s_ready_i_i_3__3
       (.I0(s_axi_rready[0]),
        .I1(\s_axi_rvalid[0] ),
        .I2(s_axi_rready[1]),
        .I3(\s_axi_rvalid[1] ),
        .I4(st_mr_rid[0]),
        .I5(st_mr_rid[1]),
        .O(p_19_in__0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__6_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[0]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[1]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "generic_baseblocks_v2_1_0_mux_enc" *) 
module mcu_xbar_0_generic_baseblocks_v2_1_0_mux_enc__parameterized2
   (D,
    s_axi_awqos,
    \gen_arbiter.m_mesg_i_reg[2] ,
    \gen_arbiter.m_mesg_i_reg[2]_0 ,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awaddr);
  output [56:0]D;
  input [11:0]s_axi_awqos;
  input \gen_arbiter.m_mesg_i_reg[2] ;
  input \gen_arbiter.m_mesg_i_reg[2]_0 ;
  input [11:0]s_axi_awcache;
  input [5:0]s_axi_awburst;
  input [8:0]s_axi_awprot;
  input [2:0]s_axi_awlock;
  input [8:0]s_axi_awsize;
  input [23:0]s_axi_awlen;
  input [95:0]s_axi_awaddr;

  wire [56:0]D;
  wire \gen_arbiter.m_mesg_i_reg[2] ;
  wire \gen_arbiter.m_mesg_i_reg[2]_0 ;
  wire [95:0]s_axi_awaddr;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [8:0]s_axi_awsize;

  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[10]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[40]),
        .I4(s_axi_awaddr[72]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[11]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[41]),
        .I4(s_axi_awaddr[73]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[12]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[42]),
        .I4(s_axi_awaddr[74]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[13]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[43]),
        .I4(s_axi_awaddr[75]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[14]_i_1 
       (.I0(s_axi_awaddr[12]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[44]),
        .I4(s_axi_awaddr[76]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[15]_i_1 
       (.I0(s_axi_awaddr[13]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[45]),
        .I4(s_axi_awaddr[77]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[16]_i_1 
       (.I0(s_axi_awaddr[14]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[46]),
        .I4(s_axi_awaddr[78]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[17]_i_1 
       (.I0(s_axi_awaddr[15]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[47]),
        .I4(s_axi_awaddr[79]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[18]_i_1 
       (.I0(s_axi_awaddr[16]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[48]),
        .I4(s_axi_awaddr[80]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[19]_i_1 
       (.I0(s_axi_awaddr[17]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[49]),
        .I4(s_axi_awaddr[81]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[20]_i_1 
       (.I0(s_axi_awaddr[18]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[50]),
        .I4(s_axi_awaddr[82]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[21]_i_1 
       (.I0(s_axi_awaddr[19]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[51]),
        .I4(s_axi_awaddr[83]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[22]_i_1 
       (.I0(s_axi_awaddr[20]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[52]),
        .I4(s_axi_awaddr[84]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[23]_i_1 
       (.I0(s_axi_awaddr[21]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[53]),
        .I4(s_axi_awaddr[85]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[24]_i_1 
       (.I0(s_axi_awaddr[22]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[54]),
        .I4(s_axi_awaddr[86]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[25]_i_1 
       (.I0(s_axi_awaddr[23]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[55]),
        .I4(s_axi_awaddr[87]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[26]_i_1 
       (.I0(s_axi_awaddr[24]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[56]),
        .I4(s_axi_awaddr[88]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[27]_i_1 
       (.I0(s_axi_awaddr[25]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[57]),
        .I4(s_axi_awaddr[89]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[28]_i_1 
       (.I0(s_axi_awaddr[26]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[58]),
        .I4(s_axi_awaddr[90]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[29]_i_1 
       (.I0(s_axi_awaddr[27]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[59]),
        .I4(s_axi_awaddr[91]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[32]),
        .I4(s_axi_awaddr[64]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[30]_i_1 
       (.I0(s_axi_awaddr[28]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[60]),
        .I4(s_axi_awaddr[92]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[31]_i_1 
       (.I0(s_axi_awaddr[29]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[61]),
        .I4(s_axi_awaddr[93]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[32]_i_1 
       (.I0(s_axi_awaddr[30]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[62]),
        .I4(s_axi_awaddr[94]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[33]_i_1 
       (.I0(s_axi_awaddr[31]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[63]),
        .I4(s_axi_awaddr[95]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[34]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[8]),
        .I4(s_axi_awlen[16]),
        .O(D[32]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[35]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[9]),
        .I4(s_axi_awlen[17]),
        .O(D[33]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[36]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[10]),
        .I4(s_axi_awlen[18]),
        .O(D[34]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[37]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[11]),
        .I4(s_axi_awlen[19]),
        .O(D[35]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[38]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[12]),
        .I4(s_axi_awlen[20]),
        .O(D[36]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[39]_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[13]),
        .I4(s_axi_awlen[21]),
        .O(D[37]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[33]),
        .I4(s_axi_awaddr[65]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[40]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[14]),
        .I4(s_axi_awlen[22]),
        .O(D[38]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[41]_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlen[15]),
        .I4(s_axi_awlen[23]),
        .O(D[39]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[42]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awsize[3]),
        .I4(s_axi_awsize[6]),
        .O(D[40]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[43]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awsize[4]),
        .I4(s_axi_awsize[7]),
        .O(D[41]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[44]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awsize[5]),
        .I4(s_axi_awsize[8]),
        .O(D[42]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[45]_i_1 
       (.I0(s_axi_awlock[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awlock[1]),
        .I4(s_axi_awlock[2]),
        .O(D[43]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[47]_i_1 
       (.I0(s_axi_awprot[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awprot[3]),
        .I4(s_axi_awprot[6]),
        .O(D[44]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[48]_i_1 
       (.I0(s_axi_awprot[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awprot[4]),
        .I4(s_axi_awprot[7]),
        .O(D[45]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[49]_i_1 
       (.I0(s_axi_awprot[2]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awprot[5]),
        .I4(s_axi_awprot[8]),
        .O(D[46]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[4]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[34]),
        .I4(s_axi_awaddr[66]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[54]_i_1 
       (.I0(s_axi_awburst[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awburst[2]),
        .I4(s_axi_awburst[4]),
        .O(D[47]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[55]_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awburst[3]),
        .I4(s_axi_awburst[5]),
        .O(D[48]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[56]_i_1 
       (.I0(s_axi_awcache[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awcache[4]),
        .I4(s_axi_awcache[8]),
        .O(D[49]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[57]_i_1 
       (.I0(s_axi_awcache[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awcache[5]),
        .I4(s_axi_awcache[9]),
        .O(D[50]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[58]_i_1 
       (.I0(s_axi_awcache[2]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awcache[6]),
        .I4(s_axi_awcache[10]),
        .O(D[51]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[59]_i_1 
       (.I0(s_axi_awcache[3]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awcache[7]),
        .I4(s_axi_awcache[11]),
        .O(D[52]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[5]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[35]),
        .I4(s_axi_awaddr[67]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[60]_i_1 
       (.I0(s_axi_awqos[0]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awqos[4]),
        .I4(s_axi_awqos[8]),
        .O(D[53]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[61]_i_1 
       (.I0(s_axi_awqos[1]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awqos[5]),
        .I4(s_axi_awqos[9]),
        .O(D[54]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[62]_i_1 
       (.I0(s_axi_awqos[2]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awqos[6]),
        .I4(s_axi_awqos[10]),
        .O(D[55]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[63]_i_1 
       (.I0(s_axi_awqos[3]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awqos[7]),
        .I4(s_axi_awqos[11]),
        .O(D[56]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[6]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[36]),
        .I4(s_axi_awaddr[68]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[7]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[37]),
        .I4(s_axi_awaddr[69]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[8]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[38]),
        .I4(s_axi_awaddr[70]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h3E0E3202)) 
    \gen_arbiter.m_mesg_i[9]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(\gen_arbiter.m_mesg_i_reg[2] ),
        .I2(\gen_arbiter.m_mesg_i_reg[2]_0 ),
        .I3(s_axi_awaddr[39]),
        .I4(s_axi_awaddr[71]),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "generic_baseblocks_v2_1_0_mux_enc" *) 
module mcu_xbar_0_generic_baseblocks_v2_1_0_mux_enc__parameterized2_31
   (D,
    s_axi_arqos,
    Q,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_araddr);
  output [56:0]D;
  input [15:0]s_axi_arqos;
  input [1:0]Q;
  input [15:0]s_axi_arcache;
  input [7:0]s_axi_arburst;
  input [11:0]s_axi_arprot;
  input [3:0]s_axi_arlock;
  input [11:0]s_axi_arsize;
  input [31:0]s_axi_arlen;
  input [127:0]s_axi_araddr;

  wire [56:0]D;
  wire [1:0]Q;
  wire [127:0]s_axi_araddr;
  wire [7:0]s_axi_arburst;
  wire [15:0]s_axi_arcache;
  wire [31:0]s_axi_arlen;
  wire [3:0]s_axi_arlock;
  wire [11:0]s_axi_arprot;
  wire [15:0]s_axi_arqos;
  wire [11:0]s_axi_arsize;

  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[10]_i_1__0 
       (.I0(s_axi_araddr[104]),
        .I1(s_axi_araddr[8]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[40]),
        .I5(s_axi_araddr[72]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[11]_i_1__0 
       (.I0(s_axi_araddr[105]),
        .I1(s_axi_araddr[9]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[41]),
        .I5(s_axi_araddr[73]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[12]_i_1__0 
       (.I0(s_axi_araddr[106]),
        .I1(s_axi_araddr[10]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[42]),
        .I5(s_axi_araddr[74]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[13]_i_1__0 
       (.I0(s_axi_araddr[107]),
        .I1(s_axi_araddr[11]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[43]),
        .I5(s_axi_araddr[75]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[14]_i_1__0 
       (.I0(s_axi_araddr[108]),
        .I1(s_axi_araddr[12]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[44]),
        .I5(s_axi_araddr[76]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[15]_i_1__0 
       (.I0(s_axi_araddr[109]),
        .I1(s_axi_araddr[13]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[45]),
        .I5(s_axi_araddr[77]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[16]_i_1__0 
       (.I0(s_axi_araddr[110]),
        .I1(s_axi_araddr[14]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[46]),
        .I5(s_axi_araddr[78]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[17]_i_1__0 
       (.I0(s_axi_araddr[111]),
        .I1(s_axi_araddr[15]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[47]),
        .I5(s_axi_araddr[79]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[18]_i_1__0 
       (.I0(s_axi_araddr[112]),
        .I1(s_axi_araddr[16]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[48]),
        .I5(s_axi_araddr[80]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[19]_i_1__0 
       (.I0(s_axi_araddr[113]),
        .I1(s_axi_araddr[17]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[49]),
        .I5(s_axi_araddr[81]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[20]_i_1__0 
       (.I0(s_axi_araddr[114]),
        .I1(s_axi_araddr[18]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[50]),
        .I5(s_axi_araddr[82]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[21]_i_1__0 
       (.I0(s_axi_araddr[115]),
        .I1(s_axi_araddr[19]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[51]),
        .I5(s_axi_araddr[83]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[22]_i_1__0 
       (.I0(s_axi_araddr[116]),
        .I1(s_axi_araddr[20]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[52]),
        .I5(s_axi_araddr[84]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[23]_i_1__0 
       (.I0(s_axi_araddr[117]),
        .I1(s_axi_araddr[21]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[53]),
        .I5(s_axi_araddr[85]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[24]_i_1__0 
       (.I0(s_axi_araddr[118]),
        .I1(s_axi_araddr[22]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[54]),
        .I5(s_axi_araddr[86]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[25]_i_1__0 
       (.I0(s_axi_araddr[119]),
        .I1(s_axi_araddr[23]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[55]),
        .I5(s_axi_araddr[87]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[26]_i_1__0 
       (.I0(s_axi_araddr[120]),
        .I1(s_axi_araddr[24]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[56]),
        .I5(s_axi_araddr[88]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[27]_i_1__0 
       (.I0(s_axi_araddr[121]),
        .I1(s_axi_araddr[25]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[57]),
        .I5(s_axi_araddr[89]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[28]_i_1__0 
       (.I0(s_axi_araddr[122]),
        .I1(s_axi_araddr[26]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[58]),
        .I5(s_axi_araddr[90]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[29]_i_1__0 
       (.I0(s_axi_araddr[123]),
        .I1(s_axi_araddr[27]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[59]),
        .I5(s_axi_araddr[91]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[2]_i_1__0 
       (.I0(s_axi_araddr[96]),
        .I1(s_axi_araddr[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[32]),
        .I5(s_axi_araddr[64]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[30]_i_1__0 
       (.I0(s_axi_araddr[124]),
        .I1(s_axi_araddr[28]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[60]),
        .I5(s_axi_araddr[92]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[31]_i_1__0 
       (.I0(s_axi_araddr[125]),
        .I1(s_axi_araddr[29]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[61]),
        .I5(s_axi_araddr[93]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[32]_i_1__0 
       (.I0(s_axi_araddr[126]),
        .I1(s_axi_araddr[30]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[62]),
        .I5(s_axi_araddr[94]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[33]_i_1__0 
       (.I0(s_axi_araddr[127]),
        .I1(s_axi_araddr[31]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[63]),
        .I5(s_axi_araddr[95]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[34]_i_1__0 
       (.I0(s_axi_arlen[24]),
        .I1(s_axi_arlen[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[8]),
        .I5(s_axi_arlen[16]),
        .O(D[32]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[35]_i_1__0 
       (.I0(s_axi_arlen[25]),
        .I1(s_axi_arlen[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[9]),
        .I5(s_axi_arlen[17]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[36]_i_1__0 
       (.I0(s_axi_arlen[26]),
        .I1(s_axi_arlen[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[10]),
        .I5(s_axi_arlen[18]),
        .O(D[34]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[37]_i_1__0 
       (.I0(s_axi_arlen[27]),
        .I1(s_axi_arlen[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[11]),
        .I5(s_axi_arlen[19]),
        .O(D[35]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[38]_i_1__0 
       (.I0(s_axi_arlen[28]),
        .I1(s_axi_arlen[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[12]),
        .I5(s_axi_arlen[20]),
        .O(D[36]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[39]_i_1__0 
       (.I0(s_axi_arlen[29]),
        .I1(s_axi_arlen[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[13]),
        .I5(s_axi_arlen[21]),
        .O(D[37]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[3]_i_1__0 
       (.I0(s_axi_araddr[97]),
        .I1(s_axi_araddr[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[33]),
        .I5(s_axi_araddr[65]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[40]_i_1__0 
       (.I0(s_axi_arlen[30]),
        .I1(s_axi_arlen[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[14]),
        .I5(s_axi_arlen[22]),
        .O(D[38]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[41]_i_1__0 
       (.I0(s_axi_arlen[31]),
        .I1(s_axi_arlen[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlen[15]),
        .I5(s_axi_arlen[23]),
        .O(D[39]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[42]_i_1__0 
       (.I0(s_axi_arsize[9]),
        .I1(s_axi_arsize[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arsize[3]),
        .I5(s_axi_arsize[6]),
        .O(D[40]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[43]_i_1__0 
       (.I0(s_axi_arsize[10]),
        .I1(s_axi_arsize[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arsize[4]),
        .I5(s_axi_arsize[7]),
        .O(D[41]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[44]_i_1__0 
       (.I0(s_axi_arsize[11]),
        .I1(s_axi_arsize[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arsize[5]),
        .I5(s_axi_arsize[8]),
        .O(D[42]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[45]_i_1__0 
       (.I0(s_axi_arlock[3]),
        .I1(s_axi_arlock[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arlock[1]),
        .I5(s_axi_arlock[2]),
        .O(D[43]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[47]_i_1__0 
       (.I0(s_axi_arprot[9]),
        .I1(s_axi_arprot[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arprot[3]),
        .I5(s_axi_arprot[6]),
        .O(D[44]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[48]_i_1__0 
       (.I0(s_axi_arprot[10]),
        .I1(s_axi_arprot[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arprot[4]),
        .I5(s_axi_arprot[7]),
        .O(D[45]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[49]_i_1__0 
       (.I0(s_axi_arprot[11]),
        .I1(s_axi_arprot[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arprot[5]),
        .I5(s_axi_arprot[8]),
        .O(D[46]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[4]_i_1__0 
       (.I0(s_axi_araddr[98]),
        .I1(s_axi_araddr[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[34]),
        .I5(s_axi_araddr[66]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[54]_i_1__0 
       (.I0(s_axi_arburst[6]),
        .I1(s_axi_arburst[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arburst[2]),
        .I5(s_axi_arburst[4]),
        .O(D[47]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[55]_i_1__0 
       (.I0(s_axi_arburst[7]),
        .I1(s_axi_arburst[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arburst[3]),
        .I5(s_axi_arburst[5]),
        .O(D[48]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[56]_i_1__0 
       (.I0(s_axi_arcache[12]),
        .I1(s_axi_arcache[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arcache[4]),
        .I5(s_axi_arcache[8]),
        .O(D[49]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[57]_i_1__0 
       (.I0(s_axi_arcache[13]),
        .I1(s_axi_arcache[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arcache[5]),
        .I5(s_axi_arcache[9]),
        .O(D[50]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[58]_i_1__0 
       (.I0(s_axi_arcache[14]),
        .I1(s_axi_arcache[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arcache[6]),
        .I5(s_axi_arcache[10]),
        .O(D[51]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[59]_i_1__0 
       (.I0(s_axi_arcache[15]),
        .I1(s_axi_arcache[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arcache[7]),
        .I5(s_axi_arcache[11]),
        .O(D[52]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[5]_i_1__0 
       (.I0(s_axi_araddr[99]),
        .I1(s_axi_araddr[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[35]),
        .I5(s_axi_araddr[67]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[60]_i_1__0 
       (.I0(s_axi_arqos[12]),
        .I1(s_axi_arqos[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arqos[4]),
        .I5(s_axi_arqos[8]),
        .O(D[53]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[61]_i_1__0 
       (.I0(s_axi_arqos[13]),
        .I1(s_axi_arqos[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arqos[5]),
        .I5(s_axi_arqos[9]),
        .O(D[54]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[62]_i_1__0 
       (.I0(s_axi_arqos[14]),
        .I1(s_axi_arqos[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arqos[6]),
        .I5(s_axi_arqos[10]),
        .O(D[55]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[63]_i_1__0 
       (.I0(s_axi_arqos[15]),
        .I1(s_axi_arqos[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arqos[7]),
        .I5(s_axi_arqos[11]),
        .O(D[56]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[6]_i_1__0 
       (.I0(s_axi_araddr[100]),
        .I1(s_axi_araddr[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[36]),
        .I5(s_axi_araddr[68]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[7]_i_1__0 
       (.I0(s_axi_araddr[101]),
        .I1(s_axi_araddr[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[37]),
        .I5(s_axi_araddr[69]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[8]_i_1__0 
       (.I0(s_axi_araddr[102]),
        .I1(s_axi_araddr[6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[38]),
        .I5(s_axi_araddr[70]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFFCA0FCAF0CA00C)) 
    \gen_arbiter.m_mesg_i[9]_i_1__0 
       (.I0(s_axi_araddr[103]),
        .I1(s_axi_araddr[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_araddr[39]),
        .I5(s_axi_araddr[71]),
        .O(D[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
