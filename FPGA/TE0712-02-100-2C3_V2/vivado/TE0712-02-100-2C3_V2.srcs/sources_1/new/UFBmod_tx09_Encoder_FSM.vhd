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


entity UFBmod_tx09_Encoder_FSM is
  Port (
    -- All Clock Domain AXI 100 MHz
    reset                                           : in    STD_LOGIC;
    clk                                             : in    STD_LOGIC;
    
    decoder_rx09_chAll_sql_open                     : in    STD_LOGIC_VECTOR(  7 downto 0 );
    decoder_rx09_chAll_active                       : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    encoder_pull_FIFO_dump                          : in    STD_LOGIC;
    encoder_pull_do_start                           : in    STD_LOGIC;
    encoder_pull_data_len                           : in    STD_LOGIC_VECTOR(  6 downto 0 );
    
    pulldata_tx09_en                                : out   STD_LOGIC;
    pulldata_tx09_byteData                          : in    STD_LOGIC_VECTOR(  7 downto 0 );
    
    dds_tx09_inc                                    : out   STD_LOGIC_VECTOR( 25 downto 0 );
    dds_tx09_ptt                                    : out   STD_LOGIC
  );
end UFBmod_tx09_Encoder_FSM;

architecture Behavioral of UFBmod_tx09_Encoder_FSM is
  signal encoder_tx09_in_vec                        : STD_LOGIC_VECTOR(1023 downto 0);
  signal encoder_tx09_in_len                        : STD_LOGIC_VECTOR(10 downto 0);
  
  shared variable dds_new_freq                      : Integer;
