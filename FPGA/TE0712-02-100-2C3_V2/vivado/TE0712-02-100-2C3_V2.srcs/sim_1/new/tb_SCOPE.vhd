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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--use IEEE.std_logic_misc.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_signed.all;


entity tb_SCOPE is
--  Port ( );
end tb_SCOPE;

architecture Behavioral of tb_SCOPE is
  constant GPIO0_OUT_enable         : natural   :=  0;
  constant GPIO0_OUT_start          : natural   :=  1;
  constant GPIO0_OUT_pop            : natural   :=  2;
  constant GPIO0_OUT_trigLvl        : natural   :=  7;
  constant GPIO0_OUT_trigSrc_LO     : natural   :=  8;
  constant GPIO0_OUT_trigSrc_HI     : natural   := 13;

  constant GPIO1_IN_running         : natural   :=  0;
  constant GPIO1_IN_readAvail       : natural   :=  1;
  constant GPIO1_IN_readValid       : natural   :=  2;


component  SCOPE_FSM is
  Port ( 
    resetn                      : in  STD_LOGIC;
    clk                         : in  STD_LOGIC;
    SCOPE_FSM_GPIO0_Out         : in  STD_LOGIC_VECTOR (31 downto 0);
    SCOPE_FSM_GPIO1_In          : out STD_LOGIC_VECTOR (31 downto 0);
    SCOPE_FSM_TrigSrc           : in  STD_LOGIC_VECTOR (47 downto 0);
    SCOPE_FSM_Timebase_CE       : out STD_LOGIC;
    SCOPE_FSM_Timebase_SCLR     : out STD_LOGIC;
    SCOPE_FSM_FIFO_Rst          : out STD_LOGIC;
    SCOPE_FSM_FIFO_wr_rst_busy  : in  STD_LOGIC;
    SCOPE_FSM_FIFO_rd_rst_busy  : in  STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull       : in  STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty      : in  STD_LOGIC;
    SCOPE_FSM_FIFO_WrEn         : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn         : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid      : in  STD_LOGIC
  );
end component SCOPE_FSM;
    
-- RESETS
  signal tb_resetn                          : STD_LOGIC;

-- CLOCKS
  signal tb_clk                             : STD_LOGIC;

-- STIMULUS
  signal tb_SCOPE_FSM_GPIO0_Out             : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_SCOPE_FSM_GPIO1_In              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_SCOPE_FSM_GPIO2_In              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_SCOPE_FSM_GPIO3_In              : STD_LOGIC_VECTOR (31 downto 0);
  signal tb_SCOPE_FSM_TrigSrc               : STD_LOGIC_VECTOR (47 downto 0);
  signal tb_SCOPE_FSM_Timebase_CE           : STD_LOGIC;
  signal tb_SCOPE_FSM_Timebase_SCLR         : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_Rst              : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_wr_rst_busy      : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_rd_rst_busy      : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_WrFull           : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_RdEmpty          : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_WrEn             : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_RdEn             : STD_LOGIC;
  signal tb_SCOPE_FSM_FIFO_RdValid          : STD_LOGIC;
  
  signal tb_SCOPE_FSM_TrigSrc_00_RefClk     : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_07_MII_Col    : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_08_MII_CRS    : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV  : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_10_MII_RXD    : STD_LOGIC_VECTOR ( 3 downto 0);
  signal tb_SCOPE_FSM_TrigSrc_14_MII_RX_ER  : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_15_MII_RX_CLK : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_16_MII_TX_EN  : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_17_MII_TXD    : STD_LOGIC_VECTOR ( 3 downto 0);
  signal tb_SCOPE_FSM_TrigSrc_21_MII_TX_ER  : STD_LOGIC;
  signal tb_SCOPE_FSM_TrigSrc_22_MII_TX_CLK : STD_LOGIC;
  
  signal tb_fifo_ctr_d                      : STD_LOGIC_VECTOR (16 downto 0);

