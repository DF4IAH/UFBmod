######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################



# PLL_CLK, 50 MHz
create_clock -period 20.000 -name pll_clk_p -waveform { 0.000 10.000} [get_ports pll_clk_p]
create_clock -period 20.000 -name pll_clk_n -waveform {10.000 20.000} [get_ports pll_clk_n]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_p]] 0.100
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_n]] 0.100



# MGT, 120 MHz
create_clock -period 8.333 -name mgt_clk0_p -waveform { 0.000  4.167} [get_ports mgt_clk0_p]
create_clock -period 8.333 -name mgt_clk0_n -waveform { 4.167  8.333} [get_ports mgt_clk0_n]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_p]] 0.100
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_n]] 0.100

set_clock_groups -name async__pll_clk_p__mgt_clk0_p -asynchronous \
-group [get_clocks -include_generated_clocks pll_clk_p] \
-group [get_clocks -include_generated_clocks mgt_clk0_p]



# TRX VCTCXO, 26 MHz
create_clock -period 38.462 -name trx_clk_26mhz -waveform { 0.000 19.231} [get_ports trx_clk_26mhz]
set_input_jitter [get_clocks -of_objects [get_ports trx_clk_26mhz]] 0.100

set_clock_groups -name async__pll_clk_p__trx_clk_26mhz -asynchronous \
-group [get_clocks -include_generated_clocks pll_clk_p] \
-group [get_clocks -include_generated_clocks trx_clk_26mhz]

set_clock_groups -name async__mgt_clk0_p__trx_clk_26mhz -asynchronous \
-group [get_clocks -include_generated_clocks mgt_clk0_p] \
-group [get_clocks -include_generated_clocks trx_clk_26mhz]



# CLK_WIZ_0 - PLL: 26 MHz --> 50 MHz
create_generated_clock -name clk_050mhz_clk_wiz_0    [get_pins clk_wiz_0_inst/inst/plle2_adv_inst/CLKOUT0]
#create_clock -period 20.000 -name VIRTUAL_clk_050mhz_clk_wiz_0  -waveform {0.000 10.000}



# CLK_WIZ_1
create_generated_clock -name clk_177mhz778_clk_wiz_1_1 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name clk_177mhz778_clk_wiz_1_2 -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT0]
set_clock_groups -physically_exclusive \
-group [get_clocks -include_generated_clocks clk_177mhz778_clk_wiz_1_1] \
-group [get_clocks -include_generated_clocks clk_177mhz778_clk_wiz_1_2]

create_generated_clock -name clk_050mhz_clk_wiz_1_1    -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1]
create_generated_clock -name clk_050mhz_clk_wiz_1_2    -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT1]
set_clock_groups -physically_exclusive \
-group [get_clocks -include_generated_clocks clk_050mhz_clk_wiz_1_1] \
-group [get_clocks -include_generated_clocks clk_050mhz_clk_wiz_1_2]

create_generated_clock -name clk_025mhz_clk_wiz_1_1    -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT2]
create_generated_clock -name clk_025mhz_clk_wiz_1_2    -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT2]
set_clock_groups -physically_exclusive \
-group [get_clocks -include_generated_clocks clk_025mhz_clk_wiz_1_1] \
-group [get_clocks -include_generated_clocks clk_025mhz_clk_wiz_1_2]

create_generated_clock -name clk_012mhz_clk_wiz_1_1    -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN1] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT3]
create_generated_clock -name clk_012mhz_clk_wiz_1_2    -source [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKIN2] [get_pins clk_wiz_1_inst/inst/mmcm_adv_inst/CLKOUT3]
set_clock_groups -physically_exclusive \
-group [get_clocks -include_generated_clocks clk_012mhz_clk_wiz_1_1] \
-group [get_clocks -include_generated_clocks clk_012mhz_clk_wiz_1_2]



# MIG Tool
create_generated_clock -name clk_083mhz333_mig_0 [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKOUT0]



