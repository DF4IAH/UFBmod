----------------------------------------------------------------------------------
-- Company:  DF4IAH-Solutions
-- Engineer: Ulrich Habel (DF4IAH)
-- 
-- Create Date: 09.09.2020 13:14:24
-- Design Name: UFBmod V2
-- Module Name: UFBmod_Decoder - Behavioral
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


entity Decoder_rx09_to_FIFO_FSM is
  Port (
    -- All Clock Domain AXI 100 MHz
    reset                                           : in  STD_LOGIC;
    clk                                             : in  STD_LOGIC;
    
    decoder_rx09_ch00_center_pos                    : in  STD_LOGIC_VECTOR( 7 downto 0);
    decoder_rx09_ch00_strength                      : in  STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_ch00_noise                         : in  STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_ch00_SoM_frameCtr                  : in  STD_LOGIC_VECTOR(31 downto 0);
    decoder_rx09_ch00_FIFO_handshake                : in  STD_LOGIC;
    decoder_rx09_ch00_FIFO_accepted                 : out STD_LOGIC;
    
    decoder_rx09_lenCtr_sclr                        : out STD_LOGIC;
    decoder_rx09_lenCtr_ce                          : out STD_LOGIC;
    decoder_rx09_lenCtr_out                         : in  STD_LOGIC_VECTOR( 9 downto 0);
    
    pushdata_rx09_en                                : out STD_LOGIC;
    pushdata_rx09_byteData                          : out STD_LOGIC_VECTOR( 7 downto 0)
  );
end Decoder_rx09_to_FIFO_FSM;


architecture Behavioral of Decoder_rx09_to_FIFO_FSM is
  --signal ;  
