----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.11.2020 18:30:43
-- Design Name: 
-- Module Name: TRX_FIFO_Arbiter - Behavioral
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

entity TRX_FIFO_Arbiter is
  Port ( 
    reset_100MHz                                        : in    STD_LOGIC;
    clk_100MHz                                          : in    STD_LOGIC;
    
    -- Clients
    TRX_PUSHDATA_ch00_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch00_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch00_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch00_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch01_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch01_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch01_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch01_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch02_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch02_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch02_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch02_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch03_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch03_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch03_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch03_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch04_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch04_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch04_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch04_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch05_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch05_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch05_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch05_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch06_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch06_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch06_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch06_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    TRX_PUSHDATA_ch07_req                               : in    STD_LOGIC;
    TRX_PUSHDATA_ch07_grant                             : out   STD_LOGIC;
    TRX_PUSHDATA_ch07_wr_en                             : in    STD_LOGIC;
    TRX_PUSHDATA_ch07_din                               : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    -- Master
    TRX_PUSHDATA_wr_en                                  : out   STD_LOGIC;
    TRX_PUSHDATA_din                                    : out   STD_LOGIC_VECTOR(  7 downto 0 )
  );
end TRX_FIFO_Arbiter;

architecture Behavioral of TRX_FIFO_Arbiter is
begin

proc_arbiter_FSM: process(reset_100MHz, clk_100MHz)
  variable round_robin_idx                              : Integer range 0 to (2**3 - 1);
  variable sub_idx                                      : Integer range 0 to (2**2 - 1);
  variable TRX_PUSHDATA_ch00_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch01_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch02_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch03_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch04_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch05_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch06_grant_v                    : STD_LOGIC;                      
  variable TRX_PUSHDATA_ch07_grant_v                    : STD_LOGIC;                      