# Ethernet / Ether-Lite
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk    -source [get_clocks clk_050mhz_clk_wiz_1] -divide_by 1  [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1 -source [get_clocks clk_050mhz_clk_wiz_1] -divide_by 1  -add  -master_clock clk_050mhz_clk_wiz_1_1 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_2 -source [get_clocks clk_050mhz_clk_wiz_1] -divide_by 1  -add  -master_clock clk_050mhz_clk_wiz_1_2 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_bi_reg/Q]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk    -source [get_clocks clk_050mhz_clk_wiz_1] -divide_by 1  [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1 -source [get_clocks clk_050mhz_clk_wiz_1] -divide_by 1  -add  -master_clock clk_050mhz_clk_wiz_1_1 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]
#create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_2 -source [get_clocks clk_050mhz_clk_wiz_1] -divide_by 1  -add  -master_clock clk_050mhz_clk_wiz_1_2 [get_pins mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_bi_reg/Q]






# TRX rxd09 - DDR
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]                     -min -add_delay  0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]                     -max -add_delay  4.000 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall         -min -add_delay  0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall         -max -add_delay  4.000 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]                     -min -add_delay  0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p]                     -max -add_delay  4.000 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall         -min -add_delay  0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall         -max -add_delay  4.000 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]        -min -add_delay  0.400 [get_ports ufb_trx_sclk]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]        -max -add_delay 40.100 [get_ports ufb_trx_sclk]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]        -min -add_delay  0.400 [get_ports ufb_trx_mosi]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]        -max -add_delay 40.100 [get_ports ufb_trx_mosi]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]        -min -add_delay  0.400 [get_ports ufb_trx_miso]
set_input_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]        -max -add_delay 40.100 [get_ports ufb_trx_miso]

# TRX SPI interface
set_input_delay  -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay  0.400 [get_ports ufb_trx_miso]
set_input_delay  -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 70.100 [get_ports ufb_trx_miso]
set_input_delay  -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay  0.400 [get_ports ufb_trx_mosi]
set_input_delay  -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 70.100 [get_ports ufb_trx_mosi]
set_input_delay  -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay  0.400 [get_ports ufb_trx_sclk]
set_input_delay  -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 70.100 [get_ports ufb_trx_sclk]

set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_miso]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_miso]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_mosi]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_mosi]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_miso]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_miso]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_mosi]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_mosi]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_sclk]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -min -add_delay -0.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1]       -max -add_delay 20.100 [get_ports ufb_trx_seln]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -min -add_delay -0.100 [get_ports ufb_trx_txclk_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -max -add_delay 20.100 [get_ports ufb_trx_txclk_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -min -add_delay -0.100 [get_ports ufb_trx_txclk_p]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -max -add_delay 20.100 [get_ports ufb_trx_txclk_p]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -min -add_delay -0.100 [get_ports ufb_trx_txd_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -max -add_delay 20.100 [get_ports ufb_trx_txd_n]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -min -add_delay -0.100 [get_ports ufb_trx_txd_p]
set_output_delay -clock [get_clocks ufb_trx_rxclk_p]                    -max -add_delay 20.100 [get_ports ufb_trx_txd_p]

set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -min -add_delay  0.400 [get_ports mdc]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -max -add_delay  8.000 [get_ports mdc]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -min -add_delay  0.400 [get_ports mdio]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -max -add_delay  8.000 [get_ports mdio]

set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -min -add_delay -0.100 [get_ports mdc]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -max -add_delay  4.100 [get_ports mdc]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -min -add_delay -0.100 [get_ports mdio]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]   -max -add_delay  4.100 [get_ports mdio]

# Ethernet MII convertion
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -min -add_delay  0.400 [get_ports eth_rx_dv]
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -max -add_delay  8.100 [get_ports eth_rx_dv]
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -min -add_delay  0.400 [get_ports {eth_rx_d[*]}]
set_input_delay  -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -max -add_delay  8.100 [get_ports {eth_rx_d[*]}]

set_output_delay -clock [get_clocks pll_clk_p]                     -min -add_delay -0.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks pll_clk_p]                     -max -add_delay  4.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -min -add_delay -0.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -max -add_delay  4.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks clk_050mhz_clk_wiz_0]          -min -add_delay -0.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks clk_050mhz_clk_wiz_0]          -max -add_delay  4.100 [get_ports {eth_tx_d[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -min -add_delay -0.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1]  -max -add_delay  4.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks clk_050mhz_clk_wiz_0]          -min -add_delay -0.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks clk_050mhz_clk_wiz_0]          -max -add_delay  4.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks pll_clk_p]                     -min -add_delay -0.100 [get_ports eth_tx_en]
set_output_delay -clock [get_clocks pll_clk_p]                     -max -add_delay  4.100 [get_ports eth_tx_en]

