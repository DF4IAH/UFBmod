----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.07.2020 09:30:05
-- Design Name: 
-- Module Name: tb_SCOPE - Behavioral
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

entity tb_FFT_controller is
--  Port ( );
end tb_FFT_controller;

architecture Behavioral of tb_FFT_controller is
  --constant GPIO0_OUT_enable         : natural   :=  0;


component  FFT_controller is
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

    RF09_quarterfrm         : out STD_LOGIC_VECTOR ( 1 downto 0);  -- subframes of  64 us
    RF09_framectr           : out STD_LOGIC_VECTOR (29 downto 0);  -- frames    of 256 us
    
    PreMem24_addra          : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem24_wea            : out STD_LOGIC;
    PreMem24_dina           : out STD_LOGIC_VECTOR (25 downto 0);  -- see above (b)
    PreMem24_addrb          : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)

    RF24_quarterfrm         : out STD_LOGIC_VECTOR ( 1 downto 0);  -- subframes of  64 us
    RF24_framectr           : out STD_LOGIC_VECTOR (29 downto 0);  -- frames    of 256 us
    
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
end component FFT_controller;
    
-- RESETS
  signal tb_resetn                          : STD_LOGIC;

-- CLOCKS
  signal tb_clk                             : STD_LOGIC;

-- STIMULUS
  signal tb_rx09_bs_32bits                  : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rx09_bs_32bits_vld              : STD_LOGIC;

  signal tb_rx24_bs_32bits                  : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rx24_bs_32bits_vld              : STD_LOGIC;
    
  signal tb_PreMem09_addra                  : STD_LOGIC_VECTOR (10 downto 0);
  signal tb_PreMem09_wea                    : STD_LOGIC;
  signal tb_PreMem09_dina                   : STD_LOGIC_VECTOR (25 downto 0);
  signal tb_PreMem09_addrb                  : STD_LOGIC_VECTOR (10 downto 0);

  signal tb_RF09_quarterfrm                 : STD_LOGIC_VECTOR ( 1 downto 0);
  signal tb_RF09_framectr                   : STD_LOGIC_VECTOR (29 downto 0);
    
  signal tb_PreMem24_addra                  : STD_LOGIC_VECTOR (10 downto 0);
  signal tb_PreMem24_wea                    : STD_LOGIC;
  signal tb_PreMem24_dina                   : STD_LOGIC_VECTOR (25 downto 0);
  signal tb_PreMem24_addrb                  : STD_LOGIC_VECTOR (10 downto 0);

  signal tb_RF24_quarterfrm                 : STD_LOGIC_VECTOR ( 1 downto 0);
  signal tb_RF24_framectr                   : STD_LOGIC_VECTOR (29 downto 0);
    
  signal tb_XFFT09_aresetn                  : STD_LOGIC;
  signal tb_XFFT09_s_data_tlast             : STD_LOGIC;
  signal tb_XFFT09_s_data_tready            : STD_LOGIC;
  signal tb_XFFT09_s_data_tvalid            : STD_LOGIC;
  signal tb_XFFT09_s_conf_tdata             : STD_LOGIC_VECTOR ( 7 downto 0);
  signal tb_XFFT09_s_conf_tvalid            : STD_LOGIC;
    
  signal tb_XFFT24_aresetn                  : STD_LOGIC;
  signal tb_XFFT24_s_data_tlast             : STD_LOGIC;
  signal tb_XFFT24_s_data_tready            : STD_LOGIC;
  signal tb_XFFT24_s_data_tvalid            : STD_LOGIC;
  signal tb_XFFT24_s_conf_tdata             : STD_LOGIC_VECTOR ( 7 downto 0);
  signal tb_XFFT24_s_conf_tvalid            : STD_LOGIC;


begin
-- DUT
  FFT_controller_i: component FFT_controller
    port map (
      resetn                        => tb_resetn,
      clk                           => tb_clk,
    
      rx09_bs_32bits                => tb_rx09_bs_32bits,                               -- in  STD_LOGIC_VECTOR (31 downto 0);
      rx09_bs_32bits_vld            => tb_rx09_bs_32bits_vld,                           -- in  STD_LOGIC;

      rx24_bs_32bits                => tb_rx24_bs_32bits,                               -- in  STD_LOGIC_VECTOR (31 downto 0);
      rx24_bs_32bits_vld            => tb_rx24_bs_32bits_vld,                           -- in  STD_LOGIC;
    
      PreMem09_addra                => tb_PreMem09_addra,                               -- out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
      PreMem09_wea                  => tb_PreMem09_wea,                                 -- out STD_LOGIC;
      PreMem09_dina                 => tb_PreMem09_dina,                                -- out STD_LOGIC_VECTOR (25 downto 0);  -- (b)  29..17: I-data, 13..01: Q-data
      PreMem09_addrb                => tb_PreMem09_addrb,                               -- out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)

      RF09_quarterfrm               => tb_RF09_quarterfrm,                              -- out STD_LOGIC_VECTOR ( 1 downto 0);  -- subframes of  64 us
      RF09_framectr                 => tb_RF09_framectr,                                -- out STD_LOGIC_VECTOR (29 downto 0);  -- frames    of 256 us
    
      PreMem24_addra                => tb_PreMem24_addra,                               -- out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
      PreMem24_wea                  => tb_PreMem24_wea,                                 -- out STD_LOGIC;
      PreMem24_dina                 => tb_PreMem24_dina,                                -- out STD_LOGIC_VECTOR (25 downto 0);  -- see above (b)
      PreMem24_addrb                => tb_PreMem24_addrb,                               -- out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)

      RF24_quarterfrm               => tb_RF24_quarterfrm,                              -- out STD_LOGIC_VECTOR ( 1 downto 0);  -- subframes of  64 us
      RF24_framectr                 => tb_RF24_framectr,                                -- out STD_LOGIC_VECTOR (29 downto 0);  -- frames    of 256 us
    
      XFFT09_aresetn                => tb_XFFT09_aresetn,                               -- out STD_LOGIC;
      XFFT09_s_data_tlast           => tb_XFFT09_s_data_tlast,                          -- out STD_LOGIC;
      XFFT09_s_data_tready          => tb_XFFT09_s_data_tready,                         -- in  STD_LOGIC;
      XFFT09_s_data_tvalid          => tb_XFFT09_s_data_tvalid,                         -- out STD_LOGIC;
      XFFT09_s_conf_tdata           => tb_XFFT09_s_conf_tdata,                          -- out STD_LOGIC_VECTOR ( 7 downto 0);
      XFFT09_s_conf_tvalid          => tb_XFFT09_s_conf_tvalid,                         -- out STD_LOGIC;
    
      XFFT24_aresetn                => tb_XFFT24_aresetn,                               -- out STD_LOGIC;
      XFFT24_s_data_tlast           => tb_XFFT24_s_data_tlast,                          -- out STD_LOGIC;
      XFFT24_s_data_tready          => tb_XFFT24_s_data_tready,                         -- in  STD_LOGIC;
      XFFT24_s_data_tvalid          => tb_XFFT24_s_data_tvalid,                         -- out STD_LOGIC;
      XFFT24_s_conf_tdata           => tb_XFFT24_s_conf_tdata,                          -- out STD_LOGIC_VECTOR ( 7 downto 0);
      XFFT24_s_conf_tvalid          => tb_XFFT24_s_conf_tvalid                          -- out STD_LOGIC
    );


