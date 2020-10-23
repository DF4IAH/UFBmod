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
use IEEE.math_real.uniform;
use IEEE.math_real.floor;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity tb_UFBmod_Decoder is
--  Port ( );
end tb_UFBmod_Decoder;

architecture Behavioral of tb_UFBmod_Decoder is
  component UFBmod_Decoder_wrapper is
    Port ( 
      clk_100MHz                                    : in  STD_LOGIC;
      reset_100MHz                                  : in  STD_LOGIC;
      
      post_fft_rx09_mem_a_EoT                       : in  STD_LOGIC;
      post_fft_rx09_mem_a_addr                      : in  STD_LOGIC_VECTOR ( 41 downto 0 );
      
      post_fft_rx09_mem_b_addr                      : out STD_LOGIC_VECTOR ( 9 downto 0 );
      post_fft_rx09_mem_b_dout                      : in  STD_LOGIC_VECTOR ( 15 downto 0 );
      
      decoder_rx09_ch00_active                      : out STD_LOGIC;
      decoder_rx09_ch00_sql_open                    : out STD_LOGIC;
      
      decoder_rx09_ch00_squelch_lvl                 : in  STD_LOGIC_VECTOR ( 15 downto 0 );
      
      pushdata_rx09_byteData                        : out STD_LOGIC_VECTOR ( 7 downto 0 );
      pushdata_rx09_en                              : out STD_LOGIC;
      
      dds_tx09_ptt                                  : in  STD_LOGIC
    );
  end component UFBmod_Decoder_wrapper;

-- RESETS
  signal tb_reset_100MHz                            : STD_LOGIC;

-- CLOCKS
  signal tb_clk_100MHz                              : STD_LOGIC;

