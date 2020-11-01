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


entity FFT_rx09_to_Decoder_FSM is
  Port (
    -- All Clock Domain AXI 100 MHz
    clk_100MHz                                          : in  STD_LOGIC;
    reset_100MHz                                        : in  STD_LOGIC;
    
    TRX_post_fft_rx_rf09_mem_a_EoT                      : in  STD_LOGIC;
    TRX_post_fft_rx_rf09_mem_a_addr                     : in  STD_LOGIC_VECTOR(41 downto 0);
    
    TRX_post_fft_rx_rf09_chXX_mem_b_addr                : out STD_LOGIC_VECTOR( 9 downto 0);
    TRX_post_fft_rx_rf09_chXX_mem_b_dout                : in  STD_LOGIC_VECTOR(15 downto 0);
    
    fft_rx09_chXX_rowsum_accum_sclr                     : out STD_LOGIC;
    fft_rx09_chXX_rowsum_accum_ce                       : out STD_LOGIC;

    fft_rx09_chXX_averaging_factor_div_aclken           : out STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_dout_tvalid      : in  STD_LOGIC;
    fft_rx09_chXX_averaging_factor_div_divisor_tvalid   : out STD_LOGIC;
    
    fft_rx09_chXX_signal_correction_mult_ce             : out STD_LOGIC;
    fft_rx09_chXX_signal_correction_mult_ina            : out STD_LOGIC_VECTOR(15 downto 0);
    fft_rx09_chXX_signal_correction_mult_prod           : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Signal_bins  port-A
    fft_rx09_chXX_signal_bins_mem_addra                 : out STD_LOGIC_VECTOR(10 downto 0);  -- 64 rows (6 bit) x 32 bins (5 bits)
    fft_rx09_chXX_signal_bins_mem_dina                  : out STD_LOGIC_VECTOR(15 downto 0);
    fft_rx09_chXX_signal_bins_mem_douta                 : in  STD_LOGIC_VECTOR(15 downto 0);
    fft_rx09_chXX_signal_bins_mem_wea                   : out STD_LOGIC;
    
    fft_rx09_chXX_frame_avail_ctr                       : out STD_LOGIC_VECTOR(31 downto 0)
  );
end FFT_rx09_to_Decoder_FSM;


architecture Behavioral of FFT_rx09_to_Decoder_FSM is
  
  signal read_write_loopCtr                             : Integer  range 0 to (2**5  - 1);
  signal initial_loopCtr                                : Integer  range 0 to (2**6  - 1);
  
