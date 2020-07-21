#set_property IOSTANDARD LVCMOS18 [get_ports clk_0]
#set_property IOSTANDARD LVCMOS18 [get_ports {probe_in0_0[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {probe_out0_0[0]}]
#set_property PACKAGE_PIN A14 [get_ports clk_0]
#set_property PACKAGE_PIN A16 [get_ports {probe_in0_0[0]}]
#set_property PACKAGE_PIN A18 [get_ports {probe_out0_0[0]}]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk_0_IBUF]

set_property PACKAGE_PIN M16 [get_ports UART0EXT_DTRn]
set_property IOSTANDARD LVCMOS33 [get_ports UART0EXT_DTRn]
set_property PULLUP true [get_ports UART0EXT_DTRn]

set_property PACKAGE_PIN K17 [get_ports UART0EXT_RTSn]
set_property IOSTANDARD LVCMOS33 [get_ports UART0EXT_RTSn]
set_property PULLUP true [get_ports UART0EXT_RTSn]

set_property PACKAGE_PIN J17 [get_ports {UART0EXT_CTSn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_CTSn[0]}]

set_property PACKAGE_PIN L15 [get_ports {UART0EXT_DCDn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_DCDn[0]}]

set_property PACKAGE_PIN M15 [get_ports {UART0EXT_DSRn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_DSRn[0]}]

set_property PACKAGE_PIN L14 [get_ports {UART0EXT_RIn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_RIn[0]}]

