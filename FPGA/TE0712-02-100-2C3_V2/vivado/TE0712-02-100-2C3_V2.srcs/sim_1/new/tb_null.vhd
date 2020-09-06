----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 08:47:08
-- Design Name: 
-- Module Name: tb_null - Behavioral
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

entity tb_null is
--  Port ( );
end tb_null;

architecture Behavioral of tb_null is
  component msys_wrapper is
  port (
    BOARD_IIC_scl_io : inout STD_LOGIC;
    BOARD_IIC_sda_io : inout STD_LOGIC;
    BOARD_ROTENC_I : in STD_LOGIC;
    BOARD_ROTENC_Q : in STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK1B_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK2_mgt_clk0_clk_n : in STD_LOGIC;
    CLK2_mgt_clk0_clk_p : in STD_LOGIC;
    CLK3_sys_diff_clk_n : in STD_LOGIC;
    CLK3_sys_diff_clk_p : in STD_LOGIC;
    DDR3_SDRAM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_SDRAM_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_SDRAM_cas_n : out STD_LOGIC;
    DDR3_SDRAM_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR3_SDRAM_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ras_n : out STD_LOGIC;
    DDR3_SDRAM_reset_n : out STD_LOGIC;
    DDR3_SDRAM_we_n : out STD_LOGIC;
    DDR3_init_calib_complete : out STD_LOGIC;
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED : in STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_io : inout STD_LOGIC;
    EUI48_onewire_io : inout STD_LOGIC;
    FPGA_IO : in STD_LOGIC;
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    PLL_I2C_ext_scl_o : out STD_LOGIC;
    PLL_I2C_ext_sda : inout STD_LOGIC;
    PLL_int : in STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC;
    TRX_int : in STD_LOGIC;
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_spi_io0_io : inout STD_LOGIC;
    TRX_spi_io1_io : inout STD_LOGIC;
    TRX_spi_sck_io : inout STD_LOGIC;
    TRX_spi_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DTRn : in STD_LOGIC;
    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RTSn : in STD_LOGIC;
    UART0_clk : out STD_LOGIC;
    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    ULI_SYSTEM_XIO : in STD_LOGIC;
    USER_dbg_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    phy_rst_n : out STD_LOGIC;
    qspi_flash_io0_io : inout STD_LOGIC;
    qspi_flash_io1_io : inout STD_LOGIC;
    qspi_flash_io2_io : inout STD_LOGIC;
    qspi_flash_io3_io : inout STD_LOGIC;
    qspi_flash_ss_io : inout STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component msys_wrapper;


-- Constants SCOPE
  constant SCOPE_GPIO0_OUT_enable         : natural   :=  0;
  constant SCOPE_GPIO0_OUT_start          : natural   :=  1;
  constant SCOPE_GPIO0_OUT_pop            : natural   :=  2;
  constant SCOPE_GPIO0_OUT_trigLvl        : natural   :=  7;
  constant SCOPE_GPIO0_OUT_trigSrc_LO     : natural   :=  8;
  constant SCOPE_GPIO0_OUT_trigSrc_HI     : natural   := 13;

  constant SCOPE_GPIO1_IN_running         : natural   :=  0;
  constant SCOPE_GPIO1_IN_readAvail       : natural   :=  1;
  constant SCOPE_GPIO1_IN_readValid       : natural   :=  2;


-- RESETS
  signal tb_reset : STD_LOGIC;
  
-- CLOCKS
  signal tb_CLK0_clk_p : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tb_CLK0_clk_n : STD_LOGIC_VECTOR ( 0 to 0 );

  signal tb_CLK1B_clk : STD_LOGIC_VECTOR ( 0 to 0 );

  signal tb_CLK2_mgt_clk0_clk_p : STD_LOGIC;
  signal tb_CLK2_mgt_clk0_clk_n : STD_LOGIC;

  signal tb_CLK3_sys_diff_clk_p : STD_LOGIC;
  signal tb_CLK3_sys_diff_clk_n : STD_LOGIC;

  signal tb_TRX_clk_26MHz : STD_LOGIC;

  signal tb_TRX_rx_clk_64MHz_clk_p : STD_LOGIC;
  signal tb_TRX_rx_clk_64MHz_clk_n : STD_LOGIC;

  signal tb_TRX_rx_data_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tb_TRX_rx_data_n : STD_LOGIC_VECTOR ( 1 downto 0 );

  signal tb_TRX_tx_clk_p : STD_LOGIC;
  signal tb_TRX_tx_clk_n : STD_LOGIC;
  
  signal tb_qspi_flash_io0_io : STD_LOGIC;
  signal tb_qspi_flash_io1_io : STD_LOGIC;
  signal tb_qspi_flash_io2_io : STD_LOGIC;
  signal tb_qspi_flash_io3_io : STD_LOGIC;
  signal tb_qspi_flash_ss_io : STD_LOGIC;
  
  signal tb_ETH0_MDIO_MDC_mdio_io : STD_LOGIC;
  
  signal tb_EUI48_onewire_io : STD_LOGIC;
  
  signal tb_BOARD_IIC_scl_io : STD_LOGIC;
  signal tb_BOARD_IIC_sda_io : STD_LOGIC;
  
  signal tb_TRX_spi_io0_io : STD_LOGIC;
  signal tb_TRX_spi_io1_io : STD_LOGIC;
  signal tb_TRX_spi_sck_io : STD_LOGIC;
  signal tb_TRX_spi_ss_io : STD_LOGIC;
  
  signal tb_RMII_PHY_M_0_crs_dv : STD_LOGIC;
  signal tb_RMII_PHY_M_0_rxd : STD_LOGIC_VECTOR (1 downto 0);

begin
msys_wrapper_i: component msys_wrapper
  port map (
    -- RESETS

    reset => tb_reset,


    -- CLOCKS
    
    CLK0_clk_p => tb_CLK0_clk_p,
    CLK0_clk_n => tb_CLK0_clk_n,

    CLK1B_clk => tb_CLK1B_clk,

    CLK2_mgt_clk0_clk_p => tb_CLK2_mgt_clk0_clk_p,
    CLK2_mgt_clk0_clk_n => tb_CLK2_mgt_clk0_clk_n,

    CLK3_sys_diff_clk_p => tb_CLK3_sys_diff_clk_p,
    CLK3_sys_diff_clk_n => tb_CLK3_sys_diff_clk_n,

    TRX_clk_26MHz => tb_TRX_clk_26MHz,


    -- SIGNALS
    
    FPGA_IO => 'L',
    ULI_SYSTEM_XIO => 'L',

    qspi_flash_io0_io => tb_qspi_flash_io0_io,
    qspi_flash_io1_io => tb_qspi_flash_io1_io,
    qspi_flash_io2_io => tb_qspi_flash_io2_io,
    qspi_flash_io3_io => tb_qspi_flash_io3_io,
    qspi_flash_ss_io => tb_qspi_flash_ss_io,

    PLL_int => '0',
--    PLL_I2C_ext_scl_o : out STD_LOGIC;
--    PLL_I2C_ext_sda : inout STD_LOGIC;

--    DDR3_init_calib_complete : out STD_LOGIC;
--    DDR3_SDRAM_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
--    DDR3_SDRAM_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
--    DDR3_SDRAM_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
--    DDR3_SDRAM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
--    DDR3_SDRAM_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
--    DDR3_SDRAM_ras_n : out STD_LOGIC;
--    DDR3_SDRAM_cas_n : out STD_LOGIC;
--    DDR3_SDRAM_we_n : out STD_LOGIC;
--    DDR3_SDRAM_reset_n : out STD_LOGIC;
--    DDR3_SDRAM_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
--    DDR3_SDRAM_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
--    DDR3_SDRAM_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
--    DDR3_SDRAM_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
--    DDR3_SDRAM_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
--    DDR3_SDRAM_odt : out STD_LOGIC_VECTOR ( 0 to 0 );

--    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
--    UART0_clk : out STD_LOGIC;
    UART0EXT_RTSn => '0',
--    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DTRn => '0',
--    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
--    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
--    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );

--    phy_rst_n : out STD_LOGIC;
    ETH0_LINK_LED => '0',
    RMII_PHY_M_0_crs_dv => tb_RMII_PHY_M_0_crs_dv,
    RMII_PHY_M_0_rxd => tb_RMII_PHY_M_0_rxd,
--    RMII_PHY_M_0_tx_en : out STD_LOGIC;
--    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
--    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_io => tb_ETH0_MDIO_MDC_mdio_io,
--    ETH0_DA_Y : out STD_LOGIC;
--    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );

    EUI48_onewire_io => tb_EUI48_onewire_io,

    UART0_rxd => '1',
