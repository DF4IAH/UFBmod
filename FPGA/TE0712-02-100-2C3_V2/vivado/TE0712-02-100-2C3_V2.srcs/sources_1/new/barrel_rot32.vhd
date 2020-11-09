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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;


entity barrel_rot32 is
  Port ( 
    clk                 : in    STD_LOGIC;
    reset               : in    STD_LOGIC;
    
    rot                 : in    STD_LOGIC_VECTOR (4 downto 0);
    d                   : in    STD_LOGIC_VECTOR (31 downto 0);
    
    q                   : out   STD_LOGIC_VECTOR (31 downto 0)
  );
end barrel_rot32;

architecture Behavioral of barrel_rot32 is
begin
  proc_fsm: process (clk)
    variable const      : Integer  range 0 to (2**6 - 1);
    variable temp       : STD_LOGIC_VECTOR (31 downto 0);
    
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            q <= (others => '0');
            
        else
            const := (32 + to_integer(unsigned(rot))) mod 32;
            temp  := d;
            
            for ii in 1 to 32 loop
                if (ii <= const) then
                    -- Rotate left by one bit
                    temp := temp(30 downto 0) & temp(31);
                end if;
            end loop;
            
            q <= temp;
        end if;
    end if;
  end process proc_fsm;
  
end Behavioral;
