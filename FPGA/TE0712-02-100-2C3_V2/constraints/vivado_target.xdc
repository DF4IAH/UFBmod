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
set_property PULLUP true [get_ports UART0EXT_DTRn]
set_property IOSTANDARD LVCMOS33 [get_ports UART0EXT_DTRn]
set_property PACKAGE_PIN K17 [get_ports UART0EXT_RTSn]
set_property IOSTANDARD LVCMOS33 [get_ports UART0EXT_RTSn]
set_property PULLUP true [get_ports UART0EXT_RTSn]

set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_CTSn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_DCDn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_DSRn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {UART0EXT_RIn[0]}]
set_property PACKAGE_PIN J17 [get_ports {UART0EXT_CTSn[0]}]
set_property PACKAGE_PIN L15 [get_ports {UART0EXT_DCDn[0]}]
set_property PACKAGE_PIN M15 [get_ports {UART0EXT_DSRn[0]}]
set_property PACKAGE_PIN L14 [get_ports {UART0EXT_RIn[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {UART0_rst_n[0]}]
set_property PACKAGE_PIN M22 [get_ports {UART0_rst_n[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports DDR3_init_calib_complete]
set_property PACKAGE_PIN AA20 [get_ports DDR3_init_calib_complete]
set_property IOSTANDARD LVCMOS33 [get_ports UART0_clk]
set_property PACKAGE_PIN M17 [get_ports UART0_clk]

set_property IOSTANDARD LVCMOS33 [get_ports {ETH0_DA_G[0]}]
set_property PACKAGE_PIN AA18 [get_ports {ETH0_DA_G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports ETH0_DA_Y]
set_property PACKAGE_PIN AB18 [get_ports ETH0_DA_Y]
set_property PACKAGE_PIN N15 [get_ports ETH0_LINK_LED]

set_property PACKAGE_PIN B13 [get_ports BOARD_IIC_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_IIC_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_IIC_sda_io]
set_property PACKAGE_PIN C13 [get_ports BOARD_IIC_sda_io]

set_property IOSTANDARD LVCMOS33 [get_ports {LCD_BL[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LCD_rstn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_RGB_red[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_RGB_blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_RGB_green[0]}]
set_property PACKAGE_PIN U21 [get_ports {LCD_rstn[0]}]
set_property PACKAGE_PIN T21 [get_ports {LCD_BL[0]}]
set_property PACKAGE_PIN Y21 [get_ports {LED_RGB_red[0]}]
set_property PACKAGE_PIN R17 [get_ports {LED_RGB_blue[0]}]
set_property PACKAGE_PIN Y22 [get_ports {LED_RGB_green[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports ETH0_LINK_LED]

set_property IOSTANDARD LVCMOS33 [get_ports BOARD_ROTENC_I]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_ROTENC_PUSH]
set_property IOSTANDARD LVCMOS33 [get_ports BOARD_ROTENC_Q]
set_property PACKAGE_PIN V18 [get_ports BOARD_ROTENC_I]
set_property PACKAGE_PIN V19 [get_ports BOARD_ROTENC_Q]
set_property PACKAGE_PIN Y18 [get_ports BOARD_ROTENC_PUSH]

set_property PACKAGE_PIN V22 [get_ports {onewire_EUI48_tri_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {onewire_EUI48_tri_io[0]}]


set_property IOSTANDARD LVCMOS15 [get_ports PLL_int]
set_property PULLUP true [get_ports PLL_int]

set_property IOSTANDARD LVCMOS33 [get_ports {TRX_rfx_mode[0]}]
set_property PACKAGE_PIN N22 [get_ports {TRX_rfx_mode[0]}]
set_property PACKAGE_PIN B2 [get_ports PLL_int]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_int]
set_property PACKAGE_PIN L18 [get_ports TRX_int]
set_property PACKAGE_PIN M18 [get_ports {TRX_reset[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {TRX_reset[0]}]
set_property PACKAGE_PIN H13 [get_ports TRX_spi_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports {TRX_spi_ss_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_spi_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_spi_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports TRX_spi_sck_io]
set_property PACKAGE_PIN G13 [get_ports {TRX_spi_ss_io[0]}]
set_property OFFCHIP_TERM NONE [get_ports BOARD_IIC_scl_io]
set_property OFFCHIP_TERM NONE [get_ports BOARD_IIC_sda_io]
set_property OFFCHIP_TERM NONE [get_ports DDR3_init_calib_complete]
set_property OFFCHIP_TERM NONE [get_ports ETH0_DA_Y]
set_property OFFCHIP_TERM NONE [get_ports PLL_I2C_ext_scl_o]
set_property OFFCHIP_TERM NONE [get_ports PLL_I2C_ext_sda]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_io0_io]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_io1_io]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_sck_io]
set_property OFFCHIP_TERM NONE [get_ports UART0_clk]
set_property OFFCHIP_TERM NONE [get_ports UART0_txd]
set_property OFFCHIP_TERM NONE [get_ports phy_rst_n]
set_property OFFCHIP_TERM NONE [get_ports ETH0_DA_G[0]]
set_property OFFCHIP_TERM NONE [get_ports LCD_BL[0]]
set_property OFFCHIP_TERM NONE [get_ports LCD_rstn[0]]
set_property OFFCHIP_TERM NONE [get_ports LED_RGB_blue[0]]
set_property OFFCHIP_TERM NONE [get_ports LED_RGB_green[0]]
set_property OFFCHIP_TERM NONE [get_ports LED_RGB_red[0]]
set_property OFFCHIP_TERM NONE [get_ports TRX_rfx_mode[0]]
set_property OFFCHIP_TERM NONE [get_ports TRX_spi_ss_io[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_CTSn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_DCDn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_DSRn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0EXT_RIn[0]]
set_property OFFCHIP_TERM NONE [get_ports UART0_rst_n[0]]
set_property OFFCHIP_TERM NONE [get_ports onewire_EUI48_tri_io[0]]
set_property PACKAGE_PIN G16 [get_ports TRX_spi_io0_io]
set_property PACKAGE_PIN J14 [get_ports TRX_spi_io1_io]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
