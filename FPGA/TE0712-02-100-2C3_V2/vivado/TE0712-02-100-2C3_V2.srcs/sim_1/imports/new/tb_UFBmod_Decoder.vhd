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
        
        post_fft_rx09_mem_a_addr                : in  STD_LOGIC_VECTOR(41 downto 0);
        
        post_fft_rx09_mem_b_addr                : out STD_LOGIC_VECTOR(14 downto 0);
        post_fft_rx09_mem_b_dout                : in  STD_LOGIC_VECTOR(15 downto 0);
        
        decoder_rx09_squelch_lvl                : in  STD_LOGIC_VECTOR(18 downto 0);
        
        decoder_rx09_SoM_frameCtrAddr           : out STD_LOGIC_VECTOR(41 downto 0);
        decoder_rx09_center_pos                 : out STD_LOGIC_VECTOR( 4 downto 0);
        decoder_rx09_strength                   : out STD_LOGIC_VECTOR(18 downto 0);
        
        -- Debugging purposes only
        dbg_max_val                             : out STD_LOGIC_VECTOR(18 downto 0)
    );
  end component UFBmod_Decoder;

-- RESETS
  signal tb_resetn : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_pre_fft_rx09_mem_a_addr             : STD_LOGIC_VECTOR (10 downto 0);
  signal tb_post_fft_rx09_mem_a_addr            : STD_LOGIC_VECTOR (41 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_FrmCtr     : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_PreAAddr   : STD_LOGIC_VECTOR (10 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_PostBAddr  : STD_LOGIC_VECTOR (14 downto 0);
  signal tb_post_fft_rx09_mem_b_addr            : STD_LOGIC_VECTOR (14 downto 0);
  signal tb_post_fft_rx09_mem_b_dout_d0         : STD_LOGIC_VECTOR (15 downto 0);
  signal tb_post_fft_rx09_mem_b_dout            : STD_LOGIC_VECTOR (15 downto 0);
  signal tb_decoder_rx09_squelch_lvl            : STD_LOGIC_VECTOR (18 downto 0);
  signal tb_decoder_rx09_center_pos             : STD_LOGIC_VECTOR ( 4 downto 0);
  signal tb_decoder_rx09_strength               : STD_LOGIC_VECTOR (18 downto 0);
  shared variable post_fft_rx09_mem_b_dout_Int  : Integer;
begin

  -- Debugging aid
  tb_post_fft_rx09_mem_a_addr_FrmCtr      <= tb_post_fft_rx09_mem_a_addr(41 downto 10);
  tb_post_fft_rx09_mem_a_addr_PreAAddr    <= tb_post_fft_rx09_mem_a_addr(10 downto  0);
  tb_post_fft_rx09_mem_a_addr_PostBAddr   <= tb_post_fft_rx09_mem_a_addr(14 downto  0);


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
    tb_resetn   <= '0';
    
    wait for 10us;
    tb_resetn   <= '1';
    wait;
  end process proc_tb_reset;

-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk      <= '1';
    wait for 5ns;
    
    tb_clk      <= '0';
    wait for 5ns;
  end process proc_tb_clk;


-- STIMULI

  -- Squelch level setting
  proc_squelch_lvl: process
  constant C_squelch_lvl        : Integer  := 100; -- Set squelch level
  begin
    tb_decoder_rx09_squelch_lvl <= (others => '0');
    
    wait until tb_resetn = '1';
    tb_decoder_rx09_squelch_lvl <= std_logic_vector(to_unsigned(C_squelch_lvl, tb_decoder_rx09_squelch_lvl'length));
    
    wait;
  end process proc_squelch_lvl;


  -- Pre FFT port A address stimulus
  proc_tb_pre_a_addr: process
    constant C_pre_mem_a_depth          : Integer   := 2048;
    variable pre_a_addr_Int             : Integer;
begin
    pre_a_addr_Int := 0;
    
    wait until tb_resetn = '1';
    loop
        wait until tb_clk'event and tb_clk = '1';
        
        tb_pre_fft_rx09_mem_a_addr <= std_logic_vector(to_unsigned(pre_a_addr_Int, tb_pre_fft_rx09_mem_a_addr'length));
        pre_a_addr_Int := (pre_a_addr_Int + 1) mod C_pre_mem_a_depth;
        
        wait for 250 ns;
    end loop;
  end process proc_tb_pre_a_addr;

  
  -- Post FFT port A address stimulus
  proc_tb_post_a_addr: process
  variable frame_start_Int              : Integer;
  variable post_a_addr_Int              : Integer;
  begin
    -- Position address pointer just before change of full 1024 frame
    frame_start_Int                     := 0;
    post_a_addr_Int                     := 0;
    tb_post_fft_rx09_mem_a_addr         <= (others => '0');
    
    wait until tb_resetn = '1';
    
    -- post_fft: Address incrementor each 64 us
    loop
        -- Every 64 us ends a sub-frame of 256 points offset to each other
        wait until (tb_pre_fft_rx09_mem_a_addr and "00011111111") = "00000000000"; 
        
        -- FFT out burst starts abt. 30 us after points are delivered in
        wait for 30 us;
        
        for ii in 0 to 1023 loop
            wait until tb_clk'event and tb_clk = '1';
            post_a_addr_Int             := frame_start_Int + ii;
            tb_post_fft_rx09_mem_a_addr <= std_logic_vector(to_unsigned(post_a_addr_Int, tb_post_fft_rx09_mem_a_addr'length));
        end loop;
        
        frame_start_Int := frame_start_Int + 1024;
    end loop;
  end process proc_tb_post_a_addr;


  -- Port B data stimulus
  -- TODO
  proc_tb_b_dout: process
  constant C_postmem_depth                      : Integer   := 32768;
  constant C_postmem_pages                      : Integer   := 4;
  constant C_postmemSim_depth                   : Integer   := C_postmem_pages * C_postmem_depth;
  constant C_centerOfs                          : Integer   := +1; 

  type PostMemType                              is array ((C_postmemSim_depth - 1) downto 0) of Integer; 
  variable postmemSim                           : PostMemType;

  variable row                                  : Integer;
  variable sigPos                               : Integer;
  variable tb_post_fft_rx09_mem_b_dout_d0_Int   : Integer;
  variable getAddrIn                            : Integer;
  variable getAddrIn_d1                         : Integer;
  variable getAddrPage                          : Integer;
  variable readAddr                             : Integer;
  begin
    -- Position address pointer just before change of full 1024 frame
    post_fft_rx09_mem_b_dout_Int    := 5;
    tb_post_fft_rx09_mem_b_dout     <= (others => '0');
    
    getAddrIn       := 0;
    getAddrIn_d1    := 0;
    getAddrPage     := 0;
    readAddr        := 0;
    
    -- Init with 'noise'
    for ii in 0 to (C_postmemSim_depth - 1) loop
        postmemSim(ii) := 1 + (ii mod 12);
    end loop;
    
    -- Fill message: '1' = (n-1) + 17 / '0' = (n-1) - 11
    row := 0;
    -- PA ramp-up
    postmemSim(row * 2048 + 16  +  C_centerOfs +  0)    := 15;  row := row + 1;     -- all is moduleo 32
    postmemSim(row * 2048 + 16  +  C_centerOfs +  0)    := 18;  row := row + 1;

    -- Preamble
    postmemSim(row * 2048 + 16  +  C_centerOfs +  6)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs -  6)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs +  9)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs -  9)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs + 12)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs - 12)    := 20;  row := row + 1;

    -- Loop remain counter  (TODO)
    postmemSim(row * 2048 + 16  +  C_centerOfs +  0)    := 20;  row := row + 1;     -- 0 remaining loops after this one

    -- Loop length counter  (TODO)
    postmemSim(row * 2048 + 16  +  C_centerOfs +  1)    := 20;  row := row + 1;     -- 1 u32 words of data following

    -- Message body
    sigPos := (32 + 16 + C_centerOfs +17) mod 32;                                   -- '1'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      -11) mod 32;                                        -- '0'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      +17) mod 32;                                        -- '1'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      -11) mod 32;                                        -- '0'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      +17) mod 32;                                        -- '1'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      +17) mod 32;                                        -- '1'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      -11) mod 32;                                        -- '0'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    sigPos := (32 + sigPos      -11) mod 32;                                        -- '0'
    postmemSim(row * 2048       +  sigPos)              := 20;  row := row + 1;
    
    -- to be correct for the length counter, additional 3 more bytes would be needed.
    -- End of message
    
    -- Footer
    postmemSim(row * 2048 + 16  +  C_centerOfs + 10)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs - 10)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs +  8)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs -  8)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs +  4)    := 20;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs -  4)    := 20;  row := row + 1;
    
    -- PA ramp-down
    postmemSim(row * 2048 + 16  +  C_centerOfs +  0)    := 18;  row := row + 1;
    postmemSim(row * 2048 + 16  +  C_centerOfs +  0)    := 15;  row := row + 1;
    
    
    wait until tb_resetn = '1';
    wait for 10 us;
    
    loop
        wait until tb_clk'event and tb_clk = '1';
        
        -- Delay output by 2 clocks
        getAddrIn_d1                        := getAddrIn;
        getAddrIn                           := to_integer(unsigned(tb_post_fft_rx09_mem_b_addr));
        if ((getAddrIn + C_postmem_depth/2) < getAddrIn_d1) then
            getAddrPage := (getAddrPage + 1) mod C_postmem_pages;
        end if;
        readAddr                            := getAddrIn + (getAddrPage * C_postmem_depth);
        
        tb_post_fft_rx09_mem_b_dout_d0_Int  := postmemSim(readAddr mod C_postmemSim_depth);
        tb_post_fft_rx09_mem_b_dout         <= tb_post_fft_rx09_mem_b_dout_d0;
        tb_post_fft_rx09_mem_b_dout_d0      <= std_logic_vector(to_unsigned(tb_post_fft_rx09_mem_b_dout_d0_Int, tb_post_fft_rx09_mem_b_dout_d0'length));
    end loop;
    
  end process proc_tb_b_dout;
  
end Behavioral;