-- STIMULI
  -- Enter dummy data RF09
  proc_rx09_bs: process
  variable rx09_bs_counter : Integer;
  begin
    rx09_bs_counter         := 0;
    tb_rx09_bs_32bits_vld   <= '0';
    tb_rx09_bs_32bits       <= (others => '0');
    
    wait until tb_resetn = '1';
    
    loop
      wait until tb_clk = '1';

      -- Stage 1 - Clock in dummy data
      tb_rx09_bs_32bits_vld <= '1';
      tb_rx09_bs_32bits <= std_logic_vector(to_unsigned(rx09_bs_counter, tb_rx09_bs_32bits'length));
      rx09_bs_counter   := rx09_bs_counter + 131072;  -- Real [29..17]
      wait until tb_clk = '0';

      -- Stage 2
      wait until tb_clk = '1';
      tb_rx09_bs_32bits_vld <= '0';
      wait until tb_clk = '0';

      -- Stage 3
      wait until tb_clk = '1';
      wait until tb_clk = '0';

      -- Stage 4
      wait until tb_clk = '1';
      wait until tb_clk = '0';

      -- Stage 5
      wait until tb_clk = '1';
      wait until tb_clk = '0';

      -- Stage 6
      wait until tb_clk = '1';
      wait until tb_clk = '0';
    end loop;
    
    -- Do not start process again
    wait;
  end process proc_rx09_bs;


  -- Enter dummy data RF24
  proc_rx24_bs: process
  variable rx24_bs_counter : Integer;
  begin
    rx24_bs_counter         := 0;
    tb_rx24_bs_32bits_vld   <= '0';
    tb_rx24_bs_32bits       <= (others => '0');
    
    wait until tb_resetn = '1';
    tb_rx24_bs_32bits_vld <= '1';
    
    loop
      wait until tb_clk = '1';

      -- Stage 1 - Clock in dummy data
      tb_rx24_bs_32bits_vld <= '1';
      tb_rx24_bs_32bits <= std_logic_vector(to_unsigned(rx24_bs_counter, tb_rx24_bs_32bits'length));
      rx24_bs_counter   := rx24_bs_counter + 131072;  -- Real [29..17]
      wait until tb_clk = '0';

      -- Stage 2
      wait until tb_clk = '1';
      tb_rx24_bs_32bits_vld <= '0';
      wait until tb_clk = '0';

      -- Stage 3
      wait until tb_clk = '1';
      wait until tb_clk = '0';

      -- Stage 4
      wait until tb_clk = '1';
      wait until tb_clk = '0';

      -- Stage 5
      wait until tb_clk = '1';
      wait until tb_clk = '0';

      -- Stage 6
      wait until tb_clk = '1';
      wait until tb_clk = '0';
    end loop;
    
    -- Do not start process again
    wait;
  end process proc_rx24_bs;
  
  
  -- Stimu XFFT09 unit
  proc_fft09: process
  begin
    tb_XFFT09_s_data_tready <= '0';
    
    wait until tb_resetn = '1';
    tb_XFFT09_s_data_tready <= '1';
    
    -- Do not start process again
    wait;
  end process proc_fft09;


  -- Stimu XFFT24 unit
  proc_fft24: process
  begin
    tb_XFFT24_s_data_tready <= '0';
    
    wait until tb_resetn = '1';
    tb_XFFT24_s_data_tready <= '1';
    
    -- Do not start process again
    wait;
  end process proc_fft24;

  
-- RESETS
  proc_tb_resetn: process
  begin
    tb_resetn <= '0';

    wait for 10us;
    tb_resetn <= '1';
    wait;
  end process proc_tb_resetn;


-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk <= '1';
    wait for 5ns;

    tb_clk <= '0';
    wait for 5ns;
  end process proc_tb_clk;

end Behavioral;