begin
-- DUT
  SCOPE_FSM_i: component SCOPE_FSM
    port map (
      resetn                        => tb_resetn,
      clk                           => tb_clk,
      SCOPE_FSM_GPIO0_Out           => tb_SCOPE_FSM_GPIO0_Out,
      SCOPE_FSM_GPIO1_In            => tb_SCOPE_FSM_GPIO1_In,
      SCOPE_FSM_TrigSrc             => tb_SCOPE_FSM_TrigSrc,
      SCOPE_FSM_Timebase_CE         => tb_SCOPE_FSM_Timebase_CE,
      SCOPE_FSM_Timebase_SCLR       => tb_SCOPE_FSM_Timebase_SCLR,
      SCOPE_FSM_FIFO_Rst            => tb_SCOPE_FSM_FIFO_Rst,
      SCOPE_FSM_FIFO_wr_rst_busy    => tb_SCOPE_FSM_FIFO_wr_rst_busy,
      SCOPE_FSM_FIFO_rd_rst_busy    => tb_SCOPE_FSM_FIFO_rd_rst_busy,
      SCOPE_FSM_FIFO_WrFull         => tb_SCOPE_FSM_FIFO_WrFull,
      SCOPE_FSM_FIFO_RdEmpty        => tb_SCOPE_FSM_FIFO_RdEmpty,
      SCOPE_FSM_FIFO_WrEn           => tb_SCOPE_FSM_FIFO_WrEn,
      SCOPE_FSM_FIFO_RdEn           => tb_SCOPE_FSM_FIFO_RdEn,
      SCOPE_FSM_FIFO_RdValid        => tb_SCOPE_FSM_FIFO_RdValid
    );


