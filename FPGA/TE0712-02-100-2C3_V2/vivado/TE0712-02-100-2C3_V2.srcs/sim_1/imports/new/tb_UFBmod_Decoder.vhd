----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2020 18:38:56
-- Design Name: 
-- Module Name: tb_barrel_rot32 - Behavioral
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

entity tb_UFBmod_Decoder is
--  Port ( );
end tb_UFBmod_Decoder;

architecture Behavioral of tb_UFBmod_Decoder is
  component UFBmod_Decoder is
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
  end component UFBmod_Decoder;

-- RESETS
  signal tb_resetn : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_post_fft_rx09_mem_a_addr            : STD_LOGIC_VECTOR (14 downto 0);
  signal tb_post_fft_rx09_mem_b_addr            : STD_LOGIC_VECTOR (14 downto 0);
  signal tb_post_fft_rx09_mem_b_dout            : STD_LOGIC_VECTOR (15 downto 0);
  signal tb_decoder_rx09_squelch_lvl            : STD_LOGIC_VECTOR (18 downto 0);
  signal tb_decoder_rx09_center_pos             : STD_LOGIC_VECTOR ( 4 downto 0);
  signal tb_decoder_rx09_strength               : STD_LOGIC_VECTOR (18 downto 0);
  shared variable post_fft_rx09_mem_b_dout_Int  : Integer;
begin
-- DUT
  UFBmod_Decoder_i: component UFBmod_Decoder
    port map (
      resetn                        => tb_resetn,
      clk                           => tb_clk,
      
      post_fft_rx09_mem_a_addr      => tb_post_fft_rx09_mem_a_addr,
      
      post_fft_rx09_mem_b_addr      => tb_post_fft_rx09_mem_b_addr,
      post_fft_rx09_mem_b_dout      => tb_post_fft_rx09_mem_b_dout,
      
      decoder_rx09_squelch_lvl      => tb_decoder_rx09_squelch_lvl,
      
      decoder_rx09_center_pos       => tb_decoder_rx09_center_pos,
      decoder_rx09_strength         => tb_decoder_rx09_strength
    );


-- RESETS
  proc_tb_reset: process
  begin
    tb_resetn <= '0';
    
    wait for 10us;
    tb_resetn <= '1';
    wait;
  end process proc_tb_reset;

-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk <= '1';
    wait for 5ns;
    
    tb_clk <= '0';
    wait for 5ns;
  end process proc_tb_clk;


-- STIMULI

  -- Squelch level setting
  proc_squelch_lvl: process
  constant C_squelch_lvl : Integer  := 256; -- Set squelch level
  begin
    tb_decoder_rx09_squelch_lvl <= (others => '0');
    
    wait until tb_resetn = '1';
    tb_decoder_rx09_squelch_lvl <= std_logic_vector(to_unsigned(C_squelch_lvl, tb_decoder_rx09_squelch_lvl'length));
    
    wait;
  end process proc_squelch_lvl;


  -- Port A address stimulus
  proc_tb_a_addr: process
  variable tb_a_addr_Int                : Integer;
  begin
    -- Position address pointer just before change of full 1024 frame
    tb_a_addr_Int                 := 1020;
    tb_post_fft_rx09_mem_a_addr   <= (others => '0');
    
    wait until tb_resetn = '1';
    wait for 10 us;
    
    -- Initial address to start with
    tb_post_fft_rx09_mem_a_addr   <= std_logic_vector(to_unsigned(tb_a_addr_Int, tb_post_fft_rx09_mem_a_addr'length));
    
    -- Address incrementor each 4 MSPS
    loop
        wait for 250 ns;
        
        if tb_a_addr_Int < 32767 then
            tb_a_addr_Int               := tb_a_addr_Int + 1;
        else
            tb_a_addr_Int               := 0;
        end if;
        
        tb_post_fft_rx09_mem_a_addr <= std_logic_vector(to_unsigned(tb_a_addr_Int, tb_post_fft_rx09_mem_a_addr'length));
    end loop;
  end process proc_tb_a_addr;


  -- Port B data stimulus
  proc_tb_b_dout: process
  variable idx                          : Integer;
  begin
    -- Position address pointer just before change of full 1024 frame
    post_fft_rx09_mem_b_dout_Int    := 5;
    idx                             := 0;
    tb_post_fft_rx09_mem_b_dout     <= (others => '0');
    
    wait until tb_resetn = '1';
    wait for 10 us;
    
    loop
        wait for 40 ns;
        
        post_fft_rx09_mem_b_dout_Int    := 1 + (idx mod 17);
        idx                             := idx + 1;
        tb_post_fft_rx09_mem_b_dout     <= std_logic_vector(to_unsigned(post_fft_rx09_mem_b_dout_Int, tb_post_fft_rx09_mem_b_dout'length));
    end loop;
    
  end process proc_tb_b_dout;
  
end Behavioral;