begin
 
  -- UFBmod decoder for the RF09 receiver
  proc_Decoder_rx09_to_FIFO: process (reset, clk)
    type StateType                                  is (
                                                        init, loop_start,
                                                        pushdata_header_a, pushdata_header_b,
                                                        pushdata_signal_msb_a, pushdata_signal_msb_b, pushdata_signal_lsb_a, pushdata_signal_lsb_b,
                                                        pushdata_noise_msb_a, pushdata_noise_msb_b, pushdata_noise_lsb_a, pushdata_noise_lsb_b,
                                                        pushdata_frameCtr_p3_a, pushdata_frameCtr_p3_b, pushdata_frameCtr_p2_a, pushdata_frameCtr_p2_b, pushdata_frameCtr_p1_a, pushdata_frameCtr_p1_b, pushdata_frameCtr_p0_a, pushdata_frameCtr_p0_b,
                                                        pushdata_centerpos_a, pushdata_centerpos_b,
                                                        pushdata_remainCtr_a, pushdata_remainCtr_b,
                                                        pushdata_msgU32Len_a,
                                                        pushdata_loop_begin, pushdata_loop_transfer
                                                    );
    variable state                                  : StateType;
    
    variable decoder_rx09_ch00_strength_Int         : Integer  range 0 to (2**19 - 1);
    variable decoder_rx09_ch00_noise_Int            : Integer  range 0 to (2**19 - 1);
    variable decoder_rx09_ch00_center_pos_Int       : Integer  range 0 to (2**8  - 1);
    
  --variable initialLoopIdx                         : Integer  range 0 to (2**4  - 1);
  --variable watchdogIdx                            : Integer  range 0 to (2**17 - 1);
  --variable historyLoopIdx                         : Integer  range 0 to (2**4  - 1);
  --variable fftLoopIdx                             : Integer  range 0 to (2**8  - 1);
    
    variable loopCnt                                : Integer  range 0 to (2**8  - 1);
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            loopCnt                                 := 0;
            
            decoder_rx09_lenCtr_sclr                <= '0';
            decoder_rx09_lenCtr_ce                  <= '0';
            decoder_rx09_ch00_FIFO_accepted         <= '0';
            
            pushdata_rx09_en                        <= '0';
            pushdata_rx09_byteData                  <= (others => '0');
            
            state                                   := init;
            
        else
            case state is
                when init =>
                    pushdata_rx09_en                <= '0';
                    pushdata_rx09_byteData          <= (others => '0');
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    if (decoder_rx09_ch00_FIFO_handshake = '1') then
                        decoder_rx09_ch00_strength_Int      := to_integer(unsigned(decoder_rx09_ch00_strength));
                        decoder_rx09_ch00_noise_Int         := to_integer(unsigned(decoder_rx09_ch00_noise));
                        decoder_rx09_ch00_center_pos_Int    := to_integer(unsigned(decoder_rx09_ch00_center_pos));
                        decoder_rx09_ch00_FIFO_accepted     <= '0';
                        
                        state := pushdata_header_a;
                    end if;
                    
                when pushdata_header_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_rx09_lenCtr_out(9 downto 3))) + 9), pushdata_rx09_byteData'length));
                    state := pushdata_header_b;
                    
                when pushdata_header_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_signal_msb_a;
                    
                when pushdata_signal_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_ch00_strength_Int / 256), pushdata_rx09_byteData'length));
                    state := pushdata_signal_msb_b;
                    
                when pushdata_signal_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_signal_lsb_a;
                    
                when pushdata_signal_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_ch00_strength_Int mod 256), pushdata_rx09_byteData'length));
                    state := pushdata_signal_lsb_b;
                    
                when pushdata_signal_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p3_a;        -- pushdata_noise_msb_a;
                    
                when pushdata_noise_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_ch00_noise_Int / 256), pushdata_rx09_byteData'length));
                    state := pushdata_noise_msb_b;
                    
                when pushdata_noise_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_noise_lsb_a;
                    
                when pushdata_noise_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_ch00_noise_Int mod 256), pushdata_rx09_byteData'length));
                    state := pushdata_noise_lsb_b;
                    
                when pushdata_noise_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p3_a;
                    
                when pushdata_frameCtr_p3_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_ch00_SoM_frameCtr(31 downto 24);
                    state := pushdata_frameCtr_p3_b;
                    
                when pushdata_frameCtr_p3_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p2_a;
                    
                when pushdata_frameCtr_p2_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_ch00_SoM_frameCtr(23 downto 16);
                    state := pushdata_frameCtr_p2_b;
                    
                when pushdata_frameCtr_p2_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p1_a;
                    
                when pushdata_frameCtr_p1_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_ch00_SoM_frameCtr(15 downto 8);
                    state := pushdata_frameCtr_p1_b;
                    
                when pushdata_frameCtr_p1_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p0_a;
                    
                when pushdata_frameCtr_p0_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_ch00_SoM_frameCtr(7 downto 0);
                    state := pushdata_frameCtr_p0_b;
                    
                when pushdata_frameCtr_p0_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_centerpos_a;
                    
                when pushdata_centerpos_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_rx09_ch00_center_pos_Int, pushdata_rx09_byteData'length));
                    state := pushdata_centerpos_b;
                    
                when pushdata_centerpos_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_loop_begin;
                    
                when pushdata_loop_begin =>
                    pushdata_rx09_en        <= '0';
                    
                    if (loopCnt /= 0) then
                        loopCnt := loopCnt - 1;
                        
                        state := pushdata_loop_transfer;
                    else
                        pushdata_rx09_byteData  <= (others => '0');
                        
                        state := loop_start;
                    end if;
                    
                when pushdata_loop_transfer =>
                    pushdata_rx09_byteData  <= x"00";
                  --pushdata_rx09_byteData  <= decoder_rx09_out_vec(0)
                  --                         & decoder_rx09_out_vec(1)
                  --                         & decoder_rx09_out_vec(2)
                  --                         & decoder_rx09_out_vec(3)
                  --                         & decoder_rx09_out_vec(4)
                  --                         & decoder_rx09_out_vec(5)
                  --                         & decoder_rx09_out_vec(6)
                  --                         & decoder_rx09_out_vec(7);
                    pushdata_rx09_en        <= '1';
                    
                  --decoder_rx09_out_len    <= std_logic_vector(to_unsigned( (to_integer(unsigned(decoder_rx09_out_len)) - 8) , decoder_rx09_out_len'length));
                    
                    state := pushdata_loop_begin;
                    
                when others =>
                    state := init;
            end case;   -- state
        end if;
    end if;
  end process proc_Decoder_rx09_to_FIFO;
  
end Behavioral;
