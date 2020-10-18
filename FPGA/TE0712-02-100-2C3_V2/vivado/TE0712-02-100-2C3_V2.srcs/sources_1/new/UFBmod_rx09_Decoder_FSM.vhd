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


entity UFBmod_rx09_Decoder_FSM is
  Port (
    -- All Clock Domain AXI 100 MHz
    reset                                           : in  STD_LOGIC;
    clk                                             : in  STD_LOGIC;
    
    -- Signal_bins  port-B
    signal_bins_rx09_ch00_mem_addrb                 : out STD_LOGIC_VECTOR( 8 downto 0);  -- 16 rows (4 bit) x 32 bins (5 bits)
    signal_bins_rx09_ch00_mem_datab                 : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- FFT handshake
    decoder_fft_frame_avail_ctr                     : in  STD_LOGIC_VECTOR(31 downto 0);
    
    -- Decoder settings
    dds_tx09_ptt                                    : in  STD_LOGIC;
    decoder_rx09_ch00_squelch_lvl                   : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Decoder Artemis (hunter) Mult and Mem
    decoder_artemis_rx09_ch00_mult_ce               : out STD_LOGIC;
    decoder_artemis_rx09_ch00_mult_ina              : out STD_LOGIC_VECTOR(15 downto 0);
    decoder_artemis_rx09_ch00_mult_inb              : out STD_LOGIC_VECTOR(31 downto 0);
    decoder_artemis_rx09_ch00_mult_outp             : in  STD_LOGIC_VECTOR(31 downto 0);
    
    decoder_artemis_rx09_ch00_mem_wea               : out STD_LOGIC;
    decoder_artemis_rx09_ch00_mem_addra             : out STD_LOGIC_VECTOR( 6 downto 0);  -- 4 rows (2 bit) x 32 bins (5 bits)
    decoder_artemis_rx09_ch00_mem_dina              : out STD_LOGIC_VECTOR(15 downto 0);
    decoder_artemis_rx09_ch00_mem_douta             : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Decoder information
    decoder_rx09_ch00_center_pos                    : out STD_LOGIC_VECTOR( 7 downto 0);
    decoder_rx09_ch00_strength                      : out STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_ch00_SoM_frameCtr                  : out STD_LOGIC_VECTOR(31 downto 0);
    decoder_rx09_ch00_remainVal                     : out STD_LOGIC_VECTOR( 7 downto 0);
    decoder_rx09_ch00_u32Count                      : out STD_LOGIC_VECTOR( 7 downto 0);
    
    -- FIFO handshake
    decoder_rx09_ch00_FIFO_handshake                : out STD_LOGIC;
    decoder_rx09_ch00_FIFO_accepted                 : in  STD_LOGIC;
    
    decoder_rx09_ch00_sql_open                      : out STD_LOGIC;
    decoder_rx09_ch00_active                        : out STD_LOGIC
  );
end UFBmod_rx09_Decoder_FSM;


-- Multiplication table  15-entries
-- Symbols      encoding        Memory address
-- F1 F2 F3     010101          0x10
--
-- 0  F1 F2     100101          0x00
-- 0  0  F1     101001          0x01
-- 0  0  0      101010          0x02
-- 0  0  1      101011          0x03
-- 0  1  F1     101101          0x04
-- 0  1  0      101110          0x05
-- 0  1  1      101111          0x06
--                              0x07    = 0x0000
-- 1  F1 F2     110101          0x08
-- 1  0  F1     111001          0x09
-- 1  0  0      111010          0x0a
-- 1  0  1      111011          0x0b
-- 1  1  F      111101          0x0c
-- 1  1  0      111110          0x0d
-- 1  1  1      111111          0x0e
--                              0x0f    = 0x0000
--
architecture Behavioral of UFBmod_rx09_Decoder_FSM is
  
