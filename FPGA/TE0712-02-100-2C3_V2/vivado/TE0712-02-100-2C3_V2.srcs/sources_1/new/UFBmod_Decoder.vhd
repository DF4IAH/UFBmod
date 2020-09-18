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
    resetn                                      : in  STD_LOGIC;
    clk                                         : in  STD_LOGIC;
    
    post_fft_rx09_mem_a_EoT                     : in  STD_LOGIC;
    post_fft_rx09_mem_a_addr                    : in  STD_LOGIC_VECTOR(41 downto 0);
    
    post_fft_rx09_mem_b_addr                    : out STD_LOGIC_VECTOR( 9 downto 0);
    post_fft_rx09_mem_b_dout                    : in  STD_LOGIC_VECTOR(15 downto 0);
    
    decoder_rx09_squelch_lvl                    : in  STD_LOGIC_VECTOR(18 downto 0);
    
    decoder_rx09_SoM_frameCtrAddr               : out STD_LOGIC_VECTOR(41 downto 0);
    decoder_rx09_center_pos                     : out STD_LOGIC_VECTOR( 4 downto 0);
    decoder_rx09_strength                       : out STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_noise                          : out STD_LOGIC_VECTOR(18 downto 0);
    
    pushdata_rx09_en                            : out STD_LOGIC;
    pushdata_rx09_byteData                      : out STD_LOGIC_VECTOR( 7 downto 0)
  );
end UFBmod_Decoder;

architecture Behavioral of UFBmod_Decoder is
  signal post_fft_rx09_mem_b_complete_addr      : STD_LOGIC_VECTOR(41 downto 0);
  signal decoder_rx09_out_vec                   : STD_LOGIC_VECTOR(1023 downto 0);
  signal decoder_rx09_out_len                   : STD_LOGIC_VECTOR(10 downto 0);
