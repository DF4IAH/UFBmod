----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2020 19:57:37
-- Design Name: 
-- Module Name: TRX_post_fft_rx09_addr_decoder - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TRX_post_fft_rx09_addr_decoder is
    Port ( clk_100MHz           : in  STD_LOGIC;
           reset_100MHz         : in  STD_LOGIC;
           
           tvalid               : in  STD_LOGIC;
           addr                 : in  STD_LOGIC_VECTOR ( 4 downto 0);
           
           ena_ch00             : out STD_LOGIC;
           ena_ch01             : out STD_LOGIC;
           ena_ch02             : out STD_LOGIC;
           ena_ch03             : out STD_LOGIC;
           ena_ch04             : out STD_LOGIC;
           ena_ch05             : out STD_LOGIC;
           ena_ch06             : out STD_LOGIC;
           ena_ch07             : out STD_LOGIC);
end TRX_post_fft_rx09_addr_decoder;

architecture Behavioral of TRX_post_fft_rx09_addr_decoder is

begin
  decoder_proc: process(reset_100MHz, clk_100MHz, addr)
  begin
    if (reset_100MHz = '1') then
        -- SRST
        if (clk_100MHz'EVENT) and (clk_100MHz = '1') then
            ena_ch00    <= '0';
            ena_ch01    <= '0';
            ena_ch02    <= '0';
            ena_ch03    <= '0';
            ena_ch04    <= '0';
            ena_ch05    <= '0';
            ena_ch06    <= '0';
            ena_ch07    <= '0';
        end if;
        
    else
        -- Async MUX/Logic
        ena_ch00    <= '0';
        ena_ch01    <= '0';
        ena_ch02    <= '0';
        ena_ch03    <= '0';
        ena_ch04    <= '0';
        ena_ch05    <= '0';
        ena_ch06    <= '0';
        ena_ch07    <= '0';
        
        if (tvalid = '1') then
            case addr is
                when "00000" =>
                    ena_ch00 <= '1';
                    
                when "00001" =>
                    ena_ch01 <= '1';
                    
                when "00010" =>
                    ena_ch02 <= '1';
                    
                when "00011" =>
                    ena_ch03 <= '1';
                    
                when "00100" =>
                    ena_ch04 <= '1';
                    
                when "00101" =>
                    ena_ch05 <= '1';
                    
                when "00110" =>
                    ena_ch06 <= '1';
                    
                when "00111" =>
                    ena_ch07 <= '1';
                    
                when others =>
                    
            end case;
        end if;
    end if;
end process decoder_proc;

end Behavioral;