begin
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_rx09_Decoder: process (reset, clk)
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
    
    constant C_mult_in_clamp_val                    : STD_LOGIC_VECtOR(31 downto 0) := x"0007ffff";
    
    type StateType                                  is (
                                                        init, loop_start, 
                                                        --wait_until_post_fft_done, 
                                                        --read_in_loop,
                                                        artemis_search_loop_start, artemis_search_loop_11up, 
                                                        artemis_search_loop_pre1, artemis_search_loop_pre1_ws1, artemis_search_loop_pre1_ws2, artemis_search_loop_pre1_get,
                                                        artemis_search_loop_pre1_mult, artemis_search_loop_pre1_mult_ws1, artemis_search_loop_pre1_mult_ws2, artemis_search_loop_pre1_mult_ws3, artemis_search_loop_pre1_mult_in,
                                                        artemis_search_loop_pre2, artemis_search_loop_pre2_ws1, artemis_search_loop_pre2_ws2, artemis_search_loop_pre2_get,
                                                        artemis_search_loop_pre2_mult, artemis_search_loop_pre2_mult_ws1, artemis_search_loop_pre2_mult_ws2, artemis_search_loop_pre2_mult_ws3, artemis_search_loop_pre2_mult_in,
                                                        artemis_search_loop_pre3, artemis_search_loop_pre3_ws1, artemis_search_loop_pre3_ws2, artemis_search_loop_pre3_get,
                                                        artemis_search_loop_pre3_mult, artemis_search_loop_pre3_mult_ws1, artemis_search_loop_pre3_mult_ws2, artemis_search_loop_pre3_mult_ws3, artemis_search_loop_pre3_mult_in,
                                                        artemis_search_loop_pre4, artemis_search_loop_pre4_ws1, artemis_search_loop_pre4_ws2, artemis_search_loop_pre4_get,
                                                        artemis_search_loop_pre4_mult, artemis_search_loop_pre4_mult_ws1, artemis_search_loop_pre4_mult_ws2, artemis_search_loop_pre4_mult_ws3, artemis_search_loop_pre4_mult_in,
                                                        artemis_search_loop_pre5, artemis_search_loop_pre5_ws1, artemis_search_loop_pre5_ws2, artemis_search_loop_pre5_get,
                                                        artemis_search_loop_pre5_mult, artemis_search_loop_pre5_mult_ws1, artemis_search_loop_pre5_mult_ws2, artemis_search_loop_pre5_mult_ws3, artemis_search_loop_pre5_mult_in,
                                                        artemis_search_loop_pre6, artemis_search_loop_pre6_ws1, artemis_search_loop_pre6_ws2, artemis_search_loop_pre6_get,
                                                        artemis_search_loop_pre6_mult, artemis_search_loop_pre6_mult_ws1, artemis_search_loop_pre6_mult_ws2, artemis_search_loop_pre6_mult_ws3, artemis_search_loop_pre6_mult_in,
                                                        artemis_search_loop_write, artemis_search_loop_end,
                                                        artemis_search_decider_init, artemis_search_decider_loop_start, artemis_search_decider_loop_ram_ws1, artemis_search_decider_loop_ram_ws2, artemis_search_decider_loop_ram_get, artemis_search_decider_loop_end,
                                                        artemis_search_level_check, artemis_search_handoff
                                                      --artemis_search_decider
                                                      --artemis_decoder_switch
                                                      --artemis_search_1, artemis_search_2, artemis_sum_up_rows, artemis_sum_up_all,
                                                      --artemis_initial_skip, artemis_decoder_switch, artemis_check_candidates_init, artemis_check_candidates, artemis_find_max,
                                                      --decoder_init, decoder_process
--                                                        pushdata_prepare_calc, pushdata_prepare_shift,
--                                                        pushdata_header_a, pushdata_header_b,
--                                                        pushdata_signal_msb_a, pushdata_signal_msb_b, pushdata_signal_lsb_a, pushdata_signal_lsb_b,
--                                                        pushdata_noise_msb_a, pushdata_noise_msb_b, pushdata_noise_lsb_a, pushdata_noise_lsb_b,
--                                                        pushdata_frameCtr_p3_a, pushdata_frameCtr_p3_b, pushdata_frameCtr_p2_a, pushdata_frameCtr_p2_b, pushdata_frameCtr_p1_a, pushdata_frameCtr_p1_b, pushdata_frameCtr_p0_a, pushdata_frameCtr_p0_b,
--                                                        pushdata_centerpos_a, pushdata_centerpos_b,
--                                                        pushdata_remainCtr_a, pushdata_remainCtr_b,
--                                                        pushdata_msgU32Len_a,
--                                                        pushdata_loop_begin, pushdata_loop_transfer
                                                    );
    variable state                                  : StateType;
    