# Link-LEDs
create_clock -period 20.000 -name virtual_ethernet_link_led_clk
set_input_delay  -clock [get_clocks virtual_ethernet_link_led_clk] -min -add_delay  0.400 [get_ports link_led]
set_input_delay  -clock [get_clocks virtual_ethernet_link_led_clk] -max -add_delay 10.000 [get_ports link_led]

set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -min -add_delay -0.100 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -max -add_delay 10.000 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -min -add_delay -0.100 [get_ports fpga_eth_da_y]
set_output_delay -clock [get_clocks virtual_ethernet_link_led_clk] -max -add_delay 10.000 [get_ports fpga_eth_da_y]



# SPI-Q
set_input_delay  -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1]  -min -add_delay  0.400 [get_ports {spi_dq[*]}]
set_input_delay  -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1]  -max -add_delay 18.100 [get_ports {spi_dq[*]}]



# AXI clock 83.333 MHz
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports board_rotenc_i]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports board_rotenc_i]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports board_rotenc_i]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports board_rotenc_i]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports board_rotenc_push]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports board_rotenc_push]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports board_rotenc_push]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports board_rotenc_push]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports board_rotenc_q]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports board_rotenc_q]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports board_rotenc_q]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports board_rotenc_q]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports board_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports board_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports board_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports board_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports board_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports board_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports board_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports board_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports onewire]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports onewire]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports onewire]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports onewire]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports pll_int]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports pll_int]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports pll_int]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports pll_int]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports pll_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports pll_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports pll_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports pll_scl]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports pll_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports pll_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports pll_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports pll_sda]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports ufb_fpga_ft_dtr]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports ufb_fpga_ft_dtr]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports ufb_fpga_ft_dtr]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports ufb_fpga_ft_dtr]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports ufb_fpga_ft_rts]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports ufb_fpga_ft_rts]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports ufb_fpga_ft_rts]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports ufb_fpga_ft_rts]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports ufb_fpga_ft_txd]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports ufb_fpga_ft_txd]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports ufb_fpga_ft_txd]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports ufb_fpga_ft_txd]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.400 [get_ports ufb_trx_irq]
set_input_delay  -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  8.100 [get_ports ufb_trx_irq]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay  0.400 [get_ports ufb_trx_irq]
set_input_delay  -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  8.100 [get_ports ufb_trx_irq]