set_property PACKAGE_PIN M22 [get_ports {UART0_rst_n[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0_rst_n[0]}]

set_property PACKAGE_PIN M17 [get_ports UART0_clk]
set_property IOSTANDARD LVCMOS33 [get_ports UART0_clk]


set_property PACKAGE_PIN AA20 [get_ports DDR3_init_calib_complete]
set_property IOSTANDARD LVCMOS33 [get_ports DDR3_init_calib_complete]


set_property PACKAGE_PIN N15 [get_ports ETH0_LINK_LED]
set_property IOSTANDARD LVCMOS33 [get_ports ETH0_LINK_LED]
set_property PULLUP true [get_ports ETH0_LINK_LED]

set_property PACKAGE_PIN AA18 [get_ports {ETH0_DA_G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ETH0_DA_G[0]}]

set_property PACKAGE_PIN AB18 [get_ports ETH0_DA_Y]
set_property IOSTANDARD LVCMOS33 [get_ports ETH0_DA_Y]


set_property PACKAGE_PIN B13 [get_ports BOARD_IIC_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_IIC_scl_io]

set_property PACKAGE_PIN C13 [get_ports BOARD_IIC_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_IIC_sda_io]


set_property PACKAGE_PIN U21 [get_ports {LCD_rstn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LCD_rstn[0]}]

set_property PACKAGE_PIN T21 [get_ports {LCD_BL[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LCD_BL[0]}]

set_property PACKAGE_PIN Y21 [get_ports {LED_RGB_red[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_RGB_red[0]}]

set_property PACKAGE_PIN Y22 [get_ports {LED_RGB_green[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_RGB_green[0]}]

set_property PACKAGE_PIN R17 [get_ports {LED_RGB_blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_RGB_blue[0]}]


set_property PACKAGE_PIN V18 [get_ports BOARD_ROTENC_I]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_ROTENC_I]
set_property PULLUP true [get_ports BOARD_ROTENC_I]

set_property PACKAGE_PIN V19 [get_ports BOARD_ROTENC_Q]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_ROTENC_Q]
set_property PULLUP true [get_ports BOARD_ROTENC_Q]

set_property PACKAGE_PIN Y18 [get_ports BOARD_ROTENC_PUSH]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_ROTENC_PUSH]
set_property PULLUP true [get_ports BOARD_ROTENC_PUSH]

set_property PACKAGE_PIN V22 [get_ports {onewire_EUI48_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {onewire_EUI48_tri_io[0]}]


set_property PACKAGE_PIN B2 [get_ports PLL_int]
set_property IOSTANDARD LVCMOS15 [get_ports PLL_int]
set_property PULLUP true [get_ports PLL_int]


set_property PACKAGE_PIN N22 [get_ports {TRX_rfx_mode[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TRX_rfx_mode[0]}]


set_property PACKAGE_PIN J20 [get_ports TRX_clk_26MHz]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_clk_26MHz]

set_property PACKAGE_PIN M18 [get_ports {TRX_reset[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TRX_reset[0]}]

set_property PACKAGE_PIN L18 [get_ports TRX_int]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_int]
set_property PULLDOWN true [get_ports TRX_int]


set_property PACKAGE_PIN H13 [get_ports TRX_spi_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_spi_sck_io]

set_property IOSTANDARD LVCMOS33 [get_ports {TRX_spi_ss_io[0]}]
set_property PACKAGE_PIN G13 [get_ports {TRX_spi_ss_io[0]}]

set_property PACKAGE_PIN G16 [get_ports TRX_spi_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_spi_io0_io]

set_property PACKAGE_PIN J14 [get_ports TRX_spi_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_spi_io1_io]


set_property PACKAGE_PIN U22 [get_ports FPGA_IO]
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_IO]
set_property PULLDOWN true [get_ports FPGA_IO]

set_property PACKAGE_PIN W22 [get_ports ULI_SYSTEM_XIO]
set_property IOSTANDARD LVCMOS33 [get_ports ULI_SYSTEM_XIO]
set_property PULLDOWN true [get_ports ULI_SYSTEM_XIO]


set_property PACKAGE_PIN W15 [get_ports {TRX_PLL_clk_25MHz_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {TRX_PLL_clk_25MHz_P[0]}]

set_property PACKAGE_PIN Y11 [get_ports TRX_rx_clk_64MHz_clk_p]
set_property PULLDOWN true [get_ports TRX_rx_clk_64MHz_clk_p]
set_property PULLDOWN true [get_ports TRX_rx_clk_64MHz_clk_n]

set_property PACKAGE_PIN AA13 [get_ports {TRX_rx_data_p[0]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_p[0]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_n[0]}]

set_property PACKAGE_PIN AA10 [get_ports {TRX_rx_data_p[1]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_p[1]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_n[1]}]

set_property PACKAGE_PIN W14 [get_ports TRX_tx_clk_clk_p]
set_property PACKAGE_PIN Y13 [get_ports {TRX_tx_data_p[0]}]
set_property PACKAGE_PIN AA15 [get_ports {TRX_tx_data_p[1]}]


# ETH0 PHY address = 0x01
set_property PULLDOWN true [get_ports {RMII_PHY_M_0_rxd[0]}]
set_property PULLDOWN true [get_ports {RMII_PHY_M_0_rxd[1]}]

# ETH0 LINK LED mode 2: LINK and activity together
set_property PULLDOWN true [get_ports RMII_PHY_M_0_crs_dv]

set_property SLEW FAST [get_ports {RMII_PHY_M_0_txd[0]}]
set_property SLEW FAST [get_ports {RMII_PHY_M_0_txd[1]}]
set_property SLEW FAST [get_ports RMII_PHY_M_0_tx_en]


set_property OFFCHIP_TERM NONE [get_ports BOARD_IIC_scl_io]
set_property OFFCHIP_TERM NONE [get_ports BOARD_IIC_sda_io]
set_property OFFCHIP_TERM NONE [get_ports DDR3_init_calib_complete]
set_property OFFCHIP_TERM NONE [get_ports ETH0_DA_Y]
set_property OFFCHIP_TERM NONE [get_ports PLL_I2C_ext_scl_o]
set_property OFFCHIP_TERM NONE [get_ports PLL_I2C_ext_sda]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_io0_io]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_io1_io]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_sck_io]
set_property OFFCHIP_TERM NONE [get_ports TRX_tx_clk_clk_p]
set_property OFFCHIP_TERM NONE [get_ports UART0_clk]
set_property OFFCHIP_TERM NONE [get_ports UART0_txd]
set_property OFFCHIP_TERM NONE [get_ports phy_rst_n]
set_property OFFCHIP_TERM NONE [get_ports ETH0_DA_G[0]]
set_property OFFCHIP_TERM NONE [get_ports LCD_BL[0]]
set_property OFFCHIP_TERM NONE [get_ports LCD_rstn[0]]
set_property OFFCHIP_TERM NONE [get_ports LED_RGB_blue[0]]
set_property OFFCHIP_TERM NONE [get_ports LED_RGB_green[0]]
set_property OFFCHIP_TERM NONE [get_ports LED_RGB_red[0]]
set_property OFFCHIP_TERM NONE [get_ports TRX_PLL_clk_25MHz_P[0]]
set_property OFFCHIP_TERM NONE [get_ports TRX_rfx_mode[0]]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_ss_io[0]]
set_property OFFCHIP_TERM NONE [get_ports TRX_tx_data_p[1]]
set_property OFFCHIP_TERM NONE [get_ports TRX_tx_data_p[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_CTSn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_DCDn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_DSRn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_RIn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0_rst_n[0]]
set_property OFFCHIP_TERM NONE [get_ports onewire_EUI48_tri_io[0]]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]

connect_debug_port dbg_hub/clk [get_nets clk]
