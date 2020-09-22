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
    
    decoder_rx09_center_pos                     : out STD_LOGIC_VECTOR( 4 downto 0);
    decoder_rx09_strength                       : out STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_noise                          : out STD_LOGIC_VECTOR(18 downto 0);
    
    pushdata_rx09_en                            : out STD_LOGIC;
    pushdata_rx09_byteData                      : out STD_LOGIC_VECTOR( 7 downto 0)
  );
end UFBmod_Decoder;

architecture Behavioral of UFBmod_Decoder is
  signal decoder_rx09_SoM_frameCtr              : STD_LOGIC_VECTOR(31 downto 0);
  signal post_fft_rx09_mem_b_complete_addr      : STD_LOGIC_VECTOR(41 downto 0);
  signal decoder_rx09_out_vec                   : STD_LOGIC_VECTOR(1023 downto 0);
  signal decoder_rx09_out_len                   : STD_LOGIC_VECTOR(10 downto 0);
begin
  
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_Decoder_rx09: process (resetn, clk, post_fft_rx09_mem_a_addr)
    type StateType                                  is (off, init, loop_start, wait_until_post_fft_done, read_in_loop,
                                                    artemis_search, artemis_calc_row, artemis_sum_up, artemis_sqlval, artemis_check_candidates, artemis_find_max, artemis_check_squelch,
                                                    decoder_init, decoder_process,
                                                    pushdata_prepare_calc, pushdata_prepare_shift,
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
    
    type DecoderStateType                           is (NOP, 
                                                    decode_remainValue_init, decode_remainValue_loop, 
                                                    decode_u32Count_init, decode_u32Count_loop,
                                                    decoder_forward,
                                                    decode_message_init, decode_message_loop_r5, decode_message_loop_r3, decode_message_loop_r1,
                                                    decode_message_decider_reduction_r1, decode_message_decider_reduction_r2, decode_message_decider_reduction_r3, decode_message_decider_reduction_r4,
                                                    decode_message_decider_f, decode_message_decider_01
                                                    );
    variable decoder_state                          : DecoderStateType;
    
    type Vec32u16                                   is array (31 downto 0) of unsigned(15 downto 0);
    variable srRow                                  : Vec32u16;
    
    type Vec12Vec32u16                              is array (11 downto 0) of Vec32u16;
    variable srField                                : Vec12Vec32u16;
    
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
    
    variable sqlVal                                 : Integer;
    
    variable post_fft_rx09_mem_b_addr_Int           : Integer;
    
    variable decoder_LoopIdx                        : Integer;
    variable decoder_lastCenterOfs                  : Integer;
    variable decoder_lastOfs                        : Integer;
    variable decoder_val                            : Integer;
    variable decoder_max                            : Integer;
    variable decoder_pos                            : Integer;
    variable decoder_rx09_SoM_frameCtrA_Int         : Integer;
    variable decoder_rx09_strength_Int              : Integer;
    variable decoder_rx09_noise_Int                 : Integer;
    variable decoder_rx09_center_pos_Int            : Integer;
    variable decoder_remainVal                      : Integer;
    variable decoder_u32Count                       : Integer;
    variable decoder_u32Cnt                         : Integer;
    variable decoder_0_val                          : Integer;
    variable decoder_1_val                          : Integer;
    variable decoder_f_val                          : Integer;
    variable decoder_00_val                         : Integer;
    variable decoder_01_val                         : Integer;
    variable decoder_0f_val                         : Integer;
    variable decoder_10_val                         : Integer;
    variable decoder_11_val                         : Integer;
    variable decoder_1f_val                         : Integer;
    variable decoder_ff_val                         : Integer;
    variable decoder_000_val                        : Integer;
    variable decoder_001_val                        : Integer;
    variable decoder_00f_val                        : Integer;
    variable decoder_010_val                        : Integer;
    variable decoder_011_val                        : Integer;
    variable decoder_01f_val                        : Integer;
    variable decoder_0ff_val                        : Integer;
    variable decoder_100_val                        : Integer;
    variable decoder_101_val                        : Integer;
    variable decoder_10f_val                        : Integer;
    variable decoder_110_val                        : Integer;
    variable decoder_111_val                        : Integer;
    variable decoder_11f_val                        : Integer;
    variable decoder_1ff_val                        : Integer;
    
    variable loopCnt                                : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            post_fft_rx09_mem_b_addr_Int            := 0;
            post_fft_rx09_mem_b_complete_addr       <= (others => '0');
            post_fft_rx09_mem_b_addr                <= (others => '0');
            
            decoder_rx09_SoM_frameCtr               <= (others => '0');
            decoder_rx09_center_pos                 <= (others => '0');
            decoder_rx09_strength                   <= (others => '0');
            decoder_rx09_noise                      <= (others => '0');
            
            decoder_rx09_out_vec                    <= (others => '0');
            decoder_rx09_out_len                    <= (others => '0');
            
            sumAll                                  := 0;
            preambleMaxVal                          := 0;
            preambleMaxPos                          := 0;
            sqlVal                                  := 0;
            
            decoder_LoopIdx                         := 0;
            decoder_lastCenterOfs                   := 0;
            decoder_lastOfs                         := 0;
            decoder_val                             := 0;
            decoder_max                             := 0;
            decoder_rx09_SoM_frameCtrA_Int          := 0;
            decoder_rx09_strength_Int               := 0;
            decoder_rx09_noise_Int                  := 0;
            decoder_rx09_center_pos_Int             := 0;
            decoder_remainVal                       := 0;
            decoder_u32Count                        := 0;
            decoder_u32Cnt                          := 0;
            decoder_0_val                           := 0;
            decoder_1_val                           := 0;
            decoder_f_val                           := 0;
            decoder_00_val                          := 0;
            decoder_01_val                          := 0;
            decoder_0f_val                          := 0;
            decoder_10_val                          := 0;
            decoder_11_val                          := 0;
            decoder_1f_val                          := 0;
            decoder_ff_val                          := 0;
            decoder_000_val                         := 0;
            decoder_001_val                         := 0;
            decoder_00f_val                         := 0;
            decoder_010_val                         := 0;
            decoder_011_val                         := 0;
            decoder_01f_val                         := 0;
            decoder_0ff_val                         := 0;
            decoder_100_val                         := 0;
            decoder_101_val                         := 0;
            decoder_10f_val                         := 0;
            decoder_110_val                         := 0;
            decoder_111_val                         := 0;
            decoder_11f_val                         := 0;
            decoder_1ff_val                         := 0;
            
            loopCnt                                 := 0;
            
            pushdata_rx09_en                        <= '0';
            pushdata_rx09_byteData                  <= (others => '0');
            
            state                                   := init;
            decoder_state                           := NOP;
            
        else
            case state is
                when init =>
                    for ii in 0 to 31 loop
                        srRow(ii)                   := (others => '0');
                        sumPreambleRow(ii)          := 0;
                    end loop;
                    
                    for ii in 0 to 11 loop
                        srField(ii)                 := srRow;
                        sumOfRow(ii)                := 0;
                    end loop;
                    
                    sumPreambleField_t0             := sumPreambleRow;
                    sumPreambleField_t1             := sumPreambleRow;
                    sumPreambleField_t2             := sumPreambleRow;
                    
                    state := loop_start;
                    
                    
                -- Loop entry point
                when loop_start =>
                    for ii in 0 to 31 loop
                        srRow(ii)                   := (others => '0');
                        sumPreambleRow(ii)          := 0;
                    end loop;
                    
                    state := wait_until_post_fft_done;
                    
                -- Wait until the FFT / Cordic post-transfer is complete
                when wait_until_post_fft_done =>
                    if (post_fft_rx09_mem_a_EoT = '1') then
                        state := read_in_loop;
                        
                        -- RAM Loop init
                        post_fft_rx09_mem_b_addr_Int := 0;
                    end if;
                    
                when read_in_loop =>
                    -- Request data from RAM (latency: 2 clocks
                    if (post_fft_rx09_mem_b_addr_Int < 32) then
                        -- Time span of RAM read-out
                        post_fft_rx09_mem_b_addr    <= std_logic_vector(to_unsigned(post_fft_rx09_mem_b_addr_Int, post_fft_rx09_mem_b_addr'length));
                    else
                        -- Time span of latency
                        post_fft_rx09_mem_b_addr    <= (others => '0');
                    end if;
                    
                    -- Read into shift register
                    if ((2 < post_fft_rx09_mem_b_addr_Int)  and  (post_fft_rx09_mem_b_addr_Int <= 34)) then
                        -- Shift in data
                        srRow(31 downto 0) := unsigned(post_fft_rx09_mem_b_dout) & srRow(31 downto 1);
                        
                    elsif (34 < post_fft_rx09_mem_b_addr_Int) then
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
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + to_integer(srRow(((fftIdx       +6) mod 32)));
                                
                            when  8 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + to_integer(srRow(((fftIdx + 32  -6) mod 32)));
                                
                            when  6 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + to_integer(srRow(((fftIdx       +9) mod 32)));
                                
                            when  4 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + to_integer(srRow(((fftIdx + 32  -9) mod 32)));
                                
                            when  2 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + to_integer(srRow(((fftIdx      +12) mod 32)));
                                
                            when  0 =>
                                sumPreambleRow(fftIdx) := sumPreambleRow(fftIdx) + to_integer(srRow(((fftIdx + 32 -12) mod 32)));
                                
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
                    sumOfRow(0) := sumOfRow(0)  + to_integer(srRow(fftLoopIdx));
                    
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
                        state := artemis_sqlval;
                    end if;
                    
                when artemis_sqlval =>
                    decoder_rx09_noise_Int  := sumAll / 16;  -- weight: 6 (x 4)
                    sqlVal                  := decoder_rx09_noise_Int + to_integer(unsigned(decoder_rx09_squelch_lvl));
                    
                    state                   := artemis_check_candidates;
                    fftLoopIdx              := 0;
                    preambleMaxVal          := 0;
                    preambleMaxPos          := 0;
                    
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
                        decoder_rx09_strength_Int           := preambleMaxVal;  -- weight 6
                        state                               := artemis_check_squelch;
                    end if;
                    
                when artemis_check_squelch =>
                    if (decoder_state /= NOP) then
                        state                               := decoder_process;
                        
                    else
                        if (sqlVal >= decoder_rx09_strength_Int) then  -- SNR without tweeks:  S=(preambleMaxVal / 6)  /   N=(sumAll / (12*32=384)
                            -- Noise
                            decoder_rx09_noise              <= std_logic_vector(to_unsigned(decoder_rx09_noise_Int, decoder_rx09_noise'length));
                            
                            state                           := loop_start;    -- Get next row
                            
                        else
                            -- Signal
                            state                           := decoder_init;  -- Message and Remain/Length-value decoder
                            
                            decoder_lastCenterOfs           := preambleMaxPos;
                            decoder_lastOfs                 := preambleMaxPos;
                            decoder_rx09_center_pos_Int     := decoder_lastCenterOfs;
                        end if;
                    end if;
                    
                    
                when decoder_init =>
                    decoder_rx09_SoM_frameCtr       <= std_logic_vector(to_unsigned((to_integer(unsigned(post_fft_rx09_mem_a_addr(41 downto 10))) + 5), decoder_rx09_SoM_frameCtr'length));
                    decoder_rx09_center_pos         <= std_logic_vector(to_unsigned(decoder_rx09_center_pos_Int, decoder_rx09_center_pos'length));
                    decoder_rx09_strength           <= std_logic_vector(to_unsigned(decoder_rx09_strength_Int, decoder_rx09_strength'length));
                    decoder_rx09_noise              <= std_logic_vector(to_unsigned(decoder_rx09_noise_Int, decoder_rx09_noise'length));
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
                                decoder_val         := to_integer(srRow(decoder_LoopIdx));
                                
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
                                decoder_val         := to_integer(srRow(decoder_LoopIdx));
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max     := decoder_val;
                                    decoder_pos     := decoder_LoopIdx;
                                end if;
                                
                                decoder_LoopIdx     := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs     := decoder_pos;
                                decoder_u32Count    := (32 + decoder_pos - decoder_lastCenterOfs) mod 32;
                                
                                decoder_state       := decoder_forward;
                                state               := loop_start;  -- Get next even row
                                decoder_LoopIdx     := 10;  -- Number of frames to move forward
                            end if;
                            
                        when decoder_forward =>
                            if (decoder_LoopIdx /= 0) then
                                decoder_LoopIdx     := decoder_LoopIdx - 1;
                                
                                decoder_state       := decoder_forward;
                                state               := loop_start;  -- Get another row
                            else
                                decoder_state       := decode_message_init;
                                state               := decoder_process;  -- Direct entry without pulling another frame
                            end if;
                            
                        when decode_message_init =>
                            decoder_0_val           := 0;
                            decoder_1_val           := 0;
                            decoder_f_val           := 0;
                            decoder_00_val          := 0;
                            decoder_01_val          := 0;
                            decoder_0f_val          := 0;
                            decoder_10_val          := 0;
                            decoder_11_val          := 0;
                            decoder_1f_val          := 0;
                            decoder_ff_val          := 0;
                            decoder_000_val         := 0;
                            decoder_001_val         := 0;
                            decoder_00f_val         := 0;
                            decoder_010_val         := 0;
                            decoder_011_val         := 0;
                            decoder_01f_val         := 0;
                            decoder_0ff_val         := 0;
                            decoder_100_val         := 0;
                            decoder_101_val         := 0;
                            decoder_10f_val         := 0;
                            decoder_110_val         := 0;
                            decoder_111_val         := 0;
                            decoder_11f_val         := 0;
                            decoder_1ff_val         := 0;
                            
                            decoder_LoopIdx         := 1025;
                            
                            decoder_state           := decode_message_loop_r5;
                            state                   := loop_start;  -- Get next odd row
                            
                        when decode_message_loop_r5 =>
                            srRow                   := srField(5);  -- 1st generation
                            decoder_0_val           := to_integer(srRow((64 + decoder_lastOfs  -11) mod 32));
                            decoder_1_val           := to_integer(srRow((64 + decoder_lastOfs  +17) mod 32));
                            decoder_f_val           := to_integer(srRow((64 + decoder_lastOfs   +3) mod 32));
                            
                            decoder_state           := decode_message_loop_r3;
                            state                   := decoder_process;  -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r3 =>
                            srRow                   := srField(3);  -- 2nd generation
                            decoder_00_val          := to_integer(srRow((64 + decoder_lastOfs  -11 -11) mod 32)) + decoder_0_val;
                            decoder_01_val          := to_integer(srRow((64 + decoder_lastOfs  -11 +17) mod 32)) + decoder_0_val;
                            decoder_0f_val          := to_integer(srRow((64 + decoder_lastOfs  -11  +3) mod 32)) + decoder_0_val;
                            decoder_10_val          := to_integer(srRow((64 + decoder_lastOfs  +17 -11) mod 32)) + decoder_1_val;
                            decoder_11_val          := to_integer(srRow((64 + decoder_lastOfs  +17 +17) mod 32)) + decoder_1_val;
                            decoder_1f_val          := to_integer(srRow((64 + decoder_lastOfs  +17  +3) mod 32)) + decoder_1_val;
                            decoder_ff_val          := to_integer(srRow((64 + decoder_lastOfs   +3  -6) mod 32)) + decoder_f_val;
                            
                            decoder_state           := decode_message_loop_r1;
                            state                   := decoder_process;  -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r1 =>
                            srRow                   := srField(1);  -- Point to last even row
                            decoder_000_val         := to_integer(srRow((64 + decoder_lastOfs  -11 -11 -11) mod 32)) + decoder_00_val;
                            decoder_001_val         := to_integer(srRow((64 + decoder_lastOfs  -11 -11 +17) mod 32)) + decoder_00_val;
                            decoder_00f_val         := to_integer(srRow((64 + decoder_lastOfs  -11 -11  +3) mod 32)) + decoder_00_val;
                            decoder_010_val         := to_integer(srRow((64 + decoder_lastOfs  -11 +17 -11) mod 32)) + decoder_01_val;
                            decoder_011_val         := to_integer(srRow((64 + decoder_lastOfs  -11 +17 +17) mod 32)) + decoder_01_val;
                            decoder_01f_val         := to_integer(srRow((64 + decoder_lastOfs  -11 +17  +3) mod 32)) + decoder_01_val;
                            decoder_0ff_val         := to_integer(srRow((64 + decoder_lastOfs  -11  +3  -6) mod 32)) + decoder_0f_val;
                            decoder_100_val         := to_integer(srRow((64 + decoder_lastOfs  +17 -11 -11) mod 32)) + decoder_10_val;
                            decoder_101_val         := to_integer(srRow((64 + decoder_lastOfs  +17 -11 +17) mod 32)) + decoder_10_val;
                            decoder_10f_val         := to_integer(srRow((64 + decoder_lastOfs  +17 -11  +3) mod 32)) + decoder_10_val;
                            decoder_110_val         := to_integer(srRow((64 + decoder_lastOfs  +17 +17 -11) mod 32)) + decoder_11_val;
                            decoder_111_val         := to_integer(srRow((64 + decoder_lastOfs  +17 +17 +17) mod 32)) + decoder_11_val;
                            decoder_11f_val         := to_integer(srRow((64 + decoder_lastOfs  +17 +17  +3) mod 32)) + decoder_11_val;
                            decoder_1ff_val         := to_integer(srRow((64 + decoder_lastOfs  +17  +3  -6) mod 32)) + decoder_1f_val;
                            
                            decoder_state           := decode_message_decider_reduction_r1;
                            state                   := decoder_process;  -- Direct entry without pulling another frame
                            
                            
                        when decode_message_decider_reduction_r1 =>
                            if (decoder_000_val < decoder_100_val) then
                                decoder_000_val := decoder_100_val;
                                decoder_100_val := 1;
                            else
                                decoder_100_val := 0;
                            end if;
                            
                            if (decoder_001_val < decoder_101_val) then
                                decoder_001_val := decoder_101_val;
                                decoder_101_val := 1;
                            else
                                decoder_101_val := 0;
                            end if;
                            
                            if (decoder_00f_val < decoder_10f_val) then
                                decoder_00f_val := decoder_10f_val;
                                decoder_10f_val := 1;
                            else
                                decoder_10f_val := 0;
                            end if;
                            
                            if (decoder_010_val < decoder_110_val) then
                                decoder_010_val := decoder_110_val;
                                decoder_110_val := 1;
                            else
                                decoder_110_val := 0;
                            end if;
                            
                            if (decoder_011_val < decoder_111_val) then
                                decoder_011_val := decoder_111_val;
                                decoder_111_val := 1;
                            else
                                decoder_111_val := 0;
                            end if;
                            
                            if (decoder_01f_val < decoder_11f_val) then
                                decoder_01f_val := decoder_11f_val;
                                decoder_11f_val := 1;
                            else
                                decoder_11f_val := 0;
                            end if;
                            
                            if (decoder_0ff_val < decoder_1ff_val) then
                                decoder_0ff_val := decoder_1ff_val;
                                decoder_1ff_val := 1;
                            else
                                decoder_1ff_val := 0;
                            end if;
                            
                            decoder_state       := decode_message_decider_reduction_r2;
                            state               := decoder_process;  -- Direct entry without pulling another frame
                            
                        when decode_message_decider_reduction_r2 =>
                            if (decoder_000_val < decoder_010_val) then
                                decoder_000_val := decoder_010_val;
                                decoder_010_val := decoder_110_val;
                            else
                                decoder_010_val := decoder_100_val;
                            end if;
                            
                            if (decoder_001_val < decoder_011_val) then
                                decoder_001_val := decoder_011_val;
                                decoder_011_val := decoder_111_val;
                            else
                                decoder_011_val := decoder_101_val;
                            end if;
                            
                            if (decoder_00f_val < decoder_01f_val) then
                                decoder_00f_val := decoder_01f_val;
                                decoder_01f_val := decoder_11f_val;
                            else
                                decoder_01f_val := decoder_10f_val;
                            end if;
                            
                            decoder_state       := decode_message_decider_reduction_r3;
                            state               := decoder_process;  -- Direct entry without pulling another frame
                            
                        when decode_message_decider_reduction_r3 =>
                            if (decoder_000_val < decoder_001_val) then
                                decoder_000_val := decoder_001_val;
                                decoder_001_val := decoder_011_val;
                            else
                                decoder_001_val := decoder_010_val;
                            end if;
                            
                            if (decoder_00f_val < decoder_0ff_val) then
                                decoder_00f_val := decoder_0ff_val;
                                decoder_0ff_val := decoder_1ff_val;
                            else
                                decoder_0ff_val := decoder_01f_val;
                            end if;
                            
                            decoder_state       := decode_message_decider_reduction_r4;
                            state               := decoder_process;  -- Direct entry without pulling another frame
                            
                        when decode_message_decider_reduction_r4 =>
                            if (decoder_000_val < decoder_00f_val) then
                                decoder_000_val := decoder_00f_val;
                                decoder_00f_val := decoder_0ff_val;
                            else
                                decoder_00f_val := decoder_001_val;
                            end if;
                            
                            decoder_state       := decode_message_decider_f;
                            state               := decoder_process;  -- Direct entry without pulling another frame
                            
                            
                        when decode_message_decider_f =>
                            decoder_LoopIdx     := decoder_LoopIdx - 1;
                            
                            if ((decoder_ff_val >= decoder_000_val) or (decoder_LoopIdx /= 0)) then
                                decoder_state   := NOP;  -- End of message stream
                                state           := pushdata_prepare_calc;
                                
                            else
                                decoder_state   := decode_message_decider_01;
                            end if;
                            
                        when decode_message_decider_01 =>
                            if (decoder_00f_val = 0) then
                                decoder_rx09_out_vec    <= '0' & decoder_rx09_out_vec(1023 downto 1);
                                decoder_lastOfs         := (32 + decoder_lastOfs - 11) mod 32;
                                
                            else
                                decoder_rx09_out_vec    <= '1' & decoder_rx09_out_vec(1023 downto 1);
                                decoder_lastOfs         := (32 + decoder_lastOfs + 17) mod 32;
                            end if;
                            
                            decoder_rx09_out_len        <= std_logic_vector(to_unsigned( (1 + to_integer(unsigned(decoder_rx09_out_len))) , decoder_rx09_out_len'length));
                            
                            decoder_state               := decode_message_loop_r5;
                            state                       := loop_start;  -- Get next even row
                            
                        when others =>
                            decoder_state := NOP;
                            
                    end case;   -- decoder_state
                    
                    
                when pushdata_prepare_calc =>
                    loopCnt := (1024 - to_integer(unsigned(decoder_rx09_out_len))) / 8;     -- Number of bytes to skip
                    state := pushdata_prepare_shift;
                    
                when pushdata_prepare_shift =>
                    if (loopCnt /= 0) then
                        decoder_rx09_out_vec <= "00000000" & decoder_rx09_out_vec(1023 downto 8);  -- SHR
                        loopCnt := loopCnt - 1;
                    else
                        loopCnt := to_integer(unsigned(decoder_rx09_out_len(10 downto 3))); -- Number of bytes to transfer
                        
                        state := pushdata_header_a;
                    end if;
                    
                when pushdata_header_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_rx09_out_len(10 downto 3))) + 11), pushdata_rx09_byteData'length));
                    state                   := pushdata_header_b;
                    
                when pushdata_header_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_signal_msb_a;
                    
                when pushdata_signal_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_strength_Int / 256), pushdata_rx09_byteData'length));
                    state                   := pushdata_signal_msb_b;
                    
                when pushdata_signal_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_signal_lsb_a;
                    
                when pushdata_signal_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_strength_Int mod 256), pushdata_rx09_byteData'length));
                    state                   := pushdata_signal_lsb_b;
                    
                when pushdata_signal_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_noise_msb_a;
                    
                when pushdata_noise_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_noise_Int / 256), pushdata_rx09_byteData'length));
                    state                   := pushdata_noise_msb_b;
                    
                when pushdata_noise_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_noise_lsb_a;
                    
                when pushdata_noise_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_noise_Int mod 256), pushdata_rx09_byteData'length));
                    state                   := pushdata_noise_lsb_b;
                    
                when pushdata_noise_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_frameCtr_p3_a;
                    
                when pushdata_frameCtr_p3_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(31 downto 24);
                    state                   := pushdata_frameCtr_p3_b;
                    
                when pushdata_frameCtr_p3_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_frameCtr_p2_a;
                    
                when pushdata_frameCtr_p2_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(23 downto 16);
                    state                   := pushdata_frameCtr_p2_b;
                    
                when pushdata_frameCtr_p2_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_frameCtr_p1_a;
                    
                when pushdata_frameCtr_p1_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(15 downto 8);
                    state                   := pushdata_frameCtr_p1_b;
                    
                when pushdata_frameCtr_p1_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_frameCtr_p0_a;
                    
                when pushdata_frameCtr_p0_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(7 downto 0);
                    state                   := pushdata_frameCtr_p0_b;
                    
                when pushdata_frameCtr_p0_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_centerpos_a;
                    
                when pushdata_centerpos_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_rx09_center_pos_Int, pushdata_rx09_byteData'length));
                    state                   := pushdata_centerpos_b;
                    
                when pushdata_centerpos_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_remainCtr_a;
                    
                when pushdata_remainCtr_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_remainVal, pushdata_rx09_byteData'length));
                    state                   := pushdata_remainCtr_b;
                    
                when pushdata_remainCtr_b =>
                    pushdata_rx09_en        <= '0';
                    state                   := pushdata_msgU32Len_a;
                    
                when pushdata_msgU32Len_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_u32Count, pushdata_rx09_byteData'length));
                    state                   := pushdata_loop_begin;
                    
                when pushdata_loop_begin =>
                    pushdata_rx09_en        <= '0';
                    
                    if (loopCnt /= 0) then
                        loopCnt             := loopCnt - 1;
                        
                        state               := pushdata_loop_transfer;
                    else
                        pushdata_rx09_byteData  <= (others => '0');
                        decoder_rx09_out_vec    <= (others => '0');
                        decoder_rx09_out_len    <= (others => '0');
                        
                        state := loop_start;
                    end if;
                    
                when pushdata_loop_transfer =>
                    pushdata_rx09_byteData  <= decoder_rx09_out_vec(0)
                                             & decoder_rx09_out_vec(1)
                                             & decoder_rx09_out_vec(2)
                                             & decoder_rx09_out_vec(3)
                                             & decoder_rx09_out_vec(4)
                                             & decoder_rx09_out_vec(5)
                                             & decoder_rx09_out_vec(6)
                                             & decoder_rx09_out_vec(7);
                    pushdata_rx09_en        <= '1';
                    
                    decoder_rx09_out_vec    <= "00000000" & decoder_rx09_out_vec(1023 downto 8);
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
