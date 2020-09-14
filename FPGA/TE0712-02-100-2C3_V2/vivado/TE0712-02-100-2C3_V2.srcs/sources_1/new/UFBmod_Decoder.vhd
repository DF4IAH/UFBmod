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


entity UFBmod_Decoder is
  Port (
    -- All Clock Domain AXI 100 MHz
    resetn                                  : in  STD_LOGIC;
    clk                                     : in  STD_LOGIC;
    
    post_fft_rx09_mem_a_addr                : in  STD_LOGIC_VECTOR(41 downto 0);
    
    post_fft_rx09_mem_b_addr                : out STD_LOGIC_VECTOR(14 downto 0);
    post_fft_rx09_mem_b_dout                : in  STD_LOGIC_VECTOR(15 downto 0);
    
    decoder_rx09_squelch_lvl                : in  STD_LOGIC_VECTOR(18 downto 0);
    
    decoder_rx09_SoM_frameCtrAddr           : out STD_LOGIC_VECTOR(41 downto 0);
    decoder_rx09_center_pos                 : out STD_LOGIC_VECTOR( 4 downto 0);
    decoder_rx09_strength                   : out STD_LOGIC_VECTOR(18 downto 0);
    
    -- Debugging purposes only
    dbg_max_val                             : out STD_LOGIC_VECTOR(18 downto 0)
  );
end UFBmod_Decoder;

architecture Behavioral of UFBmod_Decoder is
  signal post_fft_rx09_mem_a_subframe_addr  : STD_LOGIC_VECTOR(41 downto 0);
  signal post_fft_rx09_mem_b_complete_addr  : STD_LOGIC_VECTOR(41 downto 0);
  signal decoder_rx09_out_vec               : STD_LOGIC_VECTOR(1023 downto 0);
  signal decoder_rx09_out_len               : STD_LOGIC_VECTOR(10 downto 0);
  
