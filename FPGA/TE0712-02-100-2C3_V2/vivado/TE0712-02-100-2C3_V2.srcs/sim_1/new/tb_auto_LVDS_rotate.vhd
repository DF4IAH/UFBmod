----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2020 18:38:56
-- Design Name: 
-- Module Name: tb_barrel_rot32 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_barrel_rot32 is
--  Port ( );
end tb_barrel_rot32;

architecture Behavioral of tb_barrel_rot32 is
  component barrel_rot32 is
  Port ( clk : in STD_LOGIC;
         rot : in STD_LOGIC_VECTOR (4 downto 0);
         d : in STD_LOGIC_VECTOR (31 downto 0);
         q : out STD_LOGIC_VECTOR (31 downto 0)
    );
  end component barrel_rot32;

-- RESETS
  signal tb_reset : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_rot : STD_LOGIC_VECTOR (4 downto 0);
  signal tb_d : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_q : STD_LOGIC_VECTOR (31 downto 0);

begin
-- DUT
  barrel_rot32_i: component barrel_rot32
    port map (
      clk => tb_clk,
      rot => tb_rot,
      d => tb_d,
      q => tb_q
    );


-- RESETS
  proc_tb_reset: process
  begin
    tb_reset <= '1';

    wait for 10us;
    tb_reset <= '0';
    wait;
  end process proc_tb_reset;

-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk <= '1';
    wait for 5ns;

    tb_clk <= '0';
    wait for 5ns;
  end process proc_tb_clk;

-- STIMULI
  -- Data 32 bit
  proc_tb_d: process
  begin
    tb_d <= "10000000010000001100100100110110";
    wait;
  end process proc_tb_d;

  -- Rotate count value
  proc_tb_rot: process
    variable tb_rot_val : Integer;
  begin
    if (tb_reset = '1'  or  tb_reset = 'U') then
      tb_rot_val := 0;
      wait for 1ns;
    else
      while (tb_reset = '0') loop
        wait for 2us;
      
        tb_rot_val := tb_rot_val + 1;
        tb_rot <=  std_logic_vector(to_unsigned(tb_rot_val, tb_rot'length));
      end loop;
    end if;
  end process proc_tb_rot;
  
end Behavioral;
