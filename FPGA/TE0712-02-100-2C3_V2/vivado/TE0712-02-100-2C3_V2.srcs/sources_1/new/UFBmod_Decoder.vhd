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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
use IEEE.NUMERIC_STD.ALL;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_signed.all;

entity UFBmod_Decoder is
  Port (
    -- All Clock Domain AXI 100 MHz
    resetn                                  : in  STD_LOGIC;
    clk                                     : in  STD_LOGIC;
    
    post_fft_rx09_mem_a_addr                : in  STD_LOGIC_VECTOR(14 downto 0);
    
    post_fft_rx09_mem_b_addr                : out STD_LOGIC_VECTOR(14 downto 0);
    post_fft_rx09_mem_b_dout                : in  STD_LOGIC_VECTOR(15 downto 0);
    
    decoder_rx09_squelch_lvl                : in  STD_LOGIC_VECTOR(18 downto 0);
    
    decoder_rx09_center_pos                 : out STD_LOGIC_VECTOR( 4 downto 0);
    decoder_rx09_strength                   : out STD_LOGIC_VECTOR(18 downto 0)
  );
end UFBmod_Decoder;

architecture Behavioral of UFBmod_Decoder is
  signal post_fft_rx09_mem_a_subframe_addr  : STD_LOGIC_VECTOR(14 downto 0);