set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports ddr3_reset]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports ddr3_reset]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports eth_rst]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports eth_rst]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports fpga_lcd_bl_pwm]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports fpga_lcd_bl_pwm]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports fpga_led_rgb_blue]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports fpga_led_rgb_blue]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports fpga_led_rgb_green]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports fpga_led_rgb_green]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports fpga_led_rgb_red]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports fpga_led_rgb_red]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports onewire]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports onewire]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports pll_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports pll_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports pll_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports pll_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports ufb_fpga_ft_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports ufb_fpga_ft_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports ufb_fpga_ft_rxd]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports ufb_fpga_ft_rxd]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports ufb_trx_rstn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports ufb_trx_rstn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports fpga_io]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports fpga_io]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports uli_system]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports uli_system]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports board_lcd_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports board_lcd_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay -0.100 [get_ports board_lcd_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  4.100 [get_ports board_lcd_resetn]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports board_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports board_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay -0.100 [get_ports board_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  4.100 [get_ports board_scl]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay -0.100 [get_ports board_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  4.100 [get_ports board_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay -0.100 [get_ports board_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  4.100 [get_ports board_sda]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -min -add_delay  0.100 [get_ports ddr3_init_calib_complete]
set_output_delay -clock [get_clocks VIRTUAL_clk_083mhz333_mig_0]  -max -add_delay  3.900 [get_ports ddr3_init_calib_complete]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -min -add_delay -0.100 [get_ports ddr3_init_calib_complete]
set_output_delay -clock [get_clocks VIRTUAL_clk_pll_i_1]          -max -add_delay  4.100 [get_ports ddr3_init_calib_complete]



# SPI-Q access interface
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports spi_cs]
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports spi_cs]
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports {spi_dq[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_025mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports {spi_dq[*]}]



# FTDI 12 MHz
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_fpga_ft_cts]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports ufb_fpga_ft_cts]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_fpga_ft_cts]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports ufb_fpga_ft_cts]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_fpga_ft_dsr]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports ufb_fpga_ft_dsr]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -min -add_delay -0.100 [get_ports ufb_fpga_ft_dsr]
set_output_delay -clock [get_clocks VIRTUAL_clk_012mhz_clk_wiz_1] -max -add_delay  4.100 [get_ports ufb_fpga_ft_dsr]



# Unused Loop lines
create_clock -period 20.000 -name virtual_clock_bv
set_input_delay  -clock [get_clocks virtual_clock_bv] -min -add_delay  0.400 [get_ports bv0]
set_input_delay  -clock [get_clocks virtual_clock_bv] -max -add_delay 18.000 [get_ports bv0]

set_output_delay -clock [get_clocks virtual_clock_bv] -min -add_delay -0.100 [get_ports bv1]
set_output_delay -clock [get_clocks virtual_clock_bv] -max -add_delay  2.000 [get_ports bv1]



# Logic without clock
create_clock -period 100.000 -name virtual_noclock
set_input_delay  -clock [get_clocks virtual_noclock]  -min -add_delay  0.400 [get_ports eth_rx_dv]
set_input_delay  -clock [get_clocks virtual_noclock]  -max -add_delay 80.000 [get_ports eth_rx_dv]
set_input_delay  -clock [get_clocks virtual_noclock]  -min -add_delay  0.400 [get_ports link_led]
set_input_delay  -clock [get_clocks virtual_noclock]  -max -add_delay 80.000 [get_ports link_led]

set_output_delay -clock [get_clocks virtual_noclock]  -min -add_delay -0.100 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks virtual_noclock]  -max -add_delay 20.000 [get_ports fpga_eth_da_g]
set_output_delay -clock [get_clocks virtual_noclock]  -min -add_delay -0.100 [get_ports fpga_eth_da_y]
set_output_delay -clock [get_clocks virtual_noclock]  -max -add_delay 20.000 [get_ports fpga_eth_da_y]

set_clock_groups -asynchronous -group [get_clocks virtual_noclock] -group [get_clocks -include_generated_clocks pll_clk_p]
#set_false_path -from [get_clocks -include_generated_clocks virtual_noclock]   -to [get_clocks -include_generated_clocks pll_clk_p]



set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rst_n_d_reg[0]}]
set_property ASYNC_REG true [get_cells {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rst_n_d_reg[1]}]
set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/XEMAC_I/EMAC_I/C_SENSE_SYNC_1]
set_property ASYNC_REG true [get_cells mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/XEMAC_I/EMAC_I/C_SENSE_SYNC_2]



#set_multicycle_path -setup -from [get_clocks clk_050mhz_clk_wiz_1] -to [get_clocks VIRTUAL_clk_050mhz_clk_wiz_1] 2



