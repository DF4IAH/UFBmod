--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1.1 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
--Date        : Sun Aug 23 22:51:49 2020
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
end msys_wrapper;

architecture STRUCTURE of msys_wrapper is
  component msys is
  port (
    PLL_I2C_ext_scl_o : out STD_LOGIC;
    PLL_I2C_ext_sda : inout STD_LOGIC;
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
    ETH0_DA_Y : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_DA_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    ETH0_LINK_LED_g : in STD_LOGIC;
    LED_RGB_red : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_green : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED_RGB_blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_BL : out STD_LOGIC_VECTOR ( 0 to 0 );
    LCD_rstn : out STD_LOGIC_VECTOR ( 0 to 0 );
    microblaze_0_Clk_100MHz_o : out STD_LOGIC;
    rst_100M_peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    rotenc_dec_cnt_up_dwn : in STD_LOGIC;
    rotenc_dec_cnt_en : in STD_LOGIC;
    BOARD_ROTENC_PUSH : in STD_LOGIC;
    PLL_int : in STD_LOGIC;
    TRX_int : in STD_LOGIC;
    TRX_resetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rfx_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_clk_26MHz : in STD_LOGIC;
    FPGA_IO : in STD_LOGIC;
    ULI_SYSTEM_XIO : in STD_LOGIC;
    TRX_PLL_clk_25MHz_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_PLL_clk_25MHz_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_rx_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRX_tx_data_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK1B_clk : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_rx09_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx24_fifo_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    TRX_rx09_fifo_valid_o : out STD_LOGIC;
    TRX_rx24_fifo_valid_o : out STD_LOGIC;
    fft09_data_tlast_in : in STD_LOGIC;
    fft09_data_tready_out : out STD_LOGIC;
    fft09_data_tvalid_in : in STD_LOGIC;
    fft09_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft09_config_tvalid_in : in STD_LOGIC;
    fft09_aresetn_in : in STD_LOGIC;
    premem_rx09_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx09_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx24_dina_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    premem_rx09_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    premem_rx09_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_addra_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    premem_rx24_wea_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    premem_rx09_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    premem_rx24_quarterfrm_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fft24_data_tready_out : out STD_LOGIC;
    fft24_data_tlast_in : in STD_LOGIC;
    fft24_data_tvalid_in : in STD_LOGIC;
    fft24_config_tdata_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fft24_config_tvalid_in : in STD_LOGIC;
    premem_rx24_addrb_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    fft24_aresetn_in : in STD_LOGIC;
    EUI48_FSM_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    EUI48_FSM_run : in STD_LOGIC;
    EUI48_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    EUI48_state : in STD_LOGIC_VECTOR ( 7 downto 0 );
    EUI48_abort : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SCOPE_FSM_Timebase_SCLR : in STD_LOGIC;
    SCOPE_FSM_Timebase_CE : in STD_LOGIC;
    SCOPE_FSM_FIFO_Rst : in STD_LOGIC;
    SCOPE_FSM_FIFO_RdEn : in STD_LOGIC;
    SCOPE_FSM_FIFO_WrFull : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdValid : out STD_LOGIC;
    SCOPE_FSM_FIFO_RdEmpty : out STD_LOGIC;
    SCOPE_FSM_TrigSrc : out STD_LOGIC_VECTOR ( 47 downto 0 );
    SCOPE_FSM_FIFO_WrEn : in STD_LOGIC;
    USER_dbg_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    SCOPE_FSM_FIFO_rd_rst_busy : out STD_LOGIC;
    SCOPE_FSM_FIFO_wr_rst_busy : out STD_LOGIC;
    SCOPE_FSM_GPIO0_Out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SCOPE_FSM_GPIO1_In : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    CLK2_mgt_clk0_clk_p : in STD_LOGIC;
    CLK2_mgt_clk0_clk_n : in STD_LOGIC;
    UART0_rxd : in STD_LOGIC;
    UART0_txd : out STD_LOGIC;
    TRX_rx_clk_64MHz_clk_n : in STD_LOGIC;
    TRX_rx_clk_64MHz_clk_p : in STD_LOGIC;
    CLK0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    TRX_spi_io0_i : in STD_LOGIC;
    TRX_spi_io0_o : out STD_LOGIC;
    TRX_spi_io0_t : out STD_LOGIC;
    TRX_spi_io1_i : in STD_LOGIC;
    TRX_spi_io1_o : out STD_LOGIC;
    TRX_spi_io1_t : out STD_LOGIC;
    TRX_spi_sck_i : in STD_LOGIC;
    TRX_spi_sck_o : out STD_LOGIC;
    TRX_spi_sck_t : out STD_LOGIC;
    TRX_spi_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    TRX_spi_ss_t : out STD_LOGIC;
    ETH0_MDIO_MDC_mdc : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_i : in STD_LOGIC;
    ETH0_MDIO_MDC_mdio_o : out STD_LOGIC;
    ETH0_MDIO_MDC_mdio_t : out STD_LOGIC;
    TRX_tx_clk_clk_n : out STD_LOGIC;
    TRX_tx_clk_clk_p : out STD_LOGIC;
    BOARD_IIC_scl_i : in STD_LOGIC;
    BOARD_IIC_scl_o : out STD_LOGIC;
    BOARD_IIC_scl_t : out STD_LOGIC;
    BOARD_IIC_sda_i : in STD_LOGIC;
    BOARD_IIC_sda_o : out STD_LOGIC;
    BOARD_IIC_sda_t : out STD_LOGIC;
    CLK3_sys_diff_clk_p : in STD_LOGIC;
    CLK3_sys_diff_clk_n : in STD_LOGIC;
    RMII_PHY_M_0_crs_dv : in STD_LOGIC;
    RMII_PHY_M_0_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RMII_PHY_M_0_tx_en : out STD_LOGIC;
    RMII_PHY_M_0_txd : out STD_LOGIC_VECTOR ( 1 downto 0 )
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
    clk                 : in STD_LOGIC;
    resetn              : in STD_LOGIC;
    rotenc_I            : in STD_LOGIC;
    rotenc_Q            : in STD_LOGIC;
    cnt_up_dwn          : out STD_LOGIC;
    cnt_en              : out STD_LOGIC
  );
  end component rotenc_decoder;
  component auto_LVDS_rotate is
  port (
    resetn              : in  STD_LOGIC;
    clk                 : in  STD_LOGIC;
    LVDS09              : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS09_valid        : in  STD_LOGIC;
    LVDS24              : in  STD_LOGIC_VECTOR (31 downto 0);
    LVDS24_valid        : in  STD_LOGIC;
    rot09q              : out STD_LOGIC_VECTOR (31 downto 0);
    rot09vld            : out STD_LOGIC;
    rot24q              : out STD_LOGIC_VECTOR (31 downto 0);
    rot24vld            : out STD_LOGIC
  );
  end component auto_LVDS_rotate;
  component FFT_controller is
  port (
    -- All Clock Domain AXI 100 MHz
    resetn                  : in  STD_LOGIC;
    clk                     : in  STD_LOGIC;
    
    rx09_bs_32bits          : in  STD_LOGIC_VECTOR (31 downto 0);
    rx09_bs_32bits_vld      : in  STD_LOGIC;

    rx24_bs_32bits          : in  STD_LOGIC_VECTOR (31 downto 0);
    rx24_bs_32bits_vld      : in  STD_LOGIC;
    
    PreMem09_addra          : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem09_wea            : out STD_LOGIC;
    PreMem09_dina           : out STD_LOGIC_VECTOR (25 downto 0);  -- (b)  29..17: I-data, 13..01: Q-data
    PreMem09_addrb          : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    PreMem09_quarterfrm     : out STD_LOGIC_VECTOR ( 2 downto 0);
    
    PreMem24_addra          : out STD_LOGIC_VECTOR (10 downto 0);  -- (a)  2x FFT frame of 1024 points = 2048 addresses
    PreMem24_wea            : out STD_LOGIC;
    PreMem24_dina           : out STD_LOGIC_VECTOR (25 downto 0);  -- see above (b)
    PreMem24_addrb          : out STD_LOGIC_VECTOR (10 downto 0);  -- see above (a)
    PreMem24_quarterfrm     : out STD_LOGIC_VECTOR ( 2 downto 0);
    
    XFFT09_aresetn          : out STD_LOGIC;
    XFFT09_s_data_tlast     : out STD_LOGIC;
    XFFT09_s_data_tready    : in  STD_LOGIC;
    XFFT09_s_data_tvalid    : out STD_LOGIC;
    XFFT09_s_conf_tdata     : out STD_LOGIC_VECTOR ( 7 downto 0);
    XFFT09_s_conf_tvalid    : out STD_LOGIC;
    
    XFFT24_aresetn          : out STD_LOGIC;
    XFFT24_s_data_tlast     : out STD_LOGIC;
    XFFT24_s_data_tready    : in  STD_LOGIC;
    XFFT24_s_data_tvalid    : out STD_LOGIC;
    XFFT24_s_conf_tdata     : out STD_LOGIC_VECTOR ( 7 downto 0);
    XFFT24_s_conf_tvalid    : out STD_LOGIC
  );
  end component FFT_controller;
  component EUI48_FSM is 
  port (
    resetn                  : in  STD_LOGIC;
    clk                     : in  STD_LOGIC;
    EUI48_onewire_tri_i     : in  STD_LOGIC;
    EUI48_onewire_tri_o     : out STD_LOGIC;
    EUI48_onewire_tri_t     : out STD_LOGIC;
    EUI48_FSM_start         : in  STD_LOGIC;
    EUI48_FSM_run           : out STD_LOGIC;
    EUI48_data              : out STD_LOGIC_VECTOR (47 downto 0);
    EUI48_state             : out STD_LOGIC_VECTOR ( 7 downto 0);
    EUI48_abort             : out STD_LOGIC_VECTOR ( 7 downto 0)
  );
  end component EUI48_FSM;
  component SCOPE_FSM is
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
  signal BOARD_IIC_scl_i : STD_LOGIC;
  signal BOARD_IIC_scl_o : STD_LOGIC;
  signal BOARD_IIC_scl_t : STD_LOGIC;
  signal BOARD_IIC_sda_i : STD_LOGIC;
  signal BOARD_IIC_sda_o : STD_LOGIC;
  signal BOARD_IIC_sda_t : STD_LOGIC;
  signal ETH0_LINK_LED_g : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_i : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_o : STD_LOGIC;
  signal ETH0_MDIO_MDC_mdio_t : STD_LOGIC;
  signal TRX_spi_io0_i : STD_LOGIC;
  signal TRX_spi_io0_o : STD_LOGIC;
  signal TRX_spi_io0_t : STD_LOGIC;
  signal TRX_spi_io1_i : STD_LOGIC;
  signal TRX_spi_io1_o : STD_LOGIC;
  signal TRX_spi_io1_t : STD_LOGIC;
  signal TRX_spi_sck_i : STD_LOGIC;
  signal TRX_spi_sck_o : STD_LOGIC;
  signal TRX_spi_sck_t : STD_LOGIC;
  signal TRX_spi_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_spi_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_spi_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal TRX_spi_ss_t : STD_LOGIC;
  signal mw_microblaze_0_Clk_100MHz : STD_LOGIC;
  signal mw_rst_100M_peripheral_aresetn : STD_LOGIC;
  signal mw_EUI48_FSM_start : STD_LOGIC;
  signal mw_EUI48_FSM_run : STD_LOGIC;
  signal mw_EUI48_data : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal mw_EUI48_state : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mw_EUI48_abort : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mw_EUI48_onewire_tri_i : STD_LOGIC;
  signal mw_EUI48_onewire_tri_o : STD_LOGIC;
  signal mw_EUI48_onewire_tri_t : STD_LOGIC;
  signal mw_TRX_rx09_fifo : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mw_TRX_rx09_fifo_valid : STD_LOGIC;
  signal mw_TRX_rot09vld : STD_LOGIC;
  signal mw_TRX_rx09_bs : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mw_TRX_rx24_fifo : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mw_TRX_rx24_fifo_valid : STD_LOGIC;
  signal mw_TRX_rot24vld : STD_LOGIC;
  signal mw_TRX_rx24_bs : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mw_premem_rx09_addra_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal mw_premem_rx09_wea_in : STD_LOGIC;
  signal mw_premem_rx09_dina_in : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal mw_premem_rx09_addrb_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal mw_premem_rx09_quarterfrm_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mw_premem_rx24_addra_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal mw_premem_rx24_wea_in : STD_LOGIC;
  signal mw_premem_rx24_dina_in : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal mw_premem_rx24_addrb_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal mw_premem_rx24_quarterfrm_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mw_fft09_aresetn_in : STD_LOGIC;
  signal mw_fft09_data_tlast_in : STD_LOGIC;
  signal mw_fft09_data_tready_out : STD_LOGIC;
  signal mw_fft09_data_tvalid_in : STD_LOGIC;
  signal mw_fft09_config_tdata_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mw_fft09_config_tvalid_in : STD_LOGIC;
  signal mw_fft09_premem_subframe_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mw_fft24_aresetn_in : STD_LOGIC;
  signal mw_fft24_data_tlast_in : STD_LOGIC;
  signal mw_fft24_data_tready_out : STD_LOGIC;
  signal mw_fft24_data_tvalid_in : STD_LOGIC;
  signal mw_fft24_config_tdata_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mw_fft24_config_tvalid_in : STD_LOGIC;
  signal mw_fft24_premem_subframe_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mw_postmem_rx_wea_in : STD_LOGIC;
  signal mw_postmem_rx_addra_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal mw_rotenc_dec_cnt_en : STD_LOGIC;
  signal mw_rotenc_dec_cnt_up_dwn : STD_LOGIC;
  signal mw_SCOPE_FSM_GPIO0_Out : STD_LOGIC_VECTOR (31 downto 0);
  signal mw_SCOPE_FSM_GPIO1_In : STD_LOGIC_VECTOR (31 downto 0);
  signal mw_SCOPE_FSM_TrigSrc : STD_LOGIC_VECTOR (47 downto 0);
  signal mw_SCOPE_FSM_Timebase_CE : STD_LOGIC;
  signal mw_SCOPE_FSM_Timebase_SCLR : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_Rst : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_WrFull : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_RdEmpty : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_WrEn : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_RdEn : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_RdValid : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_rd_rst_busy : STD_LOGIC;
  signal mw_SCOPE_FSM_FIFO_wr_rst_busy : STD_LOGIC;
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
begin
ETH0_LINK_LED_0: component IBUF
     port map (
      I                 => ETH0_LINK_LED,
      O                 => ETH0_LINK_LED_g
    );
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
TRX_spi_io0_iobuf: component IOBUF
     port map (
      I => TRX_spi_io0_o,
      IO => TRX_spi_io0_io,
      O => TRX_spi_io0_i,
      T => TRX_spi_io0_t
    );