begin
  
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_Decoder_rx09: process (resetn, clk, post_fft_rx09_mem_a_addr)
    type StateType                                  is (off, init, loop_start, wait_until_post_fft_done, read_in_loop,
                                                    artemis_search, artemis_calc_row, artemis_sum_up, artemis_div, artemis_check_candidates, artemis_find_max, artemis_check_squelch,
                                                    decoder_init, decoder_process,
                                                    pushdata_loop_header, pushdata_loop_begin, pushdata_loop_transfer
                                                    );
    variable state                                  : StateType;
    
    type DecoderStateType                           is (NOP, 
                                                    decode_remainValue_init, decode_remainValue_loop, 
                                                    decode_u32Count_init, decode_u32Count_loop,
                                                    decode_message_init, decode_message_loop, decode_message_decider_f, decode_message_decider_01
                                                    );
    variable decoder_state                          : DecoderStateType;
    
    type Vec1024Int                                 is array (1023 downto 0) of Integer;
    variable srRow                                  : Vec1024Int;
    
    type Vec12Vec1024Vec16                          is array (11 downto 0) of Vec1024Int;
    variable srField                                : Vec12Vec1024Vec16;
    
    type Vec32Int                                   is array (31 downto 0) of Integer;
    variable sumPreambleRow                         : Vec32Int;
    variable sumPreambleField_t0                    : Vec32Int;
    variable sumPreambleField_t1                    : Vec32Int;
    variable sumPreambleField_t2                    : Vec32Int;
    
    type Vec12Int                                   is array (11 downto 0) of Integer;
    variable sumOfRow                               : Vec12Int;
    
    variable sumAll                                 : Integer;
    
    variable preambleMaxVal                         : Integer;
    variable preambleMaxPos                         : Integer;
    
    variable historyLoopIdx                         : Integer;
    variable fftLoopIdx                             : Integer;
    
    variable avgVal                                 : Integer;
    
    variable post_fft_rx09_mem_b_addr_Int           : Integer;
    variable post_fft_rx09_mem_a_addr_Int           : Integer;
    
    variable decoder_LoopIdx                        : Integer;
    variable decoder_lastCenterOfs                  : Integer;
    variable decoder_lastOfs                        : Integer;
    variable decoder_val                            : Integer;
    variable decoder_max                            : Integer;
    variable decoder_pos                            : Integer;
    variable decoder_remainVal                      : Integer;
    variable decoder_u32Count                       : Integer;
    variable decoder_u32Cnt                         : Integer;
    variable decoder_one_val                        : Integer;
    variable decoder_zero_val                       : Integer;
    variable decoder_footer_val                     : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            post_fft_rx09_mem_a_addr_Int            := 0;
            post_fft_rx09_mem_b_addr_Int            := 0;
            post_fft_rx09_mem_b_complete_addr       <= (others => '0');
            post_fft_rx09_mem_b_addr                <= (others => '0');
            
            decoder_rx09_SoM_frameCtrAddr           <= (others => '0');
            decoder_rx09_center_pos                 <= (others => '0');
            decoder_rx09_strength                   <= (others => '0');
            decoder_rx09_noise                      <= (others => '0');
            
            decoder_rx09_out_vec                    <= (others => '0');
            decoder_rx09_out_len                    <= (others => '0');
            
            sumAll                                  := 0;
            preambleMaxVal                          := 0;
            preambleMaxPos                          := 0;
            avgVal                                  := 0;
            
            decoder_LoopIdx                         := 0;
            decoder_lastCenterOfs                   := 0;
            decoder_lastOfs                         := 0;
            decoder_val                             := 0;
            decoder_max                             := 0;
            decoder_remainVal                       := 0;
            decoder_u32Count                        := 0;
            decoder_u32Cnt                          := 0;
            decoder_one_val                         := 0;
            decoder_zero_val                        := 0;
            decoder_footer_val                      := 0;
            
            pushdata_rx09_en                        <= '0';
            pushdata_rx09_byteData                  <= (others => '0');
            
            state                                   := init;
            decoder_state                           := NOP;
            
        else
            case state is
                when init =>
                    for ii in 0 to 1023 loop
                        srRow(ii)                   := 0;
                    end loop;
                    
                    for ii in 0 to 11 loop
                        srField(ii)                 := srRow;
                        sumOfRow(ii)                := 0;
                    end loop;
                    
                    for ii in 0 to 31 loop
                        sumPreambleRow(ii)          := 0;
                    end loop;
                    sumPreambleField_t0             := sumPreambleRow;
                    sumPreambleField_t1             := sumPreambleRow;
                    sumPreambleField_t2             := sumPreambleRow;
                    
                    state := loop_start;
                    
                    
                -- Loop entry point
                when loop_start =>
                    for ii in 0 to 1023 loop
                        srRow(ii)                   := 0;
                    end loop;
                    
                    for ii in 0 to 31 loop
                        sumPreambleRow(ii)          := 0;
                    end loop;
                    
                    state := wait_until_post_fft_done;
                    
                -- Wait until the FFT / Cordic post-transfer is complete
                when wait_until_post_fft_done =>
                    if (post_fft_rx09_mem_a_EoT = '1') then
                        state := read_in_loop;
                        
                        -- RAM Loop init
                        post_fft_rx09_mem_a_addr_Int := to_integer((unsigned(post_fft_rx09_mem_a_addr and "111111111111111111111111111111110000000000")));
                        post_fft_rx09_mem_b_addr_Int := 0;
                    end if;
                    
                when read_in_loop =>
                    -- Request data from RAM (latency: 2 clocks
                    if (post_fft_rx09_mem_b_addr_Int < 1024) then
                        -- Time span of RAM read-out
                        post_fft_rx09_mem_b_addr    <= std_logic_vector(to_unsigned(post_fft_rx09_mem_b_addr_Int, post_fft_rx09_mem_b_addr'length));
                    else
                        -- Time span of latency
                        post_fft_rx09_mem_b_addr    <= (others => '0');
                    end if;
                    
                    -- Read into shift register
                    if ((2 < post_fft_rx09_mem_b_addr_Int)  and  (post_fft_rx09_mem_b_addr_Int <= 1026)) then
                        -- Shift in data
                        srRow := to_integer(unsigned(post_fft_rx09_mem_b_dout)) & srRow(1023 downto 1);
                        
                    elsif (1026 < post_fft_rx09_mem_b_addr_Int) then
                        -- End of loop
                        srField := srField(10 downto 0) & srRow;
                        
                        -- Prepare Artemis for fingerprint analysis
                        historyLoopIdx := 11;
                        
                        state := artemis_search;
                    end if;
                    
                    -- RAM Loop footer
                    post_fft_rx09_mem_b_addr_Int := post_fft_rx09_mem_b_addr_Int + 1;
                    
                    
                when artemis_search =>
                    -- Get current row from the history
                    srRow := srField(historyLoopIdx);
                    
                    -- 32x parallel execution of single additions
                    for fftIdx in 0 to 31 loop
                        -- Preamble fingerprint
                        case historyLoopIdx is
                            when 10 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + srRow(((fftIdx       +6) mod 32));
                                
                            when  8 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + srRow(((fftIdx + 32  -6) mod 32));
                                
                            when  6 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + srRow(((fftIdx       +9) mod 32));
                                
                            when  4 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + srRow(((fftIdx + 32  -9) mod 32));
                                
                            when  2 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + srRow(((fftIdx      +12) mod 32));
                                
                            when  0 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + srRow(((fftIdx + 32 -12) mod 32));
                                
                            when others =>
                                -- NOP
                        end case;   -- historyLoopIdx
                    end loop;   -- fftIdx
                    
                    if historyLoopIdx /= 0 then
                        historyLoopIdx := historyLoopIdx - 1;
                    else
                        -- History Loop footer 1
                        sumPreambleField_t2 := sumPreambleField_t1;
                        sumPreambleField_t1 := sumPreambleField_t0;
                        sumPreambleField_t0 := sumPreambleRow;
                        
                        -- Header fftLoop
                        state       := artemis_calc_row;
                        fftLoopIdx  := 0;
                        
                        -- Get current row
                        srRow := srField(0);
                        
                        -- Move up one row
                        sumOfRow(11) := sumOfRow(10);
                        sumOfRow(10) := sumOfRow( 9);
                        sumOfRow( 9) := sumOfRow( 8);
                        sumOfRow( 8) := sumOfRow( 7);
                        sumOfRow( 7) := sumOfRow( 6);
                        sumOfRow( 6) := sumOfRow( 5);
                        sumOfRow( 5) := sumOfRow( 4);
                        sumOfRow( 4) := sumOfRow( 3);
                        sumOfRow( 3) := sumOfRow( 2);
                        sumOfRow( 2) := sumOfRow( 1);
                        sumOfRow( 1) := sumOfRow( 0);
                        sumOfRow( 0) := 0;
                    end if;
                    
                when artemis_calc_row =>
                    sumOfRow(0) := sumOfRow(0)  + srRow(fftLoopIdx);
                    
                    if (fftLoopIdx /= 31) then
                        fftLoopIdx      := fftLoopIdx + 1;
                    else
                        -- Header historyLoop 2
                        state           := artemis_sum_up;
                        historyLoopIdx  := 11;
                        sumAll          := 0;
                    end if;
                    
                when artemis_sum_up =>
                    sumAll := sumAll + sumOfRow(historyLoopIdx);
                    
                    if historyLoopIdx /= 0 then
                        historyLoopIdx := historyLoopIdx - 1;
                    else
                        state := artemis_div;
                    end if;
                    
                when artemis_div =>
                    avgVal          := (sumAll + 32 * 6) / (32 * 12);
                    
                    state           := artemis_check_candidates;
                    fftLoopIdx      := 0;
                    preambleMaxVal  := 0;
                    preambleMaxPos  := 0;
                    
                when artemis_check_candidates =>
                    if (sumPreambleField_t1(fftLoopIdx) >= sumPreambleField_t2(fftLoopIdx)) and (sumPreambleField_t1(fftLoopIdx) >= sumPreambleField_t0(fftLoopIdx)) then
                        -- Candidate for Preamble found
                        if (preambleMaxVal < sumPreambleField_t1(fftLoopIdx)) then
                            preambleMaxVal  := sumPreambleField_t1(fftLoopIdx);
                            preambleMaxPos  := fftLoopIdx;
                        end if;
                    end if;
                    
                    if fftLoopIdx /= 31 then
                        fftLoopIdx := fftLoopIdx + 1;
                    else
                        state := artemis_check_squelch;
                    end if;
                    
                when artemis_check_squelch =>
                    if (decoder_state /= NOP) then
                        state := decoder_process;
                    else
                        if (preambleMaxVal <= (avgVal * 16)) then  -- Noise: preambleMaxVal = 6x avgVal
                            state := loop_start;    -- Get next row
                        else
                            state := decoder_init;  -- Message and Remain/Length-value decoder
                        end if;
                    end if;
                    
                    
                when decoder_init =>
                    decoder_rx09_SoM_frameCtrAddr   <= std_logic_vector(to_unsigned((post_fft_rx09_mem_a_addr_Int + (5 * 1024)), decoder_rx09_SoM_frameCtrAddr'length));
                    decoder_lastCenterOfs           := preambleMaxPos;
                    decoder_lastOfs                 := preambleMaxPos;
                    decoder_rx09_center_pos         <= std_logic_vector(to_unsigned(decoder_lastCenterOfs, decoder_rx09_center_pos'length));
                    decoder_rx09_strength           <= std_logic_vector(to_unsigned((preambleMaxVal / 6), decoder_rx09_strength'length));
                    decoder_rx09_noise              <= std_logic_vector(to_unsigned(avgVal, decoder_rx09_noise'length));
                    decoder_rx09_out_vec            <= (others => '0');
                    decoder_rx09_out_len            <= (others => '0');
                    
                    decoder_state                   := decode_remainValue_init;
                    state                           := loop_start;  -- Get next even row
                    
                when decoder_process =>
                    case decoder_state is
                        when decode_remainValue_init =>
                            decoder_max             := 0;
                            decoder_pos             := 0;
                            decoder_remainVal       := 0;
                            decoder_LoopIdx         := 0;
                            
                            decoder_state           := decode_remainValue_loop;
                            state                   := loop_start;  -- Get next odd row
                            
                        when decode_remainValue_loop =>
                            if decoder_LoopIdx /= 32 then
                                srRow               := srField(1);  -- Point to last even row
                                decoder_val         := srRow(decoder_LoopIdx);
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max     := decoder_val;
                                    decoder_pos     := decoder_LoopIdx;
                                end if;
                                
                                decoder_LoopIdx     := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs     := decoder_pos;
                                decoder_remainVal   := (32 + decoder_pos - decoder_lastCenterOfs) mod 32;
                                
                                decoder_state       := decode_u32Count_init;
                                state               := loop_start;  -- Get next even row
                            end if;
                            
                        when decode_u32Count_init =>
                            decoder_max             := 0;
                            decoder_pos             := 0;
                            decoder_u32Count        := 0;
                            decoder_LoopIdx         := 0;
                            
                            decoder_state           := decode_u32Count_loop;
                            state                   := loop_start;  -- Get next odd row
                            
                        when decode_u32Count_loop =>
                            if decoder_LoopIdx /= 32 then
                                srRow               := srField(1);  -- Point to last even row
                                decoder_val         := srRow(decoder_LoopIdx);
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max     := decoder_val;
                                    decoder_pos     := decoder_LoopIdx;
                                end if;
                                
                                decoder_LoopIdx     := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs     := decoder_pos;
                                decoder_u32Count    := (32 + decoder_pos - decoder_lastCenterOfs) mod 32;
                                
                                decoder_state       := decode_message_init;
                                state               := loop_start;  -- Get next even row
                            end if;
                            
                        when decode_message_init =>
                            decoder_one_val         := 0;
                            decoder_zero_val        := 0;
                            decoder_footer_val      := 0;
                            
                            decoder_state           := decode_message_loop;
                            state                   := loop_start;  -- Get next odd row
                            
                        when decode_message_loop =>
                            srRow                   := srField(1);  -- Point to last even row
                            decoder_one_val         := srRow((     decoder_lastOfs  + 17) mod 32);
                            decoder_zero_val        := srRow((32 + decoder_lastOfs  - 11) mod 32);
                            decoder_footer_val      := srRow((     decoder_lastOfs  +  3) mod 32);
                            
                            decoder_state           := decode_message_decider_f;
                            state                   := loop_start;  -- Get next even row
                            
                        when decode_message_decider_f =>
                            if (decoder_footer_val >= decoder_zero_val)  and  (decoder_footer_val >= decoder_one_val) then
                                decoder_state       := NOP;  -- End of message stream
                                state               := pushdata_loop_header;
                            else
                                decoder_state       := decode_message_decider_01;
                            end if;
                            
                        when decode_message_decider_01 =>
                            if (decoder_zero_val >= decoder_one_val) then
                                decoder_rx09_out_vec    <= '0' & decoder_rx09_out_vec(1023 downto 1);
                                decoder_lastOfs         := (32 + decoder_lastOfs - 11) mod 32;
                            else
                                decoder_rx09_out_vec    <= '1' & decoder_rx09_out_vec(1023 downto 1);
                                decoder_lastOfs         := (32 + decoder_lastOfs + 17) mod 32;
                            end if;
                            decoder_rx09_out_len        <= std_logic_vector(to_unsigned( (1 + to_integer(unsigned(decoder_rx09_out_len))) , decoder_rx09_out_len'length));
                            
                            decoder_state           := decode_message_loop;
                            state                   := loop_start;  -- Get next odd row
                            
                        when others =>
                            decoder_state := NOP;
                            
                    end case;   -- decoder_state
                    
                when pushdata_loop_header =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_out_len(10 downto 3);
                    state                   := pushdata_loop_begin;
                    
                when pushdata_loop_begin =>
                    pushdata_rx09_en        <= '0';
                    
                    if (decoder_rx09_out_len(10 downto 3) /= "00000000") then
                        state := pushdata_loop_transfer;
                    else
                        pushdata_rx09_byteData  <= (others => '0');
                        decoder_rx09_out_vec    <= (others => '0');
                        decoder_rx09_out_len    <= (others => '0');
                        
                        state := loop_start;
                    end if;
                    
                when pushdata_loop_transfer =>
                    pushdata_rx09_byteData  <= decoder_rx09_out_vec(1016)
                                             & decoder_rx09_out_vec(1017)
                                             & decoder_rx09_out_vec(1018)
                                             & decoder_rx09_out_vec(1019)
                                             & decoder_rx09_out_vec(1020)
                                             & decoder_rx09_out_vec(1021)
                                             & decoder_rx09_out_vec(1022)
                                             & decoder_rx09_out_vec(1023);
                    pushdata_rx09_en        <= '1';
                    
                    decoder_rx09_out_vec    <= decoder_rx09_out_vec(1015 downto 0) & "00000000";
                    decoder_rx09_out_len    <= std_logic_vector(to_unsigned( (to_integer(unsigned(decoder_rx09_out_len)) - 8) , decoder_rx09_out_len'length));
                    state                   := pushdata_loop_begin;
                    
                when others =>
                    state           := init;
                    decoder_state   := NOP;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_Decoder_rx09;

end Behavioral;
