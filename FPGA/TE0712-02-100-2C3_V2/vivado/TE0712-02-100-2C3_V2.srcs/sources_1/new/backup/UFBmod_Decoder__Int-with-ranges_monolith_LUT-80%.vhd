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
    reset                                           : in  STD_LOGIC;
    clk                                             : in  STD_LOGIC;
    
    post_fft_rx09_mem_a_EoT                         : in  STD_LOGIC;
    post_fft_rx09_mem_a_addr                        : in  STD_LOGIC_VECTOR(41 downto 0);
    
    post_fft_rx09_mem_b_addr                        : out STD_LOGIC_VECTOR( 9 downto 0);
    post_fft_rx09_mem_b_dout                        : in  STD_LOGIC_VECTOR(15 downto 0);
    
    decoder_rx09_squelch_lvl                        : in  STD_LOGIC_VECTOR(18 downto 0);
    
    decoder_rx09_center_pos                         : out STD_LOGIC_VECTOR( 7 downto 0);
    decoder_rx09_strength                           : out STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_noise                              : out STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_sql_open                           : out STD_LOGIC;
    decoder_rx09_active                             : out STD_LOGIC;
    
    dds_tx09_ptt                                    : in  STD_LOGIC;
    
    pushdata_rx09_en                                : out STD_LOGIC;
    pushdata_rx09_byteData                          : out STD_LOGIC_VECTOR( 7 downto 0)
  );
end UFBmod_Decoder;

architecture Behavioral of UFBmod_Decoder is
  signal decoder_rx09_SoM_frameCtr                  : STD_LOGIC_VECTOR(31 downto 0);
  signal post_fft_rx09_mem_b_complete_addr          : STD_LOGIC_VECTOR(41 downto 0);
  signal decoder_rx09_out_vec                       : STD_LOGIC_VECTOR(1023 downto 0);
  signal decoder_rx09_out_len                       : STD_LOGIC_VECTOR(10 downto 0);
