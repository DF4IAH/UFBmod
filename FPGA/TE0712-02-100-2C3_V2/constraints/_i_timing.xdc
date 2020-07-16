create_clock -period 15.152 -name CFGMCLK -waveform {0.000 7.576} [get_pins -hierarchical -filter {NAME =~*NO_DUAL_QUAD_MODE.QSPI_NORMAL/*STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst/CFGMCLK}]

create_clock -period 10.000 -name {CLK0_clk_p[0]} -waveform {0.000 5.000} [get_ports {CLK0_clk_p[0]}]
create_clock -period 20.000 -name {CLK1B_clk[0]} -waveform {0.000 10.000} [get_ports {CLK1B_clk[0]}]
create_clock -period 8.000 -name CLK2_mgt_clk0_clk_p -waveform {0.000 4.000} [get_ports CLK2_mgt_clk0_clk_p]
create_clock -period 20.000 -name CLK3_sys_diff_clk_p -waveform {0.000 10.000} [get_ports CLK3_sys_diff_clk_p]

create_clock -period 15.625 -name TRX_rx_clk_64MHz_clk_p -waveform {0.000 7.812} [get_ports TRX_rx_clk_64MHz_clk_p]

create_clock -period 40.000 -name RMII_rx_clk [get_pins msys_i/ETH0/mii_to_rmii_0/U0/rmii2mac_rx_clk_bi_reg/Q]


set_multicycle_path -setup -from [get_pins {auto_LVDS_rotate_i/rot_in_reg[*]/C}] -to [get_pins {auto_LVDS_rotate_i/barrel_rot32_i/q_reg[*]/D}] 2
set_multicycle_path -hold -from [get_pins {auto_LVDS_rotate_i/rot_in_reg[*]/C}] -to [get_pins {auto_LVDS_rotate_i/barrel_rot32_i/q_reg[*]/D}] 2

set_multicycle_path -setup -from [get_pins {auto_LVDS_rotate_i/rot_val_reg[*]*/C}] -to [get_pins {auto_LVDS_rotate_i/barrel_rot32_i/q_reg[*]/D}] 2
set_multicycle_path -hold -from [get_pins {auto_LVDS_rotate_i/rot_val_reg[*]*/C}] -to [get_pins {auto_LVDS_rotate_i/barrel_rot32_i/q_reg[*]/D}] 2


set_false_path -from [get_clocks CFGMCLK] -to [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]
set_false_path -from [get_clocks CFGMCLK] -to [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKOUT5]]
set_false_path -from [get_clocks CFGMCLK] -to [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKOUT6]]

set_false_path -from [get_clocks {CLK0_clk_p[0]}] -to [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]

set_false_path -from [get_clocks {CLK1B_clk[0]}] -to [get_clocks {CLK0_clk_p[0]}]
set_false_path -from [get_clocks {CLK1B_clk[0]}] -to [get_clocks -of_objects [get_pins msys_i/BOARD_clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]

set_false_path -from [get_clocks CLK2_mgt_clk0_clk_p] -to [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]

set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks CFGMCLK]
set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks {CLK0_clk_p[0]}]
set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks CLK2_mgt_clk0_clk_p]
set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks -of_objects [get_pins msys_i/TRX/TRX_LVDS/TRX_LVDS_selectio_wiz_0/inst/clk_div_out]]

set_false_path -from [get_pins {msys_i/SC0712_0/U0/rst_delay_i_reg[3]/C}] -to [get_pins -hierarchical -filter {NAME =~*u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/rstdiv0*/PRE}]

set_false_path -from [get_clocks msys_i/ETH0/axi_ethernetlite_0/U0/phy_tx_clk] -to [get_clocks -of_objects [get_pins msys_i/BOARD_clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]

set_false_path -from [get_clocks TRX_rx_clk_64MHz_clk_p] -to [get_clocks CFGMCLK]
set_false_path -from [get_clocks TRX_rx_clk_64MHz_clk_p] -to [get_clocks {CLK0_clk_p[0]}]
set_false_path -from [get_clocks TRX_rx_clk_64MHz_clk_p] -to [get_clocks {CLK1B_clk[0]}]

set _xlnx_shared_i0 [get_pins {msys_i/vio_0/inst/PROBE_IN_INST/probe_in_reg_reg[*]/D}]
set_false_path -from [get_pins {msys_i/labtools_fmeter_0/U0/F_reg[*]/C}] -to $_xlnx_shared_i0
set_false_path -from [get_pins msys_i/labtools_fmeter_0/U0/COUNTER_REFCLK_inst/bl.DSP48E_2/CLK] -to $_xlnx_shared_i0
set_false_path -from [get_pins {msys_i/labtools_fmeter_0/U0/FMETER_gen[*].COUNTER_F_inst/bl.DSP48E_2/CLK}] -to [get_pins {msys_i/labtools_fmeter_0/U0/F_reg[*]/D}]

set_property PULLUP true [get_ports BOARD_ROTENC_I]
set_property PULLUP true [get_ports BOARD_ROTENC_Q]
set_property PULLUP true [get_ports BOARD_ROTENC_PUSH]
set_property PULLDOWN true [get_ports TRX_int]
set_property PULLDOWN true [get_ports TRX_rx_clk_64MHz_clk_p]
set_property PULLDOWN true [get_ports TRX_rx_clk_64MHz_clk_n]
set_property PULLDOWN true [get_ports {TRX_rx_data_p[0]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_n[0]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_p[1]}]
set_property PULLDOWN true [get_ports {TRX_rx_data_n[1]}]
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
set_property PULLUP true [get_ports ETH0_LINK_LED]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
