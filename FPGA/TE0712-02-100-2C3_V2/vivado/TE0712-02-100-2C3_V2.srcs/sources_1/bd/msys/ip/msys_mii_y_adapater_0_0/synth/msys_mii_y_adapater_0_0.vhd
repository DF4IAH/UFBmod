-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: trenz.biz:user:mii_y_adapater:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY msys_mii_y_adapater_0_0 IS
  PORT (
    s_mii_col : OUT STD_LOGIC;
    s_mii_crs : OUT STD_LOGIC;
    s_mii_rx_clk : OUT STD_LOGIC;
    s_mii_rx_dv : OUT STD_LOGIC;
    s_mii_rx_er : OUT STD_LOGIC;
    s_mii_rxd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_mii_tx_clk : OUT STD_LOGIC;
    s_mii_tx_en : IN STD_LOGIC;
    s_mii_tx_er : IN STD_LOGIC;
    s_mii_txd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_mii_rst_n : IN STD_LOGIC;
    m_mii_col : IN STD_LOGIC;
    m_mii_crs : IN STD_LOGIC;
    m_mii_rx_clk : IN STD_LOGIC;
    m_mii_rx_dv : IN STD_LOGIC;
    m_mii_rx_er : IN STD_LOGIC;
    m_mii_rxd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_mii_tx_clk : IN STD_LOGIC;
    m_mii_tx_en : OUT STD_LOGIC;
    m_mii_tx_er : OUT STD_LOGIC;
    m_mii_txd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_mii_rst_n : OUT STD_LOGIC;
    phy_rst_n : OUT STD_LOGIC
  );
END msys_mii_y_adapater_0_0;

ARCHITECTURE msys_mii_y_adapater_0_0_arch OF msys_mii_y_adapater_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF msys_mii_y_adapater_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mii_y_adapater IS
    PORT (
      s_mii_col : OUT STD_LOGIC;
      s_mii_crs : OUT STD_LOGIC;
      s_mii_rx_clk : OUT STD_LOGIC;
      s_mii_rx_dv : OUT STD_LOGIC;
      s_mii_rx_er : OUT STD_LOGIC;
      s_mii_rxd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_mii_tx_clk : OUT STD_LOGIC;
      s_mii_tx_en : IN STD_LOGIC;
      s_mii_tx_er : IN STD_LOGIC;
      s_mii_txd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_mii_rst_n : IN STD_LOGIC;
      m_mii_col : IN STD_LOGIC;
      m_mii_crs : IN STD_LOGIC;
      m_mii_rx_clk : IN STD_LOGIC;
      m_mii_rx_dv : IN STD_LOGIC;
      m_mii_rx_er : IN STD_LOGIC;
      m_mii_rxd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_mii_tx_clk : IN STD_LOGIC;
      m_mii_tx_en : OUT STD_LOGIC;
      m_mii_tx_er : OUT STD_LOGIC;
      m_mii_txd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_mii_rst_n : OUT STD_LOGIC;
      phy_rst_n : OUT STD_LOGIC
    );
  END COMPONENT mii_y_adapater;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF msys_mii_y_adapater_0_0_arch: ARCHITECTURE IS "mii_y_adapater,Vivado 2019.2.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF msys_mii_y_adapater_0_0_arch : ARCHITECTURE IS "msys_mii_y_adapater_0_0,mii_y_adapater,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF msys_mii_y_adapater_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_rst_n: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII RST_N";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_txd: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII TXD";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_tx_er: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII TX_ER";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_tx_en: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII TX_EN";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_tx_clk: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII TX_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_rxd: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII RXD";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_rx_er: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII RX_ER";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_rx_dv: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII RX_DV";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_rx_clk: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII RX_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_crs: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII CRS";
  ATTRIBUTE X_INTERFACE_INFO OF m_mii_col: SIGNAL IS "xilinx.com:interface:mii:1.0 M_MII COL";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_rst_n: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII RST_N";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_txd: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII TXD";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_tx_er: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII TX_ER";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_tx_en: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII TX_EN";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_tx_clk: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII TX_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_rxd: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII RXD";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_rx_er: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII RX_ER";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_rx_dv: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII RX_DV";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_rx_clk: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII RX_CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_crs: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII CRS";
  ATTRIBUTE X_INTERFACE_INFO OF s_mii_col: SIGNAL IS "xilinx.com:interface:mii:1.0 S_MII COL";
BEGIN
  U0 : mii_y_adapater
    PORT MAP (
      s_mii_col => s_mii_col,
      s_mii_crs => s_mii_crs,
      s_mii_rx_clk => s_mii_rx_clk,
      s_mii_rx_dv => s_mii_rx_dv,
      s_mii_rx_er => s_mii_rx_er,
      s_mii_rxd => s_mii_rxd,
      s_mii_tx_clk => s_mii_tx_clk,
      s_mii_tx_en => s_mii_tx_en,
      s_mii_tx_er => s_mii_tx_er,
      s_mii_txd => s_mii_txd,
      s_mii_rst_n => s_mii_rst_n,
      m_mii_col => m_mii_col,
      m_mii_crs => m_mii_crs,
      m_mii_rx_clk => m_mii_rx_clk,
      m_mii_rx_dv => m_mii_rx_dv,
      m_mii_rx_er => m_mii_rx_er,
      m_mii_rxd => m_mii_rxd,
      m_mii_tx_clk => m_mii_tx_clk,
      m_mii_tx_en => m_mii_tx_en,
      m_mii_tx_er => m_mii_tx_er,
      m_mii_txd => m_mii_txd,
      m_mii_rst_n => m_mii_rst_n,
      phy_rst_n => phy_rst_n
    );
END msys_mii_y_adapater_0_0_arch;
