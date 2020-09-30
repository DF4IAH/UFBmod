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
    
    decoder_rx09_sql_open                           : in  STD_LOGIC;
    decoder_rx09_active                             : in  STD_LOGIC;
    
    encoder_pull_FIFO_dump                          : in  STD_LOGIC;
    encoder_pull_do_start                           : in  STD_LOGIC;
    encoder_pull_data_len                           : in  STD_LOGIC_VECTOR( 6 downto 0);
    
    pulldata_tx09_en                                : out STD_LOGIC;
    pulldata_tx09_byteData                          : in  STD_LOGIC_VECTOR( 7 downto 0);
    
    dds_tx09_inc                                    : out STD_LOGIC_VECTOR(23 downto 0);
    dds_tx09_ptt                                    : out STD_LOGIC
  );
end UFBmod_Encoder;

architecture Behavioral of UFBmod_Encoder is
  signal encoder_tx09_in_vec                        : STD_LOGIC_VECTOR(1023 downto 0);
  signal encoder_tx09_in_len                        : STD_LOGIC_VECTOR(10 downto 0);
  
  shared variable dds_new_freq                      : Integer;
begin
  
  -- DDS calc engine
  proc_DDS: process (resetn, clk)
  type StateType                                    is (init, get_new_frequency,
                                                    freq_inc,
                                                    freq_dec
                                                    );
  variable state                                    : StateType;
  variable dds_current_freq                         : Integer;
  variable dds_current_inc                          : Integer;
  variable dds_new_inc                              : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
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
                    -- DDS step: 0.95367431640625 Hz = (1 / 2^24) * 16 MHz
                    -- 1 channel step = 3906.25 Hz => 4096 DDS-increment steps
                    -- max. 16 us for 32 channel inc/dec. <-->  100 clocks for 4096 steps => abt. 82 steps per 100 MHz clock
                    if (dds_new_freq /= dds_current_freq) then
                        if (dds_new_freq > dds_current_freq) then
                            state := freq_inc;
                        else
                            state := freq_dec;
                        end if;
                        
                        dds_current_freq    := dds_new_freq;
                        dds_new_inc         := 4096 * dds_new_freq;
                    end if;
                    
                when freq_inc =>
                    dds_current_inc     := dds_current_inc + 82;
                    dds_tx09_inc        <= std_logic_vector(to_unsigned(dds_current_inc, dds_tx09_inc'length));
                    
                    if (dds_current_inc >= dds_new_inc) then
                        dds_current_inc := dds_new_inc;
                        dds_tx09_inc    <= std_logic_vector(to_unsigned(dds_current_inc, dds_tx09_inc'length));
                        state := get_new_frequency;
                    end if;
                    
                when freq_dec =>
                    dds_current_inc     := dds_current_inc - 82;
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
  proc_UFBmod_Encoder_tx09: process (resetn, clk, decoder_rx09_sql_open, decoder_rx09_active, encoder_pull_FIFO_dump, encoder_pull_do_start, encoder_pull_data_len, pulldata_tx09_byteData)
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
    
    constant C_128us_loopcnt                        : Integer := 12800;
    
    type StateType                                  is (
                                                        init, loop_start,
                                                        fifo_dump, fifo_pull, fifo_pull_ws1, fifo_pull_ws2, fifo_pull_ws3, fifo_pull_ofs, fifo_pull_remain, fifo_pull_u32len, fifo_pull_data,
                                                        tx_init,
                                                        tx_rampup_dds, tx_rampup_hold_2x128us,
                                                        tx_preamble_0_dds, tx_preamble_0_hold_128us,
                                                        tx_preamble_1_dds, tx_preamble_1_hold_128us,
                                                        tx_preamble_2_dds, tx_preamble_2_hold_128us,
                                                        tx_preamble_3_dds, tx_preamble_3_hold_128us,
                                                        tx_preamble_4_dds, tx_preamble_4_hold_128us,
                                                        tx_preamble_5_dds, tx_preamble_5_hold_128us,
                                                        tx_remainctr_dds, tx_remainctr_hold_128us,
                                                        tx_u32len_dds, tx_u32len_hold_128us,
                                                        tx_body_dds, tx_body_hold_128us,
                                                        tx_final_0_dds, tx_final_0_hold_128us,
                                                        tx_final_1_dds, tx_final_1_hold_128us,
                                                        tx_final_2_dds, tx_final_2_hold_128us,
                                                        tx_rampdown_dds, tx_rampdown_hold_128us
                                                    );
    variable state                                  : StateType;
    
    variable loop_cnt                               : Integer;
    variable pull_cnt                               : Integer;
    variable bit_pos                                : Integer;
    variable encoder_tx09_in_len_cnt                : Integer;
    
    variable encoder_ofs                            : Integer;
    variable encoder_frq_last                       : Integer;
    variable encoder_remain                         : Integer;
    variable encoder_u32len                         : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            dds_new_freq                            := 0;
            
            encoder_tx09_in_vec                     <= (others => '0');
            encoder_tx09_in_len                     <= (others => '0');
            
            loop_cnt                                := 0;
            pull_cnt                                := 0;
            bit_pos                                 := 0;
            encoder_tx09_in_len_cnt                 := 0;
            
            encoder_ofs                             := 0;
            encoder_frq_last                        := 0;
            encoder_remain                          := 0;
            encoder_u32len                          := 0;
            
            dds_tx09_ptt                            <= '0';
            
            pulldata_tx09_en                        <= '0';
            
            state                                   := init;
            
        else
            case state is
                when init =>
                    dds_new_freq        := 0;
                    pulldata_tx09_en    <= '0';
                    
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
                    state := fifo_pull_ws2;
                    
                when fifo_pull_ws2 =>
                    state := fifo_pull_ws3;
                    
                when fifo_pull_ws3 =>
                    state := fifo_pull_ofs;
                    
                when fifo_pull_ofs =>
                    encoder_ofs         := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    state := fifo_pull_remain;
                    
                when fifo_pull_remain =>
                    encoder_remain := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    if (pull_cnt = 3) then
                        pulldata_tx09_en <= '0';
                    end if;
                    
                    state := fifo_pull_u32len;
                    
                when fifo_pull_u32len =>
                    encoder_u32len := to_integer(unsigned(pulldata_tx09_byteData));
                    
                    pull_cnt := pull_cnt - 1;
                    if (pull_cnt = 3) then
                        pulldata_tx09_en <= '0';
                    end if;
                    state := fifo_pull_data;
                    
                when fifo_pull_data =>
                    encoder_tx09_in_vec <= encoder_tx09_in_vec(1015 downto 0) & pulldata_tx09_byteData;
                    encoder_tx09_in_len <= std_logic_vector(to_unsigned((to_integer(unsigned(encoder_tx09_in_len)) + 8), encoder_tx09_in_len'length));
                    pull_cnt := pull_cnt - 1;

                    if (pull_cnt = 3) then
                        pulldata_tx09_en <= '0';
                        
                    elsif (pull_cnt = 0) then
                        encoder_tx09_in_len_cnt := to_integer(unsigned(encoder_tx09_in_len)) + 8;
                        state := tx_init;
                    end if;
                    
                    
                when tx_init =>
                    -- Inhibit transmission when Decoder detects signal or does message decoding
                    if ((decoder_rx09_sql_open = '0') and (decoder_rx09_active = '0')) then
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
                        state := tx_preamble_0_dds;
                    end if;
                    
                    
                when tx_preamble_0_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_r0) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_0_hold_128us;
                    
                when tx_preamble_0_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_preamble_1_dds;
                    end if;
                    
                when tx_preamble_1_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_r1) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_1_hold_128us;
                    
                when tx_preamble_1_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_preamble_2_dds;
                    end if;
                    
                when tx_preamble_2_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_r2) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_2_hold_128us;
                    
                when tx_preamble_2_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_preamble_3_dds;
                    end if;
                    
                when tx_preamble_3_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_r3) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_3_hold_128us;
                    
                when tx_preamble_3_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_preamble_4_dds;
                    end if;
                    
                when tx_preamble_4_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_r4) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_4_hold_128us;
                    
                when tx_preamble_4_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_preamble_5_dds;
                    end if;
                    
                when tx_preamble_5_dds =>
                    dds_new_freq    := (16 + encoder_ofs + C_pre_r5) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_preamble_5_hold_128us;
                    
                when tx_preamble_5_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_remainctr_dds;
                    end if;
                    
                    
                when tx_remainctr_dds =>
                    dds_new_freq    := (16 + encoder_ofs + encoder_remain) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    state := tx_remainctr_hold_128us;
                    
                when tx_remainctr_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_u32len_dds;
                    end if;
                    
                    
                when tx_u32len_dds =>
                    encoder_frq_last    := (16 + encoder_ofs + encoder_u32len) mod 32;
                    dds_new_freq        := encoder_frq_last;
                    loop_cnt            := C_128us_loopcnt;
                    state := tx_u32len_hold_128us;
                    
                when tx_u32len_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_body_dds;
                    end if;
                    
                    
                when tx_body_dds =>
                    if (encoder_tx09_in_len_cnt /= 0) then
                        bit_pos := encoder_tx09_in_len_cnt - 1;
                        if (encoder_tx09_in_vec(bit_pos) = '1') then
                            encoder_frq_last    := ((32 + C_bit_1) + encoder_frq_last) mod 32;
                        else
                            encoder_frq_last    := ((32 + C_bit_0) + encoder_frq_last) mod 32;
                        end if;
                        encoder_tx09_in_len_cnt := encoder_tx09_in_len_cnt - 1;
                        
                        dds_new_freq            := encoder_frq_last;
                        loop_cnt                := C_128us_loopcnt;
                        
                        state := tx_body_hold_128us;
                    else
                        encoder_tx09_in_vec <= (others => '0');
                        encoder_tx09_in_len <= (others => '0');
                        
                        state := tx_final_0_dds;
                    end if;
                    
                when tx_body_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_body_dds;
                    end if;
                
                    
                when tx_final_0_dds =>
                    dds_new_freq    := ((32 + C_fin_0) + encoder_frq_last) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    
                    state := tx_final_0_hold_128us;
                    
                when tx_final_0_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_final_1_dds;
                    end if;
                    
                when tx_final_1_dds =>
                    dds_new_freq    := ((32 + C_fin_1) + encoder_frq_last) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    
                    state := tx_final_1_hold_128us;
                    
                when tx_final_1_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_final_2_dds;
                    end if;
                    
                when tx_final_2_dds =>
                    dds_new_freq    := ((32 + C_fin_2) + encoder_frq_last) mod 32;
                    loop_cnt        := C_128us_loopcnt;
                    
                    state := tx_final_2_hold_128us;
                    
                when tx_final_2_hold_128us =>
                    if (loop_cnt /= 0) then
                        loop_cnt    := loop_cnt - 1;
                    else
                        state := tx_rampdown_dds;
                    end if;
                    
                    
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
                        encoder_remain          := 0;
                        encoder_u32len          := 0;
                    end if;
                    
                when others =>
                    state := init;
            end case;   -- state
        end if;
    end if;
  end process proc_UFBmod_Encoder_tx09;

end Behavioral;