--    type DecoderStateType                           is (
--                                                        NOP,
--                                                        decode_preload,
--                                                        decode_remainValue_init, decode_remainValue_loop, 
--                                                        decode_u32Count_init, decode_u32Count_loop,
--                                                        decoder_forward,
--                                                        decode_message_init, decode_message_loop_r5, decode_message_loop_r3, decode_message_loop_r1,
--                                                        decode_message_check_end,
--                                                        decode_message_decider_reduction_r1, decode_message_decider_reduction_r2, decode_message_decider_reduction_r3, decode_message_decider_reduction_r4,
--                                                        decode_message_decider_f, decode_message_decider_01
--                                                    );
--    variable decoder_state                          : DecoderStateType;
    
    variable decoder_FftFrameWork                           : STD_LOGIC_VECTOR( 3 downto 0);
    variable fftArtemisIdx                                  : Integer  range 0 to (2**5  - 1);
    variable loopCnt                                        : Integer  range 0 to (2**8  - 1);
    variable isOddRow                                       : Integer  range 0 to (2**1  - 1);
    variable rowIdx                                         : Integer  range 0 to (2**4  - 1);
    variable posIdx                                         : Integer  range 0 to (2**5  - 1);
    variable signal_bins_rx09_ch00_mem_addrb_base_Int       : Integer  range 0 to (2**9  - 1);
    variable signal_bins_rx09_ch00_mem_addrb_Int            : Integer  range 0 to (2**9  - 1);
    variable decoder_artemis_rx09_ch00_mem_addra_base_Int   : Integer  range 0 to (2**7  - 1);
    variable decoder_artemis_rx09_ch00_mem_addra_Int        : Integer  range 0 to (2**7  - 1);
    variable signal_row0                                    : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row1                                    : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row2                                    : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row1_val_max                            : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row1_idx_max                            : STD_LOGIC_VECTOR( 4 downto 0);
  begin
    if (clk'EVENT and clk = '1') then
        if ((reset = '1') or (dds_tx09_ptt = '1')) then
            signal_bins_rx09_ch00_mem_addrb                 <= (others => '0');
            rowIdx                                          := 0;
            posIdx                                          := 0;
            signal_bins_rx09_ch00_mem_addrb_base_Int        := 0;
            signal_bins_rx09_ch00_mem_addrb_Int             := 0;
            decoder_artemis_rx09_ch00_mem_addra_base_Int    := 0;
            decoder_artemis_rx09_ch00_mem_addra_Int         := 0;
            signal_row0                                     := (others => '0');
            signal_row1                                     := (others => '0');
            signal_row2                                     := (others => '0');
            signal_row1_val_max                             := (others => '0');
            signal_row1_idx_max                             := (others => '0');
            
            decoder_artemis_rx09_ch00_mult_ce               <= '0';
            decoder_artemis_rx09_ch00_mult_ina              <= (others => '0');
            decoder_artemis_rx09_ch00_mult_inb              <= (others => '0');
            decoder_artemis_rx09_ch00_mem_wea               <= '0';
            decoder_artemis_rx09_ch00_mem_addra             <= (others => '0');
            decoder_artemis_rx09_ch00_mem_dina              <= (others => '0');
            
            decoder_rx09_ch00_SoM_frameCtr                  <= (others => '0');
            decoder_rx09_ch00_center_pos                    <= (others => '0');
            decoder_rx09_ch00_strength                      <= (others => '0');
            decoder_rx09_ch00_sql_open                      <= '0';
            decoder_rx09_ch00_active                        <= '0';
            
            decoder_FftFrameWork                            := (others => '0');
            fftArtemisIdx                                   := 0;
            isOddRow                                        := 0;
            loopCnt                                         := 0;
            
            state                                           := init;
          --decoder_state                                   := NOP;
            
        else
            case state is
                when init =>
                    signal_bins_rx09_ch00_mem_addrb     <= (others => '0');
                    state := loop_start;
                    
                    
                -- Loop entry point
                when loop_start =>
                    if (decoder_FftFrameWork(3 downto 0) /= decoder_fft_frame_avail_ctr(3 downto 0)) then
                        decoder_FftFrameWork             := decoder_fft_frame_avail_ctr(3 downto 0);
                        if (decoder_FftFrameWork(0) = '0') then
                            fftArtemisIdx                       := 0;
                            isOddRow                            := 0;
                            rowIdx                              := 0;
                            posIdx                              := 0;
                            signal_row0                         := (others => '0');
                            signal_row1                         := (others => '0');
                            signal_row2                         := (others => '0');
                            signal_row1_val_max                 := (others => '0');
                            signal_row1_idx_max                 := (others => '0');
                            
                            state := artemis_search_loop_start;
                        end if;
                    end if;
                    
                -- 32x parallel execution of single additions
                when artemis_search_loop_start =>
                    -- Current row position
                    signal_bins_rx09_ch00_mem_addrb_base_Int        := to_integer(unsigned(decoder_fft_frame_avail_ctr(3 downto 0) & "00000"));
                    decoder_artemis_rx09_ch00_mem_addra_base_Int    := to_integer(unsigned(decoder_fft_frame_avail_ctr(1 downto 0) & "00000"));
                    
                    state := artemis_search_loop_11up;
                    
                when artemis_search_loop_11up =>
                    -- Position 5 rows above (starting of the preamble)
                    rowIdx                              := 12 - isOddRow;
                    posIdx                              := (32 + fftArtemisIdx + C_pre_r0) mod 32;
                    signal_bins_rx09_ch00_mem_addrb_Int := (signal_bins_rx09_ch00_mem_addrb_base_Int + (2**9) - (rowIdx * 32) + posIdx) mod (2**9);
                    
                    state := artemis_search_loop_pre1_ws1;
                    
                when artemis_search_loop_pre1_ws1 =>
                    -- Preamble 1
                    signal_bins_rx09_ch00_mem_addrb     <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addrb_Int, signal_bins_rx09_ch00_mem_addrb'length));
                    
                    state := artemis_search_loop_pre1_ws2;
                    
                when artemis_search_loop_pre1_ws2 =>
                    state := artemis_search_loop_pre1_get;
                    
                when artemis_search_loop_pre1_get =>
                    decoder_artemis_rx09_ch00_mult_ce   <= '1';
                    -- Direct value to port B of multiplier
                    decoder_artemis_rx09_ch00_mult_inb  <= x"0000" & signal_bins_rx09_ch00_mem_datab;
                    
                    -- Skip multiplier steps and go ahead with processing of next row
                    rowIdx                              := 10 - isOddRow;
                    posIdx                              := (32 + fftArtemisIdx + C_pre_r1) mod 32;
                    signal_bins_rx09_ch00_mem_addrb_Int := (signal_bins_rx09_ch00_mem_addrb_base_Int + (2**9) - (rowIdx * 32) + posIdx) mod (2**9);
                    
                    state := artemis_search_loop_pre2_ws1;
                    
                when artemis_search_loop_pre2_ws1 =>
                    -- Preamble 2
                    signal_bins_rx09_ch00_mem_addrb     <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addrb_Int, signal_bins_rx09_ch00_mem_addrb'length));
                    
                    state := artemis_search_loop_pre2_ws2;
                    
                when artemis_search_loop_pre2_ws2 =>
                    state := artemis_search_loop_pre2_get;
                    
                when artemis_search_loop_pre2_get =>
                    decoder_artemis_rx09_ch00_mult_ina <= signal_bins_rx09_ch00_mem_datab;
                    
                    state := artemis_search_loop_pre2_mult;
                    
                when artemis_search_loop_pre2_mult =>
                    state := artemis_search_loop_pre2_mult_ws1;
                    
                when artemis_search_loop_pre2_mult_ws1 =>
                    state := artemis_search_loop_pre2_mult_ws2;
                    
                when artemis_search_loop_pre2_mult_ws2 =>
                    state := artemis_search_loop_pre2_mult_ws3;
                    
                when artemis_search_loop_pre2_mult_ws3 =>
                    state := artemis_search_loop_pre2_mult_in;
                    
                when artemis_search_loop_pre2_mult_in =>
                    if (decoder_artemis_rx09_ch00_mult_outp > C_mult_in_clamp_val) then
                        -- Framed
                        decoder_artemis_rx09_ch00_mult_inb <= C_mult_in_clamp_val;
                    else
                        -- Value
                        decoder_artemis_rx09_ch00_mult_inb <= decoder_artemis_rx09_ch00_mult_outp;
                    end if;
                    decoder_artemis_rx09_ch00_mult_ina  <= (others => '0');
                    
                    rowIdx                              := 8 - isOddRow;
                    posIdx                              := (32 + fftArtemisIdx + C_pre_r2) mod 32;
                    signal_bins_rx09_ch00_mem_addrb_Int := (signal_bins_rx09_ch00_mem_addrb_base_Int + (2**9) - (rowIdx * 32) + posIdx) mod (2**9);
                    
                    state := artemis_search_loop_pre3_ws1;
                    
                when artemis_search_loop_pre3_ws1 =>
                    -- Preamble 3
                    signal_bins_rx09_ch00_mem_addrb     <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addrb_Int, signal_bins_rx09_ch00_mem_addrb'length));
                    
                    state := artemis_search_loop_pre3_ws2;
                    
                when artemis_search_loop_pre3_ws2 =>
                    state := artemis_search_loop_pre3_get;
                    
                when artemis_search_loop_pre3_get =>
                    decoder_artemis_rx09_ch00_mult_ina <= signal_bins_rx09_ch00_mem_datab;
                    
                    state := artemis_search_loop_pre3_mult;
                    
                when artemis_search_loop_pre3_mult =>
                    state := artemis_search_loop_pre3_mult_ws1;
                    
                when artemis_search_loop_pre3_mult_ws1 =>
                    state := artemis_search_loop_pre3_mult_ws2;
                    
                when artemis_search_loop_pre3_mult_ws2 =>
                    state := artemis_search_loop_pre3_mult_ws3;
                    
                when artemis_search_loop_pre3_mult_ws3 =>
                    state := artemis_search_loop_pre3_mult_in;
                    
                when artemis_search_loop_pre3_mult_in =>
                    if (decoder_artemis_rx09_ch00_mult_outp > C_mult_in_clamp_val) then
                        -- Framed
                        decoder_artemis_rx09_ch00_mult_inb <= C_mult_in_clamp_val;
                    else
                        -- Value
                        decoder_artemis_rx09_ch00_mult_inb <= decoder_artemis_rx09_ch00_mult_outp;
                    end if;
                    decoder_artemis_rx09_ch00_mult_ina  <= (others => '0');
                    
                    rowIdx                              := 6 - isOddRow;
                    posIdx                              := (32 + fftArtemisIdx + C_pre_r3) mod 32;
                    signal_bins_rx09_ch00_mem_addrb_Int := (signal_bins_rx09_ch00_mem_addrb_base_Int + (2**9) - (rowIdx * 32) + posIdx) mod (2**9);
                    
                    state := artemis_search_loop_pre4_ws1;
                    
                when artemis_search_loop_pre4_ws1 =>
                    -- Preamble 4
                    signal_bins_rx09_ch00_mem_addrb     <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addrb_Int, signal_bins_rx09_ch00_mem_addrb'length));
                    
                    state := artemis_search_loop_pre4_ws2;
                    
                when artemis_search_loop_pre4_ws2 =>
                    state := artemis_search_loop_pre4_get;
                    
                when artemis_search_loop_pre4_get =>
                    decoder_artemis_rx09_ch00_mult_ina <= signal_bins_rx09_ch00_mem_datab;
                    
                    state := artemis_search_loop_pre4_mult;
                    
                when artemis_search_loop_pre4_mult =>
                    state := artemis_search_loop_pre4_mult_ws1;
                    
                when artemis_search_loop_pre4_mult_ws1 =>
                    state := artemis_search_loop_pre4_mult_ws2;
                    
                when artemis_search_loop_pre4_mult_ws2 =>
                    state := artemis_search_loop_pre4_mult_ws3;
                    
                when artemis_search_loop_pre4_mult_ws3 =>
                    state := artemis_search_loop_pre4_mult_in;
                    
                when artemis_search_loop_pre4_mult_in =>
                    if (decoder_artemis_rx09_ch00_mult_outp > C_mult_in_clamp_val) then
                        -- Framed
                        decoder_artemis_rx09_ch00_mult_inb <= C_mult_in_clamp_val;
                    else
                        -- Value
                        decoder_artemis_rx09_ch00_mult_inb <= decoder_artemis_rx09_ch00_mult_outp;
                    end if;
                    decoder_artemis_rx09_ch00_mult_ina  <= (others => '0');
                    
                    rowIdx                              := 4 - isOddRow;
                    posIdx                              := (32 + fftArtemisIdx + C_pre_r4) mod 32;
                    signal_bins_rx09_ch00_mem_addrb_Int := (signal_bins_rx09_ch00_mem_addrb_base_Int + (2**9) - (rowIdx * 32) + posIdx) mod (2**9);
                    
                    state := artemis_search_loop_pre5_ws1;
                    
                when artemis_search_loop_pre5_ws1 =>
                    -- Preamble 5
                    signal_bins_rx09_ch00_mem_addrb     <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addrb_Int, signal_bins_rx09_ch00_mem_addrb'length));
                    
                    state := artemis_search_loop_pre5_ws2;
                    
                when artemis_search_loop_pre5_ws2 =>
                    state := artemis_search_loop_pre5_get;
                    
                when artemis_search_loop_pre5_get =>
                    decoder_artemis_rx09_ch00_mult_ina <= signal_bins_rx09_ch00_mem_datab;
                    
                    state := artemis_search_loop_pre5_mult;
                    
                when artemis_search_loop_pre5_mult =>
                    state := artemis_search_loop_pre5_mult_ws1;
                    
                when artemis_search_loop_pre5_mult_ws1 =>
                    state := artemis_search_loop_pre5_mult_ws2;
                    
                when artemis_search_loop_pre5_mult_ws2 =>
                    state := artemis_search_loop_pre5_mult_ws3;
                    
                when artemis_search_loop_pre5_mult_ws3 =>
                    state := artemis_search_loop_pre5_mult_in;
                    
                when artemis_search_loop_pre5_mult_in =>
                    if (decoder_artemis_rx09_ch00_mult_outp > C_mult_in_clamp_val) then
                        -- Framed
                        decoder_artemis_rx09_ch00_mult_inb <= C_mult_in_clamp_val;
                    else
                        -- Value
                        decoder_artemis_rx09_ch00_mult_inb <= decoder_artemis_rx09_ch00_mult_outp;
                    end if;
                    decoder_artemis_rx09_ch00_mult_ina  <= (others => '0');
                    
                    rowIdx                              := 2 - isOddRow;
                    posIdx                              := (32 + fftArtemisIdx + C_pre_r5) mod 32;
                    signal_bins_rx09_ch00_mem_addrb_Int := (signal_bins_rx09_ch00_mem_addrb_base_Int + (2**9) - (rowIdx * 32) + posIdx) mod (2**9);
                    
                    state := artemis_search_loop_pre6_ws1;
                    
                when artemis_search_loop_pre6_ws1 =>
                    -- Preamble 6
                    signal_bins_rx09_ch00_mem_addrb     <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addrb_Int, signal_bins_rx09_ch00_mem_addrb'length));
                    
                    state := artemis_search_loop_pre6_ws2;
                    
                when artemis_search_loop_pre6_ws2 =>
                    state := artemis_search_loop_pre6_get;
                    
                when artemis_search_loop_pre6_get =>
                    decoder_artemis_rx09_ch00_mult_ina <= signal_bins_rx09_ch00_mem_datab;
                    state := artemis_search_loop_pre6_mult;
                    
                when artemis_search_loop_pre6_mult =>
                    state := artemis_search_loop_pre6_mult_ws1;
                    
                when artemis_search_loop_pre6_mult_ws1 =>
                    state := artemis_search_loop_pre6_mult_ws2;
                    
                when artemis_search_loop_pre6_mult_ws2 =>
                    state := artemis_search_loop_pre6_mult_ws3;
                    
                when artemis_search_loop_pre6_mult_ws3 =>
                    state := artemis_search_loop_pre6_mult_in;
                    
                when artemis_search_loop_pre6_mult_in =>
                    -- Write result to Artemis Block-RAM
                    decoder_artemis_rx09_ch00_mem_dina  <= decoder_artemis_rx09_ch00_mult_outp(23 downto 8);
                    decoder_artemis_rx09_ch00_mult_ina  <= (others => '0');
                    decoder_artemis_rx09_ch00_mult_inb  <= (others => '0');
                    
                    decoder_artemis_rx09_ch00_mem_addra <= std_logic_vector(to_unsigned((fftArtemisIdx + (isOddRow * 32)), decoder_artemis_rx09_ch00_mem_addra'length));
                    decoder_artemis_rx09_ch00_mem_wea   <= '1';
                    
                    state := artemis_search_loop_write;
                    
                when artemis_search_loop_write =>
                    decoder_artemis_rx09_ch00_mem_wea   <= '0';
                    decoder_artemis_rx09_ch00_mem_dina  <= (others => '0');
                    decoder_artemis_rx09_ch00_mem_addra <= (others => '0');
                    
                    state := artemis_search_loop_end;
                    
                when artemis_search_loop_end =>
                    -- Alternate even/odd row and increment to next column
                    if ((fftArtemisIdx /= 31) or (isOddRow = 0)) then
                        if (isOddRow = 0) then
                            isOddRow := 1;
                        else
                            isOddRow := 0;
                            fftArtemisIdx := fftArtemisIdx + 1;
                        end if;
                        state := artemis_search_loop_start;
                    else
                        state := artemis_search_decider_init;
                    end if;
                    
                    
                when artemis_search_decider_init =>
                    fftArtemisIdx   := 0;
                    rowIdx          := 0;
                    
                    state := artemis_search_decider_loop_start;
                    
                when artemis_search_decider_loop_start =>
                    decoder_artemis_rx09_ch00_mem_addra_Int := (decoder_artemis_rx09_ch00_mem_addra_base_Int + (2**7) - (rowIdx * 32) + fftArtemisIdx) mod (2**7);
                    
                    state := artemis_search_decider_loop_ram_ws1;
                    
                when artemis_search_decider_loop_ram_ws1 =>
                    decoder_artemis_rx09_ch00_mem_addra <= std_logic_vector(to_unsigned(decoder_artemis_rx09_ch00_mem_addra_Int, decoder_artemis_rx09_ch00_mem_addra'length));
                    
                    state := artemis_search_decider_loop_ram_ws2;
                    
                when artemis_search_decider_loop_ram_ws2 =>
                    state := artemis_search_decider_loop_ram_get;
                    
                when artemis_search_decider_loop_ram_get =>
                    if (rowIdx = 0) then
                        signal_row0 := decoder_artemis_rx09_ch00_mem_douta;
                    elsif (rowIdx = 1) then
                        signal_row1 := decoder_artemis_rx09_ch00_mem_douta;
                    else
                        signal_row2 := decoder_artemis_rx09_ch00_mem_douta;
                    end if;
                    
                    state := artemis_search_decider_loop_end;
                    
                when artemis_search_decider_loop_end =>
                    if (rowIdx /= 2) then
                        rowIdx := rowIdx + 1;
                        state  := artemis_search_decider_loop_start;
                    else
                        -- Set max value
                        if ((signal_row1 > signal_row0) and (signal_row1 >= signal_row2)) then
                            if (signal_row1_val_max < signal_row1) then
                                signal_row1_val_max := signal_row1;
                                signal_row1_idx_max := std_logic_vector(to_unsigned(fftArtemisIdx, signal_row1_idx_max'length));
                            end if;
                        end if;
                        
                        -- Next position
                        if (fftArtemisIdx /= 31) then
                            fftArtemisIdx := fftArtemisIdx + 1;
                            rowIdx        := 0;
                            state := artemis_search_decider_loop_start;
                        else
                            state := artemis_search_level_check;
                        end if;
                    end if;
                    
                when artemis_search_level_check =>
                    decoder_artemis_rx09_ch00_mem_addra <= (others => '0');
                    
                    if (signal_row1_val_max <= decoder_rx09_ch00_squelch_lvl(15 downto 0)) then
                        state := loop_start;
                    else
                        state := artemis_search_handoff;
                    end if;
                    
                when artemis_search_handoff =>
                    decoder_rx09_ch00_SoM_frameCtr  <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_fft_frame_avail_ctr)) + 6), decoder_rx09_ch00_SoM_frameCtr'length));
                    decoder_rx09_ch00_center_pos    <= signal_row1_idx_max;
                    decoder_rx09_ch00_strength      <= "00" & signal_row1_val_max;
                    
--                when artemis_decoder_switch =>
--                    if (decoder_state /= NOP) then
--                        state := decoder_process;
                        
--                    else
--                        state := artemis_check_candidates_init;                                     -- Message and Remain/Length-value decoder
--                    end if;

--                when artemis_check_candidates_init =>
--                    state := artemis_check_candidates;
                    
--                when artemis_check_candidates =>
--                    if (
--                        (sumPreambleField_t1(fftLoopIdx) > sumPreambleField_t2(fftLoopIdx))
--                    and (sumPreambleField_t1(fftLoopIdx) > sumPreambleField_t0(fftLoopIdx))
--                    ) then
--                        -- Candidate for Preamble found
--                        if (preambleMaxVal  <  sumPreambleField_t1(fftLoopIdx)) then
--                            preambleMaxVal  := sumPreambleField_t1(fftLoopIdx);
--                            preambleMaxPos  := fftLoopIdx;
--                        end if;
--                    end if;
                    
--                    if fftLoopIdx /= 31 then
--                        fftLoopIdx := fftLoopIdx + 1;
                        
--                    else
--                        if (preambleMaxVal = 0) then
--                            -- Continue to search for a preamble
--                            state := loop_start;
--                        else
--                            -- Preamble found, continue with decoding message
--                            state := decoder_init;
                            
--                            decoder_rx09_ch00_active            <= '1';
--                            decoder_lastCenterOfs               := (32 + preambleMaxPos - 16) mod 32;
--                            decoder_lastOfs                     := decoder_lastCenterOfs;
--                            decoder_rx09_ch00_center_pos_Int    := preambleMaxPos;
--                            decoder_rx09_ch00_strength_Int      := preambleMaxVal;                              -- weight:  6
--                            decoder_rx09_ch00_noise_Int         := sumAll / 64;                                 -- weight:  6
--                        end if;
--                    end if;
                    
                    
--                when decoder_init =>
--                    decoder_rx09_ch00_SoM_frameCtr   <= std_logic_vector(to_unsigned((to_integer(unsigned(decoder_fft_frame_avail_ctr)) + 5), decoder_rx09_ch00_SoM_frameCtr'length));
--                    decoder_rx09_ch00_center_pos     <= std_logic_vector(to_unsigned(decoder_rx09_ch00_center_pos_Int, decoder_rx09_ch00_center_pos'length));
--                    decoder_rx09_ch00_strength       <= std_logic_vector(to_unsigned(decoder_rx09_ch00_strength_Int, decoder_rx09_ch00_strength'length));
                    
--                    decoder_state   := decode_preload;
--                    state           := decoder_process;
--                    initialLoopIdx  := 4;
                    
--                when decoder_process =>
--                    case decoder_state is
--                        when decode_preload =>
--                            if (initialLoopIdx /= 0) then
--                                initialLoopIdx := initialLoopIdx - 1;
                                
--                                decoder_state := decode_preload;
--                                state         := loop_start;                                        -- fetch next row
--                            else
--                                decoder_state := decode_remainValue_init;
--                                state         := decoder_process;
--                            end if;
                            
--                        when decode_remainValue_init =>
--                            decoder_max                 := 0;
--                            decoder_pos                 := 0;
--                            decoder_rx09_ch00_remainVal := 0;
--                            decoder_LoopIdx             := 0;
                            
--                            decoder_state := decode_remainValue_loop;
--                            state         := decoder_process;
                            
--                        when decode_remainValue_loop =>
--                            if decoder_LoopIdx /= 32 then
--                              --decoder_val := to_integer(srField_t03(decoder_LoopIdx));
                                
--                                if (decoder_max < decoder_val) then
--                                    decoder_max := decoder_val;
--                                    decoder_pos := decoder_LoopIdx;
--                                end if;
                                
--                                decoder_LoopIdx := decoder_LoopIdx + 1;
--                            else
--                                decoder_lastOfs     := decoder_lastCenterOfs;
--                              --decoder_remainVal   := (32 + decoder_pos - (16 + decoder_lastCenterOfs)) mod 32;
                                
--                                decoder_state := decode_u32Count_init;
--                                state         := decoder_process;
--                            end if;
                            
--                        when decode_u32Count_init =>
--                            decoder_max                 := 0;
--                            decoder_pos                 := 0;
--                            decoder_rx09_ch00_u32Count  := 0;
--                            decoder_LoopIdx             := 0;
                            
--                            decoder_state := decode_u32Count_loop;
--                            state         := decoder_process;
                            
--                        when decode_u32Count_loop =>
--                            if decoder_LoopIdx /= 32 then
--                              --decoder_val := to_integer(srField_t01(decoder_LoopIdx));
                                
--                                if (decoder_max < decoder_val) then
--                                    decoder_max     := decoder_val;
--                                    decoder_pos     := decoder_LoopIdx;
--                                end if;
                                
--                                decoder_LoopIdx     := decoder_LoopIdx + 1;
--                            else
--                                decoder_lastOfs     := decoder_lastCenterOfs;
--                              --decoder_u32Count    := (32 + decoder_pos - (16 + decoder_lastCenterOfs)) mod 32;
--                                decoder_LoopIdx     := 6;                                           -- Number of frames to move forward
                                
--                                decoder_state := decoder_forward;
--                                state         := decoder_process;                                   -- Direct entry without pulling another frame
--                            end if;
                            
--                        when decoder_forward =>
--                            if (decoder_LoopIdx /= 0) then
--                                decoder_LoopIdx := decoder_LoopIdx - 1;
                                
--                                decoder_state := decoder_forward;
--                                state         := loop_start;                                        -- Get another row
--                            else
--                                decoder_state := decode_message_init;
--                                state         := decoder_process;                                   -- Direct entry without pulling another frame
--                            end if;
                            
--                        when decode_message_init =>
                            
--                            decoder_LoopIdx := 1025;
                            
--                            decoder_state := decode_message_loop_r5;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_loop_r5 =>
--                          --decoder_0_val   := to_integer(srField_t05((32 + 16 + decoder_lastOfs + C_bit_0) mod 32));
--                          --decoder_1_val   := to_integer(srField_t05((32 + 16 + decoder_lastOfs + C_bit_1) mod 32));
--                          --decoder_f_val   := to_integer(srField_t05((32 + 16 + decoder_lastOfs + C_fin_0) mod 32));
                            
--                            decoder_state := decode_message_loop_r3;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_loop_r3 =>
--                          --decoder_00_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0) mod 32)) + 4*decoder_0_val;
--                          --decoder_01_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1) mod 32)) + 4*decoder_0_val;
--                          --decoder_0f_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_0 + C_fin_0) mod 32)) + 4*decoder_0_val;
--                          --decoder_10_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0) mod 32)) + 4*decoder_1_val;
--                          --decoder_11_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1) mod 32)) + 4*decoder_1_val;
--                          --decoder_1f_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs + C_bit_1 + C_fin_0) mod 32)) + 4*decoder_1_val;
--                          --decoder_ff_val  := to_integer(srField_t03((32 + 16 + decoder_lastOfs           + C_fin_1) mod 32)) + 4*decoder_f_val;
                            