begin
  
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_Decoder_rx09: process (resetn, clk, post_fft_rx09_mem_a_addr)
    constant C_mem_depth                            : Integer   := 32768;
    constant C_trig_ofs                             : Integer   := 8 * 2048;        -- Start header search on even frame only
    type StateType is                               (off, init, trigger_search, 
                                                    artemis_init, artemis_calc, 
                                                    artemis_runEven_ws1, artemis_runEven_ws2, artemis_addEven,
                                                    artemis_runOdd_ws1, artemis_runOdd_ws2, artemis_addOdd,
                                                    find_max_init, find_max_run, find_max_trigger, hand_over,
                                                    decoder_init, decoder_trigger,
                                                    decoder_read_bit_one, decoder_read_bit_one_ws1, decoder_read_bit_one_ws2, decoder_read_bit_one_signal,
                                                    decoder_read_bit_zero, decoder_read_bit_zero_ws1, decoder_read_bit_zero_ws2, decoder_read_bit_zero_signal,
                                                    decoder_read_footer, decoder_read_footer_ws1, decoder_read_footer_ws2, decoder_read_footer_signal,
                                                    decoder_decider,
                                                    decoder_inc_addr,
                                                    decoder_done);
    variable state                                  : StateType;
    
    type IntField32 is                              array (31 downto 0) of Integer;
    variable sumEven                                : IntField32;
    variable sumOdd                                 : IntField32;
    
    variable post_fft_rx09_mem_a_subframe_addr_Int  : Integer;
    variable post_fft_rx09_mem_a_addr_trig          : Integer;
    variable post_fft_rx09_mem_b_addr_Int           : Integer;
    variable post_fft_rx09_mem_a_ptr_addr_Int       : Integer;
    variable post_fft_rx09_mem_a_addr_Int           : Integer;
    variable centerIdx                              : Integer;
    variable huntIdx                                : Integer;
    variable ofsAddr                                : Integer;
    variable maxEven_addr                           : Integer;
    variable maxEven_val                            : Integer;
    variable maxEven_pos                            : Integer;
    variable maxOdd_addr                            : Integer;
    variable maxOdd_val                             : Integer;
    variable maxOdd_pos                             : Integer;
    variable max_addr                               : Integer;
    variable max_val                                : Integer;
    variable max_pos                                : Integer;
    variable max_idx                                : Integer;
    variable decoder_rx09_center_pos_Int            : Integer;
    variable decoder_rx09_strength_Int              : Integer;
    variable lastCenterOfs                          : Integer;
    variable decoder_one_val                        : Integer;
    variable decoder_zero_val                       : Integer;
    variable decoder_footer_val                     : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            post_fft_rx09_mem_a_subframe_addr_Int   := 0;
            post_fft_rx09_mem_a_subframe_addr       <= (others => '0');
            post_fft_rx09_mem_a_addr_trig           := 0;
            post_fft_rx09_mem_b_addr_Int            := 0;
            post_fft_rx09_mem_b_addr                <= (others => '0');
            post_fft_rx09_mem_b_complete_addr       <= (others => '0');
            post_fft_rx09_mem_a_ptr_addr_Int        := 0;
            maxEven_addr                            := 0;
            maxEven_val                             := 0;
            maxEven_pos                             := 0;
            maxOdd_addr                             := 0;
            maxOdd_val                              := 0;
            maxOdd_pos                              := 0;
            max_addr                                := 0;
            max_val                                 := 0;
            max_pos                                 := 0;
            max_idx                                 := 0;
            
            decoder_rx09_SoM_frameCtrAddr           <= (others => '0');
            
            decoder_rx09_center_pos_Int             := 0;
            decoder_rx09_center_pos                 <= (others => '0');
            
            decoder_rx09_strength_Int               := 0;
            decoder_rx09_strength                   <= (others => '0');
            
            decoder_rx09_out_vec                    <= (others => '0');
            decoder_rx09_out_len                    <= (others => '0');
            
            lastCenterOfs                           := 0;
            decoder_one_val                         := 0;
            decoder_zero_val                        := 0;
            decoder_footer_val                      := 0;
            
            dbg_max_val                             <= (others => '0');
            
            state                                   := init;
        else
            case state is
                when init =>
                    post_fft_rx09_mem_b_addr_Int    := 0;
                    maxEven_addr                    := 0;
                    maxEven_val                     := 0;
                    maxEven_pos                     := 0;
                    maxOdd_addr                     := 0;
                    maxOdd_val                      := 0;
                    maxOdd_pos                      := 0;
                    max_addr                        := 0;
                    max_val                         := 0;
                    max_pos                         := 0;
                    max_idx                         := 0;
                    decoder_rx09_center_pos_Int     := 0;
                    decoder_rx09_strength_Int       := 0;
                    lastCenterOfs                   := 0;
                    decoder_one_val                 := 0;
                    decoder_zero_val                := 0;
                    decoder_footer_val              := 0;
                    
                    for idx in 0 to 31 loop
                        sumEven(idx)    := 0;
                        sumOdd(idx)     := 0;
                    end loop;
                    
                    -- Anchor address for this subframe to work on - post_fft: each subframe starts with 1024 points offset to each other
                    post_fft_rx09_mem_a_subframe_addr_Int   := (to_integer(unsigned((post_fft_rx09_mem_a_addr and "111111111111111111111111111111100000000000"))));                     -- Current filled frame
                    post_fft_rx09_mem_a_subframe_addr       <= std_logic_vector(to_unsigned(post_fft_rx09_mem_a_subframe_addr_Int, post_fft_rx09_mem_a_subframe_addr'length));          -- Informative only
                    post_fft_rx09_mem_a_ptr_addr_Int        := post_fft_rx09_mem_a_subframe_addr_Int;                                                                                   -- Current Even start frame

                    post_fft_rx09_mem_a_addr_trig           := post_fft_rx09_mem_a_ptr_addr_Int + 2048 + C_trig_ofs;                                                                    -- Advance to have enough data to find preamble
                    post_fft_rx09_mem_a_addr_trig           := post_fft_rx09_mem_a_addr_trig - (post_fft_rx09_mem_a_addr_trig mod 2048);                                                -- Even sub-frame
                    
                    state := trigger_search;
                    
                -- searching for any subframe idx change    
                when trigger_search =>
                    post_fft_rx09_mem_a_addr_Int := to_integer(unsigned(post_fft_rx09_mem_a_addr));
                    if (post_fft_rx09_mem_a_addr_Int >= post_fft_rx09_mem_a_addr_trig) then
                        post_fft_rx09_mem_a_subframe_addr_Int   := (to_integer(unsigned((post_fft_rx09_mem_a_addr and "111111111111111111111111111111100000000000"))));                 -- Current filled frame
                        post_fft_rx09_mem_a_subframe_addr       <= std_logic_vector(to_unsigned(post_fft_rx09_mem_a_subframe_addr_Int, post_fft_rx09_mem_a_subframe_addr'length));      -- Informative only
                        
                        -- Start the hunting for Preamble Energies
                        state := artemis_init;
                    end if;
                    
                when artemis_init =>
                    centerIdx           := 0;
                    huntIdx             := 0;
                    
                    for idx in 0 to 31 loop
                        sumEven(idx)    := 0;
                        sumOdd(idx)     := 0;
                    end loop;
                    
                    state := artemis_calc;
                    
                when artemis_calc =>
                    case huntIdx is
                        when 0 =>
                            ofsAddr     :=  +6;
                        when 1 =>
                            ofsAddr     :=  -6;
                        when 2 =>
                            ofsAddr     :=  +9;
                        when 3 =>
                            ofsAddr     :=  -9;
                        when 4 =>
                            ofsAddr     := +12;
                        when 5 =>
                            ofsAddr     := -12;
                        when others =>
                            ofsAddr     :=   0;
                    end case;  -- huntIdx
                    
                    ofsAddr                         := ((16 + centerIdx) + ofsAddr) mod 32;
                    post_fft_rx09_mem_b_addr_Int    := post_fft_rx09_mem_a_ptr_addr_Int + (huntIdx * 2048) + ofsAddr;                                                                   -- Request Even address sub-frame (0, 2)
                    
                    state                           := artemis_runEven_ws1;
                    
                when artemis_runEven_ws1 =>
                    state   := artemis_runEven_ws2;
                    
                when artemis_runEven_ws2 =>
                    state   := artemis_addEven;
                    
                when artemis_addEven =>
                    sumEven(centerIdx)              := sumEven(centerIdx) + to_integer(unsigned(post_fft_rx09_mem_b_dout));                                                             -- Fetch Even data
                    post_fft_rx09_mem_b_addr_Int    := post_fft_rx09_mem_a_ptr_addr_Int + (huntIdx * 2048) + 1024 + ofsAddr;                                                            -- Request Odd address sub-frame (1, 3)
                    state                           := artemis_runOdd_ws1;
                    
                when artemis_runOdd_ws1 =>
                    state   := artemis_runOdd_ws2;
                    
                when artemis_runOdd_ws2 =>
                    state   := artemis_addOdd;
                    
                when artemis_addOdd =>
                    sumOdd(centerIdx)               := sumOdd(centerIdx) + to_integer(unsigned(post_fft_rx09_mem_b_dout));                                                              -- Fetch Odd data
                    
                    if (huntIdx /= 6) then
                        huntIdx := huntIdx + 1;
                        state   := artemis_calc;
                    else
                        huntIdx := 0;
                        
                        if (centerIdx < 31) then
                            centerIdx   := centerIdx + 1;
                            state       := artemis_calc;
                        else
                            centerIdx   := 0;
                            state       := find_max_init;
                        end if;
                    end if;
                    
                when find_max_init =>
                    maxEven_addr    := 0;
                    maxEven_val     := 0;
                    maxEven_pos     := 0;
                    maxOdd_addr     := 0;
                    maxOdd_val      := 0;
                    maxOdd_pos      := 0;
                    max_addr        := 0;
                    max_val         := 0;
                    max_pos         := 0;
                    max_idx         := 0;
                    
                    state           := find_max_run;
                    
                when find_max_run =>
                    if maxEven_val < sumEven(max_idx) then
                        maxEven_addr    := post_fft_rx09_mem_a_ptr_addr_Int + (8 * 2048);                                                                                               -- Start of Data (skipped RemainCtr and Data message length)
                        maxEven_val     := sumEven(max_idx);
                        maxEven_pos     := max_idx;
                    end if;
                    
                    if maxOdd_val < sumOdd(max_idx) then
                        maxOdd_addr     := post_fft_rx09_mem_a_ptr_addr_Int + (8 * 2048 + 1024);                                                                                        -- Start of Data (skipped RemainCtr and Data message length)
                        maxOdd_val      := sumOdd(max_idx);
                        maxOdd_pos      := max_idx;
                    end if;
                    
                    if (maxOdd_val > maxEven_val) then
                        max_addr        := maxOdd_addr;
                        max_val         := maxOdd_val;
                        max_pos         := maxOdd_pos;
                    else
                        max_addr        := maxEven_addr;
                        max_val         := maxEven_val;
                        max_pos         := maxEven_pos;
                    end if;
                    
                    if (max_idx /= 31) then
                        max_idx         := max_idx + 1;
                        state           := find_max_run;    -- loop again
                    else
                        max_idx         := 0;
                        dbg_max_val     <= std_logic_vector(to_unsigned(max_val, dbg_max_val'length));
                        state           := find_max_trigger;
                    end if;
                    
                when find_max_trigger =>
                    if (max_val < to_integer(unsigned(decoder_rx09_squelch_lvl))) then
                        -- Squelch not opened
                        post_fft_rx09_mem_a_ptr_addr_Int    := post_fft_rx09_mem_a_ptr_addr_Int + 2048;                                                                                 -- Increment to next even sub-frame (0, 2)
                        
                        post_fft_rx09_mem_a_addr_trig       := post_fft_rx09_mem_a_ptr_addr_Int + 2048 + C_trig_ofs;                                                                    -- Go C_trig_ofs ahead
                        post_fft_rx09_mem_a_addr_trig       := post_fft_rx09_mem_a_addr_trig - (post_fft_rx09_mem_a_addr_trig mod 2048);                                                -- Even sub-frame
                        
                        state := trigger_search;
                    else
                        state := hand_over;
                    end if;
                    
                when hand_over =>
                    post_fft_rx09_mem_a_ptr_addr_Int        := max_addr;
                    decoder_rx09_SoM_frameCtrAddr           <= std_logic_vector(to_unsigned(max_addr, decoder_rx09_SoM_frameCtrAddr'length));
                    
                    decoder_rx09_center_pos_Int             := max_pos;
                    decoder_rx09_center_pos                 <= std_logic_vector(to_unsigned(decoder_rx09_center_pos_Int, decoder_rx09_center_pos'length));
                    
                    decoder_rx09_strength_Int               := max_val;
                    decoder_rx09_strength                   <= std_logic_vector(to_unsigned(decoder_rx09_strength_Int, decoder_rx09_strength'length));
                    
                    -- Start Decoder
                    state := decoder_init;
                    
                when decoder_init =>
                    post_fft_rx09_mem_a_addr_trig           := post_fft_rx09_mem_a_ptr_addr_Int + 2048;                                                                                 -- Next frame to trigger
                    post_fft_rx09_mem_a_addr_trig           := post_fft_rx09_mem_a_addr_trig - (post_fft_rx09_mem_a_addr_trig mod 2048);                                                -- Even sub-frame
                    
                    lastCenterOfs                           := decoder_rx09_center_pos_Int;
                    decoder_one_val                         := 0;
                    decoder_zero_val                        := 0;
                    decoder_footer_val                      := 0;
                    decoder_rx09_out_vec                    <= (others => '0');
                    decoder_rx09_out_len                    <= (others => '0');
                    
                    state := decoder_trigger;
                    
                when decoder_trigger =>
                    if (post_fft_rx09_mem_a_addr_trig <= to_integer(unsigned(post_fft_rx09_mem_a_addr))) then
                        post_fft_rx09_mem_a_subframe_addr_Int   := (to_integer(unsigned((post_fft_rx09_mem_a_addr and "111111111111111111111111111111100000000000"))));                 -- Current filled frame
                        post_fft_rx09_mem_a_subframe_addr       <= std_logic_vector(to_unsigned(post_fft_rx09_mem_a_subframe_addr_Int, post_fft_rx09_mem_a_subframe_addr'length));      -- Informative only
                        
                        state := decoder_read_bit_one;
                    end if;
                    
                when decoder_read_bit_one =>
                    ofsAddr                                 := ((16 + lastCenterOfs) + 17) mod 32;
                    post_fft_rx09_mem_b_addr_Int            := post_fft_rx09_mem_a_ptr_addr_Int + ofsAddr;
                    
                    state := decoder_read_bit_one_ws1;
                    
                when decoder_read_bit_one_ws1 =>
                    state := decoder_read_bit_one_ws2;

                when decoder_read_bit_one_ws2 =>
                    state := decoder_read_bit_one_signal;
                    
                when decoder_read_bit_one_signal =>
                    decoder_one_val                         := to_integer(unsigned(post_fft_rx09_mem_b_dout));
                    
                    state := decoder_read_bit_zero;
                    
                when decoder_read_bit_zero =>
                    ofsAddr                                 := ((32 + 16 + lastCenterOfs) - 11) mod 32;
                    post_fft_rx09_mem_b_addr_Int            := post_fft_rx09_mem_a_ptr_addr_Int + ofsAddr;
                    
                    state := decoder_read_bit_zero_ws1;
                    
                when decoder_read_bit_zero_ws1 =>
                    state := decoder_read_bit_zero_ws2;
                    
                when decoder_read_bit_zero_ws2 =>
                    state := decoder_read_bit_zero_signal;
                    
                when decoder_read_bit_zero_signal =>
                    decoder_zero_val                        := to_integer(unsigned(post_fft_rx09_mem_b_dout));
                    
                    state := decoder_read_footer;
                    
                when decoder_read_footer =>
                    ofsAddr                                 := ((16 + decoder_rx09_center_pos_Int) + 10) mod 32;
                    post_fft_rx09_mem_b_addr_Int            := post_fft_rx09_mem_a_ptr_addr_Int + ofsAddr;
                    
                    state := decoder_read_footer_ws1;
                    
                when decoder_read_footer_ws1 =>
                    state := decoder_read_footer_ws2;
                    
                when decoder_read_footer_ws2 =>
                    state := decoder_read_footer_signal;
                    
                when decoder_read_footer_signal =>
                    decoder_footer_val                      := to_integer(unsigned(post_fft_rx09_mem_b_dout));
                    
                    state := decoder_decider;
                    
                when decoder_decider =>
                    if ((decoder_footer_val > decoder_one_val) and (decoder_footer_val > decoder_zero_val)) then
                        lastCenterOfs := decoder_rx09_center_pos_Int;
                        state := decoder_done;
                        
                    elsif (decoder_one_val > decoder_zero_val) then
                        lastCenterOfs := ((     (16 + lastCenterOfs) + 17) mod 32) - 16;                                                                                                -- '1' is up   17 steps
                        decoder_rx09_out_vec <= '1' & decoder_rx09_out_vec(1023 downto 1);
                        decoder_rx09_out_len <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_rx09_out_len)) + 1), decoder_rx09_out_len'length));
                        state := decoder_inc_addr;
                        
                    else
                        lastCenterOfs := ((32 + (16 + lastCenterOfs) - 11) mod 32) - 16;                                                                                                -- '0' is down 11 steps 
                        decoder_rx09_out_vec <= '0' & decoder_rx09_out_vec(1023 downto 1);
                        decoder_rx09_out_len <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_rx09_out_len)) + 1), decoder_rx09_out_len'length));
                        state := decoder_inc_addr;
                    end if;
                    
                when decoder_inc_addr =>
                    post_fft_rx09_mem_a_ptr_addr_Int    := post_fft_rx09_mem_a_ptr_addr_Int + 2048;

                    post_fft_rx09_mem_a_addr_trig       := post_fft_rx09_mem_a_ptr_addr_Int + 2048;
                    post_fft_rx09_mem_a_addr_trig       := post_fft_rx09_mem_a_addr_trig - (post_fft_rx09_mem_a_addr_trig mod 2048);                                                    -- Even sub-frame
                    
                    state := decoder_trigger;
                    
                when decoder_done =>
                    post_fft_rx09_mem_a_ptr_addr_Int    :=  post_fft_rx09_mem_a_ptr_addr_Int + 2048;
                    
                    post_fft_rx09_mem_a_addr_trig       := (post_fft_rx09_mem_a_ptr_addr_Int + 2048 + C_trig_ofs);
                    post_fft_rx09_mem_a_addr_trig       :=  post_fft_rx09_mem_a_addr_trig - (post_fft_rx09_mem_a_addr_trig mod 2048);                                                   -- Even sub-frame
                    decoder_rx09_center_pos             <= (others => '0');
                    decoder_rx09_strength               <= (others => '0');
                    dbg_max_val                         <= (others => '0');
                    
                    -- TODO: move complete data bytes into FIFO
                    
                    state := trigger_search;
                    
                when others =>
                    state := init;
            end case;
            
            -- Registered output
            post_fft_rx09_mem_b_addr            <= std_logic_vector(to_unsigned(post_fft_rx09_mem_b_addr_Int, post_fft_rx09_mem_b_addr'length));
            post_fft_rx09_mem_b_complete_addr   <= std_logic_vector(to_unsigned(post_fft_rx09_mem_b_addr_Int, post_fft_rx09_mem_b_complete_addr'length));
        end if;
    end if;
  end process proc_UFBmod_Decoder_rx09;

end Behavioral;
