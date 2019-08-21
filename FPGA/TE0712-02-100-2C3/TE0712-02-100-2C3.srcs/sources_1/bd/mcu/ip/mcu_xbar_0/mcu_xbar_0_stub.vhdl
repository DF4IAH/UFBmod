-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Thu Aug 15 19:18:06 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top mcu_xbar_0 -prefix
--               mcu_xbar_0_ mcu_xbar_0_stub.vhdl
-- Design      : mcu_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcu_xbar_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 44 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 479 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );

end mcu_xbar_0;

architecture stub of mcu_xbar_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awid[17:0],s_axi_awaddr[191:0],s_axi_awlen[47:0],s_axi_awsize[17:0],s_axi_awburst[11:0],s_axi_awlock[5:0],s_axi_awcache[23:0],s_axi_awprot[17:0],s_axi_awqos[23:0],s_axi_awuser[23:0],s_axi_awvalid[5:0],s_axi_awready[5:0],s_axi_wdata[191:0],s_axi_wstrb[23:0],s_axi_wlast[5:0],s_axi_wvalid[5:0],s_axi_wready[5:0],s_axi_bid[17:0],s_axi_bresp[11:0],s_axi_bvalid[5:0],s_axi_bready[5:0],s_axi_arid[17:0],s_axi_araddr[191:0],s_axi_arlen[47:0],s_axi_arsize[17:0],s_axi_arburst[11:0],s_axi_arlock[5:0],s_axi_arcache[23:0],s_axi_arprot[17:0],s_axi_arqos[23:0],s_axi_aruser[23:0],s_axi_arvalid[5:0],s_axi_arready[5:0],s_axi_rid[17:0],s_axi_rdata[191:0],s_axi_rresp[11:0],s_axi_rlast[5:0],s_axi_rvalid[5:0],s_axi_rready[5:0],m_axi_awid[44:0],m_axi_awaddr[479:0],m_axi_awlen[119:0],m_axi_awsize[44:0],m_axi_awburst[29:0],m_axi_awlock[14:0],m_axi_awcache[59:0],m_axi_awprot[44:0],m_axi_awregion[59:0],m_axi_awqos[59:0],m_axi_awuser[59:0],m_axi_awvalid[14:0],m_axi_awready[14:0],m_axi_wdata[479:0],m_axi_wstrb[59:0],m_axi_wlast[14:0],m_axi_wvalid[14:0],m_axi_wready[14:0],m_axi_bid[44:0],m_axi_bresp[29:0],m_axi_bvalid[14:0],m_axi_bready[14:0],m_axi_arid[44:0],m_axi_araddr[479:0],m_axi_arlen[119:0],m_axi_arsize[44:0],m_axi_arburst[29:0],m_axi_arlock[14:0],m_axi_arcache[59:0],m_axi_arprot[44:0],m_axi_arregion[59:0],m_axi_arqos[59:0],m_axi_aruser[59:0],m_axi_arvalid[14:0],m_axi_arready[14:0],m_axi_rid[44:0],m_axi_rdata[479:0],m_axi_rresp[29:0],m_axi_rlast[14:0],m_axi_rvalid[14:0],m_axi_rready[14:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_20_axi_crossbar,Vivado 2019.1.2";
begin
end;
