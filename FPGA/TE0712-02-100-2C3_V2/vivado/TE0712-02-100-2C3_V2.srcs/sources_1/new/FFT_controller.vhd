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

  -- proc_PreMem_in_Addr
  signal PreMem_lckUpper      : STD_LOGIC;
  
  -- proc_PreMem_in_PageChange
  signal PreMem_lckUpper_d    : STD_LOGIC;
  signal PreMem_in_PgeCh      : STD_LOGIC;

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
      PreMem09_addra    <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
      PreMem09_wea      <= '0';
      PreMem_lckUpper   <= '0';
      
    elsif (clk'EVENT and clk = '1'  and  rx09_bs_32bits_vld = '1') then
      if (cnt09 /= 2047) then
        cnt09 := cnt09 + 1;
      else
        cnt09 := 0;
      end if;
      PreMem09_addra <= std_logic_vector(to_unsigned(cnt09, PreMem09_addra'length));
      PreMem09_wea <= '1';
      
      if (0 <= cnt09  and  cnt09 < 1024) then
        PreMem_lckUpper <= '0';
      else
        PreMem_lckUpper <= '1';
      end if;

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
      PreMem24_addra    <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
      PreMem24_wea      <= '0';
      
    elsif (clk'EVENT and clk = '1'  and  rx24_bs_32bits_vld = '1') then
      if (cnt24 /= 2047) then
        cnt24 := cnt24 + 1;
      else
        cnt24 := 0;
      end if;
      PreMem24_addra    <= std_logic_vector(to_unsigned(cnt24, PreMem24_addra'length));
      PreMem24_wea      <= '1';
      
    elsif (clk'EVENT and clk = '1'  and  rx24_bs_32bits_vld = '0') then
      PreMem24_wea <= '0';
    end if;
  end process proc_PreMem24_in_Addr;
  
  -- PreMem In - page change between lower and upper frame
  proc_PreMem_in_PageChange: process (resetn, clk, PreMem_lckUpper)
  begin
    if (resetn = '0') then
      PreMem_in_PgeCh   <= '0';
      PreMem_lckUpper_d <= '0';
      
    elsif (clk'EVENT and clk = '1') then
      if (PreMem_lckUpper_d /= PreMem_lckUpper) then
        PreMem_in_PgeCh <= '1';
      else
        PreMem_in_PgeCh <= '0';
      end if;
      
      PreMem_lckUpper_d <= PreMem_lckUpper; 
    end if;
  end process proc_PreMem_in_PageChange;
  
  -- PreMem 09 / 24 Out - FFT feeder
  proc_PreMem_out_FFT: process (resetn, clk, PreMem_in_PgeCh, PreMem_lckUpper)
  variable fsm_fft_subframe : Integer;
  variable fsm_fft_subidx   : Integer;
  variable fsm_fft_addr     : Integer;
  variable fsm_fft_state    : Integer;
  begin
    if (resetn = '0') then
      PreMem_addrb          <= std_logic_vector(to_unsigned(0, PreMem_addrb'length));
      XFFT_aresetn          <= '0';
      XFFT_s_data_tlast     <= '0';
      XFFT_s_data_tvalid    <= '0';
      XFFT_s_conf_tdata     <= std_logic_vector(to_unsigned(0, XFFT_s_conf_tdata'length));
      XFFT_s_conf_tvalid    <= '0';
      fsm_fft_subframe      := 0;
      fsm_fft_subidx        := 0;
      fsm_fft_addr          := 0;
      fsm_fft_state         := 0;
      
    elsif (clk'EVENT and clk = '1') then
      case fsm_fft_state is
        when 0 =>
          -- Wait until lower frame is filled with (new) data
          if (PreMem_in_PgeCh = '1'  and  PreMem_lckUpper = '1') then
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

        -- Wait state 4a
        when 4 =>
          fsm_fft_state := 8;
          
          
        -- subidx 0 - lower frame
        when 8 =>
          if (XFFT_s_data_tready = '1'  and  PreMem_lckUpper = '1') then
            XFFT_s_data_tvalid    <= '1';
            XFFT_s_data_tlast     <= '0';
            fsm_fft_subframe      := 0;
            fsm_fft_subidx        := 0;
            fsm_fft_state         := 9;
          end if;
          
        -- subidx 1..1023 - lower frame
        when 9 =>
          if (XFFT_s_data_tready = '0') then
            XFFT_s_data_tvalid  <= '0';
            
          -- subidx 1022 - lower frame
          elsif (fsm_fft_subidx = 1022) then
            XFFT_s_data_tvalid  <= '1';
            XFFT_s_data_tlast   <= '1';
            fsm_fft_subidx      := fsm_fft_subidx + 1;
            
          -- subidx 1023 - lower frame
          elsif (fsm_fft_subidx = 1023) then
            XFFT_s_data_tlast   <= '0';
            fsm_fft_subidx      := 0;
            
            -- sub-frame 0..2
            if (fsm_fft_subframe /= 3) then
              XFFT_s_data_tvalid  <= '1';
              fsm_fft_subframe    := fsm_fft_subframe + 1;
              fsm_fft_state       := 9;
              
            -- sub-frame 3
            else
              -- do not feed FFT anymore, output still works
              XFFT_s_data_tvalid  <= '0';
              fsm_fft_subframe    := 0;
              fsm_fft_state       := 16;
            end if;
            
          -- subidx 1..1021 - lower frame
          else
            XFFT_s_data_tvalid  <= '1';
            fsm_fft_subidx      := fsm_fft_subidx + 1;
          end if;
          
          
        -- subidx 0 - upper frame
        when 16 =>
          if (XFFT_s_data_tready = '1'  and  PreMem_lckUpper = '0') then
            XFFT_s_data_tvalid    <= '1';
            XFFT_s_data_tlast     <= '0';
            fsm_fft_subframe      := 0;
            fsm_fft_subidx        := 0;
            fsm_fft_state         := 17;
          end if;
          
        -- subidx 1..1023 - upper frame
        when 17 =>
          if (XFFT_s_data_tready = '0') then
            XFFT_s_data_tvalid  <= '0';
            
          -- subidx 1022 - upper frame
          elsif (fsm_fft_subidx = 1022) then
            XFFT_s_data_tvalid  <= '1';
            XFFT_s_data_tlast   <= '1';
            fsm_fft_subidx      := fsm_fft_subidx + 1;
            
          -- subidx 1023 - upper frame
          elsif (fsm_fft_subidx = 1023) then
            XFFT_s_data_tlast   <= '0';
            fsm_fft_subidx      := 0;
            
            -- sub-frame 0..2
            if (fsm_fft_subframe /= 3) then
              XFFT_s_data_tvalid  <= '1';
              fsm_fft_subframe    := fsm_fft_subframe + 1;
              fsm_fft_state       := 17;
              
            -- sub-frame 3
            else
              -- do not feed FFT anymore, output still works
              XFFT_s_data_tvalid  <= '0';
              fsm_fft_subframe    := 0;
              fsm_fft_state       := 8;
            end if;
            
          -- subidx 1..1021 - upper frame
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
          fsm_fft_subframe      := 0;
          fsm_fft_subidx        := 0;
          fsm_fft_addr          := 0;
          fsm_fft_state         := 0;
      end case;

      -- calc addr
      if (PreMem_lckUpper = '1') then
        -- use lower frame
        fsm_fft_addr := (fsm_fft_subframe * 256) + (fsm_fft_subidx);
      else
        -- use upper frame
        fsm_fft_addr := (fsm_fft_subframe * 256) + (fsm_fft_subidx) + 1024;
      end if;
      PreMem_addrb  <= std_logic_vector(to_unsigned(fsm_fft_addr, PreMem_addrb'length));
    end if;
  end process proc_PreMem_out_FFT;

end Behavioral;
