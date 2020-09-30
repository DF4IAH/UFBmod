----------------------------------------------------------------------------------
-- Company:  DF4IAH Solutions
-- Engineer: Ulrich Habel (DF4IAH)
-- 
-- Create Date: 28.09.2020 18:38:56
-- Design Name: UFBmod V2
-- Module Name: tb_UFBmod_Encoder - Behavioral
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

entity tb_UFBmod_Encoder is
--  Port ( );
end tb_UFBmod_Encoder;

architecture Behavioral of tb_UFBmod_Encoder is
  component UFBmod_Encoder is
  Port ( 
    -- All Clock Domain AXI 100 MHz
    resetn                                          : in  STD_LOGIC;
    clk                                             : in  STD_LOGIC;
    
    decoder_rx09_sql_open                           : in  STD_LOGIC;
    decoder_rx09_active                             : in  STD_LOGIC;
    
    encoder_pull_FIFO_dump                          : in  STD_LOGIC;
    encoder_pull_do_start       	                : in  STD_LOGIC;
    encoder_pull_data_len                           : in  STD_LOGIC_VECTOR( 6 downto 0);
    
    pulldata_tx09_en                                : out STD_LOGIC;
    pulldata_tx09_byteData                          : in  STD_LOGIC_VECTOR( 7 downto 0);
    
    dds_tx09_inc                                    : out STD_LOGIC_VECTOR(23 downto 0);
    dds_tx09_ptt                                    : out STD_LOGIC
  );
  end component UFBmod_Encoder;

-- RESETS
  signal tb_resetn : STD_LOGIC;

-- CLOCKS
  signal tb_clk : STD_LOGIC;

-- STIMULUS
  signal tb_decoder_rx09_sql_open                   : STD_LOGIC;
  signal tb_decoder_rx09_active                     : STD_LOGIC;
  signal tb_encoder_pull_FIFO_dump                  : STD_LOGIC;
  signal tb_encoder_pull_do_start                   : STD_LOGIC;
  signal tb_encoder_pull_data_len                   : STD_LOGIC_VECTOR( 6 downto 0);
  signal tb_pulldata_tx09_en                        : STD_LOGIC;
  signal tb_pulldata_tx09_byteData                  : STD_LOGIC_VECTOR( 7 downto 0);
  signal tb_dds_tx09_inc                            : STD_LOGIC_VECTOR(23 downto 0);
  signal tb_dds_tx09_ptt                            : STD_LOGIC;
  
  signal tb_pulldata_tx09_en_t1                     : STD_LOGIC;
  signal tb_pulldata_tx09_en_t2                     : STD_LOGIC;
  
begin

-- DUT
  UFBmod_Encoder_i: component UFBmod_Encoder
    port map (
        resetn                          => tb_resetn,
        clk                             => tb_clk,
        
        decoder_rx09_sql_open           => tb_decoder_rx09_sql_open,
        decoder_rx09_active             => tb_decoder_rx09_active,
        
        encoder_pull_FIFO_dump          => tb_encoder_pull_FIFO_dump,
        encoder_pull_do_start           => tb_encoder_pull_do_start,
        encoder_pull_data_len           => tb_encoder_pull_data_len,
        
        pulldata_tx09_en                => tb_pulldata_tx09_en,
        pulldata_tx09_byteData          => tb_pulldata_tx09_byteData,
        
        dds_tx09_inc                    => tb_dds_tx09_inc,
        dds_tx09_ptt                    => tb_dds_tx09_ptt
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

  -- FIFO
  proc_fifo: process

  type Vec16I                                   is array (15 downto 0) of Integer;
  variable fifo                                 : Vec16I;
  variable fifo_len                             : Integer;
 
  begin
    tb_pulldata_tx09_en_t1      <= '0';
    tb_pulldata_tx09_en_t2      <= '0';
    tb_decoder_rx09_sql_open    <= '0';
    tb_decoder_rx09_active      <= '0';
    tb_pulldata_tx09_byteData   <= (others => '1');
    tb_encoder_pull_data_len    <= (others => '1');
    tb_encoder_pull_FIFO_dump   <= '0';
    tb_encoder_pull_do_start    <= '0';
    
    fifo_len := 0;
    
    for ii in 0 to 15 loop
        fifo(ii) := 0;
    end loop;
    
    
    -- FIFO data
    fifo(0)     := 0;           -- Offset of preamble [-16 .. +15]  <-->  absolute [0 .. 31]
    fifo(1)     := 0;           -- Remain counter (not used yet)
    fifo(2)     := 1;           -- Count of u32 message words
    
    fifo(3)     := 16#99#;
    fifo(4)     := 16#55#;
    fifo(5)     := 16#f0#;
    fifo(6)     := 16#c3#;
    
    fifo_len    := 7;
    
    
    -- The show starts here
    wait until tb_resetn = '1';
    tb_encoder_pull_data_len    <= std_logic_vector(to_unsigned(fifo_len, tb_encoder_pull_data_len'length));
    
    wait until tb_clk'event and tb_clk = '1';
    tb_encoder_pull_do_start    <= '1';
    
    loop
        wait until tb_clk'event and tb_clk = '1';
        tb_encoder_pull_do_start    <= '0';
        
        if (tb_pulldata_tx09_en_t2 = '1') then
            if (fifo_len /= 0) then
                fifo_len := fifo_len - 1;
                
                tb_pulldata_tx09_byteData   <= std_logic_vector(to_unsigned(fifo(0), tb_pulldata_tx09_byteData'length));
                
                for ii in 0 to 14 loop
                    fifo(ii) := fifo(ii + 1);
                end loop;
                fifo(15) := 0;
                
            else
                tb_pulldata_tx09_byteData   <= (others => '0');
                
                -- End of stimulus
                wait;
            end if;
        end if;
        
        tb_pulldata_tx09_en_t2      <= tb_pulldata_tx09_en_t1;
        tb_pulldata_tx09_en_t1      <= tb_pulldata_tx09_en;
    end loop;
  end process proc_fifo;

end Behavioral;
