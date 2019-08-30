######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################



# PLL_CLK, 50 MHz
create_clock -period 20.000 -name pll_clk_p -waveform {0.000 10.000} [get_ports pll_clk_p]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_p]] 0.100

# MGT, 120 MHz
create_clock -period 8.333 -name mgt_clk0_p -waveform {0.000 4.167} [get_ports mgt_clk0_p]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_p]] 0.100

# TRX VCTCXO, 26 MHz
create_clock -period 38.462 -name trx_clk_26mhz -waveform {0.000 19.231} [get_ports trx_clk_26mhz]
set_input_jitter [get_clocks -of_objects [get_ports trx_clk_26mhz]] 0.100

# TRX LVDS clock, 32 MHz
create_clock -period 31.250 -name ufb_trx_rxclk_p -waveform {0.000 15.625} -add [get_ports ufb_trx_rxclk_p]
set_input_jitter [get_clocks -of_objects [get_ports ufb_trx_rxclk_p]] 0.313



set_clock_groups -name async__mgt_clk0_p__pll_clk_p -asynchronous -group [get_clocks -include_generated_clocks mgt_clk0_p] -group [get_clocks -include_generated_clocks pll_clk_p]

set_clock_groups -name async__trx_clk_26mhz__pll_clk_p -asynchronous -group [get_clocks -include_generated_clocks trx_clk_26mhz] -group [get_clocks -include_generated_clocks pll_clk_p]
set_clock_groups -name async__trx_clk_26mhz__mgt_clk0_p -asynchronous -group [get_clocks -include_generated_clocks trx_clk_26mhz] -group [get_clocks -include_generated_clocks mgt_clk0_p]

set_clock_groups -name async__ufb_trx_rxclk_p__pll_clk_p -asynchronous -group [get_clocks -include_generated_clocks ufb_trx_rxclk_p] -group [get_clocks -include_generated_clocks pll_clk_p]
set_clock_groups -name async__ufb_trx_rxclk_p__mgt_clk0_p -asynchronous -group [get_clocks -include_generated_clocks ufb_trx_rxclk_p] -group [get_clocks -include_generated_clocks mgt_clk0_p]
set_clock_groups -name async__ufb_trx_rxclk_p__trx_clk_26mhz -asynchronous -group [get_clocks -include_generated_clocks ufb_trx_rxclk_p] -group [get_clocks -include_generated_clocks trx_clk_26mhz]



# CLK_WIZ_0 - PLL: 26 MHz --> 50 MHz
create_generated_clock -name clk_wiz_0__050mhz000 -source [get_pins clk_wiz_0_inst/inst/plle2_adv_inst/CLKIN1] [get_pins clk_wiz_0_inst/inst/plle2_adv_inst/CLKOUT0]



# CLK_WIZ_1
create_generated_clock -name clk_wiz_1__177mhz778 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] -master_clock pll_clk_p [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name clk_wiz_1__177mhz778_trx -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] -master_clock clk_wiz_0__050mhz000 [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT0]

create_generated_clock -name clk_wiz_1__050mhz000 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] -master_clock pll_clk_p [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name clk_wiz_1__050mhz000_trx -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] -master_clock clk_wiz_0__050mhz000 [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1]

create_generated_clock -name clk_wiz_1__025mhz000 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] -master_clock pll_clk_p [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT2]
create_generated_clock -name clk_wiz_1__025mhz000_trx -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] -master_clock clk_wiz_0__050mhz000 [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT2]

create_generated_clock -name clk_wiz_1__012mhz000 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] -master_clock pll_clk_p [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT3]
create_generated_clock -name clk_wiz_1__012mhz000_trx -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] -master_clock clk_wiz_0__050mhz000 [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT3]

set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_wiz_1__177mhz778] -group [get_clocks -include_generated_clocks clk_wiz_1__177mhz778_trx]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_wiz_1__050mhz000] -group [get_clocks -include_generated_clocks clk_wiz_1__050mhz000_trx]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_wiz_1__025mhz000] -group [get_clocks -include_generated_clocks clk_wiz_1__025mhz000_trx]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_wiz_1__012mhz000] -group [get_clocks -include_generated_clocks clk_wiz_1__012mhz000_trx]



# MIG Tool
create_generated_clock -name mig_0__083mhz333 -source [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKIN1] -master_clock pll_clk3_out [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]



