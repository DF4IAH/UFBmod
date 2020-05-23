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
    resetn              : in  STD_LOGIC;
    clk                 : in  STD_LOGIC;
    
    rx09_bs_32bits      : in  STD_LOGIC_VECTOR (31 downto 0);
    rx09_bs_32bits_vld  : in  STD_LOGIC;
    rx24_bs_32bits      : in  STD_LOGIC_VECTOR (31 downto 0);
    rx24_bs_32bits_vld  : in  STD_LOGIC;
    
    PreMem09_addra      : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem09_wea        : out STD_LOGIC;
    PreMem09_dina       : out STD_LOGIC_VECTOR (25 downto 0);  -- (b)  29..17: I-data, 13..01: Q-data
    
    PreMem24_addra      : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem24_wea        : out STD_LOGIC;
    PreMem24_dina       : out STD_LOGIC_VECTOR (25 downto 0);  -- see above (b)

    PreMem_addrb        : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    
    XFFT_aresetn        : out STD_LOGIC;
    XFFT_s_data_tlast   : out STD_LOGIC;
    XFFT_s_data_tready  : in  STD_LOGIC;
    XFFT_s_data_tvalid  : out STD_LOGIC;
    XFFT_s_conf_tdata   : out STD_LOGIC_VECTOR (7 downto 0);
    XFFT_s_conf_tready  : in  STD_LOGIC;
    XFFT_s_conf_tvalid  : out STD_LOGIC;

    COR09_m_plr_tlast   : in  STD_LOGIC;
    COR09_m_plr_tvalid  : in  STD_LOGIC;
    COR09_m_plr_tuser   : in  STD_LOGIC_VECTOR (15 downto 0);

    PostMem_addra       : out STD_LOGIC_VECTOR (12 downto 0);
    PostMem_wea         : out STD_LOGIC
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
  proc_PreMem09_in_Addr: process (resetn, clk, rx09_bs_32bits_vld, rx24_bs_32bits_vld)
  variable cnt09 : Integer;
  begin
    if (resetn = '0') then
      cnt09             := 0;
      PreMem09_addra_r  <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra_r'length));
      PreMem09_addra    <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
      PreMem09_wea      <= '0';
      
    elsif (clk'EVENT and clk = '1'  and  rx09_bs_32bits_vld = '1') then
      if (cnt09 /= 2047) then
        cnt09 := cnt09 + 1;
      else
        cnt09 := 0;
      end if;
      PreMem09_addra_r  <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra_r'length));
      PreMem09_addra    <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
      PreMem09_wea      <= '1';

    elsif (clk'EVENT and clk = '1'  and  rx09_bs_32bits_vld = '0') then
      PreMem09_wea <= '0';
    end if;
  end process proc_PreMem09_in_Addr;
 
  -- PreMem24 In - Addr
  proc_PreMem24_in_Addr: process (resetn, clk, rx24_bs_32bits_vld)
  variable cnt24 : Integer;
  begin
    if (resetn = '0') then
      cnt24             := 0;
      PreMem24_addra_r  <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra_r'length));
      PreMem24_addra    <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
      PreMem24_wea      <= '0';
      
    elsif (clk'EVENT and clk = '1'  and  rx24_bs_32bits_vld = '1') then
      if (cnt24 /= 2047) then
        cnt24 := cnt24 + 1;
      else
        cnt24 := 0;
      end if;
      PreMem24_addra_r  <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra_r'length));
      PreMem24_addra    <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
      PreMem24_wea      <= '1';
      
    elsif (clk'EVENT and clk = '1'  and  rx24_bs_32bits_vld = '0') then
      PreMem24_wea <= '0';
    end if;
  end process proc_PreMem24_in_Addr;
  
  -- PreMem 09 Out - FFT feeder
  proc_PreMem_out_FFT: process (resetn, clk, PreMem09_addra_r)
  variable fsm_fft_subidx       : Integer;
  variable fsm_fft_quarterframe : Integer;
  variable fsm_fft_addr         : Integer;
  variable fsm_fft_trigger      : Integer;
  variable fsm_fft_state        : Integer;
  begin
    if (resetn = '0') then
      PreMem_addrb          <= std_logic_vector(to_unsigned(0, PreMem_addrb'length));
      XFFT_aresetn          <= '0';
      XFFT_s_data_tlast     <= '0';
      XFFT_s_data_tvalid    <= '0';
      XFFT_s_conf_tdata     <= std_logic_vector(to_unsigned(0, XFFT_s_conf_tdata'length));
      XFFT_s_conf_tvalid    <= '0';
      fsm_fft_subidx        := 0;
      fsm_fft_quarterframe  := 0;
      fsm_fft_trigger       := 0;
      fsm_fft_addr          := 0;
      fsm_fft_state         := 0;
      
    elsif (clk'EVENT and clk = '1') then
      fsm_fft_trigger := (fsm_fft_quarterframe + 4) * 256;
      if (fsm_fft_trigger >= 2048) then
        fsm_fft_trigger := fsm_fft_trigger - 2048;
      end if;
      
      case fsm_fft_state is
        when 0 =>
          -- Wait until one address before start trigger
          if (XFFT_s_data_tready = '1'  
              and PreMem09_addra_r = "01111111111"
          ) then
            XFFT_aresetn        <= '1';  -- wait for two clocks before starting with data
            XFFT_s_conf_tdata   <= "00000011";  -- bit 7..2: DC, bit 1: 1 = FFT 24 forward, bit 0: 1 = FFT 09 forward
            XFFT_s_conf_tvalid  <= '0';
            fsm_fft_state       := 1;
          end if;
          
        -- Wait state 1
        when 1 =>
          fsm_fft_state := 2;
          
        -- Wait state 2
        when 2 =>
          fsm_fft_state := 3;
          
        -- Wait state 3
        when 3 =>
          fsm_fft_state := 4;

        -- Wait state 4
        when 4 =>
          fsm_fft_state := 8;
          
          
        -- subidx 0
        when 8 =>
          if (XFFT_s_data_tready = '1'
              and PreMem09_addra_r = std_logic_vector(to_unsigned(fsm_fft_trigger, PreMem09_addra_r'length))
          ) then
            XFFT_s_data_tvalid    <= '1';
            XFFT_s_data_tlast     <= '0';
            fsm_fft_subidx        := 0;
            fsm_fft_state         := 9;
          end if;
          
        -- subidx 1..1023
        when 9 =>
          if (XFFT_s_data_tready = '0') then
            XFFT_s_data_tvalid  <= '0';
            
          -- subidx 1022
          elsif (fsm_fft_subidx = 1022) then
            XFFT_s_data_tvalid  <= '1';
            XFFT_s_data_tlast   <= '1';
            fsm_fft_subidx      := fsm_fft_subidx + 1;
            
          -- subidx 1023
          elsif (fsm_fft_subidx = 1023) then
            XFFT_s_data_tlast   <= '0';
            XFFT_s_data_tvalid  <= '0';  -- wait until Port A reaches next trigger address
            fsm_fft_subidx      := 0;
            fsm_fft_state       := 8;
            
            if (fsm_fft_quarterframe /= 7) then
              fsm_fft_quarterframe  := fsm_fft_quarterframe + 1;
            else
              fsm_fft_quarterframe  := 0;
            end if;
            
          -- subidx 1..1021
          else
            XFFT_s_data_tvalid  <= '1';
            fsm_fft_subidx      := fsm_fft_subidx + 1;
          end if;
          
          
        when others =>
          XFFT_aresetn          <= '0';
          XFFT_s_data_tlast     <= '0';
          XFFT_s_data_tvalid    <= '0';
          XFFT_s_conf_tdata     <= std_logic_vector(to_unsigned(0, XFFT_s_conf_tdata'length));
          XFFT_s_conf_tvalid    <= '0';
          fsm_fft_subidx        := 0;
          fsm_fft_quarterframe  := 0;
          fsm_fft_trigger       := 0;
          fsm_fft_addr          := 0;
          fsm_fft_state         := 0;
      end case;
      
      -- calc addr
      fsm_fft_addr := (fsm_fft_quarterframe * 256) + fsm_fft_subidx;
      PreMem_addrb  <= std_logic_vector(to_unsigned(fsm_fft_addr, PreMem_addrb'length));
    end if;
  end process proc_PreMem_out_FFT;

end Behavioral;
