--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Mon Apr 20 11:01:31 2020
--Host        : ULRICHHABEL6701 running 64-bit major release  (build 9200)
--Command     : generate_target msys_wrapper.bd
--Design      : msys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity msys_wrapper is
  port (
    BOARD_IIC_scl_io : inout STD_LOGIC;
    BOARD_IIC_sda_io : inout STD_LOGIC;
    BOARD_ROTENC_I : in STD_LOGIC;
    BOARD_ROTENC_Q : in STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK1B : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    ETH0_DA_Y : out STD_LOGIC;
    ETH0_LINK_LED : in STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_io : inout STD_LOGIC;
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
    mgt_clk0_clk_n : in STD_LOGIC;
    mgt_clk0_clk_p : in STD_LOGIC;
    onewire_EUI48_tri_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    phy_rst_n : out STD_LOGIC;
    qspi_flash_io0_io : inout STD_LOGIC;
    qspi_flash_io1_io : inout STD_LOGIC;
    qspi_flash_io2_io : inout STD_LOGIC;
    qspi_flash_io3_io : inout STD_LOGIC;
    qspi_flash_ss_io : inout STD_LOGIC;
    reset : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
end msys_wrapper;

architecture STRUCTURE of msys_wrapper is
  component msys is
  port (
    CLK1B : in STD_LOGIC_VECTOR ( 0 to 0 );
    PLL_I2C_ext_scl_o : out STD_LOGIC;
    PLL_I2C_ext_sda : inout STD_LOGIC;
    PLL_int : in STD_LOGIC;
    phy_rst_n : out STD_LOGIC;
    reset : in STD_LOGIC;
    UART0EXT_RTSn : in STD_LOGIC;
    UART0EXT_DTRn : in STD_LOGIC;
    UART0EXT_CTSn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DSRn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_DCDn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0EXT_RIn : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    UART0_clk : out STD_LOGIC;
    DDR3_init_calib_complete : out STD_LOGIC;
    ETH0_DA_Y : out STD_LOGIC;
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED : in STD_LOGIC;
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    rotenc_decoder_clk : out STD_LOGIC;
    rotenc_decoder_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    mgt_clk0_clk_p : in STD_LOGIC;
    mgt_clk0_clk_n : in STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    BOARD_IIC_scl_i : in STD_LOGIC;
    BOARD_IIC_scl_o : out STD_LOGIC;
    BOARD_IIC_scl_t : out STD_LOGIC;
    BOARD_IIC_sda_i : in STD_LOGIC;
    BOARD_IIC_sda_o : out STD_LOGIC;
    BOARD_IIC_sda_t : out STD_LOGIC;
    qspi_flash_io0_i : in STD_LOGIC;
    qspi_flash_io0_o : out STD_LOGIC;
    qspi_flash_io0_t : out STD_LOGIC;
    qspi_flash_io1_i : in STD_LOGIC;
    qspi_flash_io1_o : out STD_LOGIC;
    qspi_flash_io1_t : out STD_LOGIC;
    qspi_flash_io2_i : in STD_LOGIC;
    qspi_flash_io2_o : out STD_LOGIC;
    qspi_flash_io2_t : out STD_LOGIC;
    qspi_flash_io3_i : in STD_LOGIC;
    qspi_flash_io3_o : out STD_LOGIC;
    qspi_flash_io3_t : out STD_LOGIC;
    qspi_flash_ss_i : in STD_LOGIC;
    qspi_flash_ss_o : out STD_LOGIC;
    qspi_flash_ss_t : out STD_LOGIC;
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    DDR3_SDRAM_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR3_SDRAM_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR3_SDRAM_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR3_SDRAM_ras_n : out STD_LOGIC;
    DDR3_SDRAM_cas_n : out STD_LOGIC;
    DDR3_SDRAM_we_n : out STD_LOGIC;
    DDR3_SDRAM_reset_n : out STD_LOGIC;
    DDR3_SDRAM_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR3_SDRAM_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR3_SDRAM_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    onewire_EUI48_tri_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    onewire_EUI48_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    onewire_EUI48_tri_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component msys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  component rotenc_decoder is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rotenc_I : in STD_LOGIC;
    rotenc_Q : in STD_LOGIC;
    cnt_up_dwn : out STD_LOGIC;
    cnt_en : out STD_LOGIC
  );
  end component rotenc_decoder;
  signal BOARD_IIC_scl_i : STD_LOGIC;
  signal BOARD_IIC_scl_o : STD_LOGIC;
  signal BOARD_IIC_scl_t : STD_LOGIC;
  signal BOARD_IIC_sda_i : STD_LOGIC;
  signal BOARD_IIC_sda_o : STD_LOGIC;
  signal BOARD_IIC_sda_t : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_i : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_o : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_t : STD_LOGIC;
  signal onewire_EUI48_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal onewire_EUI48_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal onewire_EUI48_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal onewire_EUI48_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal qspi_flash_io0_i : STD_LOGIC;
  signal qspi_flash_io0_o : STD_LOGIC;
  signal qspi_flash_io0_t : STD_LOGIC;
  signal qspi_flash_io1_i : STD_LOGIC;
  signal qspi_flash_io1_o : STD_LOGIC;
  signal qspi_flash_io1_t : STD_LOGIC;
  signal qspi_flash_io2_i : STD_LOGIC;
  signal qspi_flash_io2_o : STD_LOGIC;
  signal qspi_flash_io2_t : STD_LOGIC;
  signal qspi_flash_io3_i : STD_LOGIC;
  signal qspi_flash_io3_o : STD_LOGIC;
  signal qspi_flash_io3_t : STD_LOGIC;
  signal qspi_flash_ss_i : STD_LOGIC;
  signal qspi_flash_ss_o : STD_LOGIC;
  signal qspi_flash_ss_t : STD_LOGIC;
  signal rotenc_dec_cnt_en : STD_LOGIC;
  signal rotenc_dec_cnt_up_dwn : STD_LOGIC;
  signal rotenc_decoder_clk : STD_LOGIC;
  signal rotenc_decoder_reset : STD_LOGIC;
begin
BOARD_IIC_scl_iobuf: component IOBUF
     port map (
      I => BOARD_IIC_scl_o,
      IO => BOARD_IIC_scl_io,
      O => BOARD_IIC_scl_i,
      T => BOARD_IIC_scl_t
    );
BOARD_IIC_sda_iobuf: component IOBUF
     port map (
      I => BOARD_IIC_sda_o,
      IO => BOARD_IIC_sda_io,
      O => BOARD_IIC_sda_i,
      T => BOARD_IIC_sda_t
    );
ETH0_MDIO_MDC_mdio_iobuf: component IOBUF
     port map (
      I => ETH0_MDIO_MDC_mdio_o,
      IO => ETH0_MDIO_MDC_mdio_io,
      O => ETH0_MDIO_MDC_mdio_i,
      T => ETH0_MDIO_MDC_mdio_t
    );
rotenc_decoder_i: component rotenc_decoder
     port map (
      clk => rotenc_decoder_clk,
      reset => rotenc_decoder_reset,
      rotenc_I => BOARD_ROTENC_I,
      rotenc_Q => BOARD_ROTENC_Q,
      cnt_up_dwn => rotenc_dec_cnt_up_dwn,
      cnt_en => rotenc_dec_cnt_en
     );
msys_i: component msys
     port map (
      BOARD_IIC_scl_i => BOARD_IIC_scl_i,
      BOARD_IIC_scl_o => BOARD_IIC_scl_o,
      BOARD_IIC_scl_t => BOARD_IIC_scl_t,
      BOARD_IIC_sda_i => BOARD_IIC_sda_i,
      BOARD_IIC_sda_o => BOARD_IIC_sda_o,
      BOARD_IIC_sda_t => BOARD_IIC_sda_t,
      BOARD_ROTENC_PUSH => BOARD_ROTENC_PUSH,
      CLK0_clk_n(0) => CLK0_clk_n(0),
      CLK0_clk_p(0) => CLK0_clk_p(0),
      CLK1B(0) => CLK1B(0),
      DDR3_SDRAM_addr(14 downto 0) => DDR3_SDRAM_addr(14 downto 0),
      DDR3_SDRAM_ba(2 downto 0) => DDR3_SDRAM_ba(2 downto 0),
      DDR3_SDRAM_cas_n => DDR3_SDRAM_cas_n,
      DDR3_SDRAM_ck_n(0) => DDR3_SDRAM_ck_n(0),
      DDR3_SDRAM_ck_p(0) => DDR3_SDRAM_ck_p(0),
      DDR3_SDRAM_cke(0) => DDR3_SDRAM_cke(0),
      DDR3_SDRAM_cs_n(0) => DDR3_SDRAM_cs_n(0),
      DDR3_SDRAM_dm(3 downto 0) => DDR3_SDRAM_dm(3 downto 0),
      DDR3_SDRAM_dq(31 downto 0) => DDR3_SDRAM_dq(31 downto 0),
      DDR3_SDRAM_dqs_n(3 downto 0) => DDR3_SDRAM_dqs_n(3 downto 0),
      DDR3_SDRAM_dqs_p(3 downto 0) => DDR3_SDRAM_dqs_p(3 downto 0),
      DDR3_SDRAM_odt(0) => DDR3_SDRAM_odt(0),
      DDR3_SDRAM_ras_n => DDR3_SDRAM_ras_n,
      DDR3_SDRAM_reset_n => DDR3_SDRAM_reset_n,
      DDR3_SDRAM_we_n => DDR3_SDRAM_we_n,
      DDR3_init_calib_complete => DDR3_init_calib_complete,
      ETH0_DA_G(0) => ETH0_DA_G(0),
      ETH0_DA_Y => ETH0_DA_Y,
      ETH0_LINK_LED => ETH0_LINK_LED,
      ETH0_MDIO_MDC_mdc => ETH0_MDIO_MDC_mdc,
      ETH0_MDIO_MDC_mdio_i => ETH0_MDIO_MDC_mdio_i,
      ETH0_MDIO_MDC_mdio_o => ETH0_MDIO_MDC_mdio_o,
      ETH0_MDIO_MDC_mdio_t => ETH0_MDIO_MDC_mdio_t,
      LCD_BL(0) => LCD_BL(0),
      LCD_rstn(0) => LCD_rstn(0),
      LED_RGB_blue(0) => LED_RGB_blue(0),
      LED_RGB_green(0) => LED_RGB_green(0),
      LED_RGB_red(0) => LED_RGB_red(0),
      PLL_I2C_ext_scl_o => PLL_I2C_ext_scl_o,
      PLL_I2C_ext_sda => PLL_I2C_ext_sda,
      PLL_int => PLL_int,
      RMII_PHY_M_0_crs_dv => RMII_PHY_M_0_crs_dv,
      RMII_PHY_M_0_rxd(1 downto 0) => RMII_PHY_M_0_rxd(1 downto 0),
      RMII_PHY_M_0_tx_en => RMII_PHY_M_0_tx_en,
      RMII_PHY_M_0_txd(1 downto 0) => RMII_PHY_M_0_txd(1 downto 0),
      UART0EXT_CTSn(0) => UART0EXT_CTSn(0),
      UART0EXT_DCDn(0) => UART0EXT_DCDn(0),
      UART0EXT_DSRn(0) => UART0EXT_DSRn(0),
      UART0EXT_DTRn => UART0EXT_DTRn,
      UART0EXT_RIn(0) => UART0EXT_RIn(0),
      UART0EXT_RTSn => UART0EXT_RTSn,
      UART0_clk => UART0_clk,
      UART0_rst_n(0) => UART0_rst_n(0),
      UART0_rxd => UART0_rxd,
      UART0_txd => UART0_txd,
      mgt_clk0_clk_n => mgt_clk0_clk_n,
      mgt_clk0_clk_p => mgt_clk0_clk_p,
      onewire_EUI48_tri_i(0) => onewire_EUI48_tri_i_0(0),
      onewire_EUI48_tri_o(0) => onewire_EUI48_tri_o_0(0),
      onewire_EUI48_tri_t(0) => onewire_EUI48_tri_t_0(0),
      phy_rst_n => phy_rst_n,
      qspi_flash_io0_i => qspi_flash_io0_i,
      qspi_flash_io0_o => qspi_flash_io0_o,
      qspi_flash_io0_t => qspi_flash_io0_t,
      qspi_flash_io1_i => qspi_flash_io1_i,
      qspi_flash_io1_o => qspi_flash_io1_o,
      qspi_flash_io1_t => qspi_flash_io1_t,
      qspi_flash_io2_i => qspi_flash_io2_i,
      qspi_flash_io2_o => qspi_flash_io2_o,
      qspi_flash_io2_t => qspi_flash_io2_t,
      qspi_flash_io3_i => qspi_flash_io3_i,
      qspi_flash_io3_o => qspi_flash_io3_o,
      qspi_flash_io3_t => qspi_flash_io3_t,
      qspi_flash_ss_i => qspi_flash_ss_i,
      qspi_flash_ss_o => qspi_flash_ss_o,
      qspi_flash_ss_t => qspi_flash_ss_t,
      reset => reset,
      rotenc_dec_cnt_en => rotenc_dec_cnt_en,
      rotenc_dec_cnt_up_dwn => rotenc_dec_cnt_up_dwn,
      rotenc_decoder_clk => rotenc_decoder_clk,
      rotenc_decoder_reset(0) => rotenc_decoder_reset,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
onewire_EUI48_tri_iobuf_0: component IOBUF
     port map (
      I => onewire_EUI48_tri_o_0(0),
      IO => onewire_EUI48_tri_io(0),
      O => onewire_EUI48_tri_i_0(0),
      T => onewire_EUI48_tri_t_0(0)
    );
qspi_flash_io0_iobuf: component IOBUF
     port map (
      I => qspi_flash_io0_o,
      IO => qspi_flash_io0_io,
      O => qspi_flash_io0_i,
      T => qspi_flash_io0_t
    );
qspi_flash_io1_iobuf: component IOBUF
     port map (
      I => qspi_flash_io1_o,
      IO => qspi_flash_io1_io,
      O => qspi_flash_io1_i,
      T => qspi_flash_io1_t
    );
qspi_flash_io2_iobuf: component IOBUF
     port map (
      I => qspi_flash_io2_o,
      IO => qspi_flash_io2_io,
      O => qspi_flash_io2_i,
      T => qspi_flash_io2_t
    );
qspi_flash_io3_iobuf: component IOBUF
     port map (
      I => qspi_flash_io3_o,
      IO => qspi_flash_io3_io,
      O => qspi_flash_io3_i,
      T => qspi_flash_io3_t
    );
qspi_flash_ss_iobuf: component IOBUF
     port map (
      I => qspi_flash_ss_o,
      IO => qspi_flash_ss_io,
      O => qspi_flash_ss_i,
      T => qspi_flash_ss_t
    );
end STRUCTURE;
