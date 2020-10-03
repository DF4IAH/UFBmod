----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2020 09:54:40
-- Design Name: 
-- Module Name: FFT_controller - Behavioral
-- Project Name: 
-- Target Devices: 
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
--use UNISIM.VComponents.all;

--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;


entity FFT_controller is
  Port (
    -- All Clock Domain AXI 100 MHz
    reset                       : in  STD_LOGIC;
    clk                         : in  STD_LOGIC;
    
    rx09_bs_32bits              : in  STD_LOGIC_VECTOR (31 downto 0);
    rx09_bs_32bits_vld          : in  STD_LOGIC;

  --rx24_bs_32bits              : in  STD_LOGIC_VECTOR (31 downto 0);
  --rx24_bs_32bits_vld          : in  STD_LOGIC;
    
    PreMem09_addra              : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem09_wea                : out STD_LOGIC;
    PreMem09_dina               : out STD_LOGIC_VECTOR (25 downto 0);  -- (b)  29..17: I-data, 13..01: Q-data
    PreMem09_addrb              : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    
    FFT_window_coef_rom_rx09    : out STD_LOGIC_VECTOR ( 9 downto 0);
    
    RF09_quarterfrm             : out STD_LOGIC_VECTOR ( 1 downto 0);  -- subframes of  64 us
    RF09_framectr               : out STD_LOGIC_VECTOR (29 downto 0);  -- frames    of 256 us
    
  --PreMem24_addra              : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
  --PreMem24_wea                : out STD_LOGIC;
  --PreMem24_dina               : out STD_LOGIC_VECTOR (25 downto 0);  -- see above (b)
  --PreMem24_addrb              : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    
  --FFT_window_coef_rom_rx24    : out STD_LOGIC_VECTOR ( 9 downto 0);
    
  --RF24_quarterfrm             : out STD_LOGIC_VECTOR ( 1 downto 0);  -- subframes of  64 us
  --RF24_framectr               : out STD_LOGIC_VECTOR (29 downto 0);  -- frames    of 256 us
    
    XFFT09_s_data_tlast         : out STD_LOGIC;
    XFFT09_s_data_tready        : in  STD_LOGIC;
    XFFT09_s_data_tvalid        : out STD_LOGIC;
    XFFT09_s_conf_tdata         : out STD_LOGIC_VECTOR ( 7 downto 0);
    XFFT09_s_conf_tvalid        : out STD_LOGIC
    
  --XFFT24_aresetn              : out STD_LOGIC;
  --XFFT24_s_data_tlast         : out STD_LOGIC;
  --XFFT24_s_data_tready        : in  STD_LOGIC;
  --XFFT24_s_data_tvalid        : out STD_LOGIC;
  --XFFT24_s_conf_tdata         : out STD_LOGIC_VECTOR ( 7 downto 0);
  --XFFT24_s_conf_tvalid        : out STD_LOGIC
  );
end FFT_controller;

architecture Behavioral of FFT_controller is

signal PreMem09_addra_r                 : STD_LOGIC_VECTOR (10 downto 0);
signal PreMem24_addra_r                 : STD_LOGIC_VECTOR (10 downto 0);
signal XFFT09_s_data_tvalid_r           : STD_LOGIC_VECTOR (3 downto 0);
signal XFFT09_s_data_tlast_r            : STD_LOGIC_VECTOR (3 downto 0);
signal XFFT24_s_data_tvalid_r           : STD_LOGIC_VECTOR (3 downto 0);
signal XFFT24_s_data_tlast_r            : STD_LOGIC_VECTOR (3 downto 0);
shared variable fsm09_fft_framectr      : Integer;
shared variable fsm09_fft_subframectr   : Integer;
shared variable fsm24_fft_framectr      : Integer;
shared variable fsm24_fft_subframectr   : Integer;

begin
  -- PreMem In - Data (from Barrel-Shift to the Memory)
  -- rxXX_bs_32bits[29..17]: I (re)  /  rx09_bs_32bits[13..01]: Q (im)
  -- PreMemXX_dina[25..13]:  Q (im)  /  PreMem09_dina[12..00]:  I (re)
  PreMem09_dina <= rx09_bs_32bits(13 downto  1) & rx09_bs_32bits(29 downto 17);
