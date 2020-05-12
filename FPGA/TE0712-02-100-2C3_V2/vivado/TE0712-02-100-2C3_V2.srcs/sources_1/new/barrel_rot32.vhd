----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2020 17:31:50
-- Design Name: 
-- Module Name: barrel_rot32 - Behavioral
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

entity barrel_rot32 is
    Port ( clk : in STD_LOGIC;
           rot : in STD_LOGIC_VECTOR (4 downto 0);
           d : in STD_LOGIC_VECTOR (31 downto 0);
           q : out STD_LOGIC_VECTOR (31 downto 0)
    );
end barrel_rot32;

architecture Behavioral of barrel_rot32 is
begin
  process (clk)
    variable const : Integer;
    variable temp : STD_LOGIC_VECTOR (31 downto 0);
  begin
    const := conv_integer(rot);
    temp := d;
  
    if (clk'EVENT and clk = '1') then
      for i in 1 to 32 loop
        if i <= const then
          if (temp(31) = '1') then
            temp := temp (30 downto 0) & '1';
          else
            temp := temp (30 downto 0) & '0';
          end if;
        end if;
        
        q <= temp;
      end loop;
    end if;
  end process;

end Behavioral;
