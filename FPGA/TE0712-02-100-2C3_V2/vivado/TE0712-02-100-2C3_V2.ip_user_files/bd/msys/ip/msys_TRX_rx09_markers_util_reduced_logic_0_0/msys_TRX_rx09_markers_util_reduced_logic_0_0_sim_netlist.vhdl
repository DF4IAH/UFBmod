-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Fri Apr 24 17:52:42 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top msys_TRX_rx09_markers_util_reduced_logic_0_0 -prefix
--               msys_TRX_rx09_markers_util_reduced_logic_0_0_ msys_util_reduced_logic_0_2_sim_netlist.vhdl
-- Design      : msys_util_reduced_logic_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_TRX_rx09_markers_util_reduced_logic_0_0_util_reduced_logic_v2_0_4_util_reduced_logic is
  port (
    Res : out STD_LOGIC;
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end msys_TRX_rx09_markers_util_reduced_logic_0_0_util_reduced_logic_v2_0_4_util_reduced_logic;

architecture STRUCTURE of msys_TRX_rx09_markers_util_reduced_logic_0_0_util_reduced_logic_v2_0_4_util_reduced_logic is
begin
Res0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Op1(1),
      I1 => Op1(0),
      I2 => Op1(3),
      I3 => Op1(2),
      O => Res
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_TRX_rx09_markers_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_TRX_rx09_markers_util_reduced_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of msys_TRX_rx09_markers_util_reduced_logic_0_0 : entity is "msys_util_reduced_logic_0_2,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of msys_TRX_rx09_markers_util_reduced_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of msys_TRX_rx09_markers_util_reduced_logic_0_0 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.2.1";
end msys_TRX_rx09_markers_util_reduced_logic_0_0;

architecture STRUCTURE of msys_TRX_rx09_markers_util_reduced_logic_0_0 is
begin
inst: entity work.msys_TRX_rx09_markers_util_reduced_logic_0_0_util_reduced_logic_v2_0_4_util_reduced_logic
     port map (
      Op1(3 downto 0) => Op1(3 downto 0),
      Res => Res
    );
end STRUCTURE;
