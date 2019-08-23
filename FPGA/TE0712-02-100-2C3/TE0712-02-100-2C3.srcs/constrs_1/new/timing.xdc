######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################



# PLL_CLK, 50 MHz
create_clock -period 20.000 -name pll_clk_p -waveform {0.000 10.000} [get_ports pll_clk_p]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_p]] 0.100

create_clock -period 20.000 -name pll_clk_n -waveform {10.000 20.000} [get_ports pll_clk_n]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_n]] 0.100



# MGT, 120 MHz
create_clock -period 8.333 -name mgt_clk0_p -waveform {0.000 4.167} [get_ports mgt_clk0_p]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_p]] 0.100
create_clock -period 8.333 -name mgt_clk0_n -waveform {4.167 8.333} [get_ports mgt_clk0_n]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_n]] 0.100



# TRX VCTCXO, 26 MHz
create_clock -period 38.462 -name trx_clk_26mhz -waveform {0.000 19.231} [get_ports trx_clk_26mhz]
set_input_jitter [get_clocks -of_objects [get_ports trx_clk_26mhz]] 0.100



# Ethernet
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk -source [get_pins clk_wiz_0_inst/inst/mmcm_adv_inst/CLKOUT2] -divide_by 1 -add -master_clock clk_050mhz_clk_wiz_0 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1 -source [get_pins clk_wiz_0_inst/inst/mmcm_adv_inst/CLKOUT2] -divide_by 1 -add -master_clock clk_050mhz_clk_wiz_0_1 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_2 -source [get_pins clk_wiz_0_inst/inst/mmcm_adv_inst/CLKOUT2] -divide_by 1 -add -master_clock clk_050mhz_clk_wiz_0_2 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]

#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk -source [get_pins clk_wiz_0_inst/inst/mmcm_adv_inst/CLKOUT2] -divide_by 1 -add -master_clock clk_050mhz_clk_wiz_0 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1 -source [get_pins clk_wiz_0_inst/inst/mmcm_adv_inst/CLKOUT2] -divide_by 1 -add -master_clock clk_050mhz_clk_wiz_0_1 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_2 -source [get_pins clk_wiz_0_inst/inst/mmcm_adv_inst/CLKOUT2] -divide_by 1 -add -master_clock clk_050mhz_clk_wiz_0_2 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]



# CLK_WIZ_0
create_clock -period 20.000 -name VIRTUAL_clk_050mhz_clk_wiz_0 -waveform {0.000 10.000}



# CLK_WIZ_1
create_clock -period  8.333 -name VIRTUAL_clk_120mhz_clk_wiz_1 -waveform {0.000  4.167}
create_clock -period 20.000 -name VIRTUAL_clk_050mhz_clk_wiz_1 -waveform {0.000 10.000}
create_clock -period 40.000 -name VIRTUAL_clk_025mhz_clk_wiz_1 -waveform {0.000 20.000}
create_clock -period 83.333 -name VIRTUAL_clk_012mhz_clk_wiz_1 -waveform {0.000 41.667}



# MIG Tool
create_clock -period 12.000 -name VIRTUAL_clk_083mhz333_mig_0 -waveform {0.000 6.000}



# TRX rxd09 - DDR
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]             -min -add_delay 0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]             -max -add_delay 6.000 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay 0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 6.000 [get_ports ufb_trx_rxd09_p]

set_input_delay -clock [get_clocks ufb_trx_rxclk_p]             -min -add_delay 0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]             -max -add_delay 6.000 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay 0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 6.000 [get_ports ufb_trx_rxd09_n]

set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_sclk]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 40.100 [get_ports ufb_trx_sclk]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_mosi]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 40.100 [get_ports ufb_trx_mosi]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_miso]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 40.100 [get_ports ufb_trx_miso]

# TRX SPI interface
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 20.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 20.100 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_miso]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 20.100 [get_ports ufb_trx_miso]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_trx_mosi]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay 20.100 [get_ports ufb_trx_mosi]