--                            decoder_state := decode_message_loop_r1;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_loop_r1 =>
--                          --decoder_000_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0 + C_bit_0) mod 32)) + 2*decoder_00_val;
--                          --decoder_001_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0 + C_bit_1) mod 32)) + 2*decoder_00_val;
--                          --decoder_00f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_0 + C_fin_0) mod 32)) + 2*decoder_00_val;
--                          --decoder_010_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1 + C_bit_0) mod 32)) + 2*decoder_01_val;
--                          --decoder_011_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1 + C_bit_1) mod 32)) + 2*decoder_01_val;
--                          --decoder_01f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0 + C_bit_1 + C_fin_0) mod 32)) + 2*decoder_01_val;
--                          --decoder_0ff_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_0           + C_fin_1) mod 32)) + 2*decoder_0f_val;
--                          --decoder_100_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0 + C_bit_0) mod 32)) + 2*decoder_10_val;
--                          --decoder_101_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0 + C_bit_1) mod 32)) + 2*decoder_10_val;
--                          --decoder_10f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_0 + C_fin_0) mod 32)) + 2*decoder_10_val;
--                          --decoder_110_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1 + C_bit_0) mod 32)) + 2*decoder_11_val;
--                          --decoder_111_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1 + C_bit_1) mod 32)) + 2*decoder_11_val;
--                          --decoder_11f_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1 + C_bit_1 + C_fin_0) mod 32)) + 2*decoder_11_val;
--                          --decoder_1ff_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs + C_bit_1           + C_fin_1) mod 32)) + 2*decoder_1f_val;
--                          --decoder_fff_val := to_integer(srField_t01((32 + 16 + decoder_lastOfs                     + C_fin_2) mod 32)) + 2*decoder_ff_val;
                            