begin
    if (clk_100MHz'EVENT and clk_100MHz = '1') then
        if (reset_100MHz = '1') then
            TRX_PUSHDATA_wr_en          <= '0';
            TRX_PUSHDATA_din            <= (others => '0');
            
            round_robin_idx             := 0;
            sub_idx                     := 0;
            
            TRX_PUSHDATA_ch00_grant_v   := '0';
            TRX_PUSHDATA_ch01_grant_v   := '0';
            TRX_PUSHDATA_ch02_grant_v   := '0';
            TRX_PUSHDATA_ch03_grant_v   := '0';
            TRX_PUSHDATA_ch04_grant_v   := '0';
            TRX_PUSHDATA_ch05_grant_v   := '0';
            TRX_PUSHDATA_ch06_grant_v   := '0';
            TRX_PUSHDATA_ch07_grant_v   := '0';
            
            TRX_PUSHDATA_ch00_grant     <= '0';
            TRX_PUSHDATA_ch01_grant     <= '0';
            TRX_PUSHDATA_ch02_grant     <= '0';
            TRX_PUSHDATA_ch03_grant     <= '0';
            TRX_PUSHDATA_ch04_grant     <= '0';
            TRX_PUSHDATA_ch05_grant     <= '0';
            TRX_PUSHDATA_ch06_grant     <= '0';
            TRX_PUSHDATA_ch07_grant     <= '0';
            
        else
            if (
                TRX_PUSHDATA_ch00_grant_v = '0' and
                TRX_PUSHDATA_ch01_grant_v = '0' and
                TRX_PUSHDATA_ch02_grant_v = '0' and
                TRX_PUSHDATA_ch03_grant_v = '0' and
                TRX_PUSHDATA_ch04_grant_v = '0' and
                TRX_PUSHDATA_ch05_grant_v = '0' and
                TRX_PUSHDATA_ch06_grant_v = '0' and
                TRX_PUSHDATA_ch07_grant_v = '0' )
            then
                if (sub_idx /= 3) then
                    sub_idx := sub_idx + 1;
                else
                    sub_idx := 0;
                    
                    if (round_robin_idx /= 7) then
                        round_robin_idx := round_robin_idx + 1;
                    else
                        round_robin_idx := 0;
                    end if;
                end if;
                
                case (round_robin_idx) is
                    when  0 =>
                        if (TRX_PUSHDATA_ch00_req = '1') then
                            TRX_PUSHDATA_ch00_grant_v   := '1';
                            TRX_PUSHDATA_ch00_grant     <= '1';
                        end if;
                        
                    when  1 =>
                        if (TRX_PUSHDATA_ch01_req = '1') then
                            TRX_PUSHDATA_ch01_grant_v   := '1';
                            TRX_PUSHDATA_ch01_grant     <= '1';
                        end if;
                        
                    when  2 =>
                        if (TRX_PUSHDATA_ch02_req = '1') then
                            TRX_PUSHDATA_ch02_grant_v   := '1';
                            TRX_PUSHDATA_ch02_grant     <= '1';
                        end if;
                        
                    when  3 =>
                        if (TRX_PUSHDATA_ch03_req = '1') then
                            TRX_PUSHDATA_ch03_grant_v   := '1';
                            TRX_PUSHDATA_ch03_grant     <= '1';
                        end if;
                        
                    when  4 =>
                        if (TRX_PUSHDATA_ch04_req = '1') then
                            TRX_PUSHDATA_ch04_grant_v   := '1';
                            TRX_PUSHDATA_ch04_grant     <= '1';
                        end if;
                        
                    when  5 =>
                        if (TRX_PUSHDATA_ch05_req = '1') then
                            TRX_PUSHDATA_ch05_grant_v   := '1';
                            TRX_PUSHDATA_ch05_grant     <= '1';
                        end if;
                        
                    when  6 =>
                        if (TRX_PUSHDATA_ch06_req = '1') then
                            TRX_PUSHDATA_ch06_grant_v   := '1';
                            TRX_PUSHDATA_ch06_grant     <= '1';
                        end if;
                        
                    when  7 =>
                        if (TRX_PUSHDATA_ch07_req = '1') then
                            TRX_PUSHDATA_ch07_grant_v   := '1';
                            TRX_PUSHDATA_ch07_grant     <= '1';
                        end if;
                        
                    when others =>
                end case;
                
            else
                -- Any grant is given, pull back sub index counter
                sub_idx := 0;
                
                -- Reset any grants that are no more needed
                
                if (TRX_PUSHDATA_ch00_req = '0') then
                    TRX_PUSHDATA_ch00_grant_v   := '0';
                    TRX_PUSHDATA_ch00_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch01_req = '0') then
                    TRX_PUSHDATA_ch01_grant_v   := '0';
                    TRX_PUSHDATA_ch01_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch02_req = '0') then
                    TRX_PUSHDATA_ch02_grant_v   := '0';
                    TRX_PUSHDATA_ch02_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch03_req = '0') then
                    TRX_PUSHDATA_ch03_grant_v   := '0';
                    TRX_PUSHDATA_ch03_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch04_req = '0') then
                    TRX_PUSHDATA_ch04_grant_v   := '0';
                    TRX_PUSHDATA_ch04_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch05_req = '0') then
                    TRX_PUSHDATA_ch05_grant_v   := '0';
                    TRX_PUSHDATA_ch05_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch06_req = '0') then
                    TRX_PUSHDATA_ch06_grant_v   := '0';
                    TRX_PUSHDATA_ch06_grant     <= '0';
                end if;
                
                if (TRX_PUSHDATA_ch07_req = '0') then
                    TRX_PUSHDATA_ch07_grant_v   := '0';
                    TRX_PUSHDATA_ch07_grant     <= '0';
                end if;
            end if;
            
            -- Forwarded data
            if (TRX_PUSHDATA_ch00_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch00_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch00_din;
                
            elsif (TRX_PUSHDATA_ch01_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch01_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch01_din;
                
            elsif (TRX_PUSHDATA_ch02_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch02_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch02_din;
                
            elsif (TRX_PUSHDATA_ch03_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch03_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch03_din;
                
            elsif (TRX_PUSHDATA_ch04_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch04_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch04_din;
                
            elsif (TRX_PUSHDATA_ch05_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch05_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch05_din;
                
            elsif (TRX_PUSHDATA_ch06_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch06_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch06_din;
                
            elsif (TRX_PUSHDATA_ch07_grant_v = '1') then
                TRX_PUSHDATA_wr_en  <= TRX_PUSHDATA_ch07_wr_en;
                TRX_PUSHDATA_din    <= TRX_PUSHDATA_ch07_din;
                
            else
                TRX_PUSHDATA_wr_en  <= '0';
                TRX_PUSHDATA_din    <= (others => '0');
            end if;
        end if;
    end if;
end process;

end Behavioral;
