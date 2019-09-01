-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.2 (win64) Build 2615518 Fri Aug  9 15:55:25 MDT 2019
-- Date        : Sat Aug 31 19:19:06 2019
-- Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mcu_util_vector_logic_0_1 -prefix
--               mcu_util_vector_logic_0_1_ mcu_util_vector_logic_0_1_sim_netlist.vhdl
-- Design      : mcu_util_vector_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_util_vector_logic_0_1_util_vector_logic_v2_0_1_util_vector_logic is
  port (
    Res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Op1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end mcu_util_vector_logic_0_1_util_vector_logic_v2_0_1_util_vector_logic;

architecture STRUCTURE of mcu_util_vector_logic_0_1_util_vector_logic_v2_0_1_util_vector_logic is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
\Res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(10),
      I1 => Op2(10),
      O => Res(10)
    );
\Res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(11),
      I1 => Op2(11),
      O => Res(11)
    );
\Res[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(12),
      I1 => Op2(12),
      O => Res(12)
    );
\Res[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(13),
      I1 => Op2(13),
      O => Res(13)
    );
\Res[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(14),
      I1 => Op2(14),
      O => Res(14)
    );
\Res[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(15),
      I1 => Op2(15),
      O => Res(15)
    );
\Res[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(16),
      I1 => Op2(16),
      O => Res(16)
    );
\Res[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(17),
      I1 => Op2(17),
      O => Res(17)
    );
\Res[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(18),
      I1 => Op2(18),
      O => Res(18)
    );
\Res[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(19),
      I1 => Op2(19),
      O => Res(19)
    );
\Res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(1),
      I1 => Op2(1),
      O => Res(1)
    );
\Res[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(20),
      I1 => Op2(20),
      O => Res(20)
    );
\Res[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(21),
      I1 => Op2(21),
      O => Res(21)
    );
\Res[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(22),
      I1 => Op2(22),
      O => Res(22)
    );
\Res[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(23),
      I1 => Op2(23),
      O => Res(23)
    );
\Res[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(24),
      I1 => Op2(24),
      O => Res(24)
    );
\Res[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(25),
      I1 => Op2(25),
      O => Res(25)
    );
\Res[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(26),
      I1 => Op2(26),
      O => Res(26)
    );
\Res[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(27),
      I1 => Op2(27),
      O => Res(27)
    );
\Res[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(28),
      I1 => Op2(28),
      O => Res(28)
    );
\Res[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(29),
      I1 => Op2(29),
      O => Res(29)
    );
\Res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(2),
      I1 => Op2(2),
      O => Res(2)
    );
\Res[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(30),
      I1 => Op2(30),
      O => Res(30)
    );
\Res[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(31),
      I1 => Op2(31),
      O => Res(31)
    );
\Res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(3),
      I1 => Op2(3),
      O => Res(3)
    );
\Res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(4),
      I1 => Op2(4),
      O => Res(4)
    );
\Res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(5),
      I1 => Op2(5),
      O => Res(5)
    );
\Res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(6),
      I1 => Op2(6),
      O => Res(6)
    );
\Res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(7),
      I1 => Op2(7),
      O => Res(7)
    );
\Res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(8),
      I1 => Op2(8),
      O => Res(8)
    );
\Res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(9),
      I1 => Op2(9),
      O => Res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mcu_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mcu_util_vector_logic_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mcu_util_vector_logic_0_1 : entity is "mcu_util_vector_logic_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mcu_util_vector_logic_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mcu_util_vector_logic_0_1 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1.2";
end mcu_util_vector_logic_0_1;

architecture STRUCTURE of mcu_util_vector_logic_0_1 is
begin
inst: entity work.mcu_util_vector_logic_0_1_util_vector_logic_v2_0_1_util_vector_logic
     port map (
      Op1(31 downto 0) => Op1(31 downto 0),
      Op2(31 downto 0) => Op2(31 downto 0),
      Res(31 downto 0) => Res(31 downto 0)
    );
end STRUCTURE;