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
  signal fftFrameAvailCtr                           : STD_LOGIC_VECTOR(  31 downto 0);
  signal decoderFftFrameWork                        : STD_LOGIC_VECTOR(   1 downto 0);
  
  signal decoder_rx09_ch0_out_bf_v1024              : STD_LOGIC_VECTOR(1023 downto 0);
  signal decoder_rx09_ch0_out_len_v11               :         UNSIGNED(  10 downto 0);
  signal decoder_rx09_ch0_SoM_frameCtr_v32          :         UNSIGNED(  31 downto 0);
  signal decoder_rx09_ch0_center_pos_v8             :         UNSIGNED(   7 downto 0);
  signal decoder_rx09_ch0_strength_v16              :         UNSIGNED(  15 downto 0);
  signal decoder_rx09_ch0_noise_v16                 :         UNSIGNED(  15 downto 0);
  signal decoder_rx09_ch0_remainVal_v8              :         UNSIGNED(   7 downto 0);
  signal decoder_rx09_ch0_u32Count_v8               :         UNSIGNED(   7 downto 0);
  signal decoder_rx09_ch0_handover                  : STD_LOGIC;
  signal pushdata_rx09_ch0_taken                    : STD_LOGIC;
  
  
  constant C_pre_r0                                 : Integer :=  +7;
  constant C_pre_r1                                 : Integer := - 9;
  constant C_pre_r2                                 : Integer := +13;
  constant C_pre_r3                                 : Integer := -15;
  constant C_pre_r4                                 : Integer := +19;
  constant C_pre_r5                                 : Integer := -21;

  constant C_bit_1                                  : Integer := +17;
  constant C_bit_0                                  : Integer := -11;
    
  constant C_fin_0                                  : Integer :=  +5;
  constant C_fin_1                                  : Integer :=  -3;
  constant C_fin_2                                  : Integer :=  +1;
  
    
  type Vec31u16                                     is array (31 downto 0) of unsigned(15 downto 0);
  shared variable srField_t00                       : Vec31u16;
  shared variable srField_t01                       : Vec31u16;
  shared variable srField_t02                       : Vec31u16;
  shared variable srField_t03                       : Vec31u16;
  shared variable srField_t04                       : Vec31u16;
  shared variable srField_t05                       : Vec31u16;
  shared variable srField_t06                       : Vec31u16;
  shared variable srField_t07                       : Vec31u16;
  shared variable srField_t08                       : Vec31u16;
  shared variable srField_t09                       : Vec31u16;
  shared variable srField_t10                       : Vec31u16;
  shared variable srField_t11                       : Vec31u16;