--    UART0_txd : out STD_LOGIC;

    BOARD_IIC_scl_io => tb_BOARD_IIC_scl_io,
    BOARD_IIC_sda_io => tb_BOARD_IIC_sda_io,

    BOARD_ROTENC_I => 'H',
    BOARD_ROTENC_Q => 'H',
    BOARD_ROTENC_PUSH => 'H',

--    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
--    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
--    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
--    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
--    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );

    TRX_rx_clk_64MHz_clk_p => tb_TRX_rx_clk_64MHz_clk_p,
    TRX_rx_clk_64MHz_clk_n => tb_TRX_rx_clk_64MHz_clk_n,
    TRX_spi_io0_io => tb_TRX_spi_io0_io,
    TRX_spi_io1_io => tb_TRX_spi_io1_io,
    TRX_spi_sck_io => tb_TRX_spi_sck_io,
    TRX_spi_ss_io(0) => tb_TRX_spi_ss_io,

    TRX_int => '0',
--    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
--    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );

--    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
--    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_tx_clk_clk_p => tb_TRX_tx_clk_p,
    TRX_tx_clk_clk_n => tb_TRX_tx_clk_n,
    TRX_rx_data_p => tb_TRX_rx_data_p,
    TRX_rx_data_n => tb_TRX_rx_data_n
