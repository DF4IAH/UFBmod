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
    reset                                           : in  STD_LOGIC;
    clk                                             : in  STD_LOGIC;
    
    post_fft_rx09_mem_a_EoT                         : in  STD_LOGIC;
    post_fft_rx09_mem_addra                         : in  STD_LOGIC_VECTOR(41 downto 0);
    
    post_fft_rx09_mem_addrb                         : out STD_LOGIC_VECTOR( 9 downto 0);
    post_fft_rx09_mem_doutb                         : in  STD_LOGIC_VECTOR(15 downto 0);
    
    rowsum_rx09_ch00_accum_sclr                     : out STD_LOGIC;
    rowsum_rx09_ch00_accum_ce                       : out STD_LOGIC;

    averaging_factor_div_aclken                     : out STD_LOGIC;
    averaging_factor_div_dout_tvalid                : in  STD_LOGIC;
    averaging_factor_div_divisor_tvalid             : out STD_LOGIC;
    
    signal_correction_rx09_ch00_mult_ce             : out STD_LOGIC;
    signal_correction_rx09_ch00_mult_ina            : out STD_LOGIC_VECTOR(15 downto 0);
    signal_correction_rx09_ch00_mult_prod           : in  STD_LOGIC_VECTOR(15 downto 0);
    
    -- Signal_bins  port-A
    signal_bins_rx09_ch00_mem_addra                 : out STD_LOGIC_VECTOR(10 downto 0);  -- 64 rows (6 bit) x 32 bins (5 bits)
    signal_bins_rx09_ch00_mem_dina                  : out STD_LOGIC_VECTOR(15 downto 0);
    signal_bins_rx09_ch00_mem_douta                 : in  STD_LOGIC_VECTOR(15 downto 0);
    signal_bins_rx09_ch00_mem_wea                   : out STD_LOGIC;
    
    decoder_fft_frame_avail_ctr                     : out STD_LOGIC_VECTOR(31 downto 0)
  );
end FFT_rx09_to_Decoder_FSM;

architecture Behavioral of FFT_rx09_to_Decoder_FSM is
  signal read_write_loopCtr                         : Integer  range 0 to (2**5  - 1);
  signal initial_loopCtr                            : Integer  range 0 to (2**6  - 1);
