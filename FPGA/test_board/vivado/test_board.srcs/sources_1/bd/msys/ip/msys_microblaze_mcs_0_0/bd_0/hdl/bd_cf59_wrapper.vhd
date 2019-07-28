--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_cf59_wrapper.bd
--Design : bd_cf59_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_cf59_wrapper is
  port (
    Clk : in STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Reset : in STD_LOGIC
  );
end bd_cf59_wrapper;

architecture STRUCTURE of bd_cf59_wrapper is
  component bd_cf59 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO1_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_cf59;
begin
bd_cf59_i: component bd_cf59
     port map (
      Clk => Clk,
      GPIO1_tri_i(31 downto 0) => GPIO1_tri_i(31 downto 0),
      GPIO1_tri_o(31 downto 0) => GPIO1_tri_o(31 downto 0),
      Reset => Reset
    );
end STRUCTURE;