-- STIMULI
  -- User requests
  proc_gpio1: process
  begin
    tb_SCOPE_FSM_GPIO0_Out      <= (others => '0');
    wait for 1 ms;
  
    -- Enable, Trigger Src RefClk, Trigger Lo-->Hi
    tb_SCOPE_FSM_GPIO0_Out      <= x"00000881";
    wait for 80 ns;
    
    -- Run
    tb_SCOPE_FSM_GPIO0_Out      <= x"00000883";
    wait for 80 ns;
    
    -- Wait until no more running
    wait until tb_SCOPE_FSM_GPIO1_In(GPIO1_IN_running) = '0';
    
    -- Read out all data 
    while tb_SCOPE_FSM_FIFO_RdEmpty = '0' loop

        -- Pop data entry
        tb_SCOPE_FSM_GPIO0_Out  <= x"00000885";
        
        -- Wait until data is present
        wait until tb_SCOPE_FSM_GPIO1_In(GPIO1_IN_readValid) = '1';
        
        -- Release Pop bit
        tb_SCOPE_FSM_GPIO0_Out  <= x"00000881";
        wait for 40 ns;
    
    end loop;

    -- Release
    tb_SCOPE_FSM_GPIO0_Out      <= x"00000000";

    -- End of transactions
    wait;
  end process proc_gpio1;


  -- FIFO
  proc_fifo: process
  variable tb_fifo_ctr: Integer;
  begin
    wait until tb_clk'event and tb_clk = '1';
    
    if (tb_SCOPE_FSM_FIFO_Rst = '1') then
        tb_SCOPE_FSM_FIFO_WrFull            <= '0';
        tb_SCOPE_FSM_FIFO_RdEmpty           <= '0';
        tb_SCOPE_FSM_FIFO_RdValid           <= '0';
        tb_SCOPE_FSM_FIFO_wr_rst_busy       <= '1';
        tb_SCOPE_FSM_FIFO_rd_rst_busy       <= '1';
        tb_SCOPE_FSM_GPIO2_In               <= (others => '0');
        tb_SCOPE_FSM_GPIO3_In               <= (others => '0');
        tb_fifo_ctr                         := 0;
    else
        tb_SCOPE_FSM_FIFO_wr_rst_busy       <= '0';
        tb_SCOPE_FSM_FIFO_rd_rst_busy       <= '0';

        if (tb_SCOPE_FSM_FIFO_WrEn = '1') then
            tb_fifo_ctr                     := tb_fifo_ctr + 1;
            if (tb_fifo_ctr >= 1021) then
                tb_fifo_ctr                 := tb_fifo_ctr - 1;
                tb_SCOPE_FSM_FIFO_WrFull    <= '1';
            else
                tb_SCOPE_FSM_FIFO_WrFull    <= '0';
            end if;
        end if;
        
        if (tb_fifo_ctr = 0) then
            tb_SCOPE_FSM_FIFO_RdEmpty       <= '1';
            tb_SCOPE_FSM_FIFO_RdValid       <= '0';
            
        else
            tb_SCOPE_FSM_FIFO_RdEmpty       <= '0';
        
            if (tb_SCOPE_FSM_FIFO_RdEn = '1') then
                tb_SCOPE_FSM_GPIO2_In       <= "00000000000000000101010101010101";
                tb_SCOPE_FSM_GPIO3_In       <= "11010101010101010101010101010101";
                tb_SCOPE_FSM_FIFO_RdValid   <= '1';
                tb_fifo_ctr                 := tb_fifo_ctr - 1;
            else
                tb_SCOPE_FSM_GPIO2_In       <= (others => '0');
                tb_SCOPE_FSM_GPIO3_In       <= (others => '0');
                tb_SCOPE_FSM_FIFO_RdValid   <= '0';
            end if;
        end if;
    end if;
    
    tb_fifo_ctr_d                           <= std_logic_vector(to_unsigned(tb_fifo_ctr, tb_fifo_ctr_d'length));
  end process proc_fifo;

  
  -- Signal 00: RefClk
  proc_s00_refclk: process
  begin
    tb_SCOPE_FSM_TrigSrc_00_RefClk <= '1';
    wait for 10ns;

    tb_SCOPE_FSM_TrigSrc_00_RefClk <= '0';
    wait for 10ns;
  end process proc_s00_refclk;

  -- Signal 15: RxClk
  proc_s15_rxclk: process
  begin
    tb_SCOPE_FSM_TrigSrc_15_MII_RX_CLK <= '1';
    wait for 20ns;

    tb_SCOPE_FSM_TrigSrc_15_MII_RX_CLK <= '0';
    wait for 20ns;
  end process proc_s15_rxclk;


  -- Signal 08,09,10: RX
  proc_sxx_rx: process
  begin
    -- Intergap
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '0';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '0';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "0000";  -- MII_RXD[3:0]
    
    wait for 2us;

    -- Preamble
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '1';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '0';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "0000";  -- MII_RXD[3:0]

    wait for 200ns;
    
    -- Preamble
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '1';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '1';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "0001";  -- MII_RXD[3:0]
    
    wait for 40ns;
    wait for 40ns;
    wait for 40ns;
    wait for 40ns;

    -- Preamble
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '1';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '1';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "0101";  -- MII_RXD[3:0]

    wait for 40ns;
    wait for 40ns;
    wait for 40ns;

    -- Header
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '1';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '1';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "1101";  -- MII_RXD[3:0]

    wait for 40ns;

    -- Data
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '1';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '1';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "1111";  -- MII_RXD[3:0]

    wait for 40ns;
    wait for 40ns;
    wait for 40ns;
    wait for 40ns;

    -- Intergap
    tb_SCOPE_FSM_TrigSrc_08_MII_CRS     <= '0';     -- MII_CRS
    tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   <= '0';     -- MII_RX_DV
    tb_SCOPE_FSM_TrigSrc_10_MII_RXD     <= "0000";  -- MII_RXD[3:0]

    wait for 10us;
  end process proc_sxx_rx;


  -- Signal 22: TxClk
  proc_s22_txclk: process
  begin
    tb_SCOPE_FSM_TrigSrc_22_MII_TX_CLK <= '1';
    wait for 20ns;

    tb_SCOPE_FSM_TrigSrc_22_MII_TX_CLK <= '0';
    wait for 20ns;
  end process proc_s22_txclk;

  -- Signal 16,17: TX
  proc_sxx_tx: process
  begin
    tb_SCOPE_FSM_TrigSrc_16_MII_TX_EN   <= '0';     -- MII_TX_EN
    tb_SCOPE_FSM_TrigSrc_17_MII_TXD     <= "0000";  -- MII_TXD[3:0]

    wait;
  end process proc_sxx_tx;

  -- Signal 7,14,21: inactive signals
  proc_sxx_inactive: process
  begin
    tb_SCOPE_FSM_TrigSrc_07_MII_Col     <= '0';
    tb_SCOPE_FSM_TrigSrc_14_MII_RX_ER   <= '0';
    tb_SCOPE_FSM_TrigSrc_21_MII_TX_ER   <= '0';
    
    wait;
  end process proc_sxx_inactive;
  
  
  proc_trigsrc: process
  begin
    tb_SCOPE_FSM_TrigSrc <= "0000000000000000000000000" & 
        tb_SCOPE_FSM_TrigSrc_22_MII_TX_CLK  &
        tb_SCOPE_FSM_TrigSrc_21_MII_TX_ER   &
        tb_SCOPE_FSM_TrigSrc_17_MII_TXD     &
        tb_SCOPE_FSM_TrigSrc_16_MII_TX_EN   &
        tb_SCOPE_FSM_TrigSrc_15_MII_RX_CLK  &
        tb_SCOPE_FSM_TrigSrc_14_MII_RX_ER   &
        tb_SCOPE_FSM_TrigSrc_10_MII_RXD     &
        tb_SCOPE_FSM_TrigSrc_09_MII_RX_DV   &
        tb_SCOPE_FSM_TrigSrc_08_MII_CRS     &
        tb_SCOPE_FSM_TrigSrc_07_MII_Col     &
        "000000"                            & 
        tb_SCOPE_FSM_TrigSrc_00_RefClk;
    wait for 1ns;
  end process proc_trigsrc;
  
  
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