--                            decoder_state := decode_message_check_end;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_check_end =>
--                            if ((
--                                (decoder_fff_val >= decoder_000_val) and
--                                (decoder_fff_val >= decoder_001_val) and
--                                (decoder_fff_val >= decoder_00f_val) and
--                                (decoder_fff_val >= decoder_010_val) and
--                                (decoder_fff_val >= decoder_011_val) and
--                                (decoder_fff_val >= decoder_01f_val) and
--                                (decoder_fff_val >= decoder_0ff_val) and
--                                (decoder_fff_val >= decoder_100_val) and
--                                (decoder_fff_val >= decoder_101_val) and
--                                (decoder_fff_val >= decoder_10f_val) and
--                                (decoder_fff_val >= decoder_110_val) and
--                                (decoder_fff_val >= decoder_111_val) and
--                                (decoder_fff_val >= decoder_11f_val) and
--                                (decoder_fff_val >= decoder_1ff_val) and
--                                (((decoder_LoopIdx - 1) mod 4) = 0)  and
--                                ((decoder_LoopIdx < 1024)))
--                                or
--                                (decoder_LoopIdx = 0)
--                            ) then
--                                decoder_state := NOP;                                               -- End of message stream
--                                state         := pushdata_prepare_calc;
--                            else
--                                decoder_state := decode_message_decider_reduction_r1;
--                                state         := decoder_process;                                   -- Direct entry without pulling another frame
--                            end if;