TRX_spi_io1_iobuf: component IOBUF
     port map (
      I => TRX_spi_io1_o,
      IO => TRX_spi_io1_io,
      O => TRX_spi_io1_i,
      T => TRX_spi_io1_t
    );
TRX_spi_sck_iobuf: component IOBUF
     port map (
      I => TRX_spi_sck_o,
      IO => TRX_spi_sck_io,
      O => TRX_spi_sck_i,
      T => TRX_spi_sck_t
    );
TRX_spi_ss_iobuf_0: component IOBUF
     port map (
      I => TRX_spi_ss_o_0(0),
      IO => TRX_spi_ss_io(0),
      O => TRX_spi_ss_i_0(0),
      T => TRX_spi_ss_t
    );
EUI_onewire_iobuf_0: component IOBUF
     port map (
      I =>  mw_EUI48_onewire_tri_o,
      IO => EUI48_onewire_io,
      O =>  mw_EUI48_onewire_tri_i,
      T =>  mw_EUI48_onewire_tri_t
    );
rotenc_decoder_i: component rotenc_decoder
     port map (
      resetn            => mw_rst_100M_peripheral_aresetn,
      clk               => mw_microblaze_0_Clk_100MHz,
      rotenc_I          => BOARD_ROTENC_I,
      rotenc_Q          => BOARD_ROTENC_Q,
      cnt_up_dwn        => mw_rotenc_dec_cnt_up_dwn,
      cnt_en            => mw_rotenc_dec_cnt_en
    );
