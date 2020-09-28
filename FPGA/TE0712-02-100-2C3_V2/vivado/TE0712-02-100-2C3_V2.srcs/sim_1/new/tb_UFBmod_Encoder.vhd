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
    
    decoder_active                                  : in  STD_LOGIC;
    decoder_rx09_squelch_lvl                        : in  STD_LOGIC_VECTOR(18 downto 0);
    decoder_rx09_noise                              : in  STD_LOGIC_VECTOR(18 downto 0);
    
    encoder_pull_FIFO_dump                          : in  STD_LOGIC;
    encoder_pull_do_start       	                : in  STD_LOGIC;
    encoder_pull_data_len                           : in  STD_LOGIC_VECTOR( 6 downto 0);
    
    pulldata_tx09_en                                : out STD_LOGIC;
    pulldata_tx09_byteData                          : in  STD_LOGIC_VECTOR( 7 downto 0)
  );
  end component UFBmod_Encoder;
begin

end Behavioral;
