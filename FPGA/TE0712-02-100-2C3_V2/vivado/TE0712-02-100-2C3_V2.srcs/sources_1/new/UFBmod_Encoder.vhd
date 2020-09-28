----------------------------------------------------------------------------------
-- Company:  DF4IAH-Solutions
-- Engineer: Ulrich Habel (DF4IAH)
-- 
-- Create Date: 28.09.2020 13:14:24
-- Design Name: UFBmod V2
-- Module Name: UFBmod_Encoder - Behavioral
-- Project Name: UFBmod
-- Target Devices: Xilinx Artix-7 FPGAs
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

--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;


entity UFBmod_Encoder is
  Port (
    -- All Clock Domain AXI 100 MHz
    resetn                                          : in  STD_LOGIC;
    clk                                             : in  STD_LOGIC;
    
    decoder_active                                  : in  STD_LOGIC;
    decoder_rx09_squelch_lvl                        : in  STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_noise                              : in  STD_LOGIC_VECTOR(18 downto 0);
    
    encoder_pull_FIFO_dump                          : in  STD_LOGIC;
    encoder_pull_do_start                           : in  STD_LOGIC;
    encoder_pull_data_len                           : in  STD_LOGIC_VECTOR( 6 downto 0);
    
    pulldata_tx09_en                                : out STD_LOGIC;
    pulldata_tx09_byteData                          : in  STD_LOGIC_VECTOR( 7 downto 0)
  );
end UFBmod_Encoder;

architecture Behavioral of UFBmod_Encoder is
  signal encoder_tx09_in_vec                        : STD_LOGIC_VECTOR(1023 downto 0);
  signal encoder_tx09_in_len                        : STD_LOGIC_VECTOR(10 downto 0);
begin
  
  -- UFBmod encoder for the RF09 transmitter
  proc_UFBmod_Encoder_tx09: process (resetn, clk, decoder_active, decoder_rx09_squelch_lvl, decoder_rx09_noise, encoder_pull_FIFO_dump, encoder_pull_do_start, encoder_pull_data_len, pulldata_tx09_byteData)
    constant C_pre_r0                               : Integer :=  +7;
    constant C_pre_r1                               : Integer := - 9;
    constant C_pre_r2                               : Integer := +13;
    constant C_pre_r3                               : Integer := -15;
    constant C_pre_r4                               : Integer := +19;
    constant C_pre_r5                               : Integer := -21;

    constant C_bit_1                                : Integer := +17;
    constant C_bit_0                                : Integer := -11;
    
    constant C_fin_0                                : Integer :=  +5;
    constant C_fin_1                                : Integer :=  -3;
    constant C_fin_2                                : Integer :=  +1;
    
    type StateType                                  is (off, init, loop_start,
                                                    fifo_dump, fifo_pull, fifo_pull_ws1, fifo_pull_ofs, fifo_pull_remain, fifo_pull_u32len, fifo_pull_data,
                                                    tx_init
                                                    );
    variable state                                  : StateType;
    
    variable loop_cnt                               : Integer;
    variable pull_cnt                               : Integer;
    variable encoder_ofs                            : Integer;
    variable encoder_remain                         : Integer;
    variable encoder_u32len                         : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            encoder_tx09_in_vec                     <= (others => '0');
            encoder_tx09_in_len                     <= (others => '0');
            
            loop_cnt                                := 0;
            pull_cnt                                := 0;
            encoder_ofs                             := 0;
            encoder_remain                          := 0;
            encoder_u32len                          := 0;
            
            pulldata_tx09_en                        <= '0';
            
            state                                   := init;
            
        else
            case state is
                when init =>
                    pulldata_tx09_en <= '0';
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    pull_cnt := to_integer(unsigned(encoder_pull_data_len));
                    
                    if (encoder_pull_FIFO_dump = '1') then
                        state := fifo_dump;
                        
                    elsif ((encoder_pull_do_start = '1') and (pull_cnt >= 4)) then
                        state := fifo_pull;
                    end if;
                    
                when fifo_dump =>
                    pulldata_tx09_en <= '1';
                    
                    if (encoder_pull_FIFO_dump = '0') then
                        pulldata_tx09_en <= '0';
                        state := loop_start;
                    end if;
                    
                    
                when fifo_pull =>
                    pulldata_tx09_en <= '1';
                    state := fifo_pull_ws1;
                    
                when fifo_pull_ws1 =>
                    state := fifo_pull_ofs;
                    
                when fifo_pull_ofs =>
                    encoder_ofs := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    state := fifo_pull_remain;
                    
                when fifo_pull_remain =>
                    encoder_remain := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    if (pull_cnt = 2) then
                        pulldata_tx09_en <= '0';
                    end if;
                    
                    state := fifo_pull_u32len;
                    
                when fifo_pull_u32len =>
                    encoder_u32len := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    if (pull_cnt = 2) then
                        pulldata_tx09_en <= '0';
                    end if;
                    state := fifo_pull_data;
                    
                when fifo_pull_data =>
                    encoder_tx09_in_vec <= encoder_tx09_in_vec(1015 downto 0) & pulldata_tx09_byteData;
                    encoder_tx09_in_len <= std_logic_vector(to_unsigned((to_integer(unsigned(encoder_tx09_in_len)) + 8), encoder_tx09_in_len'length));
                    pull_cnt := pull_cnt - 1;

                    if (pull_cnt = 2) then
                        pulldata_tx09_en <= '0';
                        
                    elsif (pull_cnt = 0) then
                        state := tx_init;
                    end if;
                    
                when tx_init =>
                    
                    
                when others =>
                    state := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_Encoder_tx09;

end Behavioral;