begin
  
  proc_FFT_rx09_in: process (reset, clk, post_fft_rx09_mem_a_addr)
    type StateType                                  is (
                                                        init, loop_start, wait_until_post_fft_done, read_in_loop
                                                    );
    variable state                                  : StateType;

    variable post_fft_rx09_mem_b_addr_u10           : UNSIGNED(9 downto 0);
    variable srRow                                  : Vec31u16;
    
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            fftFrameAvailCtr                        <= (others => '0');
            
            post_fft_rx09_mem_b_addr                <= (others => '0');
            post_fft_rx09_mem_b_addr_u10            := (others => '0');
            
            for ii in 0 to 31 loop
                srRow(ii)                           := (others => '0');

                srField_t00(ii)                     := (others => '0');
                srField_t01(ii)                     := (others => '0');
                srField_t02(ii)                     := (others => '0');
                srField_t03(ii)                     := (others => '0');
                srField_t04(ii)                     := (others => '0');
                srField_t05(ii)                     := (others => '0');
                srField_t06(ii)                     := (others => '0');
                srField_t07(ii)                     := (others => '0');
                srField_t08(ii)                     := (others => '0');
                srField_t09(ii)                     := (others => '0');
                srField_t10(ii)                     := (others => '0');
                srField_t11(ii)                     := (others => '0');
            end loop;
            
        else
            case state is
                when init =>
                    fftFrameAvailCtr                <= (others => '0');
                    
                    post_fft_rx09_mem_b_addr        <= (others => '0');
                    post_fft_rx09_mem_b_addr_u10    := (others => '0');
                    
                    for ii in 0 to 31 loop
                        srRow(ii)                   := (others => '0');

                        srField_t00(ii)             := (others => '0');
                        srField_t01(ii)             := (others => '0');
                        srField_t02(ii)             := (others => '0');
                        srField_t03(ii)             := (others => '0');
                        srField_t04(ii)             := (others => '0');
                        srField_t05(ii)             := (others => '0');
                        srField_t06(ii)             := (others => '0');
                        srField_t07(ii)             := (others => '0');
                        srField_t08(ii)             := (others => '0');
                        srField_t09(ii)             := (others => '0');
                        srField_t10(ii)             := (others => '0');
                        srField_t11(ii)             := (others => '0');
                    end loop;
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    for ii in 0 to 31 loop
                        srRow(ii)                   := (others => '0');
                    end loop;
                    
                    state := wait_until_post_fft_done;
                    
                -- Wait until the FFT / Cordic post-transfer is complete
                when wait_until_post_fft_done =>
                    if (post_fft_rx09_mem_a_EoT = '1') then
                        -- RAM Loop init
                        post_fft_rx09_mem_b_addr_u10 := (others => '0');
                        
                        state := read_in_loop;
                    end if;
                    
                when read_in_loop =>
                    -- Request data from RAM (latency: 2 clocks
                    if (post_fft_rx09_mem_b_addr_u10 < 32) then
                        -- Time span of RAM read-out
                        post_fft_rx09_mem_b_addr    <= std_logic_vector(post_fft_rx09_mem_b_addr_u10);
                    else
                        -- Time span of latency
                        post_fft_rx09_mem_b_addr    <= (others => '0');
                    end if;
                    
                    -- Read into shift register
                    if ((2 < post_fft_rx09_mem_b_addr_u10)  and  (post_fft_rx09_mem_b_addr_u10 <= 34)) then
                        -- Shift in data
                        srRow := unsigned(post_fft_rx09_mem_b_dout) & srRow(31 downto 1);
                        
                    elsif (34 < post_fft_rx09_mem_b_addr_u10) then
                        -- End of loop
                        srField_t11         := srField_t10;
                        srField_t10         := srField_t09;
                        srField_t09         := srField_t08;
                        srField_t08         := srField_t07;
                        srField_t07         := srField_t06;
                        srField_t06         := srField_t05;
                        srField_t05         := srField_t04;
                        srField_t04         := srField_t03;
                        srField_t03         := srField_t02;
                        srField_t02         := srField_t01;
                        srField_t01         := srField_t00;
                        srField_t00         := srRow;
                        
                        fftFrameAvailCtr    <= post_fft_rx09_mem_a_addr(41 downto 10);
                        
                        state := loop_start;
                    end if;
                    
                    -- RAM Loop footer
                    post_fft_rx09_mem_b_addr_u10 := post_fft_rx09_mem_b_addr_u10 + 1;
                    
                when others =>
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_FFT_rx09_in;
  
  
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_Decoder_rx09_ch0: process (reset, clk, post_fft_rx09_mem_a_addr)
    type StateType                                  is (
                                                        init, loop_start,
                                                        artemis_search_1, artemis_search_2, artemis_sum_up_rows, artemis_sum_up_all,
                                                        artemis_initial_skip, artemis_decoder_switch, artemis_check_candidates_init, artemis_check_candidates, artemis_find_max,
                                                        decoder_init, decoder_process,
                                                        pushdata_prepare_calc, pushdata_prepare_shift, pushdata_handoff
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
    
    type Vec32u24                                   is array (31 downto 0) of UNSIGNED(23 downto 0);
    variable sumPreambleRow                         : Vec32u24;
    variable sumPreambleField_t0                    : Vec32u24;
    variable sumPreambleField_t1                    : Vec32u24;
    variable sumPreambleField_t2                    : Vec32u24;
    
    type Vec12u24                                   is array (11 downto 0) of UNSIGNED(23 downto 0);
    variable sumOfRow                               : Vec12u24;
    
    variable sumAll                                 :         UNSIGNED(23 downto 0);
    variable sumPreamble                            :         UNSIGNED(23 downto 0);
    variable sqlVal                                 :         UNSIGNED(23 downto 0);
    
    variable initialLoopIdx                         :         UNSIGNED( 3 downto 0);
    variable historyLoopIdx                         :         UNSIGNED( 3 downto 0);
    variable fftLoopIdx                             :         UNSIGNED( 7 downto 0);
    variable loopCnt                                :         UNSIGNED( 7 downto 0);
   
    variable preambleMaxVal                         :         UNSIGNED(23 downto 0);
    variable preambleMaxPos                         :         UNSIGNED( 7 downto 0);
    
    variable fingerprint_t10                        :         UNSIGNED(23 downto 0);
    variable fingerprint_t08                        :         UNSIGNED(23 downto 0);
    variable fingerprint_t06                        :         UNSIGNED(23 downto 0);
    variable fingerprint_t04                        :         UNSIGNED(23 downto 0);
    variable fingerprint_t02                        :         UNSIGNED(23 downto 0);
    variable fingerprint_t00                        :         UNSIGNED(23 downto 0);
   
    variable decoder_LoopIdx                        :         UNSIGNED(10 downto 0);
    variable decoder_lastCenterOfs                  :         UNSIGNED( 7 downto 0);
    variable decoder_lastOfs                        :         UNSIGNED( 7 downto 0);
    variable decoder_val                            :         UNSIGNED(23 downto 0);
    variable decoder_max                            :         UNSIGNED(23 downto 0);
    variable decoder_pos                            :         UNSIGNED( 7 downto 0);
    variable decoder_0_val                          :         UNSIGNED(15 downto 0);
    variable decoder_1_val                          :         UNSIGNED(15 downto 0);
    variable decoder_f_val                          :         UNSIGNED(15 downto 0);
    variable decoder_00_val                         :         UNSIGNED(19 downto 0);
    variable decoder_01_val                         :         UNSIGNED(19 downto 0);
    variable decoder_0f_val                         :         UNSIGNED(19 downto 0);
    variable decoder_10_val                         :         UNSIGNED(19 downto 0);
    variable decoder_11_val                         :         UNSIGNED(19 downto 0);
    variable decoder_1f_val                         :         UNSIGNED(19 downto 0);
    variable decoder_ff_val                         :         UNSIGNED(19 downto 0);
    variable decoder_000_val                        :         UNSIGNED(23 downto 0);
    variable decoder_001_val                        :         UNSIGNED(23 downto 0);
    variable decoder_00f_val                        :         UNSIGNED(23 downto 0);
    variable decoder_010_val                        :         UNSIGNED(23 downto 0);
    variable decoder_011_val                        :         UNSIGNED(23 downto 0);
    variable decoder_01f_val                        :         UNSIGNED(23 downto 0);
    variable decoder_0ff_val                        :         UNSIGNED(23 downto 0);
    variable decoder_100_val                        :         UNSIGNED(23 downto 0);
    variable decoder_101_val                        :         UNSIGNED(23 downto 0);
    variable decoder_10f_val                        :         UNSIGNED(23 downto 0);
    variable decoder_110_val                        :         UNSIGNED(23 downto 0);
    variable decoder_111_val                        :         UNSIGNED(23 downto 0);
    variable decoder_11f_val                        :         UNSIGNED(23 downto 0);
    variable decoder_1ff_val                        :         UNSIGNED(23 downto 0);
    variable decoder_fff_val                        :         UNSIGNED(23 downto 0);
    
    variable idx                                    : Integer;
    
  begin
    if (clk'EVENT and clk = '1') then
        if ((reset = '1') or (dds_tx09_ptt = '1')) then
            decoderFftFrameWork                     <= (others => '0');
            
            decoder_rx09_ch0_SoM_frameCtr_v32       <= (others => '0');
            decoder_rx09_ch0_center_pos_v8          <= (others => '0');
            decoder_rx09_center_pos                 <= (others => '0');
            decoder_rx09_ch0_strength_v16           <= (others => '0');
            decoder_rx09_strength                   <= (others => '0');
            decoder_rx09_ch0_noise_v16              <= (others => '0');
            decoder_rx09_noise                      <= (others => '0');
            decoder_rx09_sql_open                   <= '0';
            decoder_rx09_active                     <= '0';
            
            decoder_rx09_ch0_out_bf_v1024           <= (others => '0');
            decoder_rx09_ch0_out_len_v11            <= (others => '0');
            
            sumAll                                  := (others => '0');
            sumPreamble                             := (others => '0');
            preambleMaxVal                          := (others => '0');
            preambleMaxPos                          := (others => '0');
            sqlVal                                  := (others => '0');
            fftLoopIdx                              := (others => '0');
            loopCnt                                 := (others => '0');
            
            fingerprint_t10                         := (others => '0');
            fingerprint_t08                         := (others => '0');
            fingerprint_t06                         := (others => '0');
            fingerprint_t04                         := (others => '0');
            fingerprint_t02                         := (others => '0');
            fingerprint_t00                         := (others => '0');
            
            decoder_LoopIdx                         := (others => '0');
            decoder_lastCenterOfs                   := (others => '0');
            decoder_lastOfs                         := (others => '0');
            decoder_val                             := (others => '0');
            decoder_max                             := (others => '0');
            decoder_pos                             := (others => '0');
            
            decoder_0_val                           := (others => '0');
            decoder_1_val                           := (others => '0');
            decoder_f_val                           := (others => '0');
            decoder_00_val                          := (others => '0');
            decoder_01_val                          := (others => '0');
            decoder_0f_val                          := (others => '0');
            decoder_10_val                          := (others => '0');
            decoder_11_val                          := (others => '0');
            decoder_1f_val                          := (others => '0');
            decoder_ff_val                          := (others => '0');
            decoder_000_val                         := (others => '0');
            decoder_001_val                         := (others => '0');
            decoder_00f_val                         := (others => '0');
            decoder_010_val                         := (others => '0');
            decoder_011_val                         := (others => '0');
            decoder_01f_val                         := (others => '0');
            decoder_0ff_val                         := (others => '0');
            decoder_100_val                         := (others => '0');
            decoder_101_val                         := (others => '0');
            decoder_10f_val                         := (others => '0');
            decoder_110_val                         := (others => '0');
            decoder_111_val                         := (others => '0');
            decoder_11f_val                         := (others => '0');
            decoder_1ff_val                         := (others => '0');
            decoder_fff_val                         := (others => '0');
            
            initialLoopIdx                          := (others => '0');
            
            decoder_rx09_ch0_remainVal_v8           <= (others => '0');
            decoder_rx09_ch0_u32Count_v8            <= (others => '0');
            
            decoder_rx09_ch0_handover               <= '0';
            
            for ii in 0 to 31 loop
                sumPreambleRow(ii)                  := (others => '0');
            end loop;
            
            sumPreambleField_t0                     := sumPreambleRow;
            sumPreambleField_t1                     := sumPreambleRow;
            sumPreambleField_t2                     := sumPreambleRow;
            
            for ii in 0 to 11 loop
                sumOfRow(ii)                        := (others => '0');
            end loop;
            
            idx                                     := 0;
            
            state                                   := init;
            decoder_state                           := NOP;
            
        else
            case state is
                when init =>
                    decoderFftFrameWork             <= (others => '0');
                    
                    for ii in 0 to 31 loop
                        sumPreambleRow(ii)          := (others => '0');
                    end loop;
                    
                    sumPreambleField_t0             := sumPreambleRow;
                    sumPreambleField_t1             := sumPreambleRow;
                    sumPreambleField_t2             := sumPreambleRow;
                    
                    for ii in 0 to 11 loop
                        sumOfRow(ii)                := (others => '0');
                    end loop;
                    
                    decoder_rx09_sql_open           <= '0';
                    decoder_rx09_active             <= '0';
                    
                    decoder_rx09_ch0_remainVal_v8   <= (others => '0');
                    decoder_rx09_ch0_u32Count_v8    <= (others => '0');
                    
                    decoder_rx09_ch0_handover       <= '0';
                    
                    initialLoopIdx                  := to_unsigned(12, initialLoopIdx'length);
                    
                    state := loop_start;
                    
                    
                -- Loop entry point
                when loop_start =>
                    for ii in 0 to 31 loop
                        sumPreambleRow(ii)          := (others => '0');
                    end loop;
                    
                    fftLoopIdx                      := (others => '0');
                    
                    if (decoderFftFrameWork /= fftFrameAvailCtr(1 downto 0)) then
                        decoderFftFrameWork <= fftFrameAvailCtr(1 downto 0);
                        state := artemis_sum_up_rows;
                    end if;
                    
                when artemis_sum_up_rows =>
                    sumOfRow(0) := sumOfRow(0) + to_integer(srField_t00(to_integer(fftLoopIdx)));
                    
                    if (fftLoopIdx /= 31) then
                        fftLoopIdx := fftLoopIdx + 1;
                    else
                        -- Header historyLoop 2
                        state := artemis_sum_up_all;
                        historyLoopIdx  := to_unsigned(11, historyLoopIdx'length);
                        sumAll          := (others => '0');
                        
                        -- Squelch open info to the Encoder to inhibit transmission
                        if (sumOfRow(0) > unsigned(decoder_rx09_squelch_lvl)) then
                            decoder_rx09_sql_open <= '1';
                        else
                            decoder_rx09_sql_open <= '0';
                        end if;
                    end if;
                    
                when artemis_sum_up_all =>
                    sumAll := sumAll + sumOfRow(to_integer(historyLoopIdx));
                    
                    if historyLoopIdx /= 0 then
                        historyLoopIdx := historyLoopIdx - 1;
                    else
                        for ii in 10 downto 0 loop
                            sumOfRow(ii + 1) := sumOfRow(ii);
                        end loop;
                        sumOfRow(0) := (others => '0');
                        
                        state   := artemis_search_1;
                        sqlVal  := sumAll + unsigned(decoder_rx09_squelch_lvl);
                    end if;
                    
                when artemis_search_1 =>
                    -- 32x parallel execution of single additions
                    for fftIdx in 0 to 31 loop
                        fingerprint_t10 := resize(srField_t10((fftIdx + (32 + C_pre_r0)) mod 32), fingerprint_t10'length);
                        fingerprint_t08 := resize(srField_t08((fftIdx + (32 + C_pre_r1)) mod 32), fingerprint_t08'length);
                        fingerprint_t06 := resize(srField_t06((fftIdx + (32 + C_pre_r2)) mod 32), fingerprint_t06'length);
                        fingerprint_t04 := resize(srField_t04((fftIdx + (32 + C_pre_r3)) mod 32), fingerprint_t04'length);
                        fingerprint_t02 := resize(srField_t02((fftIdx + (32 + C_pre_r4)) mod 32), fingerprint_t02'length);
                        fingerprint_t00 := resize(srField_t00((fftIdx + (32 + C_pre_r5)) mod 32), fingerprint_t00'length);
                        
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
                    fftLoopIdx          := (others => '0');
                    preambleMaxVal      := (others => '0');
                    preambleMaxPos      := (others => '0');
                    state := artemis_check_candidates;
                    
                when artemis_check_candidates =>
                    if (
                        (sumPreambleField_t1(to_integer(fftLoopIdx)) > sumPreambleField_t2(to_integer(fftLoopIdx)))
                    and (sumPreambleField_t1(to_integer(fftLoopIdx)) > sumPreambleField_t0(to_integer(fftLoopIdx)))
                    ) then
                        -- Candidate for Preamble found
                        if (preambleMaxVal  <  sumPreambleField_t1(to_integer(fftLoopIdx))) then
                            preambleMaxVal  := sumPreambleField_t1(to_integer(fftLoopIdx));
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
                            
                            decoder_rx09_active             <= '1';
                            decoder_lastCenterOfs           := (32 + preambleMaxPos - 16) mod 32;
                            decoder_lastOfs                 := decoder_lastCenterOfs;
                        end if;
                    end if;
                    
                    
                when decoder_init =>
                    decoder_rx09_ch0_SoM_frameCtr_v32   <= to_unsigned((to_integer(unsigned(post_fft_rx09_mem_a_addr(41 downto 10))) + 5), decoder_rx09_ch0_SoM_frameCtr_v32'length);
                    decoder_rx09_ch0_center_pos_v8      <= preambleMaxPos;
                    decoder_rx09_center_pos             <= std_logic_vector(preambleMaxPos);
                    decoder_rx09_ch0_strength_v16       <= preambleMaxVal(15 downto 0);
                    decoder_rx09_strength               <= std_logic_vector(preambleMaxVal(18 downto 0));
                    decoder_rx09_ch0_noise_v16          <= sumAll(17 downto 2);  -- sumAll / 64
                    decoder_rx09_noise                  <= std_logic_vector(sumAll(20 downto 2));
                    decoder_rx09_ch0_out_bf_v1024       <= (others => '0');
                    decoder_rx09_ch0_out_len_v11        <= (others => '0');
                    
                    decoder_state   := decode_preload;
                    state           := decoder_process;
                    initialLoopIdx  := to_unsigned(4, initialLoopIdx'length);
                    
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
                            decoder_max     := (others => '0');
                            decoder_pos     := (others => '0');
                            decoder_LoopIdx := (others => '0');
                            
                            decoder_state   := decode_remainValue_loop;
                            state           := decoder_process;
                            
                        when decode_remainValue_loop =>
                            if decoder_LoopIdx /= 32 then
                                decoder_val := resize(srField_t03(to_integer(decoder_LoopIdx)), decoder_val'length);
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max := decoder_val;
                                    decoder_pos := decoder_LoopIdx(7 downto 0);
                                end if;
                                
                                decoder_LoopIdx := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs                 := decoder_lastCenterOfs;
                                decoder_rx09_ch0_remainVal_v8   <= (32 + decoder_pos - (16 + decoder_lastCenterOfs)) mod 32;
                                
                                decoder_state := decode_u32Count_init;
                                state         := decoder_process;
                            end if;
                            
                        when decode_u32Count_init =>
                            decoder_max         := (others => '0');
                            decoder_pos         := (others => '0');
                            decoder_LoopIdx     := (others => '0');
                            
                            decoder_state := decode_u32Count_loop;
                            state         := decoder_process;
                            
                        when decode_u32Count_loop =>
                            if decoder_LoopIdx /= 32 then
                                decoder_val := resize(srField_t01(to_integer(decoder_LoopIdx)), decoder_val'length);
                                
                                if (decoder_max < decoder_val) then
                                    decoder_max     := decoder_val;
                                    decoder_pos     := decoder_LoopIdx(7 downto 0);
                                end if;
                                
                                decoder_LoopIdx     := decoder_LoopIdx + 1;
                            else
                                decoder_lastOfs                 := decoder_lastCenterOfs;
                                decoder_rx09_ch0_u32Count_v8    <= (32 + decoder_pos - (16 + decoder_lastCenterOfs)) mod 32;
                                
                                decoder_LoopIdx                 := to_unsigned(6, decoder_LoopIdx'length);  -- Number of frames to move forward
                                
                                decoder_state := decoder_forward;
                                state         := decoder_process;                                   -- Direct entry without pulling another frame
                            end if;
                            
                        when decoder_forward =>
                            if (decoder_LoopIdx /= 0) then
                                decoder_LoopIdx := decoder_LoopIdx - 1;
                                
                                decoder_state := decoder_forward;
                                state         := loop_start;                                        -- Read in rows
                            else
                                decoder_state := decode_message_init;
                                state         := decoder_process;                                   -- Direct entry without pulling another frame
                            end if;
                            
                        when decode_message_init =>
                            decoder_0_val   := (others => '0');
                            decoder_1_val   := (others => '0');
                            decoder_f_val   := (others => '0');
                            decoder_00_val  := (others => '0');
                            decoder_01_val  := (others => '0');
                            decoder_0f_val  := (others => '0');
                            decoder_10_val  := (others => '0');
                            decoder_11_val  := (others => '0');
                            decoder_1f_val  := (others => '0');
                            decoder_ff_val  := (others => '0');
                            decoder_000_val := (others => '0');
                            decoder_001_val := (others => '0');
                            decoder_00f_val := (others => '0');
                            decoder_010_val := (others => '0');
                            decoder_011_val := (others => '0');
                            decoder_01f_val := (others => '0');
                            decoder_0ff_val := (others => '0');
                            decoder_100_val := (others => '0');
                            decoder_101_val := (others => '0');
                            decoder_10f_val := (others => '0');
                            decoder_110_val := (others => '0');
                            decoder_111_val := (others => '0');
                            decoder_11f_val := (others => '0');
                            decoder_1ff_val := (others => '0');
                            decoder_fff_val := (others => '0');
                            
                            decoder_LoopIdx := to_unsigned(1025, decoder_LoopIdx'length);
                            
                            decoder_state := decode_message_loop_r5;
                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r5 =>
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0) mod 32;
                            decoder_0_val   := resize(srField_t05(idx), decoder_0_val'length);
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1) mod 32;
                            decoder_1_val   := resize(srField_t05(idx), decoder_1_val'length);
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_fin_0) mod 32;
                            decoder_f_val   := resize(srField_t05(idx), decoder_f_val'length);
                            
                            decoder_state   := decode_message_loop_r3;
                            state           := decoder_process;                                     -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r3 =>
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_0) mod 32;
                            decoder_00_val  := resize(srField_t03(idx), decoder_00_val'length) + (decoder_0_val(15 downto 2) & "00");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_1) mod 32;
                            decoder_01_val  := resize(srField_t03(idx), decoder_01_val'length) + (decoder_0_val(15 downto 2) & "00");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_fin_0) mod 32;
                            decoder_0f_val  := resize(srField_t03(idx), decoder_0f_val'length) + (decoder_0_val(15 downto 2) & "00");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_0) mod 32;
                            decoder_10_val  := resize(srField_t03(idx), decoder_10_val'length) + (decoder_1_val(15 downto 2) & "00");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_1) mod 32;
                            decoder_11_val  := resize(srField_t03(idx), decoder_11_val'length) + (decoder_1_val(15 downto 2) & "00");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_fin_0) mod 32;
                            decoder_1f_val  := resize(srField_t03(idx), decoder_1f_val'length) + (decoder_1_val(15 downto 2) & "00");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs)           + C_fin_1) mod 32;
                            decoder_ff_val  := resize(srField_t03(idx), decoder_ff_val'length) + (decoder_f_val(15 downto 2) & "00");
                            
                            decoder_state   := decode_message_loop_r1;
                            state           := decoder_process;                                     -- Direct entry without pulling another frame
                            
                        when decode_message_loop_r1 =>
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_0 + C_bit_0) mod 32;
                            decoder_000_val := resize(srField_t01(idx), decoder_000_val'length) + (decoder_00_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_0 + C_bit_1) mod 32;
                            decoder_001_val := resize(srField_t01(idx), decoder_001_val'length) + (decoder_00_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_0 + C_fin_0) mod 32;
                            decoder_00f_val := resize(srField_t01(idx), decoder_00f_val'length) + (decoder_00_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_1 + C_bit_0) mod 32;
                            decoder_010_val := resize(srField_t01(idx), decoder_010_val'length) + (decoder_01_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_1 + C_bit_1) mod 32;
                            decoder_011_val := resize(srField_t01(idx), decoder_011_val'length) + (decoder_01_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0 + C_bit_1 + C_fin_0) mod 32;
                            decoder_01f_val := resize(srField_t01(idx), decoder_01f_val'length) + (decoder_01_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_0           + C_fin_1) mod 32;
                            decoder_0ff_val := resize(srField_t01(idx), decoder_0ff_val'length) + (decoder_0f_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_0 + C_bit_0) mod 32;
                            decoder_100_val := resize(srField_t01(idx), decoder_100_val'length) + (decoder_10_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_0 + C_bit_1) mod 32;
                            decoder_101_val := resize(srField_t01(idx), decoder_101_val'length) + (decoder_10_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_0 + C_fin_0) mod 32;
                            decoder_10f_val := resize(srField_t01(idx), decoder_10f_val'length) + (decoder_10_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_1 + C_bit_0) mod 32;
                            decoder_110_val := resize(srField_t01(idx), decoder_110_val'length) + (decoder_11_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_1 + C_bit_1) mod 32;
                            decoder_111_val := resize(srField_t01(idx), decoder_111_val'length) + (decoder_11_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1 + C_bit_1 + C_fin_0) mod 32;
                            decoder_11f_val := resize(srField_t01(idx), decoder_11f_val'length) + (decoder_11_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs) + C_bit_1           + C_fin_1) mod 32;
                            decoder_1ff_val := resize(srField_t01(idx), decoder_1ff_val'length) + (decoder_1f_val(19 downto 1) & "0");
                            
                            idx             := (32 + 16 + to_integer(decoder_lastOfs)                     + C_fin_2) mod 32;
                            decoder_fff_val := resize(srField_t01(idx), decoder_fff_val'length) + (decoder_ff_val(19 downto 1) & "0");
                            
                            decoder_state   := decode_message_check_end;
                            state           := decoder_process;                                     -- Direct entry without pulling another frame
                            
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
                                decoder_100_val := to_unsigned(1, decoder_100_val'length);
                            else
                                decoder_100_val := (others => '0');
                            end if;
                            
                            if (decoder_001_val < decoder_101_val) then
                                decoder_001_val := decoder_101_val;
                                decoder_101_val := to_unsigned(1, decoder_101_val'length);
                            else
                                decoder_101_val := (others => '0');
                            end if;
                            
                            if (decoder_00f_val < decoder_10f_val) then
                                decoder_00f_val := decoder_10f_val;
                                decoder_10f_val := to_unsigned(1, decoder_10f_val'length);
                            else
                                decoder_10f_val := (others => '0');
                            end if;
                            
                            if (decoder_010_val < decoder_110_val) then
                                decoder_010_val := decoder_110_val;
                                decoder_110_val := to_unsigned(1, decoder_110_val'length);
                            else
                                decoder_110_val := (others => '0');
                            end if;
                            
                            if (decoder_011_val < decoder_111_val) then
                                decoder_011_val := decoder_111_val;
                                decoder_111_val := to_unsigned(1, decoder_111_val'length);
                            else
                                decoder_111_val := (others => '0');
                            end if;
                            
                            if (decoder_01f_val < decoder_11f_val) then
                                decoder_01f_val := decoder_11f_val;
                                decoder_11f_val := to_unsigned(1, decoder_11f_val'length);
                            else
                                decoder_11f_val := (others => '0');
                            end if;
                            
                            if (decoder_0ff_val < decoder_1ff_val) then
                                decoder_0ff_val := decoder_1ff_val;
                                decoder_1ff_val := to_unsigned(1, decoder_1ff_val'length);
                            else
                                decoder_1ff_val := (others => '0');
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
                                decoder_rx09_ch0_out_bf_v1024   <= '0' & decoder_rx09_ch0_out_bf_v1024(1023 downto 1);
                                decoder_lastOfs                 := (32 + decoder_lastOfs - 11) mod 32;
                                
                            else
                                decoder_rx09_ch0_out_bf_v1024   <= '1' & decoder_rx09_ch0_out_bf_v1024(1023 downto 1);
                                decoder_lastOfs                 := (32 + decoder_lastOfs + 17) mod 32;
                            end if;
                            
                            decoder_rx09_ch0_out_len_v11        <= decoder_rx09_ch0_out_len_v11 + 1;
                            
                            decoder_state := decode_message_loop_r5;
                            state         := loop_start;                                            -- Get next even row
                            
                        when others =>
                            decoder_state := NOP;
                            
                    end case;   -- decoder_state
                    
                    
                 when pushdata_prepare_calc =>
                     decoder_rx09_active <= '0';
                     loopCnt := to_unsigned(((1024 - to_integer(decoder_rx09_ch0_out_len_v11)) / 8), loopCnt'length); -- Number of bytes to skip
                     state := pushdata_prepare_shift;
                     
                when pushdata_prepare_shift =>
                    if (loopCnt /= 0) then
                        decoder_rx09_ch0_out_bf_v1024 <= "00000000" & decoder_rx09_ch0_out_bf_v1024(1023 downto 8);  -- SHR
                        loopCnt := loopCnt - 1;
                    else
                        state := pushdata_handoff;
                    end if;
                    
                when pushdata_handoff =>
                    decoder_rx09_ch0_handover <= '1';
                    
                    if (pushdata_rx09_ch0_taken = '1') then
                        decoder_rx09_ch0_handover <= '0';
                        
                        decoder_state := NOP;
                        state         := loop_start;
                    end if;
                    
                when others =>
                    decoder_state := NOP;
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_Decoder_rx09_ch0;
  
  
  -- Move out data to the FIFO of any of the decoders (at least one)
  proc_FIFO_push_rx09: process (reset, clk)
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
    
    variable pushdata_rx09_SoM_frameCtr_v32         :         UNSIGNED(  31 downto 0);
    variable pushdata_rx09_strength_v16             :         UNSIGNED(  15 downto 0);
    variable pushdata_rx09_noise_v16                :         UNSIGNED(  15 downto 0);
    variable pushdata_rx09_center_pos_v8            :         UNSIGNED(   7 downto 0);
    variable pushdata_rx09_remainVal_v8             :         UNSIGNED(   7 downto 0);
    variable pushdata_rx09_u32Count_v8              :         UNSIGNED(   7 downto 0);
    variable pushdata_rx09_out_bf_v1024             : STD_LOGIC_VECTOR(1023 downto 0);
    variable pushdata_rx09_out_len_v11              :         UNSIGNED(  10 downto 0);
    variable loopCnt                                :         UNSIGNED(   7 downto 0);
    
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            pushdata_rx09_out_bf_v1024              := (others => '0');
            pushdata_rx09_out_len_v11               := (others => '0');
            
            pushdata_rx09_SoM_frameCtr_v32          := (others => '0');
            pushdata_rx09_strength_v16              := (others => '0');
            pushdata_rx09_noise_v16                 := (others => '0');
            pushdata_rx09_center_pos_v8             := (others => '0');
            pushdata_rx09_remainVal_v8              := (others => '0');
            pushdata_rx09_u32Count_v8               := (others => '0');
            pushdata_rx09_ch0_taken                 <= '0';
            
            loopCnt                                 := (others => '0');
            
            pushdata_rx09_en                        <= '0';
            pushdata_rx09_byteData                  <= (others => '0');
            
            state                                   := init;
            
        else
            case state is
                when init =>
                    pushdata_rx09_out_bf_v1024      := (others => '0');
                    pushdata_rx09_out_len_v11       := (others => '0');
                    
                    pushdata_rx09_strength_v16      := (others => '0');
                    pushdata_rx09_noise_v16         := (others => '0');
                    pushdata_rx09_SoM_frameCtr_v32  := (others => '0');
                    pushdata_rx09_center_pos_v8     := (others => '0');
                    pushdata_rx09_remainVal_v8      := (others => '0');
                    pushdata_rx09_u32Count_v8       := (others => '0');
                    pushdata_rx09_ch0_taken         <= '0';
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    if (decoder_rx09_ch0_handover = '1') then
                        pushdata_rx09_out_bf_v1024      := decoder_rx09_ch0_out_bf_v1024;
                        pushdata_rx09_out_len_v11       := decoder_rx09_ch0_out_len_v11;
                        
                        pushdata_rx09_SoM_frameCtr_v32  := decoder_rx09_ch0_SoM_frameCtr_v32;
                        pushdata_rx09_center_pos_v8     := decoder_rx09_ch0_center_pos_v8;
                        pushdata_rx09_strength_v16      := decoder_rx09_ch0_strength_v16;
                        pushdata_rx09_noise_v16         := decoder_rx09_ch0_noise_v16;
                        pushdata_rx09_remainVal_v8      := decoder_rx09_ch0_remainVal_v8;
                        pushdata_rx09_u32Count_v8       := decoder_rx09_ch0_u32Count_v8;
                        
                        pushdata_rx09_ch0_taken         <= '1';
                        
                        state := pushdata_header_a;
                    end if;
                    
                when pushdata_header_a =>
                    pushdata_rx09_ch0_taken <= '0';
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(to_unsigned((to_integer(unsigned(pushdata_rx09_out_len_v11(10 downto 3))) + 11), pushdata_rx09_byteData'length));
                    state := pushdata_header_b;
                    
                when pushdata_header_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_signal_msb_a;
                    
                when pushdata_signal_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_strength_v16(15 downto 8));
                    state := pushdata_signal_msb_b;
                    
                when pushdata_signal_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_signal_lsb_a;
                    
                when pushdata_signal_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_strength_v16(7 downto 0));
                    state := pushdata_signal_lsb_b;
                    
                when pushdata_signal_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_noise_msb_a;
                    
                when pushdata_noise_msb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_noise_v16(15 downto 8));
                    state := pushdata_noise_msb_b;
                    
                when pushdata_noise_msb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_noise_lsb_a;
                    
                when pushdata_noise_lsb_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_noise_v16(7 downto 0));
                    state := pushdata_noise_lsb_b;
                    
                when pushdata_noise_lsb_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p3_a;
                    
                when pushdata_frameCtr_p3_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_SoM_frameCtr_v32(31 downto 24));
                    state := pushdata_frameCtr_p3_b;
                    
                when pushdata_frameCtr_p3_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p2_a;
                    
                when pushdata_frameCtr_p2_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_SoM_frameCtr_v32(23 downto 16));
                    state := pushdata_frameCtr_p2_b;
                    
                when pushdata_frameCtr_p2_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p1_a;
                    
                when pushdata_frameCtr_p1_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_SoM_frameCtr_v32(15 downto 8));
                    state := pushdata_frameCtr_p1_b;
                    
                when pushdata_frameCtr_p1_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_frameCtr_p0_a;
                    
                when pushdata_frameCtr_p0_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_SoM_frameCtr_v32(7 downto 0));
                    state := pushdata_frameCtr_p0_b;
                    
                when pushdata_frameCtr_p0_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_centerpos_a;
                    
                when pushdata_centerpos_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_center_pos_v8);
                    state := pushdata_centerpos_b;
                    
                when pushdata_centerpos_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_remainCtr_a;
                    
                when pushdata_remainCtr_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_remainVal_v8);
                    state := pushdata_remainCtr_b;
                    
                when pushdata_remainCtr_b =>
                    pushdata_rx09_en        <= '0';
                    state := pushdata_msgU32Len_a;
                    
                when pushdata_msgU32Len_a =>
                    pushdata_rx09_en        <= '1';
                    pushdata_rx09_byteData  <= std_logic_vector(pushdata_rx09_u32Count_v8);
                    loopCnt                 := pushdata_rx09_out_len_v11(10 downto 3);
                    state := pushdata_loop_begin;
                    
                when pushdata_loop_begin =>
                    pushdata_rx09_en        <= '0';
                    
                    if (loopCnt /= 0) then
                        loopCnt := loopCnt - 1;
                        
                        state := pushdata_loop_transfer;
                    else
                        pushdata_rx09_byteData      <= (others => '0');
                        pushdata_rx09_out_bf_v1024  := (others => '0');
                        pushdata_rx09_out_len_v11   := (others => '0');
                        
                        state := init;
                    end if;
                    
                when pushdata_loop_transfer =>
                    pushdata_rx09_byteData  <= pushdata_rx09_out_bf_v1024(0)
                                             & pushdata_rx09_out_bf_v1024(1)
                                             & pushdata_rx09_out_bf_v1024(2)
                                             & pushdata_rx09_out_bf_v1024(3)
                                             & pushdata_rx09_out_bf_v1024(4)
                                             & pushdata_rx09_out_bf_v1024(5)
                                             & pushdata_rx09_out_bf_v1024(6)
                                             & pushdata_rx09_out_bf_v1024(7);
                    pushdata_rx09_en        <= '1';
                    
                    pushdata_rx09_out_bf_v1024  := "00000000" & pushdata_rx09_out_bf_v1024(1023 downto 8);
                    pushdata_rx09_out_len_v11   := pushdata_rx09_out_len_v11 - 8;
                    
                    state := pushdata_loop_begin;
                    
                when others =>
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_FIFO_push_rx09;

end Behavioral;