--                        when decode_message_decider_reduction_r1 =>
--                            if (decoder_000_val < decoder_100_val) then
--                                decoder_000_val := decoder_100_val;
--                                decoder_100_val := 1;
--                            else
--                                decoder_100_val := 0;
--                            end if;
                            
--                            if (decoder_001_val < decoder_101_val) then
--                                decoder_001_val := decoder_101_val;
--                                decoder_101_val := 1;
--                            else
--                                decoder_101_val := 0;
--                            end if;
                            
--                            if (decoder_00f_val < decoder_10f_val) then
--                                decoder_00f_val := decoder_10f_val;
--                                decoder_10f_val := 1;
--                            else
--                                decoder_10f_val := 0;
--                            end if;
                            
--                            if (decoder_010_val < decoder_110_val) then
--                                decoder_010_val := decoder_110_val;
--                                decoder_110_val := 1;
--                            else
--                                decoder_110_val := 0;
--                            end if;
                            
--                            if (decoder_011_val < decoder_111_val) then
--                                decoder_011_val := decoder_111_val;
--                                decoder_111_val := 1;
--                            else
--                                decoder_111_val := 0;
--                            end if;
                            
--                            if (decoder_01f_val < decoder_11f_val) then
--                                decoder_01f_val := decoder_11f_val;
--                                decoder_11f_val := 1;
--                            else
--                                decoder_11f_val := 0;
--                            end if;
                            
