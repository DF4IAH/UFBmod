-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Tue Apr 28 23:53:39 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top msys_util_reduced_logic_0_3 -prefix
--               msys_util_reduced_logic_0_3_ msys_util_reduced_logic_0_3_sim_netlist.vhdl
-- Design      : msys_util_reduced_logic_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_util_reduced_logic_0_3_util_reduced_logic_v2_0_4_util_reduced_logic is
  port (
    Res : out STD_LOGIC;
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end msys_util_reduced_logic_0_3_util_reduced_logic_v2_0_4_util_reduced_logic;

architecture STRUCTURE of msys_util_reduced_logic_0_3_util_reduced_logic_v2_0_4_util_reduced_logic is
  signal Res_INST_0_i_1_n_0 : STD_LOGIC;
  signal Res_INST_0_i_2_n_0 : STD_LOGIC;
begin
Res_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Op1(2),
      I1 => Op1(3),
      I2 => Op1(0),
      I3 => Op1(1),
      I4 => Res_INST_0_i_1_n_0,
      I5 => Res_INST_0_i_2_n_0,
      O => Res
    );
Res_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Op1(9),
      I1 => Op1(8),
      I2 => Op1(11),
      I3 => Op1(10),
      O => Res_INST_0_i_1_n_0
    );
Res_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Op1(5),
      I1 => Op1(4),
      I2 => Op1(7),
      I3 => Op1(6),
      O => Res_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_util_reduced_logic_0_3 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of msys_util_reduced_logic_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of msys_util_reduced_logic_0_3 : entity is "msys_util_reduced_logic_0_3,util_reduced_logic_v2_0_4_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of msys_util_reduced_logic_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of msys_util_reduced_logic_0_3 : entity is "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2019.2.1";
end msys_util_reduced_logic_0_3;

architecture STRUCTURE of msys_util_reduced_logic_0_3 is
begin
inst: entity work.msys_util_reduced_logic_0_3_util_reduced_logic_v2_0_4_util_reduced_logic
     port map (
      Op1(11 downto 0) => Op1(11 downto 0),
      Res => Res
    );
end STRUCTURE;