-- STIMULUS
  signal tb_pre_fft_rx09_mem_a_addr                 : STD_LOGIC_VECTOR (10 downto 0);
  
  signal tb_post_fft_rx09_mem_a_addr                : STD_LOGIC_VECTOR (41 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_FrmCtr         : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_post_fft_rx09_mem_a_addr_RAM            : STD_LOGIC_VECTOR ( 9 downto 0);
  signal tb_post_fft_rx09_mem_a_EoT                 : STD_LOGIC;
  
  signal tb_post_fft_rx09_mem_b_addr                : STD_LOGIC_VECTOR ( 9 downto 0);
  signal tb_post_fft_rx09_mem_b_dout_d0             : STD_LOGIC_VECTOR (15 downto 0);
  signal tb_post_fft_rx09_mem_b_dout                : STD_LOGIC_VECTOR (15 downto 0);
  
  signal tb_decoder_rx09_ch00_active                : STD_LOGIC;
  signal tb_decoder_rx09_ch00_sql_open              : STD_LOGIC;
  
  signal tb_decoder_rx09_ch00_squelch_lvl           : STD_LOGIC_VECTOR (15 downto 0);
  
  signal tb_pushdata_rx09_byteData                  : STD_LOGIC_VECTOR ( 7 downto 0);
  signal tb_pushdata_rx09_en                        : STD_LOGIC;
  
  signal tb_dds_tx09_ptt                            : STD_LOGIC;
begin

  -- Debugging aid
  tb_post_fft_rx09_mem_a_addr_FrmCtr    <= tb_post_fft_rx09_mem_a_addr(41 downto 10);
  tb_post_fft_rx09_mem_a_addr_RAM       <= tb_post_fft_rx09_mem_a_addr( 9 downto  0);


-- DUT
  UFBmod_wrapper_i: component UFBmod_Decoder_wrapper
    port map (
        reset_100MHz                    => tb_reset_100MHz,
        clk_100MHz                      => tb_clk_100MHz,
        
        post_fft_rx09_mem_a_addr        => tb_post_fft_rx09_mem_a_addr,
        post_fft_rx09_mem_a_EoT         => tb_post_fft_rx09_mem_a_EoT,
        
        post_fft_rx09_mem_b_addr        => tb_post_fft_rx09_mem_b_addr,
        post_fft_rx09_mem_b_dout        => tb_post_fft_rx09_mem_b_dout,
        
        decoder_rx09_ch00_active        => tb_decoder_rx09_ch00_active,
        decoder_rx09_ch00_sql_open      => tb_decoder_rx09_ch00_sql_open,
        decoder_rx09_ch00_squelch_lvl   => tb_decoder_rx09_ch00_squelch_lvl,
      
        pushdata_rx09_byteData          => tb_pushdata_rx09_byteData,
        pushdata_rx09_en                => tb_pushdata_rx09_en,
      
        dds_tx09_ptt                    => tb_dds_tx09_ptt
    );


-- RESETS
  proc_tb_reset: process
  begin
    tb_reset_100MHz    <= '1';
    
    wait for 10us;
    tb_reset_100MHz    <= '0';
    wait;
  end process proc_tb_reset;

-- CLOCKS
  -- 100 MHz
  proc_tb_clk: process
  begin
    tb_clk_100MHz      <= '1';
    wait for 5ns;
    
    tb_clk_100MHz      <= '0';
    wait for 5ns;
  end process proc_tb_clk;


-- STIMULI

  -- Squelch level setting
  proc_squelch_lvl: process
  constant C_squelch_lvl_ch00                   : Integer   := 256;
  begin
    tb_decoder_rx09_ch00_squelch_lvl    <= (others => '0');
    tb_dds_tx09_ptt                     <= '0';
    
    wait until tb_reset_100MHz = '0';
    tb_decoder_rx09_ch00_squelch_lvl    <= std_logic_vector(to_unsigned(C_squelch_lvl_ch00, tb_decoder_rx09_ch00_squelch_lvl'length));
    
    wait;
  end process proc_squelch_lvl;


  -- Pre FFT port A address stimulus
  proc_tb_pre_a_addr: process
    constant C_pre_mem_a_depth                  : Integer  := 1024;
    variable pre_a_addr_Int                     : Integer  range 0 to (C_pre_mem_a_depth - 1);
  begin
    pre_a_addr_Int              := 0;
    tb_pre_fft_rx09_mem_a_addr  <= (others => '0');
    
    wait until tb_reset_100MHz = '0';
    loop
        wait until tb_clk_100MHz'event and tb_clk_100MHz = '1';
        
        tb_pre_fft_rx09_mem_a_addr      <= std_logic_vector(to_unsigned(pre_a_addr_Int, tb_pre_fft_rx09_mem_a_addr'length));
        pre_a_addr_Int                  := (pre_a_addr_Int + 1)  mod  C_pre_mem_a_depth;
        
        wait for 250 ns;
    end loop;
  end process proc_tb_pre_a_addr;


  -- Post FFT port A address stimulus
  proc_tb_post_a_addr: process
    variable frame_start_Int                    : UNSIGNED(41 downto 0);
    variable post_a_addr_Int                    : UNSIGNED(41 downto 0);
  begin
    -- Position address pointer just before change of full 1024 frame
    frame_start_Int                     := (others => '0');
    post_a_addr_Int                     := (others => '0');
    tb_post_fft_rx09_mem_a_EoT          <= '0';
    tb_post_fft_rx09_mem_a_addr         <= (others => '0');
    
    wait until tb_reset_100MHz = '0';
    
    -- post_fft: Address incrementor each 64 us
    loop
        -- Every 64 us ends a sub-frame of 256 points offset to each other
        wait until (tb_pre_fft_rx09_mem_a_addr and "00011111111") = "00000000000"; 
        
        -- FFT out burst starts abt. 30 us after points are delivered in
        wait for 30 us;
        
        for ii in 0 to 1024 loop
            wait until tb_clk_100MHz'event and tb_clk_100MHz = '1';
            
            if (ii < 1024) then
                post_a_addr_Int             := frame_start_Int + ii;
                tb_post_fft_rx09_mem_a_addr <= std_logic_vector(post_a_addr_Int);
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
    constant C_pre_r00                              : Integer :=  -8;
    constant C_pre_r01                              : Integer := +14;
    constant C_pre_r02                              : Integer := -10;
    constant C_pre_r03                              : Integer := +18;
    constant C_pre_r04                              : Integer :=  -6;
    constant C_pre_r05                              : Integer := +12;
    constant C_pre_r06                              : Integer := -14;
    constant C_pre_r07                              : Integer := +10;
    constant C_pre_r08                              : Integer :=  -2;
    constant C_pre_r09                              : Integer :=  +8;
    constant C_pre_r10                              : Integer := -18;
    constant C_pre_r11                              : Integer :=  +4;
    constant C_pre_r12                              : Integer :=  -4;
    constant C_pre_r13                              : Integer :=  +2;
    constant C_pre_r14                              : Integer := -12;
    constant C_pre_r15                              : Integer :=  +6;
    type     T_pre_ary                              is array (0 to 15) of Integer;
    variable C_pre_ary                              : T_pre_ary := (C_pre_r00, C_pre_r01, C_pre_r02, C_pre_r03, C_pre_r04, C_pre_r05, C_pre_r06, C_pre_r07,
                                                                    C_pre_r08, C_pre_r09, C_pre_r10, C_pre_r11, C_pre_r12, C_pre_r13, C_pre_r14, C_pre_r15);
    
    constant C_bit_0_0                              : Integer :=  -3;
    constant C_bit_0_1                              : Integer :=  -7;
    
    constant C_bit_1_0                              : Integer :=  +5;
    constant C_bit_1_1                              : Integer := +11;
    
    constant C_fin_0                                : Integer :=  -7;
    constant C_fin_1                                : Integer :=  +7;
    constant C_fin_2                                : Integer :=  -5;
    constant C_fin_3                                : Integer :=  +5;
    constant C_fin_4                                : Integer :=  -3;
    constant C_fin_5                                : Integer :=  +3;
    constant C_fin_6                                : Integer :=  -1;
    constant C_fin_7                                : Integer :=  +1;
    type     T_fin_ary                              is array (0 to  7) of Integer;
    variable C_fin_ary                              : T_fin_ary := (C_fin_0, C_fin_1, C_fin_2, C_fin_3, C_fin_4, C_fin_5, C_fin_6, C_fin_7);
    
    
    constant C_postmem_depth                        : Integer   := 1024;
    constant C_postmem_pages                        : Integer   := 256;
    constant C_postmemSim_depth                     : Integer   := C_postmem_pages * C_postmem_depth;
    constant C_startRow                             : Integer   := 16;
    constant C_centerOfs                            : Integer   := 0;
    
    
  --constant C_signal_100ct                         : Integer   :=   1;     -- signal: 0x004e, noise: 0x009f, SQL-level: > 0x00ec
  --constant C_signal_080ct                         : Integer   :=   1;
  --constant C_signal_050ct                         : Integer   :=   0;
    
  --constant C_signal_100ct                         : Integer   :=   2;     -- signal: 0x02a2, noise: 0x00a0, SQL-level: > 0x00ec (dBc: +9dB)  //
  --constant C_signal_080ct                         : Integer   :=   2;
  --constant C_signal_050ct                         : Integer   :=   1;
    
  --constant C_signal_100ct                         : Integer   :=   3;     -- signal: 0x07ff, noise: 0x00a1, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
  --constant C_signal_080ct                         : Integer   :=   3;
  --constant C_signal_050ct                         : Integer   :=   2;
    
  --constant C_signal_100ct                         : Integer   :=   4;     -- signal: 0x07ff, noise: 0x00a2, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
  --constant C_signal_080ct                         : Integer   :=   3;
  --constant C_signal_050ct                         : Integer   :=   2;
    
  --constant C_signal_100ct                         : Integer   :=   9;     -- signal: 0x07ff, noise: 0x00a7, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
  --constant C_signal_080ct                         : Integer   :=   7;
  --constant C_signal_050ct                         : Integer   :=   5;
    
  --constant C_signal_100ct                         : Integer   :=  10;     -- signal: 0x07ff, noise: 0x00a8, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
  --constant C_signal_080ct                         : Integer   :=   8;
  --constant C_signal_050ct                         : Integer   :=   5;
    
    constant C_signal_100ct                         : Integer   :=  12;     -- signal: 0x07ff, noise: 0x00aa, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
    constant C_signal_080ct                         : Integer   :=  10;
    constant C_signal_050ct                         : Integer   :=   6;
    
  --constant C_signal_100ct                         : Integer   :=  15;     -- signal: 0x07ff, noise: 0x00ad, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal: 0x0100, 2nd: 0x099 (dBc: +4dB)
  --constant C_signal_080ct                         : Integer   :=  12;
  --constant C_signal_050ct                         : Integer   :=   8;
    
  --constant C_signal_100ct                         : Integer   := 200;     -- signal: 0x07ff, noise: 0x0166, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
  --constant C_signal_080ct                         : Integer   := 160;
  --constant C_signal_050ct                         : Integer   := 100;
    
  --constant C_signal_100ct                         : Integer   :=1000;     -- signal: 0x07ff, noise: 0x0486, SQL-level: > 0x00ec (dBc: > +18dB) // single-bit signal:
  --constant C_signal_080ct                         : Integer   := 800;
  --constant C_signal_050ct                         : Integer   := 500;
    
    
    type PostMemType                                is array ((C_postmemSim_depth - 1) downto 0) of Integer  range 0 to (2**16 - 1); 
    variable postmemSim                             : PostMemType;
    
    variable row                                    : Integer;
    variable sigPos                                 : Integer;
    variable tb_post_fft_rx09_mem_b_dout_d0_Int     : Integer;
    variable getAddrIn                              : Integer;
    variable getAddrIn_d1                           : Integer;
    variable getAddrPage                            : Integer;
    variable readAddr                               : Integer;
    
    variable uni_real                               : Real      := 0.0;
    variable uni_seed_1                             : Positive  := 1;
    variable uni_seed_2                             : Positive  := 1;
    variable uni_rand                               : Integer   := 0;
  begin
    -- Position address pointer just before change of full 1024 frame
  --post_fft_rx09_mem_b_dout_Int    := 5;
    tb_post_fft_rx09_mem_b_dout     <= (others => '0');
    tb_post_fft_rx09_mem_b_dout_d0  <= (others => '0');
    
    getAddrIn       := 0;
    getAddrIn_d1    := 0;
    getAddrPage     := C_postmem_pages - 1;
    readAddr        := 0;
    
    -- Fill message
    row := C_startRow;
    
    -- PA ramp-up
    postmemSim(row * 1024 + ((16 + C_centerOfs + 0        ) mod 32))  := C_signal_050ct;  row := row + 2; -- all is moduleo 32
    postmemSim(row * 1024 + ((16 + C_centerOfs + 0        ) mod 32))  := C_signal_080ct;  row := row + 2;
    
    -- Preamble
    for ii in 0 to 15 loop
        postmemSim(row * 1024 + ((16 + C_centerOfs + C_pre_ary(ii)) mod 32))  := C_signal_100ct;  row := row + 2;
    end loop;
    
    
    -- Message body
    sigPos := (16 + C_centerOfs       ) mod 32;
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1' = 0xac
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    
    sigPos := (16 + C_centerOfs       ) mod 32;
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0' = 0x53
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    
    sigPos := (16 + C_centerOfs       ) mod 32;
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1' = 0xe2
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    
    sigPos := (16 + C_centerOfs       ) mod 32;
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0' = 0x0f
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_0_0) mod 32;       -- '0'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    
    sigPos := (32 + sigPos + C_bit_1_0) mod 32;       -- '1'
    postmemSim(row * 1024       +  sigPos)                          := C_signal_100ct;  row := row + 2;
    -- End of message
    
    
    -- Final
    for ii in 0 to 7 loop
        postmemSim(row * 1024 + ((16 + C_centerOfs + C_fin_ary(ii)) mod 32))  := C_signal_100ct;  row := row + 2;
    end loop;
    
    -- PA ramp-down
    postmemSim(row * 1024 + ((16 + C_centerOfs + 0      ) mod 32))  := C_signal_080ct;  row := row + 2;
    postmemSim(row * 1024 + ((16 + C_centerOfs + 0      ) mod 32))  := C_signal_050ct;  row := row + 2;
    
    
    -- Add 'noise' floor
    for ii in 0 to (C_postmemSim_depth - 1) loop
        uniform(uni_seed_1, uni_seed_2, uni_real);
        uni_rand := 1 + Integer(floor(uni_real * 9.0));
        
        postmemSim(ii) := postmemSim(ii) + uni_rand;                                                -- Noise is added to the signal
        
      --if (postmemSim(ii) < uni_rand) then
      --    postmemSim(ii) := uni_rand;                                                             -- Noise overwrites Signal when strength of signal is below of noise level (ADC voltage)
      --end if;
    end loop;
    
    
    -- Start output    
    wait until tb_reset_100MHz = '0';
    wait for 10 us;
    
    loop
        wait until tb_clk_100MHz'event and tb_clk_100MHz = '1';
        
        -- Delay output by 2 clocks
        getAddrIn_d1                        := getAddrIn;
        getAddrIn                           := to_integer(unsigned(tb_post_fft_rx09_mem_b_addr));
        if (tb_post_fft_rx09_mem_a_EoT = '1') then
            getAddrPage := (getAddrPage + 1) mod C_postmem_pages;
        end if;
        readAddr                            := getAddrIn + (getAddrPage * C_postmem_depth);
        
        tb_post_fft_rx09_mem_b_dout_d0_Int  := postmemSim(readAddr mod C_postmemSim_depth);
        tb_post_fft_rx09_mem_b_dout         <= tb_post_fft_rx09_mem_b_dout_d0;
        tb_post_fft_rx09_mem_b_dout_d0      <= std_logic_vector(to_unsigned(tb_post_fft_rx09_mem_b_dout_d0_Int, tb_post_fft_rx09_mem_b_dout_d0'length));
    end loop;
    
  end process proc_tb_b_dout;
  
end Behavioral;