auto_LVDS_rotate_i: component auto_LVDS_rotate
    port map (
      resetn            => mw_rst_100M_peripheral_aresetn,
      clk               => mw_microblaze_0_Clk_100MHz,
      LVDS09            => mw_TRX_rx09_fifo,
      LVDS09_valid      => mw_TRX_rx09_fifo_valid,
      LVDS24            => mw_TRX_rx24_fifo,
      LVDS24_valid      => mw_TRX_rx24_fifo_valid,
      rot09q            => mw_TRX_rx09_bs,
      rot09vld          => mw_TRX_rot09vld,
      rot24q            => mw_TRX_rx24_bs,
      rot24vld          => mw_TRX_rot24vld
    );
FFT_controller_i: component FFT_controller
    port map (
      resetn                => mw_rst_100M_peripheral_aresetn,
      clk                   => mw_microblaze_0_Clk_100MHz,
      rx09_bs_32bits        => mw_TRX_rx09_bs,
      rx09_bs_32bits_vld    => mw_TRX_rot09vld,
      rx24_bs_32bits        => mw_TRX_rx24_bs,
      rx24_bs_32bits_vld    => mw_TRX_rot24vld,
      PreMem09_addra        => mw_premem_rx09_addra_in,
      PreMem09_wea          => mw_premem_rx09_wea_in,
      PreMem09_dina         => mw_premem_rx09_dina_in,
      PreMem09_addrb        => mw_premem_rx09_addrb_in,
      PreMem09_quarterfrm   => mw_premem_rx09_quarterfrm_in,
      PreMem24_addra        => mw_premem_rx24_addra_in,
      PreMem24_wea          => mw_premem_rx24_wea_in,
      PreMem24_dina         => mw_premem_rx24_dina_in,
      PreMem24_addrb        => mw_premem_rx24_addrb_in,
      PreMem24_quarterfrm   => mw_premem_rx24_quarterfrm_in,
      XFFT09_aresetn        => mw_fft09_aresetn_in,
      XFFT09_s_data_tlast   => mw_fft09_data_tlast_in,
      XFFT09_s_data_tready  => mw_fft09_data_tready_out,
      XFFT09_s_data_tvalid  => mw_fft09_data_tvalid_in,
      XFFT09_s_conf_tdata   => mw_fft09_config_tdata_in,
      XFFT09_s_conf_tvalid  => mw_fft09_config_tvalid_in,
      XFFT24_aresetn        => mw_fft24_aresetn_in,
      XFFT24_s_data_tlast   => mw_fft24_data_tlast_in,
      XFFT24_s_data_tready  => mw_fft24_data_tready_out,
      XFFT24_s_data_tvalid  => mw_fft24_data_tvalid_in,
      XFFT24_s_conf_tdata   => mw_fft24_config_tdata_in,
      XFFT24_s_conf_tvalid  => mw_fft24_config_tvalid_in
    );