create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_Gen   -source [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/I0] -divide_by 1 -add -master_clock mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/O]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1_Gen -source [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/I0] -divide_by 1 -add -master_clock mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1 [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/O]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_2_Gen -source [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/I0] -divide_by 1 -add -master_clock mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_2 [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/O]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_Gen   -source [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/I1] -divide_by 1 -add -master_clock mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/O]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1_Gen -source [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/I1] -divide_by 1 -add -master_clock mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1 [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/O]
create_generated_clock -name mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_2_Gen -source [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/I1] -divide_by 1 -add -master_clock mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_2 [get_pins mcu_wrapper_i/mcu_i/axi_ethernetlite_ETHERNET/U0/LOOPBACK_GEN.NO_BUFG_GEN.CLOCK_MUX/O]

set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clkfbout_clk_wiz_1] -group [get_clocks -include_generated_clocks clkfbout_clk_wiz_1_1] -group [get_clocks -include_generated_clocks clkfbout_clk_wiz_1_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_177mhz778_clk_wiz_1] -group [get_clocks -include_generated_clocks clk_177mhz778_clk_wiz_1_1] -group [get_clocks -include_generated_clocks clk_177mhz778_clk_wiz_1_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_pll_i] -group [get_clocks -include_generated_clocks clk_pll_i_1] -group [get_clocks -include_generated_clocks clk_pll_i_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout0] -group [get_clocks -include_generated_clocks mmcm_clkout0_1] -group [get_clocks -include_generated_clocks mmcm_clkout0_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout1] -group [get_clocks -include_generated_clocks mmcm_clkout1_1] -group [get_clocks -include_generated_clocks mmcm_clkout1_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout2] -group [get_clocks -include_generated_clocks mmcm_clkout2_1] -group [get_clocks -include_generated_clocks mmcm_clkout2_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout3] -group [get_clocks -include_generated_clocks mmcm_clkout3_1] -group [get_clocks -include_generated_clocks mmcm_clkout3_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout4] -group [get_clocks -include_generated_clocks mmcm_clkout4_1] -group [get_clocks -include_generated_clocks mmcm_clkout4_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_ps_clk_bufg_in] -group [get_clocks -include_generated_clocks mmcm_ps_clk_bufg_in_1] -group [get_clocks -include_generated_clocks mmcm_ps_clk_bufg_in_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_div2_bufg_in] -group [get_clocks -include_generated_clocks clk_div2_bufg_in_1] -group [get_clocks -include_generated_clocks clk_div2_bufg_in_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks pll_clkfbout] -group [get_clocks -include_generated_clocks pll_clkfbout_1] -group [get_clocks -include_generated_clocks pll_clkfbout_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks freq_refclk] -group [get_clocks -include_generated_clocks freq_refclk_1] -group [get_clocks -include_generated_clocks freq_refclk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mem_refclk] -group [get_clocks -include_generated_clocks mem_refclk_1] -group [get_clocks -include_generated_clocks mem_refclk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks sync_pulse] -group [get_clocks -include_generated_clocks sync_pulse_1] -group [get_clocks -include_generated_clocks sync_pulse_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks pll_clk3_out] -group [get_clocks -include_generated_clocks pll_clk3_out_1] -group [get_clocks -include_generated_clocks pll_clk3_out_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk] -group [get_clocks -include_generated_clocks oserdes_clk_8] -group [get_clocks -include_generated_clocks oserdes_clk_16]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv] -group [get_clocks -include_generated_clocks oserdes_clkdiv_8] -group [get_clocks -include_generated_clocks oserdes_clkdiv_16]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_1] -group [get_clocks -include_generated_clocks oserdes_clk_9] -group [get_clocks -include_generated_clocks oserdes_clk_17]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_1] -group [get_clocks -include_generated_clocks oserdes_clkdiv_9] -group [get_clocks -include_generated_clocks oserdes_clkdiv_17]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_2] -group [get_clocks -include_generated_clocks oserdes_clk_10] -group [get_clocks -include_generated_clocks oserdes_clk_18]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_2] -group [get_clocks -include_generated_clocks oserdes_clkdiv_10] -group [get_clocks -include_generated_clocks oserdes_clkdiv_18]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_3] -group [get_clocks -include_generated_clocks oserdes_clk_11] -group [get_clocks -include_generated_clocks oserdes_clk_19]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_3] -group [get_clocks -include_generated_clocks oserdes_clkdiv_11] -group [get_clocks -include_generated_clocks oserdes_clkdiv_19]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk_1] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv] -group [get_clocks -include_generated_clocks iserdes_clkdiv_4] -group [get_clocks -include_generated_clocks iserdes_clkdiv_8]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_4] -group [get_clocks -include_generated_clocks oserdes_clk_12] -group [get_clocks -include_generated_clocks oserdes_clk_20]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_4] -group [get_clocks -include_generated_clocks oserdes_clkdiv_12] -group [get_clocks -include_generated_clocks oserdes_clkdiv_20]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk_1] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_1] -group [get_clocks -include_generated_clocks iserdes_clkdiv_5] -group [get_clocks -include_generated_clocks iserdes_clkdiv_9]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_5] -group [get_clocks -include_generated_clocks oserdes_clk_13] -group [get_clocks -include_generated_clocks oserdes_clk_21]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_5] -group [get_clocks -include_generated_clocks oserdes_clkdiv_13] -group [get_clocks -include_generated_clocks oserdes_clkdiv_21]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk_1] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_2] -group [get_clocks -include_generated_clocks iserdes_clkdiv_6] -group [get_clocks -include_generated_clocks iserdes_clkdiv_10]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_6] -group [get_clocks -include_generated_clocks oserdes_clk_14] -group [get_clocks -include_generated_clocks oserdes_clk_22]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_6] -group [get_clocks -include_generated_clocks oserdes_clkdiv_14] -group [get_clocks -include_generated_clocks oserdes_clkdiv_22]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk_1] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_3] -group [get_clocks -include_generated_clocks iserdes_clkdiv_7] -group [get_clocks -include_generated_clocks iserdes_clkdiv_11]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_7] -group [get_clocks -include_generated_clocks oserdes_clk_15] -group [get_clocks -include_generated_clocks oserdes_clk_23]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_7] -group [get_clocks -include_generated_clocks oserdes_clkdiv_15] -group [get_clocks -include_generated_clocks oserdes_clkdiv_23]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk] -group [get_clocks -include_generated_clocks mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1] -group [get_clocks -include_generated_clocks mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_2]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk] -group [get_clocks -include_generated_clocks mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1] -group [get_clocks -include_generated_clocks mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_2]

