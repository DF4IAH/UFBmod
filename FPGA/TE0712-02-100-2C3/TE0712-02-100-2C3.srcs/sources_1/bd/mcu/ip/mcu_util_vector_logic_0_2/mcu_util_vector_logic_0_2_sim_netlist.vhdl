-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Apr 12 12:43:53 2020
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3/TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ip/mcu_util_vector_logic_0_2/mcu_util_vector_logic_0_2_sim_netlist.vhdl
-- Design      : mcu_util_vector_logic_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic is
  port (
    Res : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Op1 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic : entity is "util_vector_logic_v2_0_1_util_vector_logic";
end mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic;

architecture STRUCTURE of mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(0),
      I1 => Op1(0),
      O => Res(0)
    );
\Res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(10),
      I1 => Op1(10),
      O => Res(10)
    );
\Res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(1),
      I1 => Op1(1),
      O => Res(1)
    );
\Res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(2),
      I1 => Op1(2),
      O => Res(2)
    );
\Res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(3),
      I1 => Op1(3),
      O => Res(3)
    );
\Res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(4),
      I1 => Op1(4),
      O => Res(4)
    );
\Res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(5),
      I1 => Op1(5),
      O => Res(5)
    );
\Res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(6),
      I1 => Op1(6),
      O => Res(6)
    );
\Res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(7),
      I1 => Op1(7),
      O => Res(7)
    );
\Res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(8),
      I1 => Op1(8),
      O => Res(8)
    );
\Res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Op2(9),
      I1 => Op1(9),
      O => Res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_util_vector_logic_0_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_util_vector_logic_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_util_vector_logic_0_2 : entity is "mcu_util_vector_logic_0_2,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_util_vector_logic_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mcu_util_vector_logic_0_2 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
end mcu_util_vector_logic_0_2;

architecture STRUCTURE of mcu_util_vector_logic_0_2 is
begin
inst: entity work.mcu_util_vector_logic_0_2_util_vector_logic_v2_0_1_util_vector_logic
     port map (
      Op1(10 downto 0) => Op1(10 downto 0),
      Op2(10 downto 0) => Op2(10 downto 0),
      Res(10 downto 0) => Res(10 downto 0)
    );
end STRUCTURE;