begin
  
  -- DDS calc engine
  proc_DDS: process (reset, clk)
  type StateType                                    is (
                                                        init, get_new_frequency,
                                                        freq_inc,
                                                        freq_dec
                                                    );
  variable state                                    : StateType;
  variable dds_current_freq                         : Integer;
  variable dds_current_inc                          : Integer;
  variable dds_new_inc                              : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            dds_tx09_inc        <= (others => '0');
            dds_current_freq    := 0;
            dds_current_inc     := 0;
            dds_new_inc         := 0;
            
        else
            case state is
                when init =>
                    dds_tx09_inc        <= (others => '0');
                    dds_current_freq    := 0;
                    dds_current_inc     := 0;
                    dds_new_inc         := 0;
                    
                    state := get_new_frequency;
                    
                when get_new_frequency =>
                    -- DDS step: 0.95367431640625 Hz = (1 / 2^26) * (16 MHz / 4)
                    -- 1 channel step = 3906.25 Hz => 4 x 16384 DDS-increment steps
                    -- max. 16 us for 32 channel inc/dec. <-->  100 clocks for 32768 steps => abt. 328 steps per 100 MHz clock
                    -- LVDS 4 MSPS = 1/4 x 16 MHz
                    if (dds_new_freq /= dds_current_freq) then
                        if (dds_new_freq > dds_current_freq) then
                            state := freq_inc;
                        else
                            state := freq_dec;
                        end if;
                        
                        dds_current_freq    := dds_new_freq;
                        dds_new_inc         := (4 * 16384) * dds_new_freq;
                      --delay_ctr           := 0;
                    end if;
                    
                when freq_inc =>
                    dds_current_inc := dds_current_inc + 328;                   -- 8 us  of  64 us  'normal' variant, 1 / 8th of the quarterframe duration
                    dds_tx09_inc        <= std_logic_vector(to_unsigned(dds_current_inc, dds_tx09_inc'length));
                    
                    if (dds_current_inc >= dds_new_inc) then
                        dds_current_inc := dds_new_inc;
                        dds_tx09_inc    <= std_logic_vector(to_unsigned(dds_current_inc, dds_tx09_inc'length));
                        state := get_new_frequency;
                    end if;
                    
                when freq_dec =>
                  dds_current_inc   := dds_current_inc - 328;
                    dds_tx09_inc        <= std_logic_vector(to_unsigned(dds_current_inc, dds_tx09_inc'length));
                    
                    if (dds_current_inc <= dds_new_inc) then
                        dds_current_inc := dds_new_inc;
                        dds_tx09_inc    <= std_logic_vector(to_unsigned(dds_current_inc, dds_tx09_inc'length));
                        state := get_new_frequency;
                    end if;
                    
                when others =>
                    state := init;
            end case;  -- state        
        end if;
    end if;
  end process proc_DDS;
  
  
  -- UFBmod encoder for the RF09 transmitter
  proc_UFBmod_Encoder_tx09: process (reset, clk)
    constant C_pre_r00                              : Integer :=  +7;   -- 1010110100100101
    constant C_pre_r01                              : Integer := -11;
    constant C_pre_r02                              : Integer :=  +7;
    constant C_pre_r03                              : Integer := -11;
    constant C_pre_r04                              : Integer :=  +7;
    constant C_pre_r05                              : Integer :=  +7;
    constant C_pre_r06                              : Integer := -11;
    constant C_pre_r07                              : Integer :=  +7;
    constant C_pre_r08                              : Integer := -11;
    constant C_pre_r09                              : Integer := -11;
    constant C_pre_r10                              : Integer :=  +7;
    constant C_pre_r11                              : Integer := -11;
    constant C_pre_r12                              : Integer := -11;
    constant C_pre_r13                              : Integer :=  +7;
    constant C_pre_r14                              : Integer := -11;
    constant C_pre_r15                              : Integer :=  +7;
    type     T_pre_ary                              is array (0 to 15) of Integer;
    variable C_pre_ary                              : T_pre_ary := (C_pre_r00, C_pre_r01, C_pre_r02, C_pre_r03, C_pre_r04, C_pre_r05, C_pre_r06, C_pre_r07,
                                                                    C_pre_r08, C_pre_r09, C_pre_r10, C_pre_r11, C_pre_r12, C_pre_r13, C_pre_r14, C_pre_r15);
    
    constant C_bit_0_0                              : Integer :=  -3;
    constant C_bit_0_1                              : Integer :=  -3;
    
    constant C_bit_1_0                              : Integer :=  +5;
    constant C_bit_1_1                              : Integer :=  +5;
    
  --constant C_fin_0                                : Integer :=  -7;
  --constant C_fin_1                                : Integer :=  +7;
  --constant C_fin_2                                : Integer :=  -5;
  --constant C_fin_3                                : Integer :=  +5;
  --constant C_fin_4                                : Integer :=  -3;
  --constant C_fin_5                                : Integer :=  +3;
  --constant C_fin_6                                : Integer :=  -1;
  --constant C_fin_7                                : Integer :=  +1;
  --type     T_fin_ary                              is array (0 to  7) of Integer;
  --variable C_fin_ary                              : T_fin_ary := (C_fin_0, C_fin_1, C_fin_2, C_fin_3, C_fin_4, C_fin_5, C_fin_6, C_fin_7);
    
    
  --constant C_128us_loopcnt                        : Integer := 12800;
    constant C_128us_loopcnt                        : Integer := (12800 * 328);     -- Debugging purposes
    
    type StateType                                  is (
                                                        init, loop_start,
                                                        fifo_dump, fifo_pull, fifo_pull_ws1, fifo_pull_ws2, fifo_pull_ofs, fifo_pull_data,
                                                        tx_init,
                                                        tx_rampup_dds, tx_rampup_hold_2x128us,
                                                        tx_preamble_preX_dds, tx_preamble_preX_hold_128us,
                                                        tx_body_dds, tx_body_hold_128us,
                                                        tx_final_finX_dds, tx_final_finX_hold_128us,
                                                        tx_rampdown_dds, tx_rampdown_hold_128us
                                                    );
    variable state                                  : StateType;
    
    variable loop_cnt                               : Integer;
    variable preIdx                                 : Integer  range 0 to (2**5  - 1);
    variable pull_cnt                               : Integer  range 0 to (2**5  - 1);
    variable bit_pos                                : Integer  range 0 to (2**1  - 1);
    variable encoder_tx09_in_len_cnt                : Integer  range 0 to (2**5  - 1);
    variable byteBit_cnt                            : Integer  range 0 to (2**3  - 1);
    variable byteBit_sub                            : Integer  range 0 to (2**1  - 1);
    
    variable encoder_ofs                            : Integer  range 0 to (2**5  - 1);
    variable encoder_frq_initial                    : Integer  range 0 to (2**5  - 1);
    variable encoder_frq_last                       : Integer  range 0 to (2**5  - 1);
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            pulldata_tx09_en                        <= '0';
            
            dds_tx09_ptt                            <= '0';
            dds_new_freq                            := 0;
            
            encoder_tx09_in_vec                     <= (others => '0');
            encoder_tx09_in_len                     <= (others => '0');
            
            loop_cnt                                := 0;
            preIdx                                  := 0;
            pull_cnt                                := 0;
            bit_pos                                 := 0;
            encoder_tx09_in_len_cnt                 := 0;
            byteBit_cnt                             := 0;
            byteBit_sub                             := 0;
            
            encoder_ofs                             := 0;
            encoder_frq_initial                     := 0;
            encoder_frq_last                        := 0;
            
            state                                   := init;
            
        else
            case state is
                when init =>
                    dds_tx09_ptt        <= '0';
                    dds_new_freq        := 0;
                    pulldata_tx09_en    <= '0';
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    pull_cnt := to_integer(unsigned(encoder_pull_data_len));
                    
                    if ((encoder_pull_FIFO_dump = '1') or ((encoder_pull_do_start = '1') and ((pull_cnt < 3) or (131 < pull_cnt)))) then
                        -- Drop complete data of the FIFO
                        state := fifo_dump;
                        
                    elsif (encoder_pull_do_start = '1') then
                        state := fifo_pull;
                    end if;
                    
                when fifo_dump =>
                    pulldata_tx09_en <= '1';
                    
                    if ((encoder_pull_FIFO_dump = '0') and (encoder_pull_do_start = '0')) then
                        pulldata_tx09_en <= '0';
                        state := loop_start;
                    end if;
                    
                    
                when fifo_pull =>
                    pulldata_tx09_en <= '1';
                    state := fifo_pull_ws1;
                    
                when fifo_pull_ws1 =>
                    state := fifo_pull_ws2;
                    
                when fifo_pull_ws2 =>
                    state := fifo_pull_ofs;
                    
                when fifo_pull_ofs =>
                    encoder_ofs     := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    state := fifo_pull_data;
                    
                when fifo_pull_data =>
                    encoder_tx09_in_vec <= encoder_tx09_in_vec(1015 downto 0) & pulldata_tx09_byteData;
                    encoder_tx09_in_len <= std_logic_vector(to_unsigned((to_integer(unsigned(encoder_tx09_in_len)) + 8), encoder_tx09_in_len'length));
                    pull_cnt            := pull_cnt - 1;

                    if (pull_cnt = 3) then
                        pulldata_tx09_en <= '0';
                        
                    elsif (pull_cnt = 0) then
                        encoder_tx09_in_len_cnt := to_integer(unsigned(encoder_tx09_in_len)) + 8;
                        state := tx_init;
                    end if;
                    
                    
                when tx_init =>
                    -- Inhibit transmission when Decoder detects signal or does message decoding
                    if ((decoder_rx09_chAll_sql_open = x"00")  and  (decoder_rx09_chAll_active = x"00")) then
                        state := tx_rampup_dds;
                        dds_tx09_ptt <= '1';
                    end if;
                    
                when tx_rampup_dds =>
                    -- One bit time is 128 us
                    dds_new_freq    := (16 + encoder_ofs) mod 32;
                    loop_cnt        := 2 * C_128us_loopcnt;
                    state := tx_rampup_hold_2x128us;
                    
                when tx_rampup_hold_2x128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state       := tx_preamble_preX_dds;
                        preIdx      := 0;
                    end if;
                    
                    
                when tx_preamble_preX_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_ary(preIdx)) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_preX_hold_128us;
                    
                when tx_preamble_preX_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        if (preIdx /= 15) then
                            preIdx              := preIdx + 1;
                            state               := tx_preamble_preX_dds;
                        else
                            state               := tx_body_dds;
                            byteBit_cnt         := 0;
                            byteBit_sub         := 0;
                            encoder_frq_last    := encoder_frq_initial;
                        end if;
                    end if;
                    
                    
                when tx_body_dds =>
                    if (encoder_tx09_in_len_cnt /= 0) then
                        bit_pos := encoder_tx09_in_len_cnt - 1;
                        
                        if (encoder_tx09_in_vec(bit_pos) = '1') then
                            if (byteBit_sub = 1) then
                                encoder_frq_last := (32 + encoder_frq_last + C_bit_1_1) mod 32;
                            else
                                encoder_frq_last := (32 + encoder_frq_last + C_bit_1_0) mod 32;
                            end if;
                        else
                            if (byteBit_sub = 1) then
                                encoder_frq_last := (32 + encoder_frq_last + C_bit_0_1) mod 32;
                            else
                                encoder_frq_last := (32 + encoder_frq_last + C_bit_0_0) mod 32;
                            end if;
                        end if;
                        encoder_tx09_in_len_cnt := encoder_tx09_in_len_cnt - 1;
                        
                        dds_new_freq            := encoder_frq_last;
                        loop_cnt                := C_128us_loopcnt;
                        
                        if ((byteBit_cnt /= 7) or (byteBit_sub = 0)) then
                            if (byteBit_sub  = 0) then
                                byteBit_sub := 1;
                            else
                                byteBit_sub := 0;
                                byteBit_cnt := byteBit_cnt + 1;
                            end if;
                        else
                            byteBit_cnt := 0;
                            encoder_frq_last := encoder_frq_initial;
                        end if;
                        
                        state := tx_body_hold_128us;
                    else
                        encoder_tx09_in_vec <= (others => '0');
                        encoder_tx09_in_len <= (others => '0');
                        
                        preIdx  := 0;
                      --state   := tx_final_finX_dds;
                        state   := tx_rampdown_dds;
                    end if;
                    
                when tx_body_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_body_dds;
                    end if;
                
              --Not in use
              --when tx_final_finX_dds =>
              --    dds_new_freq    := ((32 + C_fin_ary(preIdx)) + encoder_frq_last) mod 32;
              --    loop_cnt        := C_128us_loopcnt;
                    
              --    state := tx_final_finX_hold_128us;
                    
              --when tx_final_finX_hold_128us =>
              --    if (loop_cnt /= 0) then
              --        loop_cnt    := loop_cnt - 1;
              --    else
              --        if (preIdx /= 7) then
              --            preIdx  := preIdx + 1;
              --            state   := tx_final_finX_dds;
              --        else
              --            state   := tx_rampdown_dds;
              --        end if;
              --    end if;
                    
                    
                when tx_rampdown_dds =>
                    dds_new_freq    := encoder_frq_last;
                    loop_cnt        := C_128us_loopcnt;
                    dds_tx09_ptt    <= '0';
                    
                    state := tx_rampdown_hold_128us;
                    
                when tx_rampdown_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := loop_start;
                        
                        dds_new_freq            := 0;
                        encoder_tx09_in_len_cnt := 0;
                        encoder_ofs             := 0;
                        encoder_frq_last        := 0;
                    end if;
                    
                when others =>
                    state := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_Encoder_tx09;

end Behavioral;
