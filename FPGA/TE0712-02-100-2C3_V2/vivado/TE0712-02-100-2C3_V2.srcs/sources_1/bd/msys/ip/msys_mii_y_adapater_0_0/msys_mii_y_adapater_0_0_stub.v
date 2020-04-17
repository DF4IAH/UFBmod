// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Wed Apr 15 16:59:03 2020
// Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top msys_mii_y_adapater_0_0 -prefix
//               msys_mii_y_adapater_0_0_ msys_mii_y_adapater_0_0_stub.v
// Design      : msys_mii_y_adapater_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mii_y_adapater,Vivado 2019.2.1" *)
module msys_mii_y_adapater_0_0(s_mii_col, s_mii_crs, s_mii_rx_clk, 
  s_mii_rx_dv, s_mii_rx_er, s_mii_rxd, s_mii_tx_clk, s_mii_tx_en, s_mii_tx_er, s_mii_txd, 
  s_mii_rst_n, m_mii_col, m_mii_crs, m_mii_rx_clk, m_mii_rx_dv, m_mii_rx_er, m_mii_rxd, 
  m_mii_tx_clk, m_mii_tx_en, m_mii_tx_er, m_mii_txd, m_mii_rst_n, phy_rst_n)
/* synthesis syn_black_box black_box_pad_pin="s_mii_col,s_mii_crs,s_mii_rx_clk,s_mii_rx_dv,s_mii_rx_er,s_mii_rxd[3:0],s_mii_tx_clk,s_mii_tx_en,s_mii_tx_er,s_mii_txd[3:0],s_mii_rst_n,m_mii_col,m_mii_crs,m_mii_rx_clk,m_mii_rx_dv,m_mii_rx_er,m_mii_rxd[3:0],m_mii_tx_clk,m_mii_tx_en,m_mii_tx_er,m_mii_txd[3:0],m_mii_rst_n,phy_rst_n" */;
  output s_mii_col;
  output s_mii_crs;
  output s_mii_rx_clk;
  output s_mii_rx_dv;
  output s_mii_rx_er;
  output [3:0]s_mii_rxd;
  output s_mii_tx_clk;
  input s_mii_tx_en;
  input s_mii_tx_er;
  input [3:0]s_mii_txd;
  input s_mii_rst_n;
  input m_mii_col;
  input m_mii_crs;
  input m_mii_rx_clk;
  input m_mii_rx_dv;
  input m_mii_rx_er;
  input [3:0]m_mii_rxd;
  input m_mii_tx_clk;
  output m_mii_tx_en;
  output m_mii_tx_er;
  output [3:0]m_mii_txd;
  output m_mii_rst_n;
  output phy_rst_n;
endmodule