begin
  
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_Decoder_rx09: process (reset, clk, post_fft_rx09_mem_a_addr)
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
    
    type StateType                                  is (
                                                        init, loop_start, wait_until_post_fft_done, read_in_loop,
                                                        artemis_search_1, artemis_search_2, artemis_sum_up_rows, artemis_sum_up_all,
                                                        artemis_initial_skip, artemis_decoder_switch, artemis_check_candidates_init, artemis_check_candidates, artemis_find_max,
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
    
    type DecoderStateType                           is (
                                                        NOP,
                                                        decode_preload,
                                                        decode_remainValue_init, decode_remainValue_loop, 
                                                        decode_u32Count_init, decode_u32Count_loop,
                                                        decoder_forward,
                                                        decode_message_init, decode_message_loop_r5, decode_message_loop_r3, decode_message_loop_r1,
                                                        decode_message_check_end,
                                                        decode_message_decider_reduction_r1, decode_message_decider_reduction_r2, decode_message_decider_reduction_r3, decode_message_decider_reduction_r4,
                                                        decode_message_decider_f, decode_message_decider_01
                                                    );
    variable decoder_state                          : DecoderStateType;
    
    type Vec32u16                                   is array (31 downto 0) of unsigned(15 downto 0);
    variable srRow                                  : Vec32u16;
    
    variable srField_t00                            : Vec32u16;
    variable srField_t01                            : Vec32u16;
    variable srField_t02                            : Vec32u16;
    variable srField_t03                            : Vec32u16;
    variable srField_t04                            : Vec32u16;
    variable srField_t05                            : Vec32u16;
    variable srField_t06                            : Vec32u16;
    variable srField_t07                            : Vec32u16;
    variable srField_t08                            : Vec32u16;
    variable srField_t09                            : Vec32u16;
    variable srField_t10                            : Vec32u16;
    variable srField_t11                            : Vec32u16;
    
    type Vec32Int24                                 is array (31 downto 0) of Integer  range 0 to (2**24 - 1);
    variable sumPreambleRow                         : Vec32Int24;
    variable sumPreambleField_t0                    : Vec32Int24;
    variable sumPreambleField_t1                    : Vec32Int24;
    variable sumPreambleField_t2                    : Vec32Int24;
    
    type Vec12Int24                                 is array (11 downto 0) of Integer  range 0 to (2**24 - 1);
    variable sumOfRow                               : Vec12Int24;
    
    variable sumAll                                 : Integer  range 0 to (2**24 - 1);
    variable sumPreamble                            : Integer  range 0 to (2**24 - 1);
    
    variable preambleMaxVal                         : Integer  range 0 to (2**24 - 1);
    variable preambleMaxPos                         : Integer  range 0 to (2**8  - 1);
    
    variable initialLoopIdx                         : Integer  range 0 to (2**4  - 1);
    variable watchdogIdx                            : Integer  range 0 to (2**17 - 1);
    variable historyLoopIdx                         : Integer  range 0 to (2**4  - 1);
    variable fftLoopIdx                             : Integer  range 0 to (2**8  - 1);
    
    variable sqlVal                                 : Integer  range 0 to (2**24 - 1);
    variable fingerprint_t10                        : Integer  range 0 to (2**24 - 1);
    variable fingerprint_t08                        : Integer  range 0 to (2**24 - 1);
    variable fingerprint_t06                        : Integer  range 0 to (2**24 - 1);
    variable fingerprint_t04                        : Integer  range 0 to (2**24 - 1);
    variable fingerprint_t02                        : Integer  range 0 to (2**24 - 1);
    variable fingerprint_t00                        : Integer  range 0 to (2**24 - 1);
    
    variable post_fft_rx09_mem_b_addr_Int           : Integer  range 0 to (2**10 - 1);
    
    variable decoder_LoopIdx                        : Integer  range 0 to (2**11 - 1);
    variable decoder_lastCenterOfs                  : Integer  range 0 to (2**8  - 1);
    variable decoder_lastOfs                        : Integer  range 0 to (2**8  - 1);
    variable decoder_val                            : Integer  range 0 to (2**24 - 1);
    variable decoder_max                            : Integer  range 0 to (2**24 - 1);
    variable decoder_pos                            : Integer  range 0 to (2**8  - 1);
    variable decoder_rx09_SoM_frameCtrA_Int         : Integer;
    variable decoder_rx09_strength_Int              : Integer  range 0 to (2**16 - 1);
    variable decoder_rx09_noise_Int                 : Integer  range 0 to (2**16 - 1);
    variable decoder_rx09_center_pos_Int            : Integer  range 0 to (2**8  - 1);
    variable decoder_remainVal                      : Integer  range 0 to (2**8  - 1);
    variable decoder_u32Count                       : Integer  range 0 to (2**8  - 1);
    variable decoder_0_val                          : Integer  range 0 to (2**16 - 1);
    variable decoder_1_val                          : Integer  range 0 to (2**16 - 1);
    variable decoder_f_val                          : Integer  range 0 to (2**16 - 1);
    variable decoder_00_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_01_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_0f_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_10_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_11_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_1f_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_ff_val                         : Integer  range 0 to (2**20 - 1);
    variable decoder_000_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_001_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_00f_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_010_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_011_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_01f_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_0ff_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_100_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_101_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_10f_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_110_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_111_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_11f_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_1ff_val                        : Integer  range 0 to (2**24 - 1);
    variable decoder_fff_val                        : Integer  range 0 to (2**24 - 1);
    
    variable loopCnt                                : Integer  range 0 to (2**8  - 1);
  begin
    if (clk'EVENT and clk = '1') then
        if ((reset = '1') or (dds_tx09_ptt = '1')) then
            post_fft_rx09_mem_b_addr_Int            := 0;
            post_fft_rx09_mem_b_complete_addr       <= (others => '0');
            post_fft_rx09_mem_b_addr                <= (others => '0');
            
            decoder_rx09_SoM_frameCtr               <= (others => '0');
            decoder_rx09_center_pos                 <= (others => '0');
            decoder_rx09_strength                   <= (others => '0');
            decoder_rx09_noise                      <= (others => '0');
            decoder_rx09_sql_open                   <= '0';
            decoder_rx09_active                     <= '0';
            
            decoder_rx09_out_vec                    <= (others => '0');
            decoder_rx09_out_len                    <= (others => '0');
            
            sumAll                                  := 0;
            sumPreamble                             := 0;
            preambleMaxVal                          := 0;
            preambleMaxPos                          := 0;
            
            sqlVal                                  := 0;
            fingerprint_t10                         := 0;
            fingerprint_t08                         := 0;
            fingerprint_t06                         := 0;
            fingerprint_t04                         := 0;
            fingerprint_t02                         := 0;
            fingerprint_t00                         := 0;
            
            decoder_LoopIdx                         := 0;
            decoder_lastCenterOfs                   := 0;
            decoder_lastOfs                         := 0;
            decoder_val                             := 0;
            decoder_max                             := 0;
            decoder_pos                             := 0;
            decoder_rx09_SoM_frameCtrA_Int          := 0;
            decoder_rx09_strength_Int               := 0;
            decoder_rx09_noise_Int                  := 0;
            decoder_rx09_center_pos_Int             := 0;
            decoder_remainVal                       := 0;
            decoder_u32Count                        := 0;
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
            decoder_fff_val                         := 0;
            
            initialLoopIdx                          := 0;
            watchdogIdx                             := 0;
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
                    
                    srField_t00                     := srRow;
                    srField_t01                     := srRow;
                    srField_t02                     := srRow;
                    srField_t03                     := srRow;
                    srField_t04                     := srRow;
                    srField_t05                     := srRow;
                    srField_t06                     := srRow;
                    srField_t07                     := srRow;
                    srField_t08                     := srRow;
                    srField_t09                     := srRow;
                    srField_t10                     := srRow;
                    srField_t11                     := srRow;
                    
                    for ii in 0 to 11 loop
                        sumOfRow(ii)                := 0;
                    end loop;
                    
                    sumPreambleField_t0             := sumPreambleRow;
                    sumPreambleField_t1             := sumPreambleRow;
                    sumPreambleField_t2             := sumPreambleRow;
                    
                    decoder_rx09_sql_open           <= '0';
                    decoder_rx09_active             <= '0';
                    
                    initialLoopIdx                  := 12;
                    
                    state := loop_start;
                    
                    
                -- Loop entry point
                when loop_start =>
                    for ii in 0 to 31 loop
                        srRow(ii)                   := (others => '0');
                        sumPreambleRow(ii)          := 0;
                    end loop;
                    
                    watchdogIdx                     := 65000;   -- Max one quarterframe +1 us later
                    
                    state := wait_until_post_fft_done;
                    
                -- Wait until the FFT / Cordic post-transfer is complete
                when wait_until_post_fft_done =>
                    if (post_fft_rx09_mem_a_EoT = '1') then
                        state := read_in_loop;
                        
                        -- RAM Loop init
                        post_fft_rx09_mem_b_addr_Int := 0;
                        
                    else
                        if (watchdogIdx /= 0) then
                            watchdogIdx := watchdogIdx - 1;
                        else
                            -- Allow transmitter to ramp-up also when no RX LVDS data is available
                            decoder_rx09_sql_open   <= '0';
                            decoder_rx09_active     <= '0';
                        end if;
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
                        srField_t11     := srField_t10;
                        srField_t10     := srField_t09;
                        srField_t09     := srField_t08;
                        srField_t08     := srField_t07;
                        srField_t07     := srField_t06;
                        srField_t06     := srField_t05;
                        srField_t05     := srField_t04;
                        srField_t04     := srField_t03;
                        srField_t03     := srField_t02;
                        srField_t02     := srField_t01;
                        srField_t01     := srField_t00;
                        srField_t00     := srRow;
                        
                        -- Move up one row
                        for ii in 10 downto 0 loop
                        sumOfRow(ii + 1) := sumOfRow(ii);
                        end loop;
                        sumOfRow(0) := 0;
                        
                        -- Prepare Artemis sum up rows
                        fftLoopIdx      := 0;
                        
                        state := artemis_sum_up_rows;
                    end if;
                    
                    -- RAM Loop footer
                    post_fft_rx09_mem_b_addr_Int := post_fft_rx09_mem_b_addr_Int + 1;
                    
                when artemis_sum_up_rows =>
                    sumOfRow(0) := sumOfRow(0) + to_integer(srField_t00(fftLoopIdx));
                    
                    if (fftLoopIdx /= 31) then
                        fftLoopIdx := fftLoopIdx + 1;
                    else
                        -- Header historyLoop 2
                        state := artemis_sum_up_all;
                        historyLoopIdx  := 11;
                        sumAll          := 0;
                        
                        -- Squelch open info to the Encoder to inhibit transmission
                        if (sumOfRow(0) > to_integer(unsigned(decoder_rx09_squelch_lvl))) then
                            decoder_rx09_sql_open <= '1';
                        else
                            decoder_rx09_sql_open <= '0';
                        end if;
                    end if;
                    
                when artemis_sum_up_all =>
                    sumAll := sumAll + sumOfRow(historyLoopIdx);
                    
                    if historyLoopIdx /= 0 then
                        historyLoopIdx := historyLoopIdx - 1;
                    else
                        state   := artemis_search_1;
                        sqlVal  := sumAll + to_integer(unsigned(decoder_rx09_squelch_lvl));
                    end if;
                    
                when artemis_search_1 =>
                    -- 32x parallel execution of single additions
                    for fftIdx in 0 to 31 loop
                        fingerprint_t10 := to_integer(unsigned(srField_t10((fftIdx + (32 + C_pre_r0)) mod 32)));
                        fingerprint_t08 := to_integer(unsigned(srField_t08((fftIdx + (32 + C_pre_r1)) mod 32)));
                        fingerprint_t06 := to_integer(unsigned(srField_t06((fftIdx + (32 + C_pre_r2)) mod 32)));
                        fingerprint_t04 := to_integer(unsigned(srField_t04((fftIdx + (32 + C_pre_r3)) mod 32)));
                        fingerprint_t02 := to_integer(unsigned(srField_t02((fftIdx + (32 + C_pre_r4)) mod 32)));
                        fingerprint_t00 := to_integer(unsigned(srField_t00((fftIdx + (32 + C_pre_r5)) mod 32)));
                        
                        -- Preamble fingerprint
                        if (                                                                        -- Weight of sumAll = 32 * 12 = 384
                            ((fingerprint_t10 * 256) > sqlVal)
                        and ((fingerprint_t08 * 256) > sqlVal)
                        and ((fingerprint_t06 * 256) > sqlVal)
                        and ((fingerprint_t04 * 256) > sqlVal)
                        and ((fingerprint_t02 * 256) > sqlVal)
                        and ((fingerprint_t00 * 256) > sqlVal)
                        ) then
                            sumPreambleRow(fftIdx) := fingerprint_t10 + fingerprint_t08 + fingerprint_t06 + fingerprint_t04 + fingerprint_t02 + fingerprint_t00;
                        end if;
                    end loop;   -- fftIdx
                    
                    state := artemis_search_2;
                    
                when artemis_search_2 =>
                    -- History Loop footer 1
                    sumPreambleField_t2 := sumPreambleField_t1;
                    sumPreambleField_t1 := sumPreambleField_t0;
                    sumPreambleField_t0 := sumPreambleRow;
                    
                    if (initialLoopIdx /= 0) then
                        state := artemis_initial_skip;
                    else
                        state := artemis_decoder_switch;
                    end if;
                    
                when artemis_initial_skip =>
                    initialLoopIdx      := initialLoopIdx - 1;
                    state := loop_start;                                                            -- Skip this row and get next one
                    
                when artemis_decoder_switch =>
                    if (decoder_state /= NOP) then
                        state := decoder_process;
                        
                    else
                        state := artemis_check_candidates_init;                                     -- Message and Remain/Length-value decoder
                    end if;

                when artemis_check_candidates_init =>
                    fftLoopIdx          := 0;
                    preambleMaxVal      := 0;
                    preambleMaxPos      := 0;
                    state := artemis_check_candidates;
                    
                when artemis_check_candidates =>
                    if (
                        (sumPreambleField_t1(fftLoopIdx) > sumPreambleField_t2(fftLoopIdx))
                    and (sumPreambleField_t1(fftLoopIdx) > sumPreambleField_t0(fftLoopIdx))
                    ) then
                        -- Candidate for Preamble found
                        if (preambleMaxVal  <  sumPreambleField_t1(fftLoopIdx)) then
                            preambleMaxVal  := sumPreambleField_t1(fftLoopIdx);
                            preambleMaxPos  := fftLoopIdx;
                        end if;
                    end if;
                    
                    if fftLoopIdx /= 31 then
                        fftLoopIdx := fftLoopIdx + 1;
                        
                    else
                        if (preambleMaxVal = 0) then
                            -- Continue to search for a preamble
                            state := loop_start;
                        else
                            -- Preamble found, continue with decoding message
                            state := decoder_init;
                            
                            decoder_rx09_active         <= '1';
                            decoder_lastCenterOfs       := (32 + preambleMaxPos - 16) mod 32;
                            decoder_lastOfs             := decoder_lastCenterOfs;
                            decoder_rx09_center_pos_Int := preambleMaxPos;
                            decoder_rx09_strength_Int   := preambleMaxVal;                              -- weight:  6
                            decoder_rx09_noise_Int      := sumAll / 64;                                 -- weight:  6
                        end if;
                    end if;
                    
                    
                when decoder_init =>
                    decoder_rx09_SoM_frameCtr   <= std_logic_vector(to_unsigned((to_integer(unsigned(post_fft_rx09_mem_a_addr(41 downto 10))) + 5), decoder_rx09_SoM_frameCtr'length));
                    decoder_rx09_center_pos     <= std_logic_vector(to_unsigned(decoder_rx09_center_pos_Int, decoder_rx09_center_pos'length));
                    decoder_rx09_strength       <= std_logic_vector(to_unsigned(decoder_rx09_strength_Int, decoder_rx09_strength'length));
                    decoder_rx09_noise          <= std_logic_vector(to_unsigned(decoder_rx09_noise_Int, decoder_rx09_noise'length));
                    decoder_rx09_out_vec        <= (others => '0');
                    decoder_rx09_out_len        <= (others => '0');
                    
                    decoder_state   := decode_preload;
                    state           := decoder_process;
                    initialLoopIdx  := 4;
                    
                when decoder_process =>
                    case decoder_state is
                        when decode_preload =>
                            if (initialLoopIdx /= 0) then
                                initialLoopIdx := initialLoopIdx - 1;
                                
                                decoder_state := decode_preload;
                                state         := loop_start;                                        -- fetch next row
                            else
                                decoder_state := decode_remainValue_init;
                                state         := decoder_process;
                            end if;
                            
                        when decode_remainValue_init =>
                            decoder_max         := 0;
                            decoder_pos         := 0;
                            decoder_remainVal   := 0;
                            decoder_LoopIdx     := 0;
                            
                            decoder_state := decode_remainValue_loop;
                            state         := decoder_process;
                            
                        when decode_remainValue_loop =>
                            if decoder_LoopIdx /= 32 then
                                decoder_val := to_integer(srField_t03(decoder_LoopIdx));
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max := decoder_val;
                                    decoder_pos := decoder_LoopIdx;
                                end if;
                                
                                decoder_LoopIdx := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs     := decoder_lastCenterOfs;
                                decoder_remainVal   := (32 + decoder_pos - (16 + decoder_lastCenterOfs)) mod 32;
                                
                                decoder_state := decode_u32Count_init;
                                state         := decoder_process;
                            end if;
                            
                        when decode_u32Count_init =>
                            decoder_max         := 0;
                            decoder_pos         := 0;
                            decoder_u32Count    := 0;
                            decoder_LoopIdx     := 0;
                            
                            decoder_state := decode_u32Count_loop;
                            state         := decoder_process;
                            
                        when decode_u32Count_loop =>
                            if decoder_LoopIdx /= 32 then
                                decoder_val := to_integer(srField_t01(decoder_LoopIdx));
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max     := decoder_val;
                                    decoder_pos     := decoder_LoopIdx;
                                end if;
                                
                                decoder_LoopIdx     := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs     := decoder_lastCenterOfs;
                                decoder_u32Count    := (32 + decoder_pos - (16 + decoder_lastCenterOfs)) mod 32;
                                decoder_LoopIdx     := 6;                                           -- Number of frames to move forward
                                
                                decoder_state := decoder_forward;
                                state         := decoder_process;                                   -- Direct entry without pulling another frame
                            end if;
                            
                        when decoder_forward =>
                            if (decoder_LoopIdx /= 0) then
                                decoder_LoopIdx := decoder_LoopIdx - 1;
                                
                                decoder_state := decoder_forward;
                                state         := loop_start;                                        -- Get another row
                            else
                                decoder_state := decode_message_init;
                                state         := decoder_process;                                   -- Direct entry without pulling another frame
                            end if;
                            
                        when decode_message_init =>
                            decoder_0_val   := 0;
                            decoder_1_val   := 0;
                            decoder_f_val   := 0;
                            decoder_00_val  := 0;
                            decoder_01_val  := 0;
                            decoder_0f_val  := 0;
                            decoder_10_val  := 0;
                            decoder_11_val  := 0;
                            decoder_1f_val  := 0;
                            decoder_ff_val  := 0;
                            decoder_000_val := 0;
                            decoder_001_val := 0;
                            decoder_00f_val := 0;
                            decoder_010_val := 0;
                            decoder_011_val := 0;
                            decoder_01f_val := 0;
                            decoder_0ff_val := 0;
                            decoder_100_val := 0;
                            decoder_101_val := 0;
                            decoder_10f_val := 0;
                            decoder_110_val := 0;
                            decoder_111_val := 0;
                            decoder_11f_val := 0;
                            decoder_1ff_val := 0;
                            decoder_fff_val := 0;
                            
                            decoder_LoopIdx := 1025;
                            
                            decoder_state := decode_message_loop_r5;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r5 =>
                            decoder_0_val   := to_integer(srField_t05((32 + 16 + decoder_lastOfs + C_bit_0) mod 32));
                            decoder_1_val   := to_integer(srField_t05((32 + 16 + decoder_lastOfs + C_bit_1) mod 32));
                            decoder_f_val   := to_integer(srField_t05((32 + 16 + decoder_lastOfs + C_fin_0) mod 32));
                            
                            decoder_state := decode_message_loop_r3;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r3 =>
                            decoder_00_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0) mod 32)) + 4*decoder_0_val;
                            decoder_01_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1) mod 32)) + 4*decoder_0_val;
                            decoder_0f_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_0 + C_fin_0) mod 32)) + 4*decoder_0_val;
                            decoder_10_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0) mod 32)) + 4*decoder_1_val;
                            decoder_11_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1) mod 32)) + 4*decoder_1_val;
                            decoder_1f_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_1 + C_fin_0) mod 32)) + 4*decoder_1_val;
                            decoder_ff_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs           + C_fin_1) mod 32)) + 4*decoder_f_val;
                            
                            decoder_state := decode_message_loop_r1;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r1 =>
                            decoder_000_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0 + C_bit_0) mod 32)) + 2*decoder_00_val;
                            decoder_001_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0 + C_bit_1) mod 32)) + 2*decoder_00_val;
                            decoder_00f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0 + C_fin_0) mod 32)) + 2*decoder_00_val;
                            decoder_010_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1 + C_bit_0) mod 32)) + 2*decoder_01_val;
                            decoder_011_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1 + C_bit_1) mod 32)) + 2*decoder_01_val;
                            decoder_01f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1 + C_fin_0) mod 32)) + 2*decoder_01_val;
                            decoder_0ff_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0           + C_fin_1) mod 32)) + 2*decoder_0f_val;
                            decoder_100_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0 + C_bit_0) mod 32)) + 2*decoder_10_val;
                            decoder_101_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0 + C_bit_1) mod 32)) + 2*decoder_10_val;
                            decoder_10f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0 + C_fin_0) mod 32)) + 2*decoder_10_val;
                            decoder_110_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1 + C_bit_0) mod 32)) + 2*decoder_11_val;
                            decoder_111_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1 + C_bit_1) mod 32)) + 2*decoder_11_val;
                            decoder_11f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1 + C_fin_0) mod 32)) + 2*decoder_11_val;
                            decoder_1ff_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1           + C_fin_1) mod 32)) + 2*decoder_1f_val;
                            decoder_fff_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs                     + C_fin_2) mod 32)) + 2*decoder_ff_val;
                            
                            decoder_state := decode_message_check_end;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
                        when decode_message_check_end =>
                            if ((
                                (decoder_fff_val >= decoder_000_val) and
                                (decoder_fff_val >= decoder_001_val) and
                                (decoder_fff_val >= decoder_00f_val) and
                                (decoder_fff_val >= decoder_010_val) and
                                (decoder_fff_val >= decoder_011_val) and
                                (decoder_fff_val >= decoder_01f_val) and
                                (decoder_fff_val >= decoder_0ff_val) and
                                (decoder_fff_val >= decoder_100_val) and
                                (decoder_fff_val >= decoder_101_val) and
                                (decoder_fff_val >= decoder_10f_val) and
                                (decoder_fff_val >= decoder_110_val) and
                                (decoder_fff_val >= decoder_111_val) and
                                (decoder_fff_val >= decoder_11f_val) and
                                (decoder_fff_val >= decoder_1ff_val) and
                                (((decoder_LoopIdx - 1) mod 4) = 0)  and
                                ((decoder_LoopIdx < 1024)))
                                or
                                (decoder_LoopIdx = 0)
                            ) then
                                decoder_state := NOP;                                               -- End of message stream
                                state         := pushdata_prepare_calc;
                            else
                                decoder_state := decode_message_decider_reduction_r1;
                                state         := decoder_process;                                   -- Direct entry without pulling another frame
                            end if;

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
                            
                            decoder_state := decode_message_decider_reduction_r2;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
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
                            
                            decoder_state := decode_message_decider_reduction_r3;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
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
                            
                            decoder_state := decode_message_decider_reduction_r4;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
                        when decode_message_decider_reduction_r4 =>
                            if (decoder_000_val < decoder_00f_val) then
                                decoder_000_val := decoder_00f_val;
                                decoder_00f_val := decoder_0ff_val;
                            else
                                decoder_00f_val := decoder_001_val;
                            end if;
                            
                            decoder_LoopIdx     := decoder_LoopIdx - 1;

                            decoder_state := decode_message_decider_01;
                            state         := loop_start;                                            -- Get next odd row
                            
                        when decode_message_decider_01 =>
                            if (decoder_00f_val = 0) then
                                decoder_rx09_out_vec    <= '0' & decoder_rx09_out_vec(1023 downto 1);
                                decoder_lastOfs         := (32 + decoder_lastOfs - 11) mod 32;
                                
                            else
                                decoder_rx09_out_vec    <= '1' & decoder_rx09_out_vec(1023 downto 1);
                                decoder_lastOfs         := (32 + decoder_lastOfs + 17) mod 32;
                            end if;
                            
                            decoder_rx09_out_len        <= std_logic_vector(to_unsigned( (1 + to_integer(unsigned(decoder_rx09_out_len))) , decoder_rx09_out_len'length));
                            
                            decoder_state := decode_message_loop_r5;
                            state         := loop_start;                                            -- Get next even row
                            
                        when others =>
                            decoder_state := NOP;
                            
                    end case;   -- decoder_state
                    
                    
                when pushdata_prepare_calc =>
                    decoder_rx09_active <= '0';
                    loopCnt             := (1024 - to_integer(unsigned(decoder_rx09_out_len))) / 8; -- Number of bytes to skip
                    state := pushdata_prepare_shift;
                    
                when pushdata_prepare_shift =>
                    if (loopCnt /= 0) then
                        decoder_rx09_out_vec <= "00000000" & decoder_rx09_out_vec(1023 downto 8);  -- SHR
                        loopCnt := loopCnt - 1;
                    else
                        loopCnt := to_integer(unsigned(decoder_rx09_out_len(10 downto 3)));         -- Number of bytes to transfer
                        
                        state := pushdata_header_a;
                    end if;
                    
                when pushdata_header_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_rx09_out_len(10 downto 3))) + 11), pushdata_rx09_byteData'length));
                    state := pushdata_header_b;
                    
                when pushdata_header_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_signal_msb_a;
                    
                when pushdata_signal_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_strength_Int / 256), pushdata_rx09_byteData'length));
                    state := pushdata_signal_msb_b;
                    
                when pushdata_signal_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_signal_lsb_a;
                    
                when pushdata_signal_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_strength_Int mod 256), pushdata_rx09_byteData'length));
                    state := pushdata_signal_lsb_b;
                    
                when pushdata_signal_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_noise_msb_a;
                    
                when pushdata_noise_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_noise_Int / 256), pushdata_rx09_byteData'length));
                    state := pushdata_noise_msb_b;
                    
                when pushdata_noise_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_noise_lsb_a;
                    
                when pushdata_noise_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((decoder_rx09_noise_Int mod 256), pushdata_rx09_byteData'length));
                    state := pushdata_noise_lsb_b;
                    
                when pushdata_noise_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p3_a;
                    
                when pushdata_frameCtr_p3_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(31 downto 24);
                    state := pushdata_frameCtr_p3_b;
                    
                when pushdata_frameCtr_p3_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p2_a;
                    
                when pushdata_frameCtr_p2_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(23 downto 16);
                    state := pushdata_frameCtr_p2_b;
                    
                when pushdata_frameCtr_p2_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p1_a;
                    
                when pushdata_frameCtr_p1_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(15 downto 8);
                    state := pushdata_frameCtr_p1_b;
                    
                when pushdata_frameCtr_p1_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p0_a;
                    
                when pushdata_frameCtr_p0_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= decoder_rx09_SoM_frameCtr(7 downto 0);
                    state := pushdata_frameCtr_p0_b;
                    
                when pushdata_frameCtr_p0_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_centerpos_a;
                    
                when pushdata_centerpos_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_rx09_center_pos_Int, pushdata_rx09_byteData'length));
                    state := pushdata_centerpos_b;
                    
                when pushdata_centerpos_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_remainCtr_a;
                    
                when pushdata_remainCtr_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_remainVal, pushdata_rx09_byteData'length));
                    state := pushdata_remainCtr_b;
                    
                when pushdata_remainCtr_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_msgU32Len_a;
                    
                when pushdata_msgU32Len_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned(decoder_u32Count, pushdata_rx09_byteData'length));
                    state := pushdata_loop_begin;
                    
                when pushdata_loop_begin =>
                    pushdata_rx09_en        <= '0';
                    
                    if (loopCnt /= 0) then
                        loopCnt := loopCnt - 1;
                        
                        state := pushdata_loop_transfer;
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
                    
                    state := pushdata_loop_begin;
                    
                when others =>
                    decoder_state := NOP;
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_Decoder_rx09;

end Behavioral;