--PreMem24_dina <= rx24_bs_32bits(13 downto  1) & rx24_bs_32bits(29 downto 17);
  
  -- PreMem09 In - Addr
  proc_PreMem09_in_Addr: process (reset, clk, rx09_bs_32bits_vld)
  variable cnt09 : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            cnt09 := 0;
            PreMem09_addra_r            <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra_r'length));
            PreMem09_addra              <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
            PreMem09_wea                <= '0';
            
        else
            if (rx09_bs_32bits_vld = '1') then
                if (cnt09 /= 2047) then
                    cnt09 := cnt09 + 1;
                else
                    cnt09 := 0;
                end if;
                
                PreMem09_addra_r    <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra_r'length));
                PreMem09_wea        <= '1';
                
            else
                PreMem09_wea <= '0';
            end if;
            
            PreMem09_addra              <= PreMem09_addra_r;
        end if;
    end if;
  end process proc_PreMem09_in_Addr;
  
  -- PreMem24 In - Addr
--proc_PreMem24_in_Addr: process (resetn, clk, rx24_bs_32bits_vld)
--variable cnt24 : Integer;
--begin
--  if (clk'EVENT and clk = '1') then
--      if (resetn = '0') then
--          cnt24 := 0;
--          PreMem24_addra_r            <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra_r'length));
--          PreMem24_addra              <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
--          PreMem24_wea                <= '0';
--            
--      else
--          if (rx09_bs_32bits_vld = '1') then
--              if (cnt24 /= 2047) then
--                  cnt24 := cnt24 + 1;
--              else
--                  cnt24 := 0;
--              end if;
--              
--              PreMem24_addra_r  <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra_r'length));
--              PreMem24_wea      <= '1';
--              
--          else
--              PreMem24_wea <= '0';
--          end if;
--          
--          PreMem24_addra              <= PreMem24_addra_r;
--      end if;
--  end if;
--end process proc_PreMem24_in_Addr;
  
  
  -- PreMem 09 Out - FFT feeder
  proc_PreMem09_out_FFT: process (reset, clk, PreMem09_addra_r)
  variable fsm09_fft_subidx         : Integer;
  variable fsm09_fft_addr           : Integer;
  variable fsm09_fft_trigger        : Integer;
  variable fsm09_fft_state          : Integer;
  variable fsm09_fft_loop_cycle     : Integer;
  begin
    if (clk'EVENT and clk = '1') then
        if (reset = '1') then
            PreMem09_addrb              <= (others => '0');
            FFT_window_coef_rom_rx09    <= (others => '0');
            XFFT09_s_data_tlast_r       <= (others => '0');
            XFFT09_s_data_tvalid_r      <= (others => '0');
            XFFT09_s_conf_tdata         <= (others => '0');
            XFFT09_s_conf_tvalid        <= '0';
            RF09_framectr               <= (others => '0');
            RF09_quarterfrm             <= (others => '0');
            fsm09_fft_framectr          := 0;
            fsm09_fft_subframectr       := 0;
            fsm09_fft_subidx            := 0;
            fsm09_fft_trigger           := 0;
            fsm09_fft_addr              := 0;
            fsm09_fft_state             := 0;
            fsm09_fft_loop_cycle        := 0;
            
        else
            case fsm09_fft_state is
                when 0 =>
                    -- Wait until one address before start trigger
                    if (XFFT09_s_data_tready = '1' and PreMem09_addra_r  = "01111111111") then
                        XFFT09_s_conf_tdata     <= "00000001";  -- bit 7..1: DC, bit 0: 1 = FFT forward
                        XFFT09_s_conf_tvalid    <= '1';
                        fsm09_fft_trigger       := 1024;
                        fsm09_fft_subidx        := 0;
                        fsm09_fft_state         := 1;
                    end if;
                    
                -- Wait state 1
                when 1 =>
                    fsm09_fft_state := 2;
                    
                -- Wait state 2
                when 2 =>
                    fsm09_fft_state := 3;
                    
                -- Wait state 3
                when 3 =>
                    fsm09_fft_state := 4;
                    
                -- Wait state 4
                when 4 =>
                    fsm09_fft_state     := 8;
                    
                    
                -- subidx 0
                when 8 =>
                    if (XFFT09_s_data_tready = '1' and PreMem09_addra_r = std_logic_vector(to_unsigned(fsm09_fft_trigger, PreMem09_addra_r'length))) then
                        XFFT09_s_data_tvalid_r  <= XFFT09_s_data_tvalid_r(2 downto 0) & '1';
                        XFFT09_s_data_tlast_r   <= XFFT09_s_data_tlast_r(2 downto 0)  & '0';
                        fsm09_fft_loop_cycle    := 1;
                        fsm09_fft_state         := 9;
                    else
                        XFFT09_s_data_tvalid_r  <= XFFT09_s_data_tvalid_r(2 downto 0) & '0';
                        XFFT09_s_data_tlast_r   <= XFFT09_s_data_tlast_r(2 downto 0)  & '0';
                    end if;
                    
                -- subidx 1..1023
                when 9 =>
                    -- subidx 1
                    if (fsm09_fft_subidx = 1) then
                        XFFT09_s_data_tvalid_r  <= XFFT09_s_data_tvalid_r(2 downto 0) & '1';
                        XFFT09_s_data_tlast_r   <= XFFT09_s_data_tlast_r(2 downto 0)  & '0';
                        if (fsm09_fft_loop_cycle /= 0) then
                            fsm09_fft_loop_cycle := fsm09_fft_loop_cycle - 1;   -- pause cycles due to XFFT behavior
                        else
                            fsm09_fft_subidx    := fsm09_fft_subidx + 1;
                        end if;
                        
                    -- subidx 1022
                    elsif (fsm09_fft_subidx = 1022) then
                        XFFT09_s_data_tvalid_r  <= XFFT09_s_data_tvalid_r(2 downto 0) & '1';
                        XFFT09_s_data_tlast_r   <= XFFT09_s_data_tlast_r(2 downto 0)  & '1';
                        fsm09_fft_subidx        := fsm09_fft_subidx + 1;
                        
                    -- subidx 1023
                    elsif (fsm09_fft_subidx = 1023) then
                        XFFT09_s_data_tvalid_r  <= XFFT09_s_data_tvalid_r(2 downto 0) & '0';
                        XFFT09_s_data_tlast_r   <= XFFT09_s_data_tlast_r(2 downto 0)  & '0';    -- wait until Port A reaches next trigger address
                        fsm09_fft_subidx        := 0;
                        fsm09_fft_state         := 8;
                        
                        if (fsm09_fft_subframectr /= 3) then
                            fsm09_fft_subframectr := fsm09_fft_subframectr + 1;
                        else
                            fsm09_fft_subframectr := 0;
                            if (fsm09_fft_framectr /= 1073741823) then  -- = 0x3fffffff
                                fsm09_fft_framectr := fsm09_fft_framectr + 1;
                            else
                                fsm09_fft_framectr := 0;
                            end if;
                        end if;
                        fsm09_fft_trigger := ((fsm09_fft_framectr * 1024) + (fsm09_fft_subframectr * 256) + 1024) mod (2 ** PreMem09_addra_r'length);
                        
                    -- subidx 1..1021
                    else
                        XFFT09_s_data_tvalid_r  <= XFFT09_s_data_tvalid_r(2 downto 0) & '1';
                        XFFT09_s_data_tlast_r   <= XFFT09_s_data_tlast_r(2 downto 0)  & '0';
                        fsm09_fft_subidx        := fsm09_fft_subidx + 1;
                    end if;
                    
                    
                when others =>
                    XFFT09_s_data_tlast_r   <= (others => '0');
                    XFFT09_s_data_tvalid_r  <= (others => '0');
                    XFFT09_s_conf_tdata     <= (others => '0');
                    XFFT09_s_conf_tvalid    <= '0';
                    fsm09_fft_framectr      := 0;
                    fsm09_fft_subframectr   := 0;
                    fsm09_fft_subidx        := 0;
                    fsm09_fft_addr          := 0;
                    fsm09_fft_state         := 0;
            end case;
            
            -- Delayed output signals for Memory access latency
            XFFT09_s_data_tvalid    <= XFFT09_s_data_tvalid_r(3);
            XFFT09_s_data_tlast     <= XFFT09_s_data_tlast_r(3);
            
            -- Frame and Subframe counters
            RF09_framectr   <= std_logic_vector(to_unsigned(fsm09_fft_framectr, RF09_framectr'length));
            RF09_quarterfrm <= std_logic_vector(to_unsigned(fsm09_fft_subframectr, RF09_quarterfrm'length));
            
            -- calc addr
            fsm09_fft_addr              := ((fsm09_fft_framectr * 1024) + (fsm09_fft_subframectr * 256) + fsm09_fft_subidx) mod (2 ** PreMem09_addrb'length);
            PreMem09_addrb              <= std_logic_vector(to_unsigned(fsm09_fft_addr, PreMem09_addrb'length));
            FFT_window_coef_rom_rx09    <= std_logic_vector(to_unsigned(fsm09_fft_subidx, FFT_window_coef_rom_rx09'length));
        end if;
    end if;
  end process proc_PreMem09_out_FFT;

  -- PreMem 24 Out - FFT feeder
--proc_PreMem24_out_FFT: process (resetn, clk, PreMem24_addra_r)
--variable fsm24_fft_subidx         : Integer;
--variable fsm24_fft_addr           : Integer;
--variable fsm24_fft_trigger        : Integer;
--variable fsm24_fft_state          : Integer;
--variable fsm24_fft_loop_cycle     : Integer;
--begin
--  if (clk'EVENT and clk = '1') then
--      if (resetn = '0') then
--          PreMem24_addrb              <= (others => '0');
--          FFT_window_coef_rom_rx24    <= (others => '0');
--          XFFT24_aresetn              <= '0';
--          XFFT24_s_data_tlast_r       <= (others => '0');
--          XFFT24_s_data_tvalid_r      <= (others => '0');
--          XFFT24_s_conf_tdata         <= (others => '0');
--          XFFT24_s_conf_tvalid        <= '0';
--          RF24_framectr               <= (others => '0');
--          RF24_quarterfrm             <= (others => '0');
--          fsm24_fft_framectr          := 0;
--          fsm24_fft_subframectr       := 0;
--          fsm24_fft_subidx            := 0;
--          fsm24_fft_trigger           := 0;
--          fsm24_fft_addr              := 0;
--          fsm24_fft_state             := 0;
--          fsm24_fft_loop_cycle        := 0;
--          
--      else
--          case fsm24_fft_state is
--              when 0 =>
--                  -- Wait until one address before start trigger
--                  if (XFFT24_s_data_tready = '1' and PreMem24_addra_r  = "01111111111") then
--                      XFFT24_aresetn          <= '1';         -- wait for two clocks before starting with data
--                      XFFT24_s_conf_tdata     <= "00000001";  -- bit 7..1: DC, bit 0: 1 = FFT forward
--                      XFFT24_s_conf_tvalid    <= '1';
--                      fsm24_fft_trigger       := 1024;
--                      fsm24_fft_subidx        := 0;
--                      fsm24_fft_state         := 1;
--                  end if;
--                  
--              -- Wait state 1
--              when 1 =>
--                 fsm24_fft_state := 2;
--                  
--              -- Wait state 2
--              when 2 =>
--                  fsm24_fft_state := 3;
--                  
--              -- Wait state 3
--              when 3 =>
--                  fsm24_fft_state := 4;
--                  
--              -- Wait state 4
--              when 4 =>
--                  fsm24_fft_state     := 8;
--                  
--                  
--              -- subidx 0
--              when 8 =>
--                  if (XFFT24_s_data_tready = '1' and PreMem24_addra_r = std_logic_vector(to_unsigned(fsm24_fft_trigger, PreMem24_addra_r'length))) then
--                      XFFT24_s_data_tvalid_r  <= XFFT24_s_data_tvalid_r(2 downto 0) & '1';
--                      XFFT24_s_data_tlast_r   <= XFFT24_s_data_tlast_r(2 downto 0)  & '0';
--                      fsm24_fft_loop_cycle    := 1;
--                      fsm24_fft_state         := 9;
--                  else
--                      XFFT24_s_data_tvalid_r  <= XFFT24_s_data_tvalid_r(2 downto 0) & '0';
--                      XFFT24_s_data_tlast_r   <= XFFT24_s_data_tlast_r(2 downto 0)  & '0';
--                  end if;
--                  
--              -- subidx 1..1023
--              when 9 =>
--                  -- subidx 1
--                  if (fsm24_fft_subidx = 1) then
--                      XFFT24_s_data_tvalid_r  <= XFFT24_s_data_tvalid_r(2 downto 0) & '1';
--                      XFFT24_s_data_tlast_r   <= XFFT24_s_data_tlast_r(2 downto 0)  & '0';
--                      if (fsm24_fft_loop_cycle /= 0) then
--                          fsm24_fft_loop_cycle := fsm24_fft_loop_cycle - 1;   -- pause cycles due to XFFT behavior
--                      else
--                          fsm24_fft_subidx    := fsm24_fft_subidx + 1;
--                      end if;
--                      
--                  -- subidx 1022
--                  elsif (fsm24_fft_subidx = 1022) then
--                      XFFT24_s_data_tvalid_r  <= XFFT24_s_data_tvalid_r(2 downto 0) & '1';
--                      XFFT24_s_data_tlast_r   <= XFFT24_s_data_tlast_r(2 downto 0)  & '1';
--                      fsm24_fft_subidx        := fsm24_fft_subidx + 1;
--                      
--                  -- subidx 1023
--                  elsif (fsm24_fft_subidx = 1023) then
--                      XFFT24_s_data_tvalid_r  <= XFFT24_s_data_tvalid_r(2 downto 0) & '0';
--                      XFFT24_s_data_tlast_r   <= XFFT24_s_data_tlast_r(2 downto 0)  & '0';    -- wait until Port A reaches next trigger address
--                      fsm24_fft_subidx        := 0;
--                      fsm24_fft_state         := 8;
--                      
--                      if (fsm24_fft_subframectr /= 3) then
--                          fsm24_fft_subframectr := fsm24_fft_subframectr + 1;
--                      else
--                          fsm24_fft_subframectr := 0;
--                          if (fsm24_fft_framectr /= 1073741823) then  -- = 0x3fffffff
--                              fsm24_fft_framectr := fsm24_fft_framectr + 1;
--                          else
--                              fsm24_fft_framectr := 0;
--                          end if;
--                      end if;
--                      fsm24_fft_trigger := ((fsm24_fft_framectr * 1024) + (fsm24_fft_subframectr * 256) + 1024) mod (2 ** PreMem24_addra_r'length);
--                      
--                  -- subidx 1..1021
--                  else
--                      XFFT24_s_data_tvalid_r  <= XFFT24_s_data_tvalid_r(2 downto 0) & '1';
--                      XFFT24_s_data_tlast_r   <= XFFT24_s_data_tlast_r(2 downto 0)  & '0';
--                      fsm24_fft_subidx        := fsm24_fft_subidx + 1;
--                  end if;
--                  
--                  
--              when others =>
--                  XFFT24_aresetn          <= '0';
--                  XFFT24_s_data_tlast_r   <= (others => '0');
--                  XFFT24_s_data_tvalid_r  <= (others => '0');
--                  XFFT24_s_conf_tdata     <= (others => '0');
--                  XFFT24_s_conf_tvalid    <= '0';
--                  fsm24_fft_framectr      := 0;
--                  fsm24_fft_subframectr   := 0;
--                  fsm24_fft_subidx        := 0;
--                  fsm24_fft_addr          := 0;
--                  fsm24_fft_state         := 0;
--          end case;
--          
--          -- Delayed output signals for Memory access latency
--          XFFT24_s_data_tvalid    <= XFFT24_s_data_tvalid_r(3);
--          XFFT24_s_data_tlast     <= XFFT24_s_data_tlast_r(3);
--          
--          -- Frame and Subframe counters
--          RF24_framectr   <= std_logic_vector(to_unsigned(fsm24_fft_framectr, RF24_framectr'length));
--          RF24_quarterfrm <= std_logic_vector(to_unsigned(fsm24_fft_subframectr, RF24_quarterfrm'length));
--          
--          -- calc addr
--          fsm24_fft_addr              := ((fsm24_fft_framectr * 1024) + (fsm24_fft_subframectr * 256) + fsm24_fft_subidx) mod (2 ** PreMem24_addrb'length);
--          PreMem24_addrb              <= std_logic_vector(to_unsigned(fsm24_fft_addr, PreMem24_addrb'length));
--          FFT_window_coef_rom_rx24    <= std_logic_vector(to_unsigned(fsm24_fft_subidx, FFT_window_coef_rom_rx24'length));
--      end if;
--  end if;
--end process proc_PreMem24_out_FFT;
end Behavioral;
