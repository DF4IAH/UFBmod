----------------------------------------------------------------------------------
-- Company:  DF4IAH-Solutions
-- Engineer: Ulrich Habel (DF4IAH)
-- 
-- Create Date: 12.05.2020 18:38:56
-- Design Name: UFBmod V2
-- Module Name: tb_UFBmod_Decoder - Behavioral
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

--use IEEE.std_logic_1164.all;
--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;

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
        resetn                                      : in  STD_LOGIC;
        clk                                         : in  STD_LOGIC;
        
        post_fft_rx09_mem_a_EoT                     : in  STD_LOGIC;
        post_fft_rx09_mem_a_addr                    : in  STD_LOGIC_VECTOR(41 downto 0);
        
        post_fft_rx09_mem_b_addr                    : out STD_LOGIC_VECTOR( 9 downto 0);
        post_fft_rx09_mem_b_dout                    : in  STD_LOGIC_VECTOR(15 downto 0);
        
        decoder_rx09_squelch_lvl                    : in  STD_LOGIC_VECTOR(18 downto 0);
        
        decoder_rx09_center_pos                     : out STD_LOGIC_VECTOR( 4 downto 0);
        decoder_rx09_strength                       : out STD_LOGIC_VECTOR(18 downto 0);
        decoder_rx09_noise                          : out STD_LOGIC_VECTOR(18 downto 0);
    
        pushdata_rx09_en                            : out STD_LOGIC;
        pushdata_rx09_byteData                      : out STD_LOGIC_VECTOR( 7 downto 0)
    );
  end component UFBmod_Decoder;

