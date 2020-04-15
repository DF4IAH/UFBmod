// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 15 16:59:03 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_mii_y_adapater_0_0/msys_mii_y_adapater_0_0_sim_netlist.v
// Design      : msys_mii_y_adapater_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "msys_mii_y_adapater_0_0,mii_y_adapater,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "mii_y_adapater,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module msys_mii_y_adapater_0_0
   (s_mii_col,
    s_mii_crs,
    s_mii_rx_clk,
    s_mii_rx_dv,
    s_mii_rx_er,
    s_mii_rxd,
    s_mii_tx_clk,
    s_mii_tx_en,
    s_mii_tx_er,
    s_mii_txd,
    s_mii_rst_n,
    m_mii_col,
    m_mii_crs,
    m_mii_rx_clk,
    m_mii_rx_dv,
    m_mii_rx_er,
    m_mii_rxd,
    m_mii_tx_clk,
    m_mii_tx_en,
    m_mii_tx_er,
    m_mii_txd,
    m_mii_rst_n,
    phy_rst_n);
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII COL" *) output s_mii_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII CRS" *) output s_mii_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII RX_CLK" *) output s_mii_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII RX_DV" *) output s_mii_rx_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII RX_ER" *) output s_mii_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII RXD" *) output [3:0]s_mii_rxd;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII TX_CLK" *) output s_mii_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII TX_EN" *) input s_mii_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII TX_ER" *) input s_mii_tx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII TXD" *) input [3:0]s_mii_txd;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 S_MII RST_N" *) input s_mii_rst_n;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII COL" *) input m_mii_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII CRS" *) input m_mii_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII RX_CLK" *) input m_mii_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII RX_DV" *) input m_mii_rx_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII RX_ER" *) input m_mii_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII RXD" *) input [3:0]m_mii_rxd;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII TX_CLK" *) input m_mii_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII TX_EN" *) output m_mii_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII TX_ER" *) output m_mii_tx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII TXD" *) output [3:0]m_mii_txd;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 M_MII RST_N" *) output m_mii_rst_n;
  output phy_rst_n;

  wire m_mii_col;
  wire m_mii_crs;
  wire m_mii_rx_clk;
  wire m_mii_rx_dv;
  wire m_mii_rx_er;
  wire [3:0]m_mii_rxd;
  wire m_mii_tx_clk;
  wire s_mii_rst_n;
  wire s_mii_tx_en;
  wire s_mii_tx_er;
  wire [3:0]s_mii_txd;

  assign m_mii_rst_n = s_mii_rst_n;
  assign m_mii_tx_en = s_mii_tx_en;
  assign m_mii_tx_er = s_mii_tx_er;
  assign m_mii_txd[3:0] = s_mii_txd;
  assign phy_rst_n = s_mii_rst_n;
  assign s_mii_col = m_mii_col;
  assign s_mii_crs = m_mii_crs;
  assign s_mii_rx_clk = m_mii_rx_clk;
  assign s_mii_rx_dv = m_mii_rx_dv;
  assign s_mii_rx_er = m_mii_rx_er;
  assign s_mii_rxd[3:0] = m_mii_rxd;
  assign s_mii_tx_clk = m_mii_tx_clk;
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