begin
  
  -- UFBmod decoder for the RF09 receiver
  proc_UFBmod_Decoder_rx09: process (resetn, clk, post_fft_rx09_mem_a_addr)
    constant C_mem_depth                            : Integer   := 32768;
    constant C_trig_ofs                             : Integer   := 13 * 1024;
    type StateType is                               (off, init, trigger_search, 
                                                    artemis_init, artemis_calc, artemis_run_ws1, artemis_run_ws2, artemis_add,
                                                    find_max_init, find_max_run, find_max_trigger, hand_over,
                                                    decoder_init);
    variable state                                  : StateType;
    
    type IntField32 is                              array (31 downto 0) of Integer;
    variable sum                                    : IntField32;
    
    variable post_fft_rx09_mem_a_subframe_addr_Int  : Integer;
    variable post_fft_rx09_mem_a_addr_trig          : Integer;
    variable post_fft_rx09_mem_b_addr_Int           : Integer;
    variable centerIdx                              : Integer;
    variable huntIdx                                : Integer;
    variable ofsAddr                                : Integer;
    variable max_val                                : Integer;
    variable max_pos                                : Integer;
    variable max_idx                                : Integer;
    variable decoder_rx09_center_pos_Int            : Integer;
    variable decoder_rx09_strength_Int              : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (resetn = '0') then
            post_fft_rx09_mem_a_subframe_addr_Int   := 0;
            post_fft_rx09_mem_a_subframe_addr       <= (others => '0');
            post_fft_rx09_mem_a_addr_trig           := 0;
            post_fft_rx09_mem_b_addr_Int            := 0;
            post_fft_rx09_mem_b_addr                <= (others => '0');
            max_val                                 := 0;
            max_pos                                 := 0;
            max_idx                                 := 0;
            decoder_rx09_center_pos_Int             := 0;
            decoder_rx09_strength_Int               := 0;
            
            state                                   := init;
        else
            case state is
                when init =>
                    post_fft_rx09_mem_a_subframe_addr   <= (others => '0');
                    post_fft_rx09_mem_b_addr_Int        := 0;
                    max_val                             := 0;
                    max_pos                             := 0;
                    max_idx                             := 0;
                    decoder_rx09_center_pos_Int         := 0;
                    decoder_rx09_strength_Int           := 0;
                    post_fft_rx09_mem_a_addr_trig       := C_trig_ofs;
                    
                    for idx in 0 to 31 loop
                        sum(idx) := 0;
                    end loop;
                    
                    state                               := trigger_search;
                    
                -- searching for any subframe idx change    
                when trigger_search =>
                    if (to_integer(unsigned(post_fft_rx09_mem_a_addr)) = post_fft_rx09_mem_a_addr_trig) then
                        -- Start the hunting for Preamble Energies
                        state := artemis_init;
                    end if;
                    
                when artemis_init =>
                    -- Anchor address for this subframe to work on - each (sub)frame is 1024 entries deep
                    post_fft_rx09_mem_a_subframe_addr_Int   := (to_integer(unsigned((post_fft_rx09_mem_a_addr and "111110000000000"))) - C_trig_ofs + C_mem_depth) mod C_mem_depth;
                    post_fft_rx09_mem_a_subframe_addr       <= std_logic_vector(to_unsigned(post_fft_rx09_mem_a_subframe_addr_Int, post_fft_rx09_mem_a_subframe_addr'length));
                    post_fft_rx09_mem_a_addr_trig           := (post_fft_rx09_mem_a_subframe_addr_Int + 1024 + C_trig_ofs) mod C_mem_depth;  -- Next subframe
                    centerIdx                               := 0;
                    huntIdx                                 := 0;
                    
                    for idx in 0 to 31 loop
                        sum(idx) := 0;
                    end loop;
                    
                    state := artemis_calc;
                    
                when artemis_calc =>
                    case huntIdx is
                        when 0 =>
                            ofsAddr :=  +6;
                        when 1 =>
                            ofsAddr :=  -6;
                        when 2 =>
                            ofsAddr :=  +9;
                        when 3 =>
                            ofsAddr :=  -9;
                        when 4 =>
                            ofsAddr := +12;
                        when 5 =>
                            ofsAddr := -12;
                        when others =>
                            ofsAddr := 0;
                    end case;  -- huntIdx
                    
                    ofsAddr                         := ofsAddr + centerIdx + 16;
                    ofsAddr                         := ofsAddr mod 32;
                    post_fft_rx09_mem_b_addr_Int    := to_integer(unsigned(post_fft_rx09_mem_a_subframe_addr)) + (huntIdx * 2048) + ofsAddr;
                    
                    state                           := artemis_run_ws1;
                    
                when artemis_run_ws1 =>
                    state   := artemis_run_ws2;

                when artemis_run_ws2 =>
                    state   := artemis_add;

                when artemis_add =>
                    sum(centerIdx) := sum(centerIdx) + to_integer(unsigned(post_fft_rx09_mem_b_dout));
                    
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
                    max_val := 0;
                    max_pos := 0;
                    max_idx := 0;
                    state   := find_max_run;
                    
                when find_max_run =>
                    if max_val < sum(max_idx) then
                        max_val := sum(max_idx);
                        max_pos := max_idx;
                    end if;
                    
                    if (max_idx /= 31) then
                        max_idx := max_idx + 1;
                        state   := find_max_run;    -- loop again
                    else
                        max_idx := 0;
                        state   := find_max_trigger;
                    end if;
                    
                when find_max_trigger =>
                    if (max_val >= to_integer(unsigned(decoder_rx09_squelch_lvl))) then
                        state := hand_over;
                    else
                        -- Squelch not opened
                        state := trigger_search;
                    end if;
                    
                when hand_over =>
                    decoder_rx09_center_pos_Int := max_pos;
                    decoder_rx09_center_pos     <= std_logic_vector(to_unsigned(decoder_rx09_center_pos_Int, decoder_rx09_center_pos'length));
                    
                    decoder_rx09_strength_Int   := max_val;
                    decoder_rx09_strength       <= std_logic_vector(to_unsigned(decoder_rx09_strength_Int, decoder_rx09_strength'length));
                    
                    -- Start Decoder
                    state := decoder_init;
                    
                when decoder_init =>
                    -- TODO: message decoding
                    
                    state := trigger_search;  -- TODO: go ahead
                    
                when others =>
                    state := init;
            end case;
            
            -- Registered output
            post_fft_rx09_mem_b_addr <= std_logic_vector(to_unsigned(post_fft_rx09_mem_b_addr_Int, post_fft_rx09_mem_b_addr'length));
        end if;
    end if;
  end process proc_UFBmod_Decoder_rx09;

end Behavioral;