-- RESETS
  signal tb_resetn : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_pre_fft_rx09_mem_a_addr                 : STD_LOGIC_VECTOR (10 downto 0);
  signal tb_post_fft_rx09_mem_a_EoT                 : STD_LOGIC;
  signal tb_post_fft_rx09_mem_a_addr                : STD_LOGIC_VECTOR (41 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_FrmCtr         : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_RAM            : STD_LOGIC_VECTOR ( 9 downto 0);
  signal tb_post_fft_rx09_mem_b_addr                : STD_LOGIC_VECTOR ( 9 downto 0);
  signal tb_post_fft_rx09_mem_b_dout_d0             : STD_LOGIC_VECTOR (15 downto 0);
  signal tb_post_fft_rx09_mem_b_dout                : STD_LOGIC_VECTOR (15 downto 0);
  signal tb_decoder_rx09_squelch_lvl                : STD_LOGIC_VECTOR (18 downto 0);
  signal tb_decoder_rx09_center_pos                 : STD_LOGIC_VECTOR ( 4 downto 0);
  signal tb_decoder_rx09_strength                   : STD_LOGIC_VECTOR (18 downto 0);
  signal tb_decoder_rx09_noise                      : STD_LOGIC_VECTOR (18 downto 0);
  signal tb_pushdata_rx09_en                        : STD_LOGIC;
  signal tb_pushdata_rx09_byteData                  : STD_LOGIC_VECTOR ( 7 downto 0);
begin

  -- Debugging aid
  tb_post_fft_rx09_mem_a_addr_FrmCtr    <= tb_post_fft_rx09_mem_a_addr(41 downto 10);
  tb_post_fft_rx09_mem_a_addr_RAM       <= tb_post_fft_rx09_mem_a_addr( 9 downto  0);


-- DUT
  UFBmod_Decoder_i: component UFBmod_Decoder
    port map (
        resetn                          => tb_resetn,
        clk                             => tb_clk,
        
        post_fft_rx09_mem_a_EoT         => tb_post_fft_rx09_mem_a_EoT,
        post_fft_rx09_mem_a_addr        => tb_post_fft_rx09_mem_a_addr,
        
        post_fft_rx09_mem_b_addr        => tb_post_fft_rx09_mem_b_addr,
        post_fft_rx09_mem_b_dout        => tb_post_fft_rx09_mem_b_dout,
        
        decoder_rx09_squelch_lvl        => tb_decoder_rx09_squelch_lvl,
        
        decoder_rx09_center_pos         => tb_decoder_rx09_center_pos,
        decoder_rx09_strength           => tb_decoder_rx09_strength,
        decoder_rx09_noise              => tb_decoder_rx09_noise,
        
        pushdata_rx09_en                => tb_pushdata_rx09_en,
        pushdata_rx09_byteData          => tb_pushdata_rx09_byteData
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
  constant C_squelch_lvl                        : Integer   := 300;                                 -- Set squelch level
  begin
    tb_decoder_rx09_squelch_lvl <= (others => '0');
    
    wait until tb_resetn = '1';
    tb_decoder_rx09_squelch_lvl <= std_logic_vector(to_unsigned(C_squelch_lvl, tb_decoder_rx09_squelch_lvl'length));
    
    wait;
  end process proc_squelch_lvl;


  -- Pre FFT port A address stimulus
  proc_tb_pre_a_addr: process
    constant C_pre_mem_a_depth                  : Integer   := 2048;
    variable pre_a_addr_Int                     : Integer;
  begin
    pre_a_addr_Int              := 0;
    tb_pre_fft_rx09_mem_a_addr  <= (others => '0');
    
    wait until tb_resetn = '1';
    loop
        wait until tb_clk'event and tb_clk = '1';
        
        tb_pre_fft_rx09_mem_a_addr      <= std_logic_vector(to_unsigned(pre_a_addr_Int, tb_pre_fft_rx09_mem_a_addr'length));
        pre_a_addr_Int                  := (pre_a_addr_Int + 1)  mod  C_pre_mem_a_depth;
        
        wait for 250 ns;
    end loop;
  end process proc_tb_pre_a_addr;


  -- Post FFT port A address stimulus
  proc_tb_post_a_addr: process
    variable frame_start_Int                    : Integer;
    variable post_a_addr_Int                    : Integer;
  begin
    -- Position address pointer just before change of full 1024 frame
    frame_start_Int                     := 0;
    post_a_addr_Int                     := 0;
    tb_post_fft_rx09_mem_a_EoT          <= '0';
    tb_post_fft_rx09_mem_a_addr         <= (others => '0');
    
    wait until tb_resetn = '1';
    
    -- post_fft: Address incrementor each 64 us
    loop
        -- Every 64 us ends a sub-frame of 256 points offset to each other
        wait until (tb_pre_fft_rx09_mem_a_addr and "00011111111") = "00000000000"; 
        
        -- FFT out burst starts abt. 30 us after points are delivered in
        wait for 30 us;
        
        for ii in 0 to 1024 loop
            wait until tb_clk'event and tb_clk = '1';
            
            if (ii < 1024) then
                post_a_addr_Int             := frame_start_Int + ii;
                tb_post_fft_rx09_mem_a_addr <= std_logic_vector(to_unsigned(post_a_addr_Int, tb_post_fft_rx09_mem_a_addr'length));
            end if;
            
            if (ii = 1023) then
                tb_post_fft_rx09_mem_a_EoT <= '1';
            else
                tb_post_fft_rx09_mem_a_EoT <= '0';
            end if;
        end loop;
        
        frame_start_Int := frame_start_Int + 1024;
    end loop;
  end process proc_tb_post_a_addr;


  -- Port B data stimulus
  proc_tb_b_dout: process
    constant C_pre_r0                           : Integer :=  +7;
    constant C_pre_r1                           : Integer := - 9;
    constant C_pre_r2                           : Integer := +13;
    constant C_pre_r3                           : Integer := -15;
    constant C_pre_r4                           : Integer := +19;
    constant C_pre_r5                           : Integer := -21;
    
    constant C_bit_1                            : Integer := +17;
    constant C_bit_0                            : Integer := -11;
    
    constant C_fin_0                            : Integer :=  +5;
    constant C_fin_1                            : Integer :=  -3;
    constant C_fin_2                            : Integer :=  +1;
    
    constant C_postmem_depth                    : Integer   := 1024;
    constant C_postmem_pages                    : Integer   := 128;
    constant C_postmemSim_depth                 : Integer   := C_postmem_pages * C_postmem_depth;
    constant C_startRow                         : Integer   :=  12;
    constant C_centerOfs                        : Integer   :=   0;
    
    
  --constant C_signal_100ct                     : Integer   :=   9;
  --constant C_signal_080ct                     : Integer   :=   7;
  --constant C_signal_050ct                     : Integer   :=   5;
    
  --constant C_signal_100ct                     : Integer   :=  10;
  --constant C_signal_080ct                     : Integer   :=   8;
  --constant C_signal_050ct                     : Integer   :=   5;
    
    constant C_signal_100ct                     : Integer   :=  12;
    constant C_signal_080ct                     : Integer   :=  10;
    constant C_signal_050ct                     : Integer   :=   6;
    
  --constant C_signal_100ct                     : Integer   :=  15;
  --constant C_signal_080ct                     : Integer   :=  12;
  --constant C_signal_050ct                     : Integer   :=   8;
    
  --constant C_signal_100ct                     : Integer   := 200;
  --constant C_signal_080ct                     : Integer   := 160;
  --constant C_signal_050ct                     : Integer   := 100;
    
    
    type PostMemType                            is array ((C_postmemSim_depth - 1) downto 0) of Integer; 
    variable postmemSim                         : PostMemType;
    
    variable row                                : Integer;
    variable sigPos                             : Integer;
    variable tb_post_fft_rx09_mem_b_dout_d0_Int : Integer;
    variable getAddrIn                          : Integer;
    variable getAddrIn_d1                       : Integer;
    variable getAddrPage                        : Integer;
    variable readAddr                           : Integer;
  begin
    -- Position address pointer just before change of full 1024 frame
  --post_fft_rx09_mem_b_dout_Int    := 5;
    tb_post_fft_rx09_mem_b_dout     <= (others => '0');
    tb_post_fft_rx09_mem_b_dout_d0  <= (others => '0');
    
    getAddrIn       := 0;
    getAddrIn_d1    := 0;
    getAddrPage     := 0;
    readAddr        := 0;
    
    -- Fill message: '1' = (n-1) + 17 / '0' = (n-1) - 11
    row := C_startRow;
    
    -- PA ramp-up
    postmemSim(row * 1024 + ((16 + C_centerOfs + 0       ) mod 32))  := C_signal_050ct;  row := row + 2; -- all is moduleo 32
    postmemSim(row * 1024 + ((16 + C_centerOfs + 0       ) mod 32))  := C_signal_080ct;  row := row + 2;
    
    -- Preamble
    postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_r0) mod 32))  := C_signal_100ct;  row := row + 2;
    postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_r1) mod 32))  := C_signal_100ct;  row := row + 2;
    postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_r2) mod 32))  := C_signal_100ct;  row := row + 2;
    postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_r3) mod 32))  := C_signal_100ct;  row := row + 2;
    postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_r4) mod 32))  := C_signal_100ct;  row := row + 2;
    postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_r5) mod 32))  := C_signal_100ct;  row := row + 2;
    
    -- Loop remain counter  (TODO)
    postmemSim(row * 1024 + ((16 + C_centerOfs +  0      ) mod 32))  := C_signal_100ct;  row := row + 2; -- 0 remaining loops after this one
    
    -- Loop length counter  (TODO)
    postmemSim(row * 1024 + ((16 + C_centerOfs +  1      ) mod 32))  := C_signal_100ct;  row := row + 2; -- 1 u32 words of data following
    sigPos := (16 + C_centerOfs     ) mod 32;                                                       -- revert to C_centerOfs
    
    -- Message body
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1' = 0xac
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0' = 0x53
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1' = 0xe2
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0' = 0x0f
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0) mod 32;                                                       -- '0'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1) mod 32;                                                       -- '1'
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    -- End of message
    
    -- Footer
    sigPos := (32 + sigPos + C_fin_0          ) mod 32;
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos - C_fin_0 + C_fin_1) mod 32;
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos - C_fin_1 + C_fin_2) mod 32;
    postmemSim(row * 1024       +  sigPos)              := C_signal_100ct;  row := row + 2;
    
    -- PA ramp-down
    sigPos := (32 + sigPos - C_fin_2          ) mod 32;
    postmemSim(row * 1024       +  sigPos)              := C_signal_080ct;  row := row + 2;
    postmemSim(row * 1024       +  sigPos)              := C_signal_050ct;  row := row + 2;
    
        
    -- Add 'noise' floor
    for ii in 0 to (C_postmemSim_depth - 1) loop
        if (postmemSim(ii) < (ii mod 12)) then
            postmemSim(ii) := (ii mod 12);                                                      -- Noise overwrites Signal when strength of signal is below of noise level (ADC voltage)
        end if;
    end loop;
    
    
    -- Start output    
    wait until tb_resetn = '1';
    wait for 10 us;
    
    loop
        wait until tb_clk'event and tb_clk = '1';
        
        -- Delay output by 2 clocks
        getAddrIn_d1                        := getAddrIn;
        getAddrIn                           := to_integer(unsigned(tb_post_fft_rx09_mem_b_addr));
        if (getAddrIn < getAddrIn_d1) then
            getAddrPage := (getAddrPage + 1) mod C_postmem_pages;
        end if;
        readAddr                            := getAddrIn + (getAddrPage * C_postmem_depth);
        
        tb_post_fft_rx09_mem_b_dout_d0_Int  := postmemSim(readAddr mod C_postmemSim_depth);
        tb_post_fft_rx09_mem_b_dout         <= tb_post_fft_rx09_mem_b_dout_d0;
        tb_post_fft_rx09_mem_b_dout_d0      <= std_logic_vector(to_unsigned(tb_post_fft_rx09_mem_b_dout_d0_Int, tb_post_fft_rx09_mem_b_dout_d0'length));
    end loop;
    
  end process proc_tb_b_dout;
  
end Behavioral;
