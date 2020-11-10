----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2020 23:43:07
-- Design Name: 
-- Module Name: tb_auto_LVDS_rotate - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_auto_LVDS_rotate is
--  Port ( );
end tb_auto_LVDS_rotate;

architecture Behavioral of tb_auto_LVDS_rotate is

component auto_LVDS_rotate is
  Port (
    reset                       : in  STD_LOGIC;
    clk                         : in  STD_LOGIC;
    
    LVDS09                      : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS09_valid                : in  STD_LOGIC;
    
    LVDS24                      : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS24_valid                : in  STD_LOGIC;
    
    rot09q                      : out STD_LOGIC_VECTOR (31 downto 0);
    rot09vld                    : out STD_LOGIC;
    
    rot24q                      : out STD_LOGIC_VECTOR (31 downto 0);
    rot24vld                    : out STD_LOGIC;
    
    LVDS_rx09_synced            : out STD_LOGIC;
    LVDS_rx24_synced            : out STD_LOGIC
);
end component auto_LVDS_rotate;

-- RESETS
  signal tb_reset               : STD_LOGIC;
  
-- CLOCKS
  signal tb_clk                 : STD_LOGIC;
  
-- STIMULUS
  signal tb_LVDS09              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_LVDS09_valid        : STD_LOGIC;
  
  signal tb_LVDS24              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_LVDS24_valid        : STD_LOGIC;
  
  signal tb_rot09q              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rot09vld            : STD_LOGIC;
  
  signal tb_rot24q              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_rot24vld            : STD_LOGIC;
  
  signal tb_LVDS_rx09_synced    : STD_LOGIC;
  signal tb_LVDS_rx24_synced    : STD_LOGIC;
  
begin
-- DUT
  auto_LVDS_rotate_i: component auto_LVDS_rotate
    port map (
        reset                   => tb_reset,
        clk                     => tb_clk,
        
        LVDS09                  => tb_LVDS09,
        LVDS09_valid            => tb_LVDS09_valid,
        
        LVDS24                  => tb_LVDS24,
        LVDS24_valid            => tb_LVDS24_valid,
        
        rot09q                  => tb_rot09q,
        rot09vld                => tb_rot09vld,
        
        rot24q                  => tb_rot24q,
        rot24vld                => tb_rot24vld,
        
        LVDS_rx09_synced        => tb_LVDS_rx09_synced,
        LVDS_rx24_synced        => tb_LVDS_rx24_synced
    );


-- RESETS
  proc_tb_reset: process
  begin
    tb_reset <= '1';

    wait for 10us;
    tb_reset <= '0';
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
  proc_tb_lvds09: process
  begin
    wait until tb_reset = '1';
    tb_LVDS09       <= (others => '0');
    tb_LVDS09_valid <= '0';
    
    wait until tb_reset = '0';
    tb_LVDS09 <= x"80004000";
  --tb_LVDS09 <= x"fff17ffc";   -- out: x"bfff7fff"
  --tb_LVDS09 <= x"80050014";   -- out: x"80050014"
  --tb_LVDS09 <= x"80050000";   -- out: x"80004002"
  --tb_LVDS09 <= x"80050004";   -- out: x"80024002"
  --tb_LVDS09 <= x"fffd0008";   -- out: x"80047ffe"
    
    loop
        wait until tb_clk'event and tb_clk = '1';
        tb_LVDS09_valid <= '1';
        
        wait for 10us;
        
        wait until tb_clk'event and tb_clk = '1';
        tb_LVDS09_valid <= '0';
        tb_LVDS09       <= tb_LVDS09(30 downto 0) & tb_LVDS09(31);
    end loop;
  end process proc_tb_lvds09;


  proc_tb_lvds24: process
  begin
    wait until tb_reset = '1';
    tb_LVDS24 <= (others => '0');
    tb_LVDS24_valid <= '0';
    
    wait until tb_reset = '0';
    tb_LVDS24 <= x"bfff7fff";
    
    loop
        wait until tb_clk'event and tb_clk = '1';
        tb_LVDS24_valid <= '1';
        
        wait for 10us;
        
        wait until tb_clk'event and tb_clk = '1';
        tb_LVDS24_valid <= '0';
        tb_LVDS24       <= tb_LVDS24(0) & tb_LVDS24(31 downto 1);
    end loop;
  end process proc_tb_lvds24;

end Behavioral;