# Ether-Lite
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports  mdc]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay 14.000 [get_ports  mdc]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports  mdc]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports  mdc]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports  mdio]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay 14.000 [get_ports  mdio]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports  mdio]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports  mdio]

# Ethernet MII convertion
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1] -min -add_delay  0.400 [get_ports  eth_rx_dv]
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1] -max -add_delay 14.000 [get_ports  eth_rx_dv]
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports {eth_rx_d[*]}]
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1] -max -add_delay  8.100 [get_ports {eth_rx_d[*]}]

# Link-LEDs
create_clock -period 20.000 -name virtual_ethernet_link_led_clk
set_input_delay  -clock [get_clocks virtual_ethernet_link_led_clk] -min -add_delay  0.100 [get_ports link_led]
set_input_delay  -clock [get_clocks virtual_ethernet_link_led_clk] -max -add_delay 10.000 [get_ports link_led]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -min -add_delay  0.100 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -max -add_delay 10.000 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -min -add_delay  0.100 [get_ports fpga_eth_da_y]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -max -add_delay 10.000 [get_ports fpga_eth_da_y]



# SPI-Q
set_input_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports {spi_dq[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -max -add_delay 18.100 [get_ports {spi_dq[*]}]



# AXI clock 83.333 MHz
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports ddr3_reset]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports ddr3_reset]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports eth_rst]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports eth_rst]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports fpga_lcd_bl_pwm]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports fpga_lcd_bl_pwm]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports fpga_led_rgb_blue]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports fpga_led_rgb_blue]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports fpga_led_rgb_green]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports fpga_led_rgb_green]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports fpga_led_rgb_red]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports fpga_led_rgb_red]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports onewire]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports onewire]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports pll_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports pll_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports pll_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports pll_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports ufb_fpga_ft_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports ufb_fpga_ft_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports ufb_fpga_ft_rxd]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports ufb_fpga_ft_rxd]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports ufb_trx_rstn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports ufb_trx_rstn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports fpga_io]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports fpga_io]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -min -add_delay -0.100 [get_ports uli_system]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0] -max -add_delay  4.100 [get_ports uli_system]



# SPI-Q access interface
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports spi_cs]
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports spi_cs]
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports {spi_dq[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports {spi_dq[*]}]



# Unused Loop lines
create_clock -period 20.000 -name virtual_clock_bv
set_input_delay  -clock [get_clocks virtual_clock_bv] -min -add_delay  1.000 [get_ports bv0]
set_input_delay  -clock [get_clocks virtual_clock_bv] -max -add_delay 18.000 [get_ports bv0]
set_output_delay -clock [get_clocks virtual_clock_bv] -min -add_delay  0.100 [get_ports bv1]
set_output_delay -clock [get_clocks virtual_clock_bv] -max -add_delay  2.000 [get_ports bv1]



set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rst_n_d_reg[0]}]
set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rst_n_d_reg[1]}]
set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/XEMAC_I/EMAC_I/C_SENSE_SYNC_1]
set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/XEMAC_I/EMAC_I/C_SENSE_SYNC_2]



#set_false_path -through [get_nets -hier -filter {NAME =~ */u_iodelay_ctrl/sys_rst_i}]

# From clk_pll_i* to clk_12mhz_mcu_clk_wiz_1_0*
#set_false_path -from [get_clocks -include_generated_clocks clk_pll_i]   -to [get_clocks -include_generated_clocks clk_12mhz_mcu_clk_wiz_1_0_1]
#set_false_path -from [get_clocks -include_generated_clocks clk_pll_i_1] -to [get_clocks -include_generated_clocks clk_12mhz_mcu_clk_wiz_1_0]

#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[1]/CLR}]
#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[2]/CLR}]
#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[3]/CLR}]
#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[4]/CLR}]
#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[5]/CLR}]
#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[6]/CLR}]
#set_false_path -from [get_pins {mcu_wrapper_i/mcu_i/mb_0_reset/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[7]/CLR}]
