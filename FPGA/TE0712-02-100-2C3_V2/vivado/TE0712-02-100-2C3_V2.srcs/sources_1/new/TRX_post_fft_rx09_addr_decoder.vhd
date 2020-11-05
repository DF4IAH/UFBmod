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
  use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TRX_post_fft_rx09_addr_decoder is
  Port ( 
    clk_100MHz                                      : in    STD_LOGIC;
    reset_100MHz                                    : in    STD_LOGIC;
    
    addr_in                                         : in    STD_LOGIC_VECTOR(  9 downto 0 );
    tvalid                                          : in    STD_LOGIC;
    din                                             : in    STD_LOGIC_VECTOR( 15 downto 0 );
    
    addr_out                                        : out   STD_LOGIC_VECTOR(  4 downto 0 );
    dout                                            : out   STD_LOGIC_VECTOR( 15 downto 0 );
    
    ena_ch00                                        : out   STD_LOGIC;
    ena_ch01                                        : out   STD_LOGIC;
    ena_ch02                                        : out   STD_LOGIC;
    ena_ch03                                        : out   STD_LOGIC;
    ena_ch04                                        : out   STD_LOGIC;
    ena_ch05                                        : out   STD_LOGIC;
    ena_ch06                                        : out   STD_LOGIC;
    ena_ch07                                        : out   STD_LOGIC
  );
end TRX_post_fft_rx09_addr_decoder;

architecture Behavioral of TRX_post_fft_rx09_addr_decoder is

begin
  decoder_proc: process(reset_100MHz, clk_100MHz, addr_in)
  
  type     T_RX_bin_ofs_ary                         is array (0 to 7) of Integer range 0 to (2**9);
  constant C_RX_bin_ofs                             : T_RX_bin_ofs_ary := ( 16, 67, 118, 170, 221, 272, 323, 374 );
  
  variable addr_in_Int                              : Integer  range 0 to (2**9 - 1);
  variable addr_out_Int                             : Integer  range 0 to (2**5 - 1);
  
  begin
    if (clk_100MHz'EVENT and clk_100MHz = '1') then
        if (reset_100MHz = '1') then
            -- SRST
            addr_in_Int     := 0;
            addr_out        <= (others => '0');
            
            ena_ch00        <= '0';
            ena_ch01        <= '0';
            ena_ch02        <= '0';
            ena_ch03        <= '0';
            ena_ch04        <= '0';
            ena_ch05        <= '0';
            ena_ch06        <= '0';
            ena_ch07        <= '0';
            
        else
            addr_in_Int     := to_integer(unsigned(addr_in));
            addr_out_Int    := 0;
            
            -- MUX/Logic
            ena_ch00        <= '0';
            ena_ch01        <= '0';
            ena_ch02        <= '0';
            ena_ch03        <= '0';
            ena_ch04        <= '0';
            ena_ch05        <= '0';
            ena_ch06        <= '0';
            ena_ch07        <= '0';
            
            if (tvalid = '1') then
                if    (C_RX_bin_ofs(0) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(0) + 31)) then
                    ena_ch00        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(0);
                    
                elsif (C_RX_bin_ofs(1) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(1) + 31)) then
                    ena_ch01        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(1);
                    
                elsif (C_RX_bin_ofs(2) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(2) + 31)) then
                    ena_ch02        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(2);
                    
                elsif (C_RX_bin_ofs(3) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(3) + 31)) then
                    ena_ch03        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(3);
                    
                elsif (C_RX_bin_ofs(4) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(4) + 31)) then
                    ena_ch04        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(4);
                    
                elsif (C_RX_bin_ofs(5) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(5) + 31)) then
                    ena_ch05        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(5);
                    
                elsif (C_RX_bin_ofs(6) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(6) + 31)) then
                    ena_ch06        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(6);
                    
                elsif (C_RX_bin_ofs(7) <= addr_in_Int)  and  (addr_in_Int <=  (C_RX_bin_ofs(7) + 31)) then
                    ena_ch07        <= '1';
                    addr_out_Int    := addr_in_Int - C_RX_bin_ofs(7);
                end if;
                
            end if; -- tvalid
            
            addr_out    <= std_logic_vector(to_unsigned(addr_out_Int, addr_out'length));
            dout        <= din;
        end if; -- reset
    end if; -- clk_100MHz
  end process decoder_proc;
end Behavioral;