--    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
--    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
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

  -- 100 MHz  no more in use
  proc_tb_CLK0_clk: process
  begin
    tb_CLK0_clk_p(0) <= '1';
    tb_CLK0_clk_n(0) <= '0';
    wait for 5ns;

    tb_CLK0_clk_p(0) <= '0';
    tb_CLK0_clk_n(0) <= '1';
    wait for 5ns;
  end process proc_tb_CLK0_clk;

  -- 50 MHz  for PHY chip
  proc_tb_CLK1B_clk: process
  begin
    tb_CLK1B_clk(0) <= '1';
    wait for 10ns;

    tb_CLK1B_clk(0) <= '0';
    wait for 10ns;
  end process proc_tb_CLK1B_clk;

  -- 125 MHz  mgt_clk0_clk_p/n = (PLL) CLK2_p/n  for GTP
  proc_tb_CLK2_mgt_clk0_clk: process
  begin
    tb_CLK2_mgt_clk0_clk_p <= '1';
    tb_CLK2_mgt_clk0_clk_n <= '0';
    wait for 4ns;

    tb_CLK2_mgt_clk0_clk_p <= '0';
    tb_CLK2_mgt_clk0_clk_n <= '1';
    wait for 4ns;
  end process proc_tb_CLK2_mgt_clk0_clk;

  -- 50 MHz  CLK3_sys_diff_clk_p/n = (PLL CLK3) PLL_CLK_P/N
  proc_tb_CLK3_sys_diff_clk: process
  begin
    tb_CLK3_sys_diff_clk_p <= '1';
    tb_CLK3_sys_diff_clk_n <= '0';
    wait for 10ns;

    tb_CLK3_sys_diff_clk_p <= '0';
    tb_CLK3_sys_diff_clk_n <= '1';
    wait for 10ns;
  end process proc_tb_CLK3_sys_diff_clk;

  -- 26 MHz
  proc_tb_TRX_clk_26MHz: process
  begin
    tb_TRX_clk_26MHz <= '1';
    wait for 19.231ns;

    tb_TRX_clk_26MHz <= '0';
    wait for 19.231ns;
  end process proc_tb_TRX_clk_26MHz;
  
  -- 64 MHz from TRX LVDS: RX24.7 RX09.7 RX24.6 RX09.6 ... RX24.0 RX09.0
  proc_tb_TRX_rx_clk_64MHz_clk: process
  begin
    tb_TRX_rx_clk_64MHz_clk_p <= '1';
    tb_TRX_rx_clk_64MHz_clk_n <= '0';
    wait for 7.8125ns;
    
    tb_TRX_rx_clk_64MHz_clk_p <= '0';
    tb_TRX_rx_clk_64MHz_clk_n <= '1';
    wait for 7.8125ns;
  end process proc_tb_TRX_rx_clk_64MHz_clk;
  
  
