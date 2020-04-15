-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Wed Apr 15 16:59:03 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ip/msys_mii_y_adapater_0_0/msys_mii_y_adapater_0_0_stub.vhdl
-- Design      : msys_mii_y_adapater_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity msys_mii_y_adapater_0_0 is
  Port ( 
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

end msys_mii_y_adapater_0_0;

architecture stub of msys_mii_y_adapater_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_mii_col,s_mii_crs,s_mii_rx_clk,s_mii_rx_dv,s_mii_rx_er,s_mii_rxd[3:0],s_mii_tx_clk,s_mii_tx_en,s_mii_tx_er,s_mii_txd[3:0],s_mii_rst_n,m_mii_col,m_mii_crs,m_mii_rx_clk,m_mii_rx_dv,m_mii_rx_er,m_mii_rxd[3:0],m_mii_tx_clk,m_mii_tx_en,m_mii_tx_er,m_mii_txd[3:0],m_mii_rst_n,phy_rst_n";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mii_y_adapater,Vivado 2019.2.1";
begin
end;