set_clock_groups -logically_exclusive  -group [get_clocks -include_generated_clocks {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_1_Gen mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_2_Gen mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_rx_clk_Gen}] -group [get_clocks -include_generated_clocks {mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_1_Gen mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_2_Gen mcu_wrapper_i/mcu_i/mii_to_rmii_ETHERNET/U0/rmii2mac_tx_clk_Gen}]

set_clock_groups -asynchronous -group [get_clocks clk_pll_i]                   -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks clk_pll_i_1]                 -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks clk_pll_i_2]                 -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0] -group [get_clocks clk_pll_i]
set_clock_groups -asynchronous -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0] -group [get_clocks clk_pll_i_1]
set_clock_groups -asynchronous -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0] -group [get_clocks clk_pll_i_2]
#set_clock_groups -asynchronous -group [get_clocks clk_pll_i_2]                 -group [get_clocks clk_050mhz_clk_wiz_1]
#set_clock_groups -asynchronous -group [get_clocks clk_pll_i_1]                 -group [get_clocks clk_050mhz_clk_wiz_1_2]
#set_clock_groups -asynchronous -group [get_clocks clk_050mhz_clk_wiz_1_2]      -group [get_clocks clk_pll_i_1]
#set_clock_groups -asynchronous -group [get_clocks clk_050mhz_clk_wiz_1]        -group [get_clocks clk_pll_i_2]



# OLD
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