# AXI clock 83.333 MHz
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports board_rotenc_i]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports board_rotenc_i]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports board_rotenc_push]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports board_rotenc_push]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports board_rotenc_q]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports board_rotenc_q]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports board_scl]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports board_scl]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports board_sda]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports board_sda]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports onewire]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports onewire]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports pll_int]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports pll_int]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports pll_scl]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports pll_scl]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports pll_sda]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports pll_sda]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports ufb_fpga_ft_dtr]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports ufb_fpga_ft_dtr]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports ufb_fpga_ft_rts]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports ufb_fpga_ft_rts]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports ufb_fpga_ft_txd]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports ufb_fpga_ft_txd]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports ufb_trx_irq]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports ufb_trx_irq]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports reset]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports reset]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports sys_rst]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.100 [get_ports sys_rst]

#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports ddr3_reset]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports ddr3_reset]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports eth_rst]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports eth_rst]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports fpga_lcd_bl_pwm]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports fpga_lcd_bl_pwm]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports fpga_led_rgb_blue]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports fpga_led_rgb_blue]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports fpga_led_rgb_green]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports fpga_led_rgb_green]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports fpga_led_rgb_red]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports fpga_led_rgb_red]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports onewire]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports onewire]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports pll_scl]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports pll_scl]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports pll_sda]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports pll_sda]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports ufb_fpga_ft_resetn]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports ufb_fpga_ft_resetn]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports ufb_fpga_ft_rxd]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports ufb_fpga_ft_rxd]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports ufb_trx_rstn]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports ufb_trx_rstn]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports fpga_io]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports fpga_io]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports uli_system]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports uli_system]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports board_lcd_resetn]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports board_lcd_resetn]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports board_scl]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports board_scl]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports board_sda]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports board_sda]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports ddr3_init_calib_complete]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports ddr3_init_calib_complete]



# Ethernet / Ether-Lite
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1] -divide_by 1 -add -master_clock clk_wiz_1__050mhz000 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1] -divide_by 1 -add -master_clock clk_wiz_1__050mhz000_trx [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1] -divide_by 1 -add -master_clock clk_wiz_1__050mhz000 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1] -divide_by 1 -add -master_clock clk_wiz_1__050mhz000_trx [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]

set_input_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay 0.000 [get_ports eth_rx_dv]
set_input_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports eth_rx_dv]
set_input_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay 0.000 [get_ports {eth_rx_d[*]}]
set_input_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports {eth_rx_d[*]}]
set_input_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay 0.000 [get_ports link_led]
set_input_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports link_led]

set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay -0.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay -0.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay -0.100 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -min -add_delay -0.100 [get_ports fpga_eth_da_y]
set_output_delay -clock [get_clocks clk_wiz_1__050mhz000] -max -add_delay 2.100 [get_ports fpga_eth_da_y]

#set_input_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay 0.100 [get_ports mdio]
#set_input_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 6.000 [get_ports mdio]

#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports mdc]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports mdc]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -min -add_delay -0.100 [get_ports mdio]
#set_output_delay -clock [get_clocks mig_0__083mhz333] -max -add_delay 1.100 [get_ports mdio]

set_false_path -from [get_clocks mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/phy_tx_clk] -to [get_clocks clk_wiz_1__050mhz000]
set_false_path -from [get_clocks mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/phy_tx_clk] -to [get_clocks clk_wiz_1__050mhz000_trx]
set_false_path -from [get_clocks clk_wiz_1__050mhz000] -to [get_clocks mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/phy_tx_clk]
set_false_path -from [get_clocks clk_wiz_1__050mhz000_trx] -to [get_clocks mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/phy_tx_clk]
set_false_path -from [get_clocks clk_wiz_1__050mhz000] -to [get_clocks mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/phy_rx_clk]
set_false_path -from [get_clocks clk_wiz_1__050mhz000_trx] -to [get_clocks mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/phy_rx_clk]



# TRX rxd09 - DDR - Setup / Hold done
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay -11.725 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 1.900 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay -11.725 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 1.900 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay -11.725 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 1.900 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay -11.725 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 1.900 [get_ports ufb_trx_rxd09_n]