--                            if (decoder_0ff_val < decoder_1ff_val) then
--                                decoder_0ff_val := decoder_1ff_val;
--                                decoder_1ff_val := 1;
--                            else
--                                decoder_1ff_val := 0;
--                            end if;
                            
--                            decoder_state := decode_message_decider_reduction_r2;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_decider_reduction_r2 =>
--                            if (decoder_000_val < decoder_010_val) then
--                                decoder_000_val := decoder_010_val;
--                                decoder_010_val := decoder_110_val;
--                            else
--                                decoder_010_val := decoder_100_val;
--                            end if;
                            
--                            if (decoder_001_val < decoder_011_val) then
--                                decoder_001_val := decoder_011_val;
--                                decoder_011_val := decoder_111_val;
--                            else
--                                decoder_011_val := decoder_101_val;
--                            end if;
                            
--                            if (decoder_00f_val < decoder_01f_val) then
--                                decoder_00f_val := decoder_01f_val;
--                                decoder_01f_val := decoder_11f_val;
--                            else
--                                decoder_01f_val := decoder_10f_val;
--                            end if;
                            
--                            decoder_state := decode_message_decider_reduction_r3;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_decider_reduction_r3 =>
--                            if (decoder_000_val < decoder_001_val) then
--                                decoder_000_val := decoder_001_val;
--                                decoder_001_val := decoder_011_val;
--                            else
--                                decoder_001_val := decoder_010_val;
--                            end if;
                            
