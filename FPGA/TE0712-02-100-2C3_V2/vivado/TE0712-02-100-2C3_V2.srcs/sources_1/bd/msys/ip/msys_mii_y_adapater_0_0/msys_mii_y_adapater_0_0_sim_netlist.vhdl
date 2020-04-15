-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 15 16:59:03 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_mii_y_adapater_0_0/msys_mii_y_adapater_0_0_sim_netlist.vhdl
-- Design      : msys_mii_y_adapater_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_mii_y_adapater_0_0 is
  port (
    s_mii_col : out STD_LOGIC;
    s_mii_crs : out STD_LOGIC;
    s_mii_rx_clk : out STD_LOGIC;
    s_mii_rx_dv : out STD_LOGIC;
    s_mii_rx_er : out STD_LOGIC;
    s_mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_mii_tx_clk : out STD_LOGIC;
    s_mii_tx_en : in STD_LOGIC;
    s_mii_tx_er : in STD_LOGIC;
    s_mii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_mii_rst_n : in STD_LOGIC;
    m_mii_col : in STD_LOGIC;
    m_mii_crs : in STD_LOGIC;
    m_mii_rx_clk : in STD_LOGIC;
    m_mii_rx_dv : in STD_LOGIC;
    m_mii_rx_er : in STD_LOGIC;
    m_mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_mii_tx_clk : in STD_LOGIC;
    m_mii_tx_en : out STD_LOGIC;
    m_mii_tx_er : out STD_LOGIC;
    m_mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_mii_rst_n : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_mii_y_adapater_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of msys_mii_y_adapater_0_0 : entity is "msys_mii_y_adapater_0_0,mii_y_adapater,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of msys_mii_y_adapater_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of msys_mii_y_adapater_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of msys_mii_y_adapater_0_0 : entity is "mii_y_adapater,Vivado 2019.2.1";
end msys_mii_y_adapater_0_0;

architecture STRUCTURE of msys_mii_y_adapater_0_0 is
  signal \^m_mii_col\ : STD_LOGIC;
  signal \^m_mii_crs\ : STD_LOGIC;
  signal \^m_mii_rx_clk\ : STD_LOGIC;
  signal \^m_mii_rx_dv\ : STD_LOGIC;
  signal \^m_mii_rx_er\ : STD_LOGIC;
  signal \^m_mii_rxd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_mii_tx_clk\ : STD_LOGIC;
  signal \^s_mii_rst_n\ : STD_LOGIC;
  signal \^s_mii_tx_en\ : STD_LOGIC;
  signal \^s_mii_tx_er\ : STD_LOGIC;
  signal \^s_mii_txd\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of m_mii_col : signal is "xilinx.com:interface:mii:1.0 M_MII COL";
  attribute x_interface_info of m_mii_crs : signal is "xilinx.com:interface:mii:1.0 M_MII CRS";
  attribute x_interface_info of m_mii_rst_n : signal is "xilinx.com:interface:mii:1.0 M_MII RST_N";
  attribute x_interface_info of m_mii_rx_clk : signal is "xilinx.com:interface:mii:1.0 M_MII RX_CLK";
  attribute x_interface_info of m_mii_rx_dv : signal is "xilinx.com:interface:mii:1.0 M_MII RX_DV";
  attribute x_interface_info of m_mii_rx_er : signal is "xilinx.com:interface:mii:1.0 M_MII RX_ER";
  attribute x_interface_info of m_mii_tx_clk : signal is "xilinx.com:interface:mii:1.0 M_MII TX_CLK";
  attribute x_interface_info of m_mii_tx_en : signal is "xilinx.com:interface:mii:1.0 M_MII TX_EN";
  attribute x_interface_info of m_mii_tx_er : signal is "xilinx.com:interface:mii:1.0 M_MII TX_ER";
  attribute x_interface_info of s_mii_col : signal is "xilinx.com:interface:mii:1.0 S_MII COL";
  attribute x_interface_info of s_mii_crs : signal is "xilinx.com:interface:mii:1.0 S_MII CRS";
  attribute x_interface_info of s_mii_rst_n : signal is "xilinx.com:interface:mii:1.0 S_MII RST_N";
  attribute x_interface_info of s_mii_rx_clk : signal is "xilinx.com:interface:mii:1.0 S_MII RX_CLK";
  attribute x_interface_info of s_mii_rx_dv : signal is "xilinx.com:interface:mii:1.0 S_MII RX_DV";
  attribute x_interface_info of s_mii_rx_er : signal is "xilinx.com:interface:mii:1.0 S_MII RX_ER";
  attribute x_interface_info of s_mii_tx_clk : signal is "xilinx.com:interface:mii:1.0 S_MII TX_CLK";
  attribute x_interface_info of s_mii_tx_en : signal is "xilinx.com:interface:mii:1.0 S_MII TX_EN";
  attribute x_interface_info of s_mii_tx_er : signal is "xilinx.com:interface:mii:1.0 S_MII TX_ER";
  attribute x_interface_info of m_mii_rxd : signal is "xilinx.com:interface:mii:1.0 M_MII RXD";
  attribute x_interface_info of m_mii_txd : signal is "xilinx.com:interface:mii:1.0 M_MII TXD";
  attribute x_interface_info of s_mii_rxd : signal is "xilinx.com:interface:mii:1.0 S_MII RXD";
  attribute x_interface_info of s_mii_txd : signal is "xilinx.com:interface:mii:1.0 S_MII TXD";
begin
  \^m_mii_col\ <= m_mii_col;
  \^m_mii_crs\ <= m_mii_crs;
  \^m_mii_rx_clk\ <= m_mii_rx_clk;
  \^m_mii_rx_dv\ <= m_mii_rx_dv;
  \^m_mii_rx_er\ <= m_mii_rx_er;
  \^m_mii_rxd\(3 downto 0) <= m_mii_rxd(3 downto 0);
  \^m_mii_tx_clk\ <= m_mii_tx_clk;
  \^s_mii_rst_n\ <= s_mii_rst_n;
  \^s_mii_tx_en\ <= s_mii_tx_en;
  \^s_mii_tx_er\ <= s_mii_tx_er;
  \^s_mii_txd\(3 downto 0) <= s_mii_txd(3 downto 0);
  m_mii_rst_n <= \^s_mii_rst_n\;
  m_mii_tx_en <= \^s_mii_tx_en\;
  m_mii_tx_er <= \^s_mii_tx_er\;
  m_mii_txd(3 downto 0) <= \^s_mii_txd\(3 downto 0);
  phy_rst_n <= \^s_mii_rst_n\;
  s_mii_col <= \^m_mii_col\;
  s_mii_crs <= \^m_mii_crs\;
  s_mii_rx_clk <= \^m_mii_rx_clk\;
  s_mii_rx_dv <= \^m_mii_rx_dv\;
  s_mii_rx_er <= \^m_mii_rx_er\;
  s_mii_rxd(3 downto 0) <= \^m_mii_rxd\(3 downto 0);
  s_mii_tx_clk <= \^m_mii_tx_clk\;
end STRUCTURE;