set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay -1.100 [get_ports ufb_trx_txclk_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 2.100 [get_ports ufb_trx_txclk_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay -1.100 [get_ports ufb_trx_txclk_p]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 2.100 [get_ports ufb_trx_txclk_p]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay -1.100 [get_ports ufb_trx_txd_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 2.100 [get_ports ufb_trx_txd_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay -1.100 [get_ports ufb_trx_txd_p]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 2.100 [get_ports ufb_trx_txd_p]

# TRX SPI interface - Setup / Hold done
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -0.900 [get_ports ufb_trx_miso]
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 25.100 [get_ports ufb_trx_miso]

set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay 0.000 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 0.000 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -5.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -5.100 [get_ports ufb_trx_mosi]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_trx_mosi]



# SPI-Q access interface - Setup / Hold done
set_input_delay -clock [get_clocks clk_wiz_1__025mhz000] -min -add_delay 0.000 [get_ports {spi_dq[*]}]
set_input_delay -clock [get_clocks clk_wiz_1__025mhz000] -max -add_delay 2.100 [get_ports {spi_dq[*]}]

set_output_delay -clock [get_clocks clk_wiz_1__025mhz000] -min -add_delay -3.100 [get_ports spi_cs]
set_output_delay -clock [get_clocks clk_wiz_1__025mhz000] -max -add_delay 3.100 [get_ports spi_cs]
set_output_delay -clock [get_clocks clk_wiz_1__025mhz000] -min -add_delay -1.700 [get_ports {spi_dq[*]}]
set_output_delay -clock [get_clocks clk_wiz_1__025mhz000] -max -add_delay 2.100 [get_ports {spi_dq[*]}]



# FTDI 12 MHz - Setup / Hold done
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay 0.000 [get_ports ufb_fpga_ft_txd]
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_txd]
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay 0.000 [get_ports ufb_fpga_ft_rts]
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_rts]
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay 0.000 [get_ports ufb_fpga_ft_dtr]
set_input_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_dtr]

set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -0.100 [get_ports ufb_fpga_ft_rxd]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_rxd]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -0.100 [get_ports ufb_fpga_ft_cts]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_cts]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -0.100 [get_ports ufb_fpga_ft_dsr]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_dsr]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -0.100 [get_ports ufb_fpga_ft_dcd]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_dcd]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -min -add_delay -0.100 [get_ports ufb_fpga_ft_ri]
set_output_delay -clock [get_clocks clk_wiz_1__012mhz000] -max -add_delay 5.100 [get_ports ufb_fpga_ft_ri]



# Unused Loop lines
set_max_delay -datapath_only -from [get_ports bv0] -to [get_ports bv1] 100



#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rst_n_d_reg[0]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rst_n_d_reg[1]}]
#set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/XEMAC_I/EMAC_I/C_SENSE_SYNC_1]
#set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/XEMAC_I/EMAC_I/C_SENSE_SYNC_2]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d1_reg[0]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d2_reg[0]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d1_reg[3]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d2_reg[3]}]
#set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_tx_en_d1_reg]
#set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_tx_en_d2_reg]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d1_reg[1]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d2_reg[1]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d1_reg[2]}]
#set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/mac2Rmii_txd_d2_reg[2]}]




#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clkfbout_clk_wiz_1] -group [get_clocks -include_generated_clocks clkfbout_clk_wiz_1_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks pll_clkfbout] -group [get_clocks -include_generated_clocks pll_clkfbout_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks freq_refclk] -group [get_clocks -include_generated_clocks freq_refclk_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mem_refclk] -group [get_clocks -include_generated_clocks mem_refclk_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks sync_pulse] -group [get_clocks -include_generated_clocks sync_pulse_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks pll_clk3_out] -group [get_clocks -include_generated_clocks pll_clk3_out_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk] -group [get_clocks -include_generated_clocks oserdes_clk_8]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv] -group [get_clocks -include_generated_clocks oserdes_clkdiv_8]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_1] -group [get_clocks -include_generated_clocks oserdes_clk_9]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_1] -group [get_clocks -include_generated_clocks oserdes_clkdiv_9]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_2] -group [get_clocks -include_generated_clocks oserdes_clk_10]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_2] -group [get_clocks -include_generated_clocks oserdes_clkdiv_10]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_3] -group [get_clocks -include_generated_clocks oserdes_clk_11]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_3] -group [get_clocks -include_generated_clocks oserdes_clkdiv_11]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv] -group [get_clocks -include_generated_clocks iserdes_clkdiv_4]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_4] -group [get_clocks -include_generated_clocks oserdes_clk_12]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_4] -group [get_clocks -include_generated_clocks oserdes_clkdiv_12]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_1] -group [get_clocks -include_generated_clocks iserdes_clkdiv_5]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_5] -group [get_clocks -include_generated_clocks oserdes_clk_13]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_5] -group [get_clocks -include_generated_clocks oserdes_clkdiv_13]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_2] -group [get_clocks -include_generated_clocks iserdes_clkdiv_6]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_6] -group [get_clocks -include_generated_clocks oserdes_clk_14]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_6] -group [get_clocks -include_generated_clocks oserdes_clkdiv_14]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk_1]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_3] -group [get_clocks -include_generated_clocks iserdes_clkdiv_7]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_7] -group [get_clocks -include_generated_clocks oserdes_clk_15]
#set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_7] -group [get_clocks -include_generated_clocks oserdes_clkdiv_15]


# - - -