-- STIMULATION

  -- LVDS DDR data with 64 MHz clock (DDR: 128 MHz)
  proc_tb_TRX_rx_data: process
  begin
    -- RX data has offset by 1/2 bit clock
    wait for 7.8125ns / 2;
    
    loop
      -- [1] RX24 off     [0] RX09 square wave half+ half- ...

      -- Frame 0 with I = half-pos / Q = 0
      -- Bit 31: I_SYNC 1_
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 30: I_SYNC  _0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 29: I[13] Sign-Bit  +
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 28: I[12] half-pos
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 27: I[11] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 26: I[10] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 25: I[09] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 24: I[08] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 23: I[07] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 22: I[06] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 21: I[05] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 20: I[04] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 19: I[03] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 18: I[02] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 17: I[01] half-pos
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 16: I[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;


      -- Bit 15: Q_SYNC 0_
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 14: Q_SYNC  _1
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 13: Q[13] Sign-Bit  +(0)
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 12: Q[12] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 11: Q[11] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 10: Q[10] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 09: Q[09] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 08: Q[08] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 07: Q[07] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 06: Q[06] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 05: Q[05] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 04: Q[04] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 03: Q[03] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 02: Q[02] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 01: Q[01] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 00: Q[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;
      -- 32 Bit frame complete


      -- Frame 1 with I = 0 / Q = 0
      -- Bit 31: I_SYNC 1_
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 30: I_SYNC  _0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 29: I[13] Sign-Bit  (+)
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 28: I[12] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 27: I[11] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 26: I[10] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 25: I[09] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 24: I[08] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 23: I[07] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 22: I[06] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 21: I[05] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 20: I[04] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 19: I[03] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 18: I[02] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 17: I[01] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 16: I[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;


      -- Bit 15: Q_SYNC 0_
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 14: Q_SYNC  _1
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 13: Q[13] Sign-Bit  +(0)
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 12: Q[12] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 11: Q[11] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 10: Q[10] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 09: Q[09] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 08: Q[08] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 07: Q[07] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 06: Q[06] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 05: Q[05] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 04: Q[04] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 03: Q[03] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 02: Q[02] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 01: Q[01] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 00: Q[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;
      -- 32 Bit frame complete


      -- Frame 2 with I = half-neg / Q = 0
      -- Bit 31: I_SYNC 1_
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 30: I_SYNC  _0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 29: I[13] Sign-Bit  -
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 28: I[12] half-neg
      tb_TRX_rx_data_p <= "01";
      tb_TRX_rx_data_n <= "10";
      wait for 7.8125ns;

      -- Bit 27: I[11] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 26: I[10] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 25: I[09] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 24: I[08] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 23: I[07] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 22: I[06] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 21: I[05] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 20: I[04] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 19: I[03] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 18: I[02] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 17: I[01] half-neg
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 16: I[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;


      -- Bit 15: Q_SYNC 0_
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 14: Q_SYNC  _1
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 13: Q[13] Sign-Bit  +(0)
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 12: Q[12] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 11: Q[11] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 10: Q[10] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 09: Q[09] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 08: Q[08] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 07: Q[07] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 06: Q[06] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 05: Q[05] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 04: Q[04] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 03: Q[03] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 02: Q[02] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 01: Q[01] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 00: Q[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;
      -- 32 Bit frame complete


      -- Frame 3 with I = 0 / Q = 0
      -- Bit 31: I_SYNC 1_
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 30: I_SYNC  _0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 29: I[13] Sign-Bit  +(0)
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 28: I[12] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 27: I[11] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 26: I[10] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 25: I[09] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 24: I[08] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 23: I[07] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 22: I[06] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 21: I[05] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 20: I[04] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 19: I[03] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 18: I[02] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 17: I[01] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 16: I[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;


      -- Bit 15: Q_SYNC 0_
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 14: Q_SYNC  _1
      tb_TRX_rx_data_p <= "11";
      tb_TRX_rx_data_n <= "00";
      wait for 7.8125ns;

      -- Bit 13: Q[13] Sign-Bit  +(0)
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 12: Q[12] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 11: Q[11] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 10: Q[10] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 09: Q[09] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 08: Q[08] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 07: Q[07] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 06: Q[06] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 05: Q[05] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 04: Q[04] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 03: Q[03] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 02: Q[02] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 01: Q[01] zero
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;

      -- Bit 00: Q[00] always 0
      tb_TRX_rx_data_p <= "00";
      tb_TRX_rx_data_n <= "11";
      wait for 7.8125ns;
      -- 32 Bit frame complete

    end loop;
    
    -- Should never enter here
    wait;
  end process proc_tb_TRX_rx_data;


-- ETHERNET

  proc_tb_RMII_PHY: process
  begin
    tb_RMII_PHY_M_0_rxd     <= "00";
    tb_RMII_PHY_M_0_crs_dv  <= '0';
    wait for 13 us;

    -- Preamble
    for ii in 0 to 6 loop
        wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
        tb_RMII_PHY_M_0_rxd     <= "01";
        tb_RMII_PHY_M_0_crs_dv  <= '1';
        wait for 20 ns;
        wait for 20 ns;
        wait for 20 ns;
        wait for 19 ns;
    end loop;
    
    -- Start Frame Delimiter 
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "01";
    tb_RMII_PHY_M_0_crs_dv  <= '1';
    wait for 20 ns;
    wait for 20 ns;
    wait for 20 ns;
    tb_RMII_PHY_M_0_rxd     <= "11";
    wait for 19 ns;

    -- Destination MAC - 6 octets   ff:ff:ff:ff:ff:ff   (broadcast MAC address)
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    for ii in 0 to 5 loop
        wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
        tb_RMII_PHY_M_0_rxd     <= "11";
        tb_RMII_PHY_M_0_crs_dv  <= '1';
        wait for 20 ns;
        wait for 20 ns;
        wait for 20 ns;
        wait for 19 ns;
    end loop;
    
    -- Source MAC - 6 octets        aa:aa:aa:aa:aa:aa   (faked MAC address)
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    for ii in 0 to 5 loop
        wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
        tb_RMII_PHY_M_0_rxd     <= "10";
        tb_RMII_PHY_M_0_crs_dv  <= '1';
        wait for 20 ns;
        wait for 20 ns;
        wait for 20 ns;
        wait for 19 ns;
    end loop;
    
    -- Ethernet II  0x8000    
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "00";
    tb_RMII_PHY_M_0_crs_dv  <= '1';
    wait for 20 ns;
    wait for 20 ns;
    wait for 20 ns;
    wait for 19 ns;

    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "00";
    tb_RMII_PHY_M_0_crs_dv  <= '1';
    wait for 20 ns;
    wait for 20 ns;
    wait for 19 ns;

    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "10";
    tb_RMII_PHY_M_0_crs_dv  <= '1';
    wait for 19 ns;
    
    -- Payload
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "00";
    tb_RMII_PHY_M_0_crs_dv  <= '1';
    
    -- CRC
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "00";
    tb_RMII_PHY_M_0_crs_dv  <= '1';
    
    -- Release
    wait until tb_CLK1B_clk(0)'event and tb_CLK1B_clk(0) = '0';
    tb_RMII_PHY_M_0_rxd     <= "00";
    tb_RMII_PHY_M_0_crs_dv  <= '0';
    
    -- do not loop
    wait;
  end process proc_tb_RMII_PHY;


-- INITIAL VALUES

  proc_tb_qspi_flash: process
  begin
    tb_qspi_flash_io0_io <= 'L';
    tb_qspi_flash_io1_io <= 'L';
    tb_qspi_flash_io2_io <= 'L';
    tb_qspi_flash_io3_io <= 'H';
    tb_qspi_flash_ss_io  <= 'H';
    wait;
  end process proc_tb_qspi_flash;
  
  proc_tb_ETH0_MDIO_MDC_mdio_io: process
  begin
    tb_ETH0_MDIO_MDC_mdio_io <= 'H';
    wait;
  end process proc_tb_ETH0_MDIO_MDC_mdio_io;
  
  proc_tb_onewire_EUI48_tri_io: process
  begin
    tb_EUI48_onewire_io <= 'H';
    wait;
  end process proc_tb_onewire_EUI48_tri_io;
  
  proc_tb_BOARD_IIC_xxx_io: process
  begin
    tb_BOARD_IIC_scl_io <= 'H';
    tb_BOARD_IIC_sda_io <= 'H';
    wait;
  end process proc_tb_BOARD_IIC_xxx_io;
  
  proc_tb_TRX_spi_xxx_io: process
  begin
    tb_TRX_spi_io0_io <= 'H';
    tb_TRX_spi_io1_io <= 'H';
    tb_TRX_spi_sck_io <= 'L';
    tb_TRX_spi_ss_io  <= 'H';
    wait;
  end process proc_tb_TRX_spi_xxx_io;
  
end Behavioral;
