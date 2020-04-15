-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 12 12:25:23 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_LVDS_in_out_sample_clken_REDLOG_0_0 -prefix
--               mcu_LVDS_in_out_sample_clken_REDLOG_0_0_ mcu_LVDS_in_out_sample_clken_REDLOG_0_0_sim_netlist.vhdl
-- Design      : mcu_LVDS_in_out_sample_clken_REDLOG_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_LVDS_in_out_sample_clken_REDLOG_0_0_util_reduced_logic_v2_0_4_util_reduced_logic is
  port (
    Res : out STD_LOGIC;
    Op1 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end mcu_LVDS_in_out_sample_clken_REDLOG_0_0_util_reduced_logic_v2_0_4_util_reduced_logic;

architecture STRUCTURE of mcu_LVDS_in_out_sample_clken_REDLOG_0_0_util_reduced_logic_v2_0_4_util_reduced_logic is
  signal Res_INST_0_i_1_n_0 : STD_LOGIC;
begin
Res_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(9),
      I1 => Op1(7),
      I2 => Res_INST_0_i_1_n_0,
      I3 => Op1(6),
      I4 => Op1(8),
      I5 => Op1(10),
      O => Res
    );
Res_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(3),
      I1 => Op1(0),
      I2 => Op1(2),
      I3 => Op1(1),
      I4 => Op1(4),
      I5 => Op1(5),
      O => Res_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_LVDS_in_out_sample_clken_REDLOG_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_LVDS_in_out_sample_clken_REDLOG_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_LVDS_in_out_sample_clken_REDLOG_0_0 : entity is "mcu_LVDS_in_out_sample_clken_REDLOG_0_0,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_LVDS_in_out_sample_clken_REDLOG_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mcu_LVDS_in_out_sample_clken_REDLOG_0_0 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.1";
end mcu_LVDS_in_out_sample_clken_REDLOG_0_0;

architecture STRUCTURE of mcu_LVDS_in_out_sample_clken_REDLOG_0_0 is
begin
inst: entity work.mcu_LVDS_in_out_sample_clken_REDLOG_0_0_util_reduced_logic_v2_0_4_util_reduced_logic
     port map (
      Op1(10 downto 0) => Op1(10 downto 0),
      Res => Res
    );
end STRUCTURE;
