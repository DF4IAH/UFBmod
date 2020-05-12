----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2020 20:06:10
-- Design Name: 
-- Module Name: auto_LVDS_rotate - Behavioral
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

entity auto_LVDS_rotate is
    Port ( reset  : in  STD_LOGIC;
           clk    : in  STD_LOGIC;
           LVDS24 : in  STD_LOGIC_VECTOR (31 downto 0);
           LVDS09 : in  STD_LOGIC_VECTOR (31 downto 0);
           rot24q : out STD_LOGIC_VECTOR (31 downto 0);
           rot09q : out STD_LOGIC_VECTOR (31 downto 0)
    );
end auto_LVDS_rotate;

architecture Behavioral of auto_LVDS_rotate is
  component barrel_rot32 is
  Port ( clk : in  STD_LOGIC;
         rot : in  STD_LOGIC_VECTOR (4 downto 0);
         d   : in  STD_LOGIC_VECTOR (31 downto 0);
         q   : out STD_LOGIC_VECTOR (31 downto 0)
    );
  end component barrel_rot32;

  signal auto24rotval : STD_LOGIC_VECTOR (4 downto 0);
  signal auto09rotval : STD_LOGIC_VECTOR (4 downto 0);
  signal rot24        : STD_LOGIC_VECTOR (31 downto 0);
  signal rot09        : STD_LOGIC_VECTOR (31 downto 0);
  signal clk16        : STD_LOGIC;
  signal mrk24ok      : STD_LOGIC;
  signal mrk09ok      : STD_LOGIC;

begin
  barrel_rot32_24_i: component barrel_rot32
    port map (
      clk => clk,
      rot => auto24rotval,
      d => LVDS24,
      q => rot24
    );

  barrel_rot32_09_i: component barrel_rot32
    port map (
      clk => clk,
      rot => auto09rotval,
      d => LVDS09,
      q => rot09
    );

  -- Marker bits
  proc_markers: process (reset, clk, rot24, rot09)
  begin
    if (reset = '1') then
      mrk24ok <= '0';
      mrk09ok <= '0';
      
    elsif (clk'EVENT and clk = '1') then
      if (rot24(31) = '1' and rot24(30) = '0'  and  rot24(15) = '0' and rot24(14) = '1') then
        mrk24ok <= '1';
      else
        mrk24ok <= '0';
      end if;
      
      if (rot09(31) = '1' and rot09(30) = '0'  and  rot09(15) = '0' and rot09(14) = '1') then
        mrk09ok <= '1';
      else
        mrk09ok <= '0';
      end if;
    end if;
  end process proc_markers;

  -- Counter 4 bit
  proc_counter: process (reset, clk)
    variable counter_int : Integer;
  begin
    if (reset = '1') then
      counter_int := 0;
      clk16 <= '0';
      
    elsif (clk'EVENT and clk = '1') then
      if (counter_int < 15 ) then
        counter_int := counter_int + 1;
        clk16 <= '0';
      else
        counter_int := 0;
        clk16 <= '1';
      end if;
    end if;
  end process proc_counter;

  -- State-machine-24
  proc_fsm24: process (reset, clk, clk16, mrk24ok)
  variable auto24rotval_int : Integer;
  begin
    if (reset = '1') then
      auto24rotval_int := 0;
      auto24rotval <= std_logic_vector(to_unsigned(0, auto24rotval'length));
      
    elsif (clk'EVENT and clk = '1' and clk16 = '1' and mrk24ok = '0') then
      if (auto24rotval_int < 31) then
        auto24rotval_int := auto24rotval_int + 1;
      else
        auto24rotval_int := 0;
      end if;

      auto24rotval <= std_logic_vector(to_unsigned(auto24rotval_int, auto24rotval'length));
    end if;
  end process proc_fsm24;

  -- State-machine-09
  proc_fsm09: process (reset, clk, clk16, mrk09ok)
  variable auto09rotval_int : Integer;
  begin
    if (reset = '1') then
      auto09rotval_int := 0;
      auto09rotval <= std_logic_vector(to_unsigned(0, auto09rotval'length));
      
    elsif (clk'EVENT and clk = '1' and clk16 = '1' and mrk09ok = '0') then
      if (auto09rotval_int < 31) then
        auto09rotval_int := auto09rotval_int + 1;
      else
        auto09rotval_int := 0;
      end if;

      auto09rotval <= std_logic_vector(to_unsigned(auto09rotval_int, auto09rotval'length));
    end if;
  end process proc_fsm09;

  -- Clocked rot output
  proc_rot_q: process (reset, clk, rot24, rot09)
  begin
    if (reset = '1') then
      rot24q <= "00000000000000000000000000000000";
      rot09q <= "00000000000000000000000000000000";
      
    elsif (clk'EVENT and clk = '1') then
      rot24q <= rot24;
      rot09q <= rot09;
    end if;
  end process proc_rot_q;

end Behavioral;
