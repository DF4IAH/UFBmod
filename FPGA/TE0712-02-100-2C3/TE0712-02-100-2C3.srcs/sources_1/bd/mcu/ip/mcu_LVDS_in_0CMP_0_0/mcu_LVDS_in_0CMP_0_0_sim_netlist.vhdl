-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 12 12:41:28 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_LVDS_in_0CMP_0_0 -prefix
--               mcu_LVDS_in_0CMP_0_0_ mcu_LVDS_in_out_sample_clken_REDLOG_0_1_sim_netlist.vhdl
-- Design      : mcu_LVDS_in_out_sample_clken_REDLOG_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_LVDS_in_0CMP_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_LVDS_in_0CMP_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_LVDS_in_0CMP_0_0 : entity is "mcu_LVDS_in_out_sample_clken_REDLOG_0_1,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_LVDS_in_0CMP_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mcu_LVDS_in_0CMP_0_0 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.1";
end mcu_LVDS_in_0CMP_0_0;

architecture STRUCTURE of mcu_LVDS_in_0CMP_0_0 is
begin
Res_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op1(1),
      I1 => Op1(0),
      O => Res
    );
end STRUCTURE;