begin
  proc_FFT_rx09_to_Mem: process (clk_100MHz, reset_100MHz)
    type StateType                                      is (
                                                            init, loop_start, wait_until_post_fft_done, read_in_loop, sum_ws1,
                                                            averaging_wait,
                                                            correction_init, correction_loop_begin,
                                                            correction_loop_ram_ws1, correction_loop_ram_ws2, correction_loop_ram_read,
                                                            correction_loop_mult_ws1, correction_loop_mult_ws2, correction_loop_mult_ws3, correction_loop_mult_ws4, correction_loop_mult_read_mem_write,
                                                            correction_loop_end,
                                                            check_init_loop,
                                                            handshake
                                                        );
    variable state                                      : StateType;
    variable TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int   : Integer  range 0 to (2**9  - 1);
    variable fft_rx09_chXX_signal_bins_mem_addra_Int    : Integer  range 0 to (2**9  - 1);
  begin
    if (clk_100MHz'EVENT and clk_100MHz = '1') then
        if (reset_100MHz = '1') then
            fft_rx09_chXX_frame_avail_ctr                       <= (others => '0');
            
            read_write_loopCtr                                  <= 0;
            initial_loopCtr                                     <= 0;
            
            TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int            := 0;
            TRX_post_fft_rx_rf09_chXX_mem_b_addr                <= (others => '0');
            
            fft_rx09_chXX_rowsum_accum_sclr                     <= '0';
            fft_rx09_chXX_rowsum_accum_ce                       <= '0';
            
            fft_rx09_chXX_averaging_factor_div_aclken           <= '0';
            fft_rx09_chXX_averaging_factor_div_divisor_tvalid   <= '0';
            
            fft_rx09_chXX_signal_correction_mult_ce             <= '0';
            fft_rx09_chXX_signal_correction_mult_ina            <= (others => '0');
            
            fft_rx09_chXX_signal_bins_mem_addra_Int             := 0;
            fft_rx09_chXX_signal_bins_mem_addra                 <= (others => '0');
            fft_rx09_chXX_signal_bins_mem_dina                  <= (others => '0');
            fft_rx09_chXX_signal_bins_mem_wea                   <= '0';
            
            state := init;
            
        else
            case state is
                when init =>
                    fft_rx09_chXX_frame_avail_ctr                           <= (others => '0');
                    
                    read_write_loopCtr                                      <= 0;
                    initial_loopCtr                                         <= 32;
                    
                    TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int                := 0;
                    TRX_post_fft_rx_rf09_chXX_mem_b_addr                    <= (others => '0');
                    
                    fft_rx09_chXX_rowsum_accum_sclr                         <= '0';
                    fft_rx09_chXX_rowsum_accum_ce                           <= '0';
                    
                    fft_rx09_chXX_averaging_factor_div_aclken               <= '0';
                    fft_rx09_chXX_averaging_factor_div_divisor_tvalid       <= '0';
                    
                    fft_rx09_chXX_signal_correction_mult_ce                 <= '0';
                    fft_rx09_chXX_signal_correction_mult_ina                <= (others => '0');
                    
                    fft_rx09_chXX_signal_bins_mem_addra_Int                 := 0;
                    fft_rx09_chXX_signal_bins_mem_addra                     <= (others => '0');
                    fft_rx09_chXX_signal_bins_mem_dina                      <= (others => '0');
                    fft_rx09_chXX_signal_bins_mem_wea                       <= '0';
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    -- Reset counters
                    fft_rx09_chXX_rowsum_accum_sclr                         <= '1';
                    
                    state := wait_until_post_fft_done;
                    
                -- Wait until the FFT / Cordic post-transfer is complete
                when wait_until_post_fft_done =>
                    if (TRX_post_fft_rx_rf09_mem_a_EoT = '1') then
                        -- RAM Loop init
                        fft_rx09_chXX_rowsum_accum_sclr                     <= '0';
                        TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int            := 0;
                        fft_rx09_chXX_signal_bins_mem_addra_Int             := to_integer(unsigned(TRX_post_fft_rx_rf09_mem_a_addr(15 downto 10)) & "00000");
                        
                        state := read_in_loop;
                    end if;
                    
                when read_in_loop =>
                    -- Request data from RAM (latency: 2 clocks
                    if (TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int < 32) then
                        -- Time span of RAM read-out
                        TRX_post_fft_rx_rf09_chXX_mem_b_addr                <= std_logic_vector(to_unsigned(TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int, TRX_post_fft_rx_rf09_chXX_mem_b_addr'length));
                    else
                        -- Time span of latency
                        TRX_post_fft_rx_rf09_chXX_mem_b_addr                <= (others => '0');
                    end if;
                    
                    if (TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int < 35) then
                        -- Delayed write
                        fft_rx09_chXX_signal_bins_mem_addra                 <= std_logic_vector(to_unsigned(fft_rx09_chXX_signal_bins_mem_addra_Int, fft_rx09_chXX_signal_bins_mem_addra'length));
                    else
                        fft_rx09_chXX_signal_bins_mem_addra                 <= (others => '0');
                    end if;
                    
                    -- Read into shift register
                    if ((2 < TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int)  and  (TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int <= 34)) then
                        fft_rx09_chXX_signal_bins_mem_dina                  <= TRX_post_fft_rx_rf09_chXX_mem_b_dout;
                        fft_rx09_chXX_signal_bins_mem_wea                   <= '1';
                        fft_rx09_chXX_rowsum_accum_ce                       <= '1';
                        
                        -- Next address preparation
                        fft_rx09_chXX_signal_bins_mem_addra_Int             := fft_rx09_chXX_signal_bins_mem_addra_Int + 1;
                        
                    elsif (34 < TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int) then
                        -- End of loop
                        fft_rx09_chXX_signal_bins_mem_dina                  <= (others => '0');
                        fft_rx09_chXX_signal_bins_mem_wea                   <= '0';
                        fft_rx09_chXX_rowsum_accum_ce                       <= '0';
                        fft_rx09_chXX_averaging_factor_div_aclken           <= '1';
                        fft_rx09_chXX_averaging_factor_div_divisor_tvalid   <= '1';
                        
                        state := sum_ws1;
                    end if;
                    
                    -- RAM Loop footer
                    TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int                := TRX_post_fft_rx_rf09_chXX_mem_b_addr_Int + 1;
                    
                when sum_ws1 =>
                    fft_rx09_chXX_averaging_factor_div_divisor_tvalid       <= '0';
                    
                    state := averaging_wait;
                    
                when averaging_wait =>
                    if (fft_rx09_chXX_averaging_factor_div_dout_tvalid = '1') then
                        fft_rx09_chXX_averaging_factor_div_aclken           <= '0';
                        
                        state := correction_init;
                      --state := check_init_loop;                                                   -- XXX   DEBUGGING
                    end if;
                    
                when correction_init =>
                    fft_rx09_chXX_signal_bins_mem_addra_Int                 := to_integer(unsigned(TRX_post_fft_rx_rf09_mem_a_addr(15 downto 10)) & "00000");
                    read_write_loopCtr                                      <= 0;
                    fft_rx09_chXX_signal_correction_mult_ce                 <= '1';
                    
                    state := correction_loop_begin;
                    
                when correction_loop_begin =>
                    fft_rx09_chXX_signal_bins_mem_addra                     <= std_logic_vector(to_unsigned(fft_rx09_chXX_signal_bins_mem_addra_Int, fft_rx09_chXX_signal_bins_mem_addra'length));
                    
                    state := correction_loop_ram_ws1;
                    
                when correction_loop_ram_ws1 =>
                    state := correction_loop_ram_ws2;
                    
                when correction_loop_ram_ws2 =>
                    state := correction_loop_ram_read;
                    
                when correction_loop_ram_read =>
                    fft_rx09_chXX_signal_correction_mult_ina                <= fft_rx09_chXX_signal_bins_mem_douta;
                    
                    state := correction_loop_mult_ws1;
                    
                when correction_loop_mult_ws1 =>
                    state := correction_loop_mult_ws2;
                    
                when correction_loop_mult_ws2 =>
                    state := correction_loop_mult_ws3;
                    
                when correction_loop_mult_ws3 =>
                    state := correction_loop_mult_ws4;
                    
                when correction_loop_mult_ws4 =>
                    state := correction_loop_mult_read_mem_write;
                    
                when correction_loop_mult_read_mem_write =>
                    fft_rx09_chXX_signal_bins_mem_dina                      <= fft_rx09_chXX_signal_correction_mult_prod;
                    fft_rx09_chXX_signal_bins_mem_wea                       <= '1';
                    
                    state := correction_loop_end;
                    
                when correction_loop_end =>
                    fft_rx09_chXX_signal_bins_mem_wea                       <= '0';
                    if (read_write_loopCtr /= 31) then
                        read_write_loopCtr                                  <= read_write_loopCtr                   + 1;
                        fft_rx09_chXX_signal_bins_mem_addra_Int             := fft_rx09_chXX_signal_bins_mem_addra_Int  + 1;
                        
                        state := correction_loop_begin;
                    else
                        fft_rx09_chXX_signal_correction_mult_ce             <= '0';
                        
                        state := check_init_loop;
                    end if;
                    
                when check_init_loop =>
                    if (initial_loopCtr /= 0) then
                        initial_loopCtr <= initial_loopCtr - 1;
                    else
                        -- Hand shaking point
                        fft_rx09_chXX_frame_avail_ctr                       <= TRX_post_fft_rx_rf09_mem_a_addr(41 downto 10);
                    end if;
                    
                    state := loop_start;
                    
                when others =>
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_FFT_rx09_to_Mem;

end Behavioral;
