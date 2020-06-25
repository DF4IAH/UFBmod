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

use IEEE.std_logic_1164.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FFT_controller is
  Port (
    -- All Clock Domain AXI 100 MHz
    resetn                  : in  STD_LOGIC;
    clk                     : in  STD_LOGIC;
    
    rx09_bs_32bits          : in  STD_LOGIC_VECTOR (31 downto 0);
    rx09_bs_32bits_vld      : in  STD_LOGIC;

    rx24_bs_32bits          : in  STD_LOGIC_VECTOR (31 downto 0);
    rx24_bs_32bits_vld      : in  STD_LOGIC;
    
    PreMem09_addra          : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem09_wea            : out STD_LOGIC;
    PreMem09_dina           : out STD_LOGIC_VECTOR (25 downto 0);  -- (b)  29..17: I-data, 13..01: Q-data
    PreMem09_addrb          : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    PreMem09_quarterfrm     : out STD_LOGIC_VECTOR ( 2 downto 0);
    
    PreMem24_addra          : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem24_wea            : out STD_LOGIC;
    PreMem24_dina           : out STD_LOGIC_VECTOR (25 downto 0);  -- see above (b)
    PreMem24_addrb          : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    PreMem24_quarterfrm     : out STD_LOGIC_VECTOR ( 2 downto 0);
    
    XFFT09_aresetn          : out STD_LOGIC;
    XFFT09_s_data_tlast     : out STD_LOGIC;
    XFFT09_s_data_tready    : in  STD_LOGIC;
    XFFT09_s_data_tvalid    : out STD_LOGIC;
    XFFT09_s_conf_tdata     : out STD_LOGIC_VECTOR ( 7 downto 0);
    XFFT09_s_conf_tvalid    : out STD_LOGIC;
    
    XFFT24_aresetn          : out STD_LOGIC;
    XFFT24_s_data_tlast     : out STD_LOGIC;
    XFFT24_s_data_tready    : in  STD_LOGIC;
    XFFT24_s_data_tvalid    : out STD_LOGIC;
    XFFT24_s_conf_tdata     : out STD_LOGIC_VECTOR ( 7 downto 0);
    XFFT24_s_conf_tvalid    : out STD_LOGIC
  );
end FFT_controller;

architecture Behavioral of FFT_controller is

signal PreMem09_addra_r : STD_LOGIC_VECTOR (10 downto 0);
signal PreMem24_addra_r : STD_LOGIC_VECTOR (10 downto 0);

