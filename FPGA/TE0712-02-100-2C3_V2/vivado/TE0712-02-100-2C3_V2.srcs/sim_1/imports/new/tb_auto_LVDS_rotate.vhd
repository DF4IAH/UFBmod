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
    resetn       : in  STD_LOGIC;
    clk          : in  STD_LOGIC;
    LVDS09       : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS09_valid : in  STD_LOGIC;
    LVDS24       : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS24_valid : in  STD_LOGIC;
    rot09q       : out STD_LOGIC_VECTOR (31 downto 0);
    rot09vld     : out STD_LOGIC;
    rot24q       : out STD_LOGIC_VECTOR (31 downto 0);
    rot24vld     : out STD_LOGIC
  );
  end component auto_LVDS_rotate;
    
-- RESETS
  signal tb_resetn       : STD_LOGIC;

-- CLOCKS
  signal tb_clk          : STD_LOGIC;

-- STIMULUS
  signal tb_LVDS09       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_LVDS09_valid : STD_LOGIC;
  signal tb_LVDS24       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_LVDS24_valid : STD_LOGIC;
  signal tb_rot09q       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rot09vld     : STD_LOGIC;
  signal tb_rot24q       : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rot24vld     : STD_LOGIC;

begin
-- DUT
  auto_LVDS_rotate_i: component auto_LVDS_rotate
    port map (
      resetn       => tb_resetn,
      clk          => tb_clk,
      LVDS09       => tb_LVDS09,
      LVDS09_valid => tb_LVDS09_valid,
      LVDS24       => tb_LVDS24,
      LVDS24_valid => tb_LVDS24_valid,
      rot09q       => tb_rot09q,
      rot09vld     => tb_rot09vld,
      rot24q       => tb_rot24q,
      rot24vld     => tb_rot24vld
    );


-- STIMULI
  -- Data 32 bit with 64 MHz
  proc_tb_d: process
  begin
    if (tb_resetn = '1') then
      while (tb_resetn = '1') loop
        --                   vv              vv
        tb_LVDS09       <= "01011001100110011010011001100110";
        tb_LVDS09_valid <= '1';
        --                  v              vv              v
        tb_LVDS24       <= "00011001100110001110011001100111";
        tb_LVDS24_valid <= '1';
        wait for 7.812ns;

        tb_LVDS09_valid <= '0';
        tb_LVDS24_valid <= '0';
        wait for 7.813ns;
        
        wait for 46.875ns;
      end loop;

    else
      tb_LVDS09       <= std_logic_vector(to_unsigned(0, tb_LVDS09'length));
      tb_LVDS09_valid <= '0';
      tb_LVDS24       <= std_logic_vector(to_unsigned(0, tb_LVDS24'length));
      tb_LVDS24_valid <= '0';
      wait for 10ns;
    end if;
  end process proc_tb_d;
  
  
-- RESETS
  proc_tb_resetn: process
  begin
    tb_resetn <= '0';

    wait for 10us;
    tb_resetn <= '1';
    wait;
  end process proc_tb_resetn;


-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk <= '1';
    wait for 5ns;

    tb_clk <= '0';
    wait for 5ns;
  end process proc_tb_clk;

end Behavioral;
