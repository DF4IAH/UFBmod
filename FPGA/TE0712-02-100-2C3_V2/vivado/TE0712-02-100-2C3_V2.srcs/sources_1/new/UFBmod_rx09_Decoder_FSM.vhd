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
    clk_100MHz                                      : in  STD_LOGIC;
    reset_100MHz                                    : in  STD_LOGIC;
    
    -- FFT handshake
    decoder_fft_frame_avail_ctr                     : in  STD_LOGIC_VECTOR(31 downto 0);
    
    -- Signal_bins  port-B
    decoder_rx09_chXX_signal_bins_mem_addrb         : out STD_LOGIC_VECTOR(10 downto 0);  -- 64 rows (6 bit) x 32 bins (5 bits)
    decoder_rx09_chXX_signal_bins_mem_datab         : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Decoder settings
    dds_tx09_ptt                                    : in  STD_LOGIC;
    decoder_rx09_chXX_squelch_lvl                   : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Decoder Artemis (hunter) Mult and Mem
    decoder_rx09_chXX_artemis_mult_ce               : out STD_LOGIC;
    decoder_rx09_chXX_artemis_mult_ina              : out STD_LOGIC_VECTOR(15 downto 0);
    decoder_rx09_chXX_artemis_mult_inb              : out STD_LOGIC_VECTOR(31 downto 0);
    decoder_rx09_chXX_artemis_mult_outp             : in  STD_LOGIC_VECTOR(31 downto 0);
    
    decoder_rx09_chXX_artemis_mem_wea               : out STD_LOGIC;
    decoder_rx09_chXX_artemis_mem_addra             : out STD_LOGIC_VECTOR( 7 downto 0);  -- 128(+128): 4 rows (2 bit) x 32 bins (5 bits) // 256: test byte combinations
    decoder_rx09_chXX_artemis_mem_dina              : out STD_LOGIC_VECTOR(15 downto 0);
    decoder_rx09_chXX_artemis_mem_douta             : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Decoder information
    decoder_rx09_chXX_center_pos                    : out STD_LOGIC_VECTOR( 7 downto 0);
    decoder_rx09_chXX_strength                      : out STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_chXX_SoM_frameCtr                  : out STD_LOGIC_VECTOR(31 downto 0);
    decoder_rx09_chXX_sql_open                      : out STD_LOGIC;
    decoder_rx09_chXX_active                        : out STD_LOGIC;
    
    -- Decoder message Mem-A
    decoder_rx09_chXX_msg_mem_a_addr                : out STD_LOGIC_VECTOR ( 7 downto 0);
    decoder_rx09_chXX_msg_mem_a_we                  : out STD_LOGIC;
    decoder_rx09_chXX_msg_mem_a_din                 : out STD_LOGIC_VECTOR ( 7 downto 0);
    
    -- Decoder <--> FIFO-Mgr handshake
    decoder_rx09_chXX_FIFO_handshake                : out STD_LOGIC;
    decoder_rx09_chXX_FIFO_accepted                 : in  STD_LOGIC
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
  proc_UFBmod_rx09_Decoder: process (clk_100MHz, reset_100MHz)
    constant C_pre_r00                                          : Integer :=  +7;   -- 1010110100100101
    constant C_pre_r01                                          : Integer := -11;
    constant C_pre_r02                                          : Integer :=  +7;
    constant C_pre_r03                                          : Integer := -11;
    constant C_pre_r04                                          : Integer :=  +7;
    constant C_pre_r05                                          : Integer :=  +7;
    constant C_pre_r06                                          : Integer := -11;
    constant C_pre_r07                                          : Integer :=  +7;
    constant C_pre_r08                                          : Integer := -11;
    constant C_pre_r09                                          : Integer := -11;
    constant C_pre_r10                                          : Integer :=  +7;
    constant C_pre_r11                                          : Integer := -11;
    constant C_pre_r12                                          : Integer := -11;
    constant C_pre_r13                                          : Integer :=  +7;
    constant C_pre_r14                                          : Integer := -11;
    constant C_pre_r15                                          : Integer :=  +7;
    type     T_pre_ary                                          is array (0 to 15) of Integer;
    variable C_pre_ary                                          : T_pre_ary := (C_pre_r00, C_pre_r01, C_pre_r02, C_pre_r03, C_pre_r04, C_pre_r05, C_pre_r06, C_pre_r07,
                                                                                C_pre_r08, C_pre_r09, C_pre_r10, C_pre_r11, C_pre_r12, C_pre_r13, C_pre_r14, C_pre_r15);
    
    constant C_bit_0_0                                          : Integer :=  -3;
    constant C_bit_0_1                                          : Integer :=  -3;
    
    constant C_bit_1_0                                          : Integer :=  +5;
    constant C_bit_1_1                                          : Integer :=  +5;
    
  --constant C_fin_0                                            : Integer :=  -7;
  --constant C_fin_1                                            : Integer :=  +7;
  --constant C_fin_2                                            : Integer :=  -5;
  --constant C_fin_3                                            : Integer :=  +5;
  --constant C_fin_4                                            : Integer :=  -3;
  --constant C_fin_5                                            : Integer :=  +3;
  --constant C_fin_6                                            : Integer :=  -1;
  --constant C_fin_7                                            : Integer :=  +1;
  --type     T_fin_ary                                          is array (0 to  7) of Integer;
  --variable C_fin_ary                                          : T_fin_ary := (C_fin_0, C_fin_1, C_fin_2, C_fin_3, C_fin_4, C_fin_5, C_fin_6, C_fin_7);
    
    
    constant C_mult_ina_inb_clamp_pre_val                       : STD_LOGIC_VECTOR(31 downto 0) := x"00000200";
    constant C_mult_ina_inb_clamp_bit_val                       : STD_LOGIC_VECTOR(31 downto 0) := x"00000240";
    constant C_mult_outp_clamp_val                              : STD_LOGIC_VECTOR(31 downto 0) := x"00ffffff";
    
    type StateType                                              is (
                                                                    init, loop_start, 
                                                                    artemis_search_loop_start,
                                                                    artemis_search_loop_pre15_prep, artemis_search_loop_pre15_ws1, artemis_search_loop_pre15_ws2, artemis_search_loop_pre15_get,
                                                                    artemis_search_loop_preX_ws1, artemis_search_loop_preX_ws2, artemis_search_loop_preX_get,
                                                                    artemis_search_loop_preX_mult_prep, artemis_search_loop_preX_mult_ws1, artemis_search_loop_preX_mult_ws2, artemis_search_loop_preX_mult_ws3, artemis_search_loop_preX_mult_get,
                                                                    artemis_search_loop_write, artemis_search_loop_end,
                                                                    artemis_search_decider_init, artemis_search_decider_loop_start, artemis_search_decider_loop_ram_ws1, artemis_search_decider_loop_ram_ws2,
                                                                    artemis_search_decider_loop_ram_get, artemis_search_decider_loop_end,
                                                                    artemis_search_level_check, artemis_search_handoff,
                                                                    decoder_process
                                                                );
    variable state                                              : StateType;
    
    type DecoderStateType                                       is (
                                                                    NOP,
                                                                    decode_preload,
                                                                    decode_message_loop_start,
                                                                    decode_byteTry_init, decode_byteTry_loop_start, 
                                                                    decode_message_ram_calc, decode_message_ram_prep, decode_message_ram_ws1, decode_message_ram_ws2, decode_message_ram_get,
                                                                    decode_message_mult_prep, decode_message_mult_ws1, decode_message_mult_ws2, decode_message_mult_ws3, decode_message_mult_get,
                                                                    decode_message_byteTry_write,
                                                                    decode_byteTry_loop_end,
                                                                    decode_message_skip,
                                                                    decode_message_loop_end,
                                                                    decode_message_write_time_w3, decode_message_write_time_w2, decode_message_write_time_w1, decode_message_write_time_w0,
                                                                    decode_message_write_pos_w0,
                                                                    decode_message_write_sig_w1, decode_message_write_sig_w0,
                                                                    decode_message_write_noise_w1, decode_message_write_noise_w0, decode_message_write_noise_w0_ws,
                                                                    decode_handshake_give, decode_handshake_get
                                                                );
    variable decoder_state                                      : DecoderStateType;
    
    variable decoder_FftFrameWork                               : STD_LOGIC_VECTOR(31 downto 0);
    variable decoder_rx09_chXX_center_pos_Int                   : Integer  range 0 to (2**8  - 1);
    variable fftArtemisIdx                                      : Integer  range 0 to (2**5  - 1);
    variable loopCnt                                            : Integer  range 0 to (2**8  - 1);
    variable isOddRow                                           : Integer  range 0 to (2**1  - 1);
    variable rowIdx                                             : Integer  range 0 to (2**5  - 1);
    variable posIdx                                             : Integer  range 0 to (2**8  - 1);
    variable preIdx                                             : Integer  range 0 to (2**8  - 1);
    variable decoder_rx09_chXX_signal_bins_mem_addrb_base_Int   : Integer  range 0 to (2**11 - 1);
    variable decoder_rx09_chXX_signal_bins_mem_addrb_Int        : Integer  range 0 to (2**11 - 1);
    variable decoder_rx09_chXX_artemis_mem_addra_base_Int       : Integer  range 0 to (2**8  - 1);
    variable decoder_rx09_chXX_artemis_mem_addra_Int            : Integer  range 0 to (2**8  - 1);
    variable signal_row0                                        : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row1                                        : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row2                                        : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_row3                                        : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_max_val                                     : STD_LOGIC_VECTOR(15 downto 0);
    variable signal_max_idx                                     : STD_LOGIC_VECTOR( 4 downto 0);
    variable decoder_rx09_chXX_SoM_frameCtr_Int                 : Integer;
    variable skipUntil                                          : Integer;
    
    variable bytePattern                                        : STD_LOGIC_VECTOR( 7 downto 0);
    variable byteBit_idx                                        : Integer  range 0 to (2**3  - 1);
    variable byteBit_sub                                        : Integer  range 0 to (2**1  - 1);
    variable mult_out_in_calc                                   : Integer;
    variable msg_out_len                                        : Integer  range 0 to (2**8  - 1);
    variable msg_sig_max                                        : Integer  range 0 to (2**24 - 1);
    variable msg_sig_pos                                        : Integer  range 0 to (2**8  - 1);
  begin
    if (clk_100MHz'EVENT and clk_100MHz = '1') then
        if ((reset_100MHz = '1') or (dds_tx09_ptt = '1')) then
            decoder_rx09_chXX_signal_bins_mem_addrb             <= (others => '0');
            
            decoder_rx09_chXX_center_pos_Int                    := 0;
            rowIdx                                              := 0;
            posIdx                                              := 0;
            preIdx                                              := 0;
            decoder_rx09_chXX_signal_bins_mem_addrb_base_Int    := 0;
            decoder_rx09_chXX_signal_bins_mem_addrb_Int         := 0;
            decoder_rx09_chXX_artemis_mem_addra_base_Int        := 0;
            decoder_rx09_chXX_artemis_mem_addra_Int             := 0;
            signal_row0                                         := (others => '0');
            signal_row1                                         := (others => '0');
            signal_row2                                         := (others => '0');
            signal_row3                                         := (others => '0');
            signal_max_val                                      := (others => '0');
            signal_max_idx                                      := (others => '0');
            
            decoder_rx09_chXX_artemis_mult_ce                   <= '0';
            decoder_rx09_chXX_artemis_mult_ina                  <= (others => '0');
            decoder_rx09_chXX_artemis_mult_inb                  <= (others => '0');
            decoder_rx09_chXX_artemis_mem_wea                   <= '0';
            decoder_rx09_chXX_artemis_mem_addra                 <= (others => '0');
            decoder_rx09_chXX_artemis_mem_dina                  <= (others => '0');
            
            decoder_rx09_chXX_SoM_frameCtr                      <= (others => '0');
            decoder_rx09_chXX_center_pos                        <= (others => '0');
            decoder_rx09_chXX_strength                          <= (others => '0');
            decoder_rx09_chXX_sql_open                          <= '0';
            decoder_rx09_chXX_active                            <= '0';
            
            decoder_rx09_chXX_FIFO_handshake                    <= '0';
            
            decoder_rx09_chXX_msg_mem_a_addr                    <= (others => '0');
            decoder_rx09_chXX_msg_mem_a_we                      <= '0';
            decoder_rx09_chXX_msg_mem_a_din                     <= (others => '0');
            
            decoder_FftFrameWork                                := (others => '0');
            fftArtemisIdx                                       := 0;
            isOddRow                                            := 0;
            loopCnt                                             := 0;
            
            decoder_rx09_chXX_SoM_frameCtr_Int                  := 0;
            skipUntil                                           := 0;
            
            bytePattern                                         := (others => '0');
            byteBit_idx                                         := 0;
            byteBit_sub                                         := 0;
            mult_out_in_calc                                    := 0;
            msg_out_len                                         := 0;
            msg_sig_max                                         := 0;
            msg_sig_pos                                         := 0;
            
            state                                               := init;
            decoder_state                                       := NOP;
            
        else
            case state is
                when init =>
                    decoder_rx09_chXX_signal_bins_mem_addrb <= (others => '0');
                    state := loop_start;
                    
                    
                -- Loop entry point
                when loop_start =>
                    if (decoder_FftFrameWork(7 downto 0) /= decoder_fft_frame_avail_ctr(7 downto 0)) then
                        decoder_FftFrameWork             := decoder_fft_frame_avail_ctr;
                        
                        if (decoder_state /= NOP) then
                            state := decoder_process;
                            
                        else
                            if (decoder_FftFrameWork(0) = '0') then
                                fftArtemisIdx   := 0;
                                isOddRow        := 0;
                                rowIdx          := 0;
                                posIdx          := 0;
                                preIdx          := 0;
                                signal_row0     := (others => '0');
                                signal_row1     := (others => '0');
                                signal_row2     := (others => '0');
                                signal_row3     := (others => '0');
                                signal_max_val  := (others => '0');
                                signal_max_idx  := (others => '0');
                                
                                state := artemis_search_loop_start;
                            end if;
                        end if;
                    end if;
                    
                -- 32x parallel execution of single additions
                when artemis_search_loop_start =>
                    -- Current row position
                    decoder_rx09_chXX_signal_bins_mem_addrb_base_Int    := to_integer(unsigned(decoder_FftFrameWork(5 downto 0) & "00000"));
                    decoder_rx09_chXX_artemis_mem_addra_base_Int        := to_integer(unsigned(decoder_FftFrameWork(1 downto 0) & "00000"));
                    
                    state := artemis_search_loop_pre15_prep;
                    
                -- Artemis: preamble hunter
                when artemis_search_loop_pre15_prep =>
                    rowIdx                                      := 2 - isOddRow;
                    posIdx                                      := (32 + fftArtemisIdx + C_pre_ary(15)) mod 32;
                    decoder_rx09_chXX_signal_bins_mem_addrb_Int := (decoder_rx09_chXX_signal_bins_mem_addrb_base_Int + (2**11) - (rowIdx * 32) + posIdx) mod (2**11);
                    
                    state := artemis_search_loop_pre15_ws1;
                    
                when artemis_search_loop_pre15_ws1 =>
                    -- Preamble 1
                    decoder_rx09_chXX_signal_bins_mem_addrb     <= std_logic_vector(to_unsigned(decoder_rx09_chXX_signal_bins_mem_addrb_Int, decoder_rx09_chXX_signal_bins_mem_addrb'length));
                    
                    state := artemis_search_loop_pre15_ws2;
                    
                when artemis_search_loop_pre15_ws2 =>
                    state := artemis_search_loop_pre15_get;
                    
                when artemis_search_loop_pre15_get =>
                    decoder_rx09_chXX_artemis_mult_ce           <= '1';
                    -- Direct value to port B of multiplier
                    if (decoder_rx09_chXX_signal_bins_mem_datab >= C_mult_ina_inb_clamp_pre_val(15 downto 0)) then
                        decoder_rx09_chXX_artemis_mult_inb      <= C_mult_ina_inb_clamp_pre_val(31 downto 0);
                    else
                        decoder_rx09_chXX_artemis_mult_inb      <= x"0000" & decoder_rx09_chXX_signal_bins_mem_datab;
                    end if;
                    
                    -- Skip multiplier steps and go ahead with processing of next row
                    rowIdx                                      := 4 - isOddRow;
                    posIdx                                      := (32 + fftArtemisIdx + C_pre_ary(14)) mod 32;
                    preIdx                                      := 14;
                    decoder_rx09_chXX_signal_bins_mem_addrb_Int := (decoder_rx09_chXX_signal_bins_mem_addrb_base_Int + (2**11) - (rowIdx * 32) + posIdx) mod (2**11);
                    
                    state := artemis_search_loop_preX_ws1;
                    
                when artemis_search_loop_preX_ws1 =>
                    -- Preamble 2 ..
                    decoder_rx09_chXX_signal_bins_mem_addrb     <= std_logic_vector(to_unsigned(decoder_rx09_chXX_signal_bins_mem_addrb_Int, decoder_rx09_chXX_signal_bins_mem_addrb'length));
                    
                    state := artemis_search_loop_preX_ws2;
                    
                when artemis_search_loop_preX_ws2 =>
                    state := artemis_search_loop_preX_get;
                    
                when artemis_search_loop_preX_get =>
                    if (decoder_rx09_chXX_signal_bins_mem_datab >= C_mult_ina_inb_clamp_pre_val(15 downto 0)) then
                        decoder_rx09_chXX_artemis_mult_ina      <= C_mult_ina_inb_clamp_pre_val(15 downto 0);
                    else
                        decoder_rx09_chXX_artemis_mult_ina      <= decoder_rx09_chXX_signal_bins_mem_datab;
                    end if;
                    
                    state := artemis_search_loop_preX_mult_prep;
                    
                when artemis_search_loop_preX_mult_prep =>
                    state := artemis_search_loop_preX_mult_ws1;
                    
                when artemis_search_loop_preX_mult_ws1 =>
                    state := artemis_search_loop_preX_mult_ws2;
                    
                when artemis_search_loop_preX_mult_ws2 =>
                    state := artemis_search_loop_preX_mult_ws3;
                    
                when artemis_search_loop_preX_mult_ws3 =>
                    state := artemis_search_loop_preX_mult_get;
                    
                when artemis_search_loop_preX_mult_get =>
                    if (preIdx /= 0) then
                        preIdx := preIdx - 1;
                        
                        if (decoder_rx09_chXX_artemis_mult_outp     >= C_mult_outp_clamp_val) then
                            -- Framed
                            decoder_rx09_chXX_artemis_mult_inb      <= C_mult_outp_clamp_val;
                        else
                            -- Value
                            decoder_rx09_chXX_artemis_mult_inb      <= decoder_rx09_chXX_artemis_mult_outp;                      -- = 1.0000 * outp
                        end if;
                        decoder_rx09_chXX_artemis_mult_ina          <= (others => '0');
                        
                        rowIdx                                      := (32 - (preIdx * 2)) - isOddRow;
                        posIdx                                      := (32 + fftArtemisIdx + C_pre_ary(preIdx)) mod 32;
                        decoder_rx09_chXX_signal_bins_mem_addrb_Int := (decoder_rx09_chXX_signal_bins_mem_addrb_base_Int + (2**11) - (rowIdx * 32) + posIdx) mod (2**11);
                        
                        state := artemis_search_loop_preX_ws1;
                        
                    else
                        -- Write result to Artemis Block-RAM
                        if (decoder_rx09_chXX_artemis_mult_outp     >= C_mult_outp_clamp_val) then
                            decoder_rx09_chXX_artemis_mem_dina      <= C_mult_outp_clamp_val(23 downto 8);
                        else
                            decoder_rx09_chXX_artemis_mem_dina      <= decoder_rx09_chXX_artemis_mult_outp(23 downto 8);
                        end if;
                        decoder_rx09_chXX_artemis_mult_ina          <= (others => '0');
                        decoder_rx09_chXX_artemis_mult_inb          <= (others => '0');
                        
                        decoder_rx09_chXX_artemis_mem_addra_Int     := (decoder_rx09_chXX_artemis_mem_addra_base_Int + (2**7) + fftArtemisIdx + (isOddRow * 32)) mod (2**7);
                        
                        decoder_rx09_chXX_artemis_mem_addra         <= std_logic_vector(to_unsigned(decoder_rx09_chXX_artemis_mem_addra_Int, decoder_rx09_chXX_artemis_mem_addra'length));
                        decoder_rx09_chXX_artemis_mem_wea           <= '1';
                        
                        state := artemis_search_loop_write;
                    end if;
                    
                when artemis_search_loop_write =>
                    decoder_rx09_chXX_artemis_mem_wea   <= '0';
                    decoder_rx09_chXX_artemis_mem_dina  <= (others => '0');
                    decoder_rx09_chXX_artemis_mem_addra <= (others => '0');
                    
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
                    rowIdx          := 3;
                    
                    state := artemis_search_decider_loop_start;
                    
                when artemis_search_decider_loop_start =>
                    decoder_rx09_chXX_artemis_mem_addra_Int := (decoder_rx09_chXX_artemis_mem_addra_base_Int + (2**7) + fftArtemisIdx - ((rowIdx - 1) * 32)) mod (2**7);
                    
                    decoder_rx09_chXX_artemis_mem_addra     <= std_logic_vector(to_unsigned(decoder_rx09_chXX_artemis_mem_addra_Int, decoder_rx09_chXX_artemis_mem_addra'length));
                    state := artemis_search_decider_loop_ram_ws1;
                    
                when artemis_search_decider_loop_ram_ws1 =>
                    state := artemis_search_decider_loop_ram_ws2;
                    
                when artemis_search_decider_loop_ram_ws2 =>
                    state := artemis_search_decider_loop_ram_get;
                    
                when artemis_search_decider_loop_ram_get =>
                    if (rowIdx = 3) then
                        signal_row3 := decoder_rx09_chXX_artemis_mem_douta;
                    elsif (rowIdx = 2) then
                        signal_row2 := decoder_rx09_chXX_artemis_mem_douta;
                    elsif (rowIdx = 1) then
                        signal_row1 := decoder_rx09_chXX_artemis_mem_douta;
                    else
                        signal_row0 := decoder_rx09_chXX_artemis_mem_douta;
                    end if;
                    
                    state := artemis_search_decider_loop_end;
                    
                when artemis_search_decider_loop_end =>
                    if (rowIdx /= 0) then
                        rowIdx := rowIdx - 1;
                        state  := artemis_search_decider_loop_start;
                    else
                        -- Set max value
                        if ((signal_row2 > signal_row1) and (signal_row2 >= signal_row3)) then
                            if (signal_max_val < signal_row2) then
                                isOddRow       := 1;
                                signal_max_val := signal_row2;
                                signal_max_idx := std_logic_vector(to_unsigned(fftArtemisIdx, signal_max_idx'length));
                            end if;
                        end if;
                        if ((signal_row1 > signal_row0) and (signal_row1 >= signal_row2)) then
                            if (signal_max_val < signal_row1) then
                                isOddRow       := 0;
                                signal_max_val := signal_row1;
                                signal_max_idx := std_logic_vector(to_unsigned(fftArtemisIdx, signal_max_idx'length));
                            end if;
                        end if;
                        
                        -- Next position
                        if (fftArtemisIdx /= 31) then
                            fftArtemisIdx := fftArtemisIdx + 1;
                            rowIdx        := 2;
                            state := artemis_search_decider_loop_start;
                        else
                            state := artemis_search_level_check;
                        end if;
                    end if;
                    
                when artemis_search_level_check =>
                    decoder_rx09_chXX_artemis_mem_addra <= (others => '0');
                    
                    if (signal_max_val <= decoder_rx09_chXX_squelch_lvl(15 downto 0)) then          -- DEBUGGING: here preamble signal and SQL-level Test.
                        state := loop_start;
                    else
                        state := artemis_search_handoff;
                    end if;
                    
                when artemis_search_handoff =>
                    decoder_rx09_chXX_SoM_frameCtr_Int  := to_integer(unsigned(decoder_FftFrameWork)) - isOddRow;
                    decoder_rx09_chXX_SoM_frameCtr      <= std_logic_vector(to_unsigned(decoder_rx09_chXX_SoM_frameCtr_Int, decoder_rx09_chXX_SoM_frameCtr'length));
                    decoder_rx09_chXX_center_pos_Int    := to_integer(unsigned(signal_max_idx));
                    decoder_rx09_chXX_center_pos        <= "000" & signal_max_idx;
                    decoder_rx09_chXX_strength          <= "000" & signal_max_val;
                    
                    skipUntil                           := decoder_rx09_chXX_SoM_frameCtr_Int + 32;
                    
                    if (decoder_rx09_chXX_FIFO_accepted  = '0') then
                        decoder_state   := decode_preload;                                          -- when DEBUGGING Artemis - disable me
                        state           := decoder_process;
                      --state           := loop_start;                                              -- when DEBUGGING Artemis -  enable me
                    end if;
                    
                    
                when decoder_process =>
                    case decoder_state is
                        when decode_preload =>
                            if (skipUntil > to_integer(unsigned(decoder_FftFrameWork))) then
                                -- Wait for next frame
                                decoder_state := decode_preload;
                                state         := loop_start;                                        -- fetch next row
                            else
                                -- Process data
                                decoder_state := decode_message_loop_start;
                            end if;
                            
                            
                        when decode_message_loop_start =>
                            msg_out_len     := 0;
                            
                            decoder_state   := decode_byteTry_init;
                            
                        when decode_byteTry_init =>
                            -- Current row position
                            decoder_rx09_chXX_signal_bins_mem_addrb_base_Int    := to_integer(unsigned(decoder_FftFrameWork(5 downto 0) & "00000"));    -- = (10 .. 0)
                            decoder_rx09_chXX_artemis_mem_addra_base_Int        := to_integer(unsigned(decoder_FftFrameWork(1 downto 0) & "00000"));    -- = ( 7 .. 0)
                            
                            bytePattern     := (others => '0');
                            msg_sig_max     := 0;
                            msg_sig_pos     := 0;
                            
                            decoder_state := decode_byteTry_loop_start;
                            
                        when decode_byteTry_loop_start =>
                            decoder_rx09_chXX_artemis_mult_ina  <= x"0000";
                            decoder_rx09_chXX_artemis_mult_inb  <= x"00000100";
                            
                            byteBit_idx     := 7;
                            byteBit_sub     := 0;
                            posIdx          := decoder_rx09_chXX_center_pos_Int;
                            
                            decoder_state := decode_message_ram_calc;
                            
                        when decode_message_ram_calc =>
                            rowIdx := 2 * (16 - (14 - (2 * byteBit_idx)) - byteBit_sub);
                            
                            if (bytePattern(byteBit_idx) = '1') then
                                if (byteBit_sub = 1) then
                                    posIdx := (32 + posIdx + C_bit_1_1) mod 32;
                                else
                                    posIdx := (32 + posIdx + C_bit_1_0) mod 32;
                                end if;
                            else
                                if (byteBit_sub = 1) then
                                    posIdx := (32 + posIdx + C_bit_0_1) mod 32;
                                else
                                    posIdx := (32 + posIdx + C_bit_0_0) mod 32;
                                end if;
                            end if;
                            
                            decoder_rx09_chXX_signal_bins_mem_addrb_Int := (decoder_rx09_chXX_signal_bins_mem_addrb_base_Int + (2**11) - (rowIdx * 32) + posIdx) mod (2**11);
                            
                            decoder_state := decode_message_ram_prep;
                            
                        when decode_message_ram_prep =>
                            decoder_rx09_chXX_signal_bins_mem_addrb     <= std_logic_vector(to_unsigned(decoder_rx09_chXX_signal_bins_mem_addrb_Int, decoder_rx09_chXX_signal_bins_mem_addrb'length));
                            
                            decoder_state := decode_message_ram_ws1;
                            
                        when decode_message_ram_ws1 =>
                            decoder_state := decode_message_ram_ws2;
                            
                        when decode_message_ram_ws2 =>
                            decoder_state := decode_message_ram_get;
                            
                        when decode_message_ram_get =>
                            decoder_rx09_chXX_artemis_mult_ce           <= '1';
                            -- Direct value to port B of multiplier
                            if (decoder_rx09_chXX_signal_bins_mem_datab >= C_mult_ina_inb_clamp_bit_val(15 downto 0)) then
                                decoder_rx09_chXX_artemis_mult_ina      <= C_mult_ina_inb_clamp_bit_val(15 downto 0);
                            else
                                decoder_rx09_chXX_artemis_mult_ina      <= decoder_rx09_chXX_signal_bins_mem_datab;
                            end if;
                            
                            -- Skip multiplier steps and go ahead with processing of next row
                            decoder_state := decode_message_mult_prep;
                            
                        when decode_message_mult_prep =>
                            decoder_state := decode_message_mult_ws1;
                            
                        when decode_message_mult_ws1 =>
                            decoder_state := decode_message_mult_ws2;
                            
                        when decode_message_mult_ws2 =>
                            decoder_state := decode_message_mult_ws3;
                            
                        when decode_message_mult_ws3 =>
                            decoder_state := decode_message_mult_get;
                            
                        when decode_message_mult_get =>
                            if ((byteBit_idx /= 0) or (byteBit_sub = 0)) then
                                if (byteBit_sub = 0) then
                                    byteBit_sub := 1;
                                else
                                    byteBit_sub := 0;
                                    byteBit_idx := byteBit_idx - 1;
                                end if;
                                
                                if (decoder_rx09_chXX_artemis_mult_outp >= C_mult_outp_clamp_val) then
                                    -- Framed
                                    decoder_rx09_chXX_artemis_mult_inb  <= C_mult_outp_clamp_val;
                                else
                                    -- Value
                                    mult_out_in_calc    := to_integer(unsigned(decoder_rx09_chXX_artemis_mult_outp(31 downto 1))) 
                                                         + to_integer(unsigned(decoder_rx09_chXX_artemis_mult_outp(31 downto 2)));  -- = 0.75 * outp
                                    decoder_rx09_chXX_artemis_mult_inb  <= std_logic_vector(to_unsigned(mult_out_in_calc, decoder_rx09_chXX_artemis_mult_inb'length));
                                end if;
                                decoder_rx09_chXX_artemis_mult_ina      <= (others => '0');
                                
                                rowIdx := 2 * (16 - (14 - (2 * byteBit_idx)) - byteBit_sub);
                                
                                if (bytePattern(byteBit_idx) = '1') then
                                    if (byteBit_sub = 1) then
                                        posIdx := (32 + posIdx + C_bit_1_1) mod 32;
                                    else
                                        posIdx := (32 + posIdx + C_bit_1_0) mod 32;
                                    end if;
                                else
                                    if (byteBit_sub = 1) then
                                        posIdx := (32 + posIdx + C_bit_0_1) mod 32;
                                    else
                                        posIdx := (32 + posIdx + C_bit_0_0) mod 32;
                                    end if;
                                end if;
                                
                                decoder_rx09_chXX_signal_bins_mem_addrb_Int := (decoder_rx09_chXX_signal_bins_mem_addrb_base_Int + (2**11) - (rowIdx * 32) + posIdx) mod (2**11);
                                
                                decoder_state := decode_message_ram_prep;
                                
                            else
                                if (msg_sig_max  < to_integer(unsigned(decoder_rx09_chXX_artemis_mult_outp(31 downto 8)))) then
                                    msg_sig_max := to_integer(unsigned(decoder_rx09_chXX_artemis_mult_outp(31 downto 8)));
                                    msg_sig_pos := to_integer(unsigned(bytePattern));
                                end if;
                                
                                -- Write result to Artemis Block-RAM
                                if (decoder_rx09_chXX_artemis_mult_outp >= C_mult_outp_clamp_val) then
                                  --decoder_rx09_chXX_artemis_mem_dina  <= C_mult_outp_clamp_val(23 downto 8);
                                else
                                  --decoder_rx09_chXX_artemis_mem_dina  <= decoder_rx09_chXX_artemis_mult_outp(23 downto 8);
                                end if;
                                decoder_rx09_chXX_artemis_mult_ina      <= (others => '0');
                                decoder_rx09_chXX_artemis_mult_inb      <= (others => '0');
                                
                                decoder_state := decode_byteTry_loop_end;
                            end if;
                            
                        when decode_byteTry_loop_end =>
                            if (bytePattern /= x"ff") then
                                bytePattern := std_logic_vector(to_unsigned((to_integer(unsigned(bytePattern)) + 1), bytePattern'length));
                                
                                decoder_state := decode_byteTry_loop_start;
                            else
                                if ((msg_out_len /= 255) and (0 < msg_sig_max)) then                -- DEBUGGING: here single bit, dual bit dBc Test.
                                    decoder_rx09_chXX_msg_mem_a_addr    <= std_logic_vector(to_unsigned((msg_out_len + 10), decoder_rx09_chXX_msg_mem_a_addr'length));
                                    decoder_rx09_chXX_msg_mem_a_din     <= std_logic_vector(to_unsigned( msg_sig_pos,       decoder_rx09_chXX_msg_mem_a_din'length));
                                    decoder_rx09_chXX_msg_mem_a_we      <= '1';
                                    
                                    msg_out_len                         := msg_out_len + 1;
                                    skipUntil                           := to_integer(unsigned(decoder_FftFrameWork)) + 32;
                                    
                                    decoder_state := decode_message_skip;
                                else
                                    decoder_rx09_chXX_msg_mem_a_addr    <= (others => '0');
                                    decoder_rx09_chXX_msg_mem_a_din     <= std_logic_vector(to_unsigned((msg_out_len + 9), decoder_rx09_chXX_msg_mem_a_din'length));
                                    decoder_rx09_chXX_msg_mem_a_we      <= '1';
                                    
                                    decoder_state := decode_message_loop_end;
                                end if;
                            end if;
                            
                        when decode_message_skip =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= (others => '0');
                            decoder_rx09_chXX_msg_mem_a_din             <= (others => '0');
                            decoder_rx09_chXX_msg_mem_a_we              <= '0';
                            
                            if (skipUntil > to_integer(unsigned(decoder_FftFrameWork))) then
                                -- Wait for next frame
                                decoder_state := decode_message_skip;
                                state         := loop_start;                                        -- fetch next row
                            else
                                -- Process data
                                decoder_state := decode_byteTry_init;
                            end if;
                            
                            
                        when decode_message_loop_end =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= (others => '0');
                            decoder_rx09_chXX_msg_mem_a_din             <= (others => '0');
                            decoder_rx09_chXX_msg_mem_a_we              <= '0';
                            
                            decoder_state := decode_message_write_time_w3;
                            
                        when decode_message_write_time_w3 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"01";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned( (decoder_rx09_chXX_SoM_frameCtr_Int / 2**24), decoder_rx09_chXX_msg_mem_a_din'length));
                            decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_time_w2;
                            
                        when decode_message_write_time_w2 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"02";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned(((decoder_rx09_chXX_SoM_frameCtr_Int / 2**16) mod 256), decoder_rx09_chXX_msg_mem_a_din'length));
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_time_w1;
                        
                        when decode_message_write_time_w1 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"03";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned(((decoder_rx09_chXX_SoM_frameCtr_Int /  2**8) mod 256), decoder_rx09_chXX_msg_mem_a_din'length));
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_time_w0;
                        
                        when decode_message_write_time_w0 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"04";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned((decoder_rx09_chXX_SoM_frameCtr_Int mod 256), decoder_rx09_chXX_msg_mem_a_din'length));
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_pos_w0;
                            
                        when decode_message_write_pos_w0 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"05";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned(decoder_rx09_chXX_center_pos_Int, decoder_rx09_chXX_msg_mem_a_din'length));
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_sig_w1;
                            
                        when decode_message_write_sig_w1 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"06";
                            decoder_rx09_chXX_msg_mem_a_din             <= signal_max_val(15 downto 8);
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_sig_w0;
                            
                        when decode_message_write_sig_w0 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"07";
                            decoder_rx09_chXX_msg_mem_a_din             <= signal_max_val( 7 downto 0);
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_noise_w1;
                            
                        when decode_message_write_noise_w1 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"08";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned(0, decoder_rx09_chXX_msg_mem_a_din'length));
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_noise_w0;
                            
                        when decode_message_write_noise_w0 =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= x"09";
                            decoder_rx09_chXX_msg_mem_a_din             <= std_logic_vector(to_unsigned(0, decoder_rx09_chXX_msg_mem_a_din'length));
                          --decoder_rx09_chXX_msg_mem_a_we              <= '1';
                            
                            decoder_state := decode_message_write_noise_w0_ws;
                            
                        when decode_message_write_noise_w0_ws =>
                            decoder_rx09_chXX_msg_mem_a_addr            <= (others => '0');
                            decoder_rx09_chXX_msg_mem_a_din             <= (others => '0');
                            decoder_rx09_chXX_msg_mem_a_we              <= '0';
                            
                            decoder_state := decode_handshake_give;
                            
                            
                        when decode_handshake_give =>
                            decoder_rx09_chXX_FIFO_handshake <= '1';
                            
                            decoder_state := decode_handshake_get;
                            
                        when decode_handshake_get =>
                            if (decoder_rx09_chXX_FIFO_accepted   = '1') then
                                decoder_rx09_chXX_FIFO_handshake <= '0';
                            end if;
                            
                            decoder_state   := NOP;
                            state           := loop_start;
                            
                            
                        when others =>
                            decoder_state := NOP;
                            
                    end case;   -- decoder_state
                when others =>
                    decoder_state := NOP;
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_rx09_Decoder;

end Behavioral;