EUI48_FSM_i: component EUI48_FSM
    port map (
      resetn                => mw_rst_100M_peripheral_aresetn,
      clk                   => mw_microblaze_0_Clk_100MHz,
      EUI48_onewire_tri_i   => mw_EUI48_onewire_tri_i,
      EUI48_onewire_tri_o   => mw_EUI48_onewire_tri_o,
      EUI48_onewire_tri_t   => mw_EUI48_onewire_tri_t,
      EUI48_FSM_start       => mw_EUI48_FSM_start,
      EUI48_FSM_run         => mw_EUI48_FSM_run,
      EUI48_data            => mw_EUI48_data(47 downto 0),
      EUI48_state           => mw_EUI48_state,
      EUI48_abort           => mw_EUI48_abort
    );
SCOPE_FSM_i: component SCOPE_FSM
    port map (
      resetn                        => mw_rst_100M_peripheral_aresetn,
      clk                           => mw_microblaze_0_Clk_100MHz,
      SCOPE_FSM_GPIO0_Out           => mw_SCOPE_FSM_GPIO0_Out,
      SCOPE_FSM_GPIO1_In            => mw_SCOPE_FSM_GPIO1_In,
      SCOPE_FSM_TrigSrc             => mw_SCOPE_FSM_TrigSrc,
      SCOPE_FSM_Timebase_CE         => mw_SCOPE_FSM_Timebase_CE,
      SCOPE_FSM_Timebase_SCLR       => mw_SCOPE_FSM_Timebase_SCLR,
      SCOPE_FSM_FIFO_Rst            => mw_SCOPE_FSM_FIFO_Rst,
      SCOPE_FSM_FIFO_wr_rst_busy    => mw_SCOPE_FSM_FIFO_wr_rst_busy,
      SCOPE_FSM_FIFO_rd_rst_busy    => mw_SCOPE_FSM_FIFO_rd_rst_busy,
      SCOPE_FSM_FIFO_WrFull         => mw_SCOPE_FSM_FIFO_WrFull,
      SCOPE_FSM_FIFO_RdEmpty        => mw_SCOPE_FSM_FIFO_RdEmpty,
      SCOPE_FSM_FIFO_WrEn           => mw_SCOPE_FSM_FIFO_WrEn,
      SCOPE_FSM_FIFO_RdEn           => mw_SCOPE_FSM_FIFO_RdEn,
      SCOPE_FSM_FIFO_RdValid        => mw_SCOPE_FSM_FIFO_RdValid
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
      CLK1B_clk(0) => CLK1B_clk(0),
      CLK2_mgt_clk0_clk_n => CLK2_mgt_clk0_clk_n,
      CLK2_mgt_clk0_clk_p => CLK2_mgt_clk0_clk_p,
      CLK3_sys_diff_clk_n => CLK3_sys_diff_clk_n,
      CLK3_sys_diff_clk_p => CLK3_sys_diff_clk_p,
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
      ETH0_DA_Y(0) => ETH0_DA_Y(0),
      ETH0_LINK_LED_g => ETH0_LINK_LED_g,
      ETH0_MDIO_MDC_mdc => ETH0_MDIO_MDC_mdc,
      ETH0_MDIO_MDC_mdio_i => ETH0_MDIO_MDC_mdio_i,
      ETH0_MDIO_MDC_mdio_o => ETH0_MDIO_MDC_mdio_o,
      ETH0_MDIO_MDC_mdio_t => ETH0_MDIO_MDC_mdio_t,
      EUI48_FSM_run => mw_EUI48_FSM_run,
      EUI48_FSM_start(0) => mw_EUI48_FSM_start,
      EUI48_abort(7 downto 0) => mw_EUI48_abort(7 downto 0),
      EUI48_data(47 downto 0) => mw_EUI48_data(47 downto 0),
      EUI48_state(7 downto 0) => mw_EUI48_state(7 downto 0),
      FPGA_IO => FPGA_IO,
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
      SCOPE_FSM_FIFO_RdEmpty => mw_SCOPE_FSM_FIFO_RdEmpty,
      SCOPE_FSM_FIFO_RdEn => mw_SCOPE_FSM_FIFO_RdEn,
      SCOPE_FSM_FIFO_RdValid => mw_SCOPE_FSM_FIFO_RdValid,
      SCOPE_FSM_FIFO_Rst => mw_SCOPE_FSM_FIFO_Rst,
      SCOPE_FSM_FIFO_WrEn => mw_SCOPE_FSM_FIFO_WrEn,
      SCOPE_FSM_FIFO_WrFull => mw_SCOPE_FSM_FIFO_WrFull,
      SCOPE_FSM_FIFO_rd_rst_busy => mw_SCOPE_FSM_FIFO_rd_rst_busy,
      SCOPE_FSM_FIFO_wr_rst_busy => mw_SCOPE_FSM_FIFO_wr_rst_busy,
      SCOPE_FSM_GPIO0_Out(31 downto 0) => mw_SCOPE_FSM_GPIO0_Out(31 downto 0),
      SCOPE_FSM_GPIO1_In(31 downto 0) => mw_SCOPE_FSM_GPIO1_In(31 downto 0),
      SCOPE_FSM_Timebase_CE => mw_SCOPE_FSM_Timebase_CE,
      SCOPE_FSM_Timebase_SCLR => mw_SCOPE_FSM_Timebase_SCLR,
      SCOPE_FSM_TrigSrc(47 downto 0) => mw_SCOPE_FSM_TrigSrc(47 downto 0),
      TRX_PLL_clk_25MHz_N(0) => TRX_PLL_clk_25MHz_N(0),
      TRX_PLL_clk_25MHz_P(0) => TRX_PLL_clk_25MHz_P(0),
      TRX_clk_26MHz => TRX_clk_26MHz,
      TRX_int => TRX_int,
      TRX_resetn(0) => TRX_resetn(0),
      TRX_rfx_mode(0) => TRX_rfx_mode(0),
      TRX_rx09_fifo_o(31 downto 0) => mw_TRX_rx09_fifo(31 downto 0),
      TRX_rx09_fifo_valid_o => mw_TRX_rx09_fifo_valid,
      TRX_rx24_fifo_o(31 downto 0) => mw_TRX_rx24_fifo(31 downto 0),
      TRX_rx24_fifo_valid_o => mw_TRX_rx24_fifo_valid,
      TRX_rx_clk_64MHz_clk_n => TRX_rx_clk_64MHz_clk_n,
      TRX_rx_clk_64MHz_clk_p => TRX_rx_clk_64MHz_clk_p,
      TRX_rx_data_n(1 downto 0) => TRX_rx_data_n(1 downto 0),
      TRX_rx_data_p(1 downto 0) => TRX_rx_data_p(1 downto 0),
      TRX_spi_io0_i => TRX_spi_io0_i,
      TRX_spi_io0_o => TRX_spi_io0_o,
      TRX_spi_io0_t => TRX_spi_io0_t,
      TRX_spi_io1_i => TRX_spi_io1_i,
      TRX_spi_io1_o => TRX_spi_io1_o,
      TRX_spi_io1_t => TRX_spi_io1_t,
      TRX_spi_sck_i => TRX_spi_sck_i,
      TRX_spi_sck_o => TRX_spi_sck_o,
      TRX_spi_sck_t => TRX_spi_sck_t,
      TRX_spi_ss_i(0) => TRX_spi_ss_i_0(0),
      TRX_spi_ss_o(0) => TRX_spi_ss_o_0(0),
      TRX_spi_ss_t => TRX_spi_ss_t,
      TRX_tx_clk_clk_n => TRX_tx_clk_clk_n,
      TRX_tx_clk_clk_p => TRX_tx_clk_clk_p,
      TRX_tx_data_n(1 downto 0) => TRX_tx_data_n(1 downto 0),
      TRX_tx_data_p(1 downto 0) => TRX_tx_data_p(1 downto 0),
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
      ULI_SYSTEM_XIO => ULI_SYSTEM_XIO,
      USER_dbg_out(13 downto 0) => USER_dbg_out(13 downto 0),
      fft09_aresetn_in => mw_fft09_aresetn_in,
      fft09_config_tdata_in(7 downto 0) => mw_fft09_config_tdata_in(7 downto 0),
      fft09_config_tvalid_in => mw_fft09_config_tvalid_in,
      fft09_data_tlast_in => mw_fft09_data_tlast_in,
      fft09_data_tready_out => mw_fft09_data_tready_out,
      fft09_data_tvalid_in => mw_fft09_data_tvalid_in,
      fft24_aresetn_in => mw_fft24_aresetn_in,
      fft24_config_tdata_in(7 downto 0) => mw_fft24_config_tdata_in(7 downto 0),
      fft24_config_tvalid_in => mw_fft24_config_tvalid_in,
      fft24_data_tlast_in => mw_fft24_data_tlast_in,
      fft24_data_tready_out => mw_fft24_data_tready_out,
      fft24_data_tvalid_in => mw_fft24_data_tvalid_in,
      microblaze_0_Clk_100MHz_o => mw_microblaze_0_Clk_100MHz,
      phy_rst_n => phy_rst_n,
      premem_rx09_addra_in(10 downto 0) => mw_premem_rx09_addra_in(10 downto 0),
      premem_rx09_addrb_in(10 downto 0) => mw_premem_rx09_addrb_in(10 downto 0),
      premem_rx09_dina_in(25 downto 0) => mw_premem_rx09_dina_in(25 downto 0),
      premem_rx09_quarterfrm_in(2 downto 0) => mw_premem_rx09_quarterfrm_in(2 downto 0),
      premem_rx09_wea_in(0) => mw_premem_rx09_wea_in,
      premem_rx24_addra_in(10 downto 0) => mw_premem_rx24_addra_in(10 downto 0),
      premem_rx24_addrb_in(10 downto 0) => mw_premem_rx24_addrb_in(10 downto 0),
      premem_rx24_dina_in(25 downto 0) => mw_premem_rx24_dina_in(25 downto 0),
      premem_rx24_quarterfrm_in(2 downto 0) => mw_premem_rx24_quarterfrm_in(2 downto 0),
      premem_rx24_wea_in(0) => mw_premem_rx24_wea_in,
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
      rotenc_dec_cnt_en => mw_rotenc_dec_cnt_en,
      rotenc_dec_cnt_up_dwn => mw_rotenc_dec_cnt_up_dwn,
      rst_100M_peripheral_aresetn(0) => mw_rst_100M_peripheral_aresetn
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
