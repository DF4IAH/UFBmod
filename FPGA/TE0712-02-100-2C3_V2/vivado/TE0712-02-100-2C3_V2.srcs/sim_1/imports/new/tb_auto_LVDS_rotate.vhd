----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2020 18:38:56
-- Design Name: 
-- Module Name: tb_auto_LVDS_rotate - Behavioral
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

entity tb_auto_LVDS_rotate is
--  Port ( );
end tb_auto_LVDS_rotate;

architecture Behavioral of tb_auto_LVDS_rotate is
  component auto_LVDS_rotate is
  Port (
   reset        : in  STD_LOGIC;
   clk          : in  STD_LOGIC;
   LVDS24       : in  STD_LOGIC_VECTOR (31 downto 0);
   LVDS24_valid : in  STD_LOGIC;
   LVDS09       : in  STD_LOGIC_VECTOR (31 downto 0);
   LVDS09_valid : in  STD_LOGIC;
   rot24q       : out STD_LOGIC_VECTOR (31 downto 0);
   rot09q       : out STD_LOGIC_VECTOR (31 downto 0)
  );
  end component auto_LVDS_rotate;

-- RESETS
  signal tb_reset : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_LVDS24       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_LVDS24_valid : STD_LOGIC;
  signal tb_LVDS09       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_LVDS09_valid : STD_LOGIC;
  signal tb_rot24q       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rot09q       : STD_LOGIC_VECTOR (31 downto 0);

begin
-- DUT
  auto_LVDS_rotate_i: component auto_LVDS_rotate
    port map (
      reset        => tb_reset,
      clk          => tb_clk,
      LVDS24       => tb_LVDS24,
      LVDS24_valid => tb_LVDS24_valid,
      LVDS09       => tb_LVDS09,
      LVDS09_valid => tb_LVDS09_valid,
      rot24q       => tb_rot24q,
      rot09q =>    tb_rot09q
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
    if (tb_reset = '0') then
      tb_LVDS24       <= "00000000000000001000000000000001";
      tb_LVDS24_valid <= '1';
      tb_LVDS09       <= "01000000000000000010000000000000";
      tb_LVDS09_valid <= '1';
      wait for 10ns;

      tb_LVDS24_valid <= '0';
      tb_LVDS09_valid <= '0';
      wait for 1990ns;

    else
      tb_LVDS24       <= "00000000000000000000000000000000";
      tb_LVDS24_valid <= '0';
      tb_LVDS09       <= "00000000000000000000000000000000";
      tb_LVDS09_valid <= '0';
      wait for 10ns;
    end if;
  end process proc_tb_d;
  
end Behavioral;