begin
  proc_FFT_rx09_to_Mem: process (reset, clk)
    type StateType                                  is (
                                                        init, loop_start, wait_until_post_fft_done, read_in_loop, sum_ws1,
                                                        averaging_wait,
                                                        correction_init, correction_loop_begin,
                                                        correction_loop_ram_ws1, correction_loop_ram_ws2, correction_loop_ram_read,
                                                        correction_loop_mult_ws1, correction_loop_mult_ws2, correction_loop_mult_ws3, correction_loop_mult_ws4, correction_loop_mult_read_mem_write,
                                                        correction_loop_end,
                                                        check_init_loop,
                                                        handshake
                                                    );
    variable state                                  : StateType;
    variable post_fft_rx09_mem_addrb_Int            : Integer  range 0 to (2**9  - 1);
    variable signal_bins_rx09_ch00_mem_addra_Int    : Integer  range 0 to (2**9  - 1);
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            decoder_fft_frame_avail_ctr             <= (others => '0');
            
            read_write_loopCtr                      <= 0;
            initial_loopCtr                         <= 0;
            
            post_fft_rx09_mem_addrb_Int             := 0;
            post_fft_rx09_mem_addrb                 <= (others => '0');
            
            rowsum_rx09_ch00_accum_sclr             <= '0';
            rowsum_rx09_ch00_accum_ce               <= '0';
            
            averaging_factor_div_aclken             <= '0';
            averaging_factor_div_divisor_tvalid     <= '0';
            
            signal_correction_rx09_ch00_mult_ce     <= '0';
            signal_correction_rx09_ch00_mult_ina    <= (others => '0');
            
            signal_bins_rx09_ch00_mem_addra_Int     := 0;
            signal_bins_rx09_ch00_mem_addra         <= (others => '0');
            signal_bins_rx09_ch00_mem_dina          <= (others => '0');
            signal_bins_rx09_ch00_mem_wea           <= '0';
            
        else
            case state is
                when init =>
                    decoder_fft_frame_avail_ctr                 <= (others => '0');
                    
                    read_write_loopCtr                          <= 0;
                    initial_loopCtr                             <= 31;
                    
                    post_fft_rx09_mem_addrb                     <= (others => '0');
                    post_fft_rx09_mem_addrb_Int                 := 0;
                    
                    rowsum_rx09_ch00_accum_sclr                 <= '0';
                    rowsum_rx09_ch00_accum_ce                   <= '0';
                    
                    averaging_factor_div_aclken                 <= '0';
                    averaging_factor_div_divisor_tvalid         <= '0';
                    
                    signal_correction_rx09_ch00_mult_ce         <= '0';
                    signal_correction_rx09_ch00_mult_ina        <= (others => '0');
                    
                    signal_bins_rx09_ch00_mem_addra_Int         := 0;
                    signal_bins_rx09_ch00_mem_addra             <= (others => '0');
                    signal_bins_rx09_ch00_mem_dina              <= (others => '0');
                    signal_bins_rx09_ch00_mem_wea               <= '0';
                    
                    state := loop_start;
                    
                -- Loop entry point
                when loop_start =>
                    -- Reset counters
                    rowsum_rx09_ch00_accum_sclr                 <= '1';
                    
                    state := wait_until_post_fft_done;
                    
                -- Wait until the FFT / Cordic post-transfer is complete
                when wait_until_post_fft_done =>
                    if (post_fft_rx09_mem_a_EoT = '1') then
                        -- RAM Loop init
                        rowsum_rx09_ch00_accum_sclr             <= '0';
                        post_fft_rx09_mem_addrb_Int             := 0;
                        signal_bins_rx09_ch00_mem_addra_Int     := to_integer(unsigned(post_fft_rx09_mem_addra(15 downto 10)) & "00000");
                        
                        state := read_in_loop;
                    end if;
                    
                when read_in_loop =>
                    -- Request data from RAM (latency: 2 clocks
                    if (post_fft_rx09_mem_addrb_Int < 32) then
                        -- Time span of RAM read-out
                        post_fft_rx09_mem_addrb                 <= std_logic_vector(to_unsigned(post_fft_rx09_mem_addrb_Int, post_fft_rx09_mem_addrb'length));
                    else
                        -- Time span of latency
                        post_fft_rx09_mem_addrb                 <= (others => '0');
                    end if;
                    
                    if (post_fft_rx09_mem_addrb_Int < 35) then
                        -- Delayed write
                        signal_bins_rx09_ch00_mem_addra         <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addra_Int, signal_bins_rx09_ch00_mem_addra'length));
                    else
                        signal_bins_rx09_ch00_mem_addra         <= (others => '0');
                    end if;
                    
                    -- Read into shift register
                    if ((2 < post_fft_rx09_mem_addrb_Int)  and  (post_fft_rx09_mem_addrb_Int <= 34)) then
                        signal_bins_rx09_ch00_mem_dina          <= post_fft_rx09_mem_doutb;
                        signal_bins_rx09_ch00_mem_wea           <= '1';
                        rowsum_rx09_ch00_accum_ce               <= '1';
                        
                        -- Next address preparation
                        signal_bins_rx09_ch00_mem_addra_Int     := signal_bins_rx09_ch00_mem_addra_Int + 1;
                        
                    elsif (34 < post_fft_rx09_mem_addrb_Int) then
                        -- End of loop
                        signal_bins_rx09_ch00_mem_dina          <= (others => '0');
                        signal_bins_rx09_ch00_mem_wea           <= '0';
                        rowsum_rx09_ch00_accum_ce               <= '0';
                        averaging_factor_div_aclken             <= '1';
                        averaging_factor_div_divisor_tvalid     <= '1';
                        
                        state := sum_ws1;
                    end if;
                    
                    -- RAM Loop footer
                    post_fft_rx09_mem_addrb_Int                 := post_fft_rx09_mem_addrb_Int + 1;
                    
                when sum_ws1 =>
                    averaging_factor_div_divisor_tvalid         <= '0';
                    
                    state := averaging_wait;
                    
                when averaging_wait =>
                    if (averaging_factor_div_dout_tvalid = '1') then
                        averaging_factor_div_aclken             <= '0';
                        
                        state := correction_init;
                      --state := check_init_loop;                                                   -- XXX   DEBUGGING
                    end if;
                    
                when correction_init =>
                    signal_bins_rx09_ch00_mem_addra_Int         := to_integer(unsigned(post_fft_rx09_mem_addra(15 downto 10)) & "00000");
                    read_write_loopCtr                          <= 0;
                    signal_correction_rx09_ch00_mult_ce         <= '1';
                    
                    state := correction_loop_begin;
                    
                when correction_loop_begin =>
                    signal_bins_rx09_ch00_mem_addra             <= std_logic_vector(to_unsigned(signal_bins_rx09_ch00_mem_addra_Int, signal_bins_rx09_ch00_mem_addra'length));
                    
                    state := correction_loop_ram_ws1;
                    
                when correction_loop_ram_ws1 =>
                    state := correction_loop_ram_ws2;
                    
                when correction_loop_ram_ws2 =>
                    state := correction_loop_ram_read;
                    
                when correction_loop_ram_read =>
                    signal_correction_rx09_ch00_mult_ina        <= signal_bins_rx09_ch00_mem_douta;
                    
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
                    signal_bins_rx09_ch00_mem_dina              <= signal_correction_rx09_ch00_mult_prod;
                    signal_bins_rx09_ch00_mem_wea               <= '1';
                    
                    state := correction_loop_end;
                    
                when correction_loop_end =>
                    signal_bins_rx09_ch00_mem_wea               <= '0';
                    if (read_write_loopCtr /= 31) then
                        read_write_loopCtr                      <= read_write_loopCtr                   + 1;
                        signal_bins_rx09_ch00_mem_addra_Int     := signal_bins_rx09_ch00_mem_addra_Int  + 1;
                        
                        state := correction_loop_begin;
                    else
                        signal_correction_rx09_ch00_mult_ce     <= '0';
                        
                        state := check_init_loop;
                    end if;
                    
                when check_init_loop =>
                    if (initial_loopCtr /= 0) then
                        initial_loopCtr <= initial_loopCtr - 1;
                    else
                        -- Hand shaking point
                        decoder_fft_frame_avail_ctr             <= post_fft_rx09_mem_addra(41 downto 10);
                    end if;
                    
                    state := loop_start;
                    
                when others =>
                    state         := init;
            end case;   -- state
        end if;
    end if;
  end process proc_FFT_rx09_to_Mem;

end Behavioral;