--                            if (decoder_00f_val < decoder_0ff_val) then
--                                decoder_00f_val := decoder_0ff_val;
--                                decoder_0ff_val := decoder_1ff_val;
--                            else
--                                decoder_0ff_val := decoder_01f_val;
--                            end if;
                            
--                            decoder_state := decode_message_decider_reduction_r4;
--                            state         := decoder_process;                                       -- Direct entry without pulling another frame
                            
--                        when decode_message_decider_reduction_r4 =>
--                            if (decoder_000_val < decoder_00f_val) then
--                                decoder_000_val := decoder_00f_val;
--                                decoder_00f_val := decoder_0ff_val;
--                            else
--                                decoder_00f_val := decoder_001_val;
--                            end if;
                            
--                            decoder_LoopIdx     := decoder_LoopIdx - 1;

--                            decoder_state := decode_message_decider_01;
--                            state         := loop_start;                                            -- Get next odd row
                            
--                        when decode_message_decider_01 =>
--                            if (decoder_00f_val = 0) then
--                              --decoder_rx09_out_vec    <= '0' & decoder_rx09_out_vec(1023 downto 1);
--                                decoder_lastOfs         := (32 + decoder_lastOfs - 11) mod 32;
                                
--                            else
--                              --decoder_rx09_out_vec    <= '1' & decoder_rx09_out_vec(1023 downto 1);
--                                decoder_lastOfs         := (32 + decoder_lastOfs + 17) mod 32;
--                            end if;
                            
--                          --decoder_rx09_out_len        <= std_logic_vector(to_unsigned( (1 + to_integer(unsigned(decoder_rx09_out_len))) , decoder_rx09_out_len'length));
                            
--                            decoder_state := decode_message_loop_r5;
--                            state         := loop_start;                                            -- Get next even row
                            
--                        when others =>
--                            decoder_state := NOP;
                            
--                    end case;   -- decoder_state
                    
                    
--                when pushdata_prepare_calc =>
--                    decoder_rx09_ch00_active <= '0';
--                  --loopCnt             := (1024 - to_integer(unsigned(decoder_rx09_out_len))) / 8; -- Number of bytes to skip
--                    state := pushdata_prepare_shift;
                    
--                when pushdata_prepare_shift =>
--                    if (loopCnt /= 0) then
--                      --decoder_rx09_out_vec <= "00000000" & decoder_rx09_out_vec(1023 downto 8);  -- SHR
--                        loopCnt := loopCnt - 1;
--                    else
--                      --loopCnt := to_integer(unsigned(decoder_rx09_out_len(10 downto 3)));         -- Number of bytes to transfer
                        
--                        state := pushdata_header_a;
--                    end if;
                    
                when others =>
                  --decoder_state := NOP;
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_rx09_Decoder;

end Behavioral;