begin
  -- PreMem In - Data (from Barrel-Shift to the Memory)
  -- rxXX_bs_32bits[29..17]: I (re)  /  rx09_bs_32bits[13..01]: Q (im)
  -- PreMemXX_dina[25..13]:  Q (im)  /  PreMem09_dina[12..00]:  I (re)
  PreMem09_dina <= rx09_bs_32bits(13 downto  1) & rx09_bs_32bits(29 downto 17);
  PreMem24_dina <= rx24_bs_32bits(13 downto  1) & rx24_bs_32bits(29 downto 17);
  
  -- PreMem09 In - Addr
  proc_PreMem09_in_Addr: process (resetn, clk, rx09_bs_32bits_vld)
  variable cnt09 : Integer;
  begin
    if (resetn = '0') then
      cnt09 := 0;
      PreMem09_addra_r  <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra_r'length));
      PreMem09_addra    <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
      PreMem09_wea      <= '0';
      
    elsif (clk'EVENT and clk = '1') then
      if (rx09_bs_32bits_vld = '1') then
        if (cnt09 /= 2047) then
          cnt09 := cnt09 + 1;
        else
          cnt09 := 0;
        end if;
        PreMem09_addra_r    <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra_r'length));
        PreMem09_addra      <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
        PreMem09_wea        <= '1';
        
      else
        PreMem09_wea <= '0';
      end if;
    end if;
  end process proc_PreMem09_in_Addr;
  
  -- PreMem24 In - Addr
  proc_PreMem24_in_Addr: process (resetn, clk, rx24_bs_32bits_vld)
  variable cnt24 : Integer;
  begin
    if (resetn = '0') then
      cnt24 := 0;
      PreMem24_addra_r  <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra_r'length));
      PreMem24_addra    <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
      PreMem24_wea      <= '0';
      
    elsif (clk'EVENT and clk = '1') then
      if (rx09_bs_32bits_vld = '1') then
        if (cnt24 /= 2047) then
          cnt24 := cnt24 + 1;
        else
          cnt24 := 0;
        end if;
        PreMem24_addra_r  <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra_r'length));
        PreMem24_addra    <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
        PreMem24_wea      <= '1';
        
      else
        PreMem24_wea <= '0';
      end if;
    end if;
  end process proc_PreMem24_in_Addr;
  
  
  -- PreMem 09 Out - FFT feeder
  proc_PreMem09_out_FFT: process (resetn, clk, PreMem09_addra_r)
  variable fsm09_fft_subidx         : Integer;
  variable fsm09_fft_quarterframe   : Integer;
  variable fsm09_fft_addr           : Integer;
  variable fsm09_fft_trigger        : Integer;
  variable fsm09_fft_state          : Integer;
  begin
    if (resetn = '0') then
      PreMem09_addrb          <= std_logic_vector(to_unsigned(0, PreMem09_addrb'length));
      XFFT09_aresetn          <= '0';
      XFFT09_s_data_tlast     <= '0';
      XFFT09_s_data_tvalid    <= '0';
      XFFT09_s_conf_tdata     <= std_logic_vector(to_unsigned(0, XFFT09_s_conf_tdata'length));
      XFFT09_s_conf_tvalid    <= '0';
      PreMem09_quarterfrm     <= std_logic_vector(to_unsigned(0, PreMem09_quarterfrm'length));
      fsm09_fft_subidx        := 0;
      fsm09_fft_quarterframe  := 0;
      fsm09_fft_trigger       := 0;
      fsm09_fft_addr          := 0;
      fsm09_fft_state         := 0;
      
    elsif (clk'EVENT and clk = '1') then
      fsm09_fft_trigger := (fsm09_fft_quarterframe + 4) * 256;
      if (fsm09_fft_trigger >= 2048) then
        fsm09_fft_trigger := fsm09_fft_trigger - 2048;
      end if;
      
      case fsm09_fft_state is
        when 0 =>
          -- Wait until one address before start trigger
          if (XFFT09_s_data_tready = '1'  
              and PreMem09_addra_r  = "01111111111"
          ) then
            XFFT09_aresetn          <= '1';         -- wait for two clocks before starting with data
            XFFT09_s_conf_tdata     <= "00000001";  -- bit 7..1: DC, bit 0: 1 = FFT forward
            XFFT09_s_conf_tvalid    <= '1';
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
          fsm09_fft_state := 8;
          
          
        -- subidx 0
        when 8 =>
          if (XFFT09_s_data_tready = '1'
              and PreMem09_addra_r = std_logic_vector(to_unsigned(fsm09_fft_trigger, PreMem09_addra_r'length))
          ) then
            XFFT09_s_data_tvalid    <= '1';
            XFFT09_s_data_tlast     <= '0';
            PreMem09_quarterfrm     <= std_logic_vector(to_unsigned(fsm09_fft_quarterframe, PreMem09_quarterfrm'length));
            fsm09_fft_subidx        := 0;
            fsm09_fft_state         := 9;
          end if;
          
        -- subidx 1..1023
        when 9 =>
          if (XFFT09_s_data_tready = '0') then
            XFFT09_s_data_tvalid    <= '0';
            
          -- subidx 1022
          elsif (fsm09_fft_subidx = 1022) then
            XFFT09_s_data_tvalid    <= '1';
            XFFT09_s_data_tlast     <= '1';
            fsm09_fft_subidx        := fsm09_fft_subidx + 1;
            
          -- subidx 1023
          elsif (fsm09_fft_subidx = 1023) then
            XFFT09_s_data_tlast     <= '0';
            XFFT09_s_data_tvalid    <= '0';  -- wait until Port A reaches next trigger address
            fsm09_fft_subidx        := 0;
            fsm09_fft_state         := 8;
            
            if (fsm09_fft_quarterframe /= 7) then
              fsm09_fft_quarterframe    := fsm09_fft_quarterframe + 1;
            else
              fsm09_fft_quarterframe    := 0;
            end if;
            
          -- subidx 1..1021
          else
            XFFT09_s_data_tvalid    <= '1';
            fsm09_fft_subidx        := fsm09_fft_subidx + 1;
          end if;
          
          
        when others =>
          XFFT09_aresetn            <= '0';
          XFFT09_s_data_tlast       <= '0';
          XFFT09_s_data_tvalid      <= '0';
          XFFT09_s_conf_tdata       <= std_logic_vector(to_unsigned(0, XFFT09_s_conf_tdata'length));
          XFFT09_s_conf_tvalid      <= '0';
          PreMem09_quarterfrm       <= std_logic_vector(to_unsigned(0, PreMem09_quarterfrm'length));
          fsm09_fft_subidx          := 0;
          fsm09_fft_quarterframe    := 0;
          fsm09_fft_trigger         := 0;
          fsm09_fft_addr            := 0;
          fsm09_fft_state           := 0;
      end case;
      
      -- calc addr
      fsm09_fft_addr        := (fsm09_fft_quarterframe * 256) + fsm09_fft_subidx;
      PreMem09_addrb        <= std_logic_vector(to_unsigned(fsm09_fft_addr, PreMem09_addrb'length));
    end if;
  end process proc_PreMem09_out_FFT;

  -- PreMem 24 Out - FFT feeder
  proc_PreMem24_out_FFT: process (resetn, clk, PreMem24_addra_r)
  variable fsm24_fft_subidx         : Integer;
  variable fsm24_fft_quarterframe   : Integer;
  variable fsm24_fft_addr           : Integer;
  variable fsm24_fft_trigger        : Integer;
  variable fsm24_fft_state          : Integer;
  begin
    if (resetn = '0') then
      PreMem24_addrb          <= std_logic_vector(to_unsigned(0, PreMem24_addrb'length));
      XFFT24_aresetn          <= '0';
      XFFT24_s_data_tlast     <= '0';
      XFFT24_s_data_tvalid    <= '0';
      XFFT24_s_conf_tdata     <= std_logic_vector(to_unsigned(0, XFFT24_s_conf_tdata'length));
      XFFT24_s_conf_tvalid    <= '0';
      PreMem24_quarterfrm     <= std_logic_vector(to_unsigned(0, PreMem24_quarterfrm'length));
      fsm24_fft_subidx        := 0;
      fsm24_fft_quarterframe  := 0;
      fsm24_fft_trigger       := 0;
      fsm24_fft_addr          := 0;
      fsm24_fft_state         := 0;
      
    elsif (clk'EVENT and clk = '1') then
      fsm24_fft_trigger := (fsm24_fft_quarterframe + 4) * 256;
      if (fsm24_fft_trigger >= 2048) then
        fsm24_fft_trigger := fsm24_fft_trigger - 2048;
      end if;
      
      case fsm24_fft_state is
        when 0 =>
          -- Wait until one address before start trigger
          if (XFFT24_s_data_tready = '1'  
              and PreMem24_addra_r  = "01111111111"
          ) then
            XFFT24_aresetn          <= '1';         -- wait for two clocks before starting with data
            XFFT24_s_conf_tdata     <= "00000001";  -- bit 7..1: DC, bit 0: 1 = FFT forward
            XFFT24_s_conf_tvalid    <= '1';
            fsm24_fft_state         := 1;
          end if;
          
        -- Wait state 1
        when 1 =>
          fsm24_fft_state := 2;
          
        -- Wait state 2
        when 2 =>
          fsm24_fft_state := 3;
          
        -- Wait state 3
        when 3 =>
          fsm24_fft_state := 4;

        -- Wait state 4
        when 4 =>
          fsm24_fft_state := 8;
          
          
        -- subidx 0
        when 8 =>
          if (XFFT24_s_data_tready = '1'
              and PreMem24_addra_r = std_logic_vector(to_unsigned(fsm24_fft_trigger, PreMem24_addra_r'length))
          ) then
            XFFT24_s_data_tvalid    <= '1';
            XFFT24_s_data_tlast     <= '0';
            PreMem24_quarterfrm     <= std_logic_vector(to_unsigned(fsm24_fft_quarterframe, PreMem24_quarterfrm'length));
            fsm24_fft_subidx        := 0;
            fsm24_fft_state         := 9;
          end if;
          
        -- subidx 1..1023
        when 9 =>
          if (XFFT24_s_data_tready = '0') then
            XFFT24_s_data_tvalid    <= '0';
            
          -- subidx 1022
          elsif (fsm24_fft_subidx = 1022) then
            XFFT24_s_data_tvalid    <= '1';
            XFFT24_s_data_tlast     <= '1';
            fsm24_fft_subidx        := fsm24_fft_subidx + 1;
            
          -- subidx 1023
          elsif (fsm24_fft_subidx = 1023) then
            XFFT24_s_data_tlast     <= '0';
            XFFT24_s_data_tvalid    <= '0';  -- wait until Port A reaches next trigger address
            fsm24_fft_subidx        := 0;
            fsm24_fft_state         := 8;
            
            if (fsm24_fft_quarterframe /= 7) then
              fsm24_fft_quarterframe    := fsm24_fft_quarterframe + 1;
            else
              fsm24_fft_quarterframe    := 0;
            end if;
            
          -- subidx 1..1021
          else
            XFFT24_s_data_tvalid    <= '1';
            fsm24_fft_subidx        := fsm24_fft_subidx + 1;
          end if;
          
          
        when others =>
          XFFT24_aresetn            <= '0';
          XFFT24_s_data_tlast       <= '0';
          XFFT24_s_data_tvalid      <= '0';
          XFFT24_s_conf_tdata       <= std_logic_vector(to_unsigned(0, XFFT24_s_conf_tdata'length));
          XFFT24_s_conf_tvalid      <= '0';
          PreMem24_quarterfrm       <= std_logic_vector(to_unsigned(0, PreMem24_quarterfrm'length));
          fsm24_fft_subidx          := 0;
          fsm24_fft_quarterframe    := 0;
          fsm24_fft_trigger         := 0;
          fsm24_fft_addr            := 0;
          fsm24_fft_state           := 0;
      end case;
      
      -- calc addr
      fsm24_fft_addr        := (fsm24_fft_quarterframe * 256) + fsm24_fft_subidx;
      PreMem24_addrb        <= std_logic_vector(to_unsigned(fsm24_fft_addr, PreMem24_addrb'length));
    end if;
  end process proc_PreMem24_out_FFT;
end Behavioral;