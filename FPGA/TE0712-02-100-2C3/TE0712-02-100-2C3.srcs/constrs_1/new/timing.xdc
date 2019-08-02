######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################


create_clock -period 20.000 -name pll_clk_p -waveform {0.000 10.000} [get_ports pll_clk_p]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_p]] 0.100
create_clock -period 20.000 -name pll_clk_n -waveform {10.000 20.000} [get_ports pll_clk_n]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_n]] 0.100


create_clock -period 8.333 -name mgt_clk0_p -waveform {0.000 4.167} [get_ports mgt_clk0_p]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_p]] 0.100
create_clock -period 8.333 -name mgt_clk0_n -waveform {4.167 8.333} [get_ports mgt_clk0_n]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_n]] 0.100


create_clock -period 31.250 -name ufb_fpga_trx_clk -waveform {0.000 15.625} [get_ports ufb_fpga_trx_clk]
set_input_jitter [get_clocks -of_objects [get_ports ufb_fpga_trx_clk]] 0.100


set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay 0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 6.000 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay 0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 6.000 [get_ports ufb_trx_rxd09_n]

set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay 0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 6.000 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay 0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 6.000 [get_ports ufb_trx_rxd09_p]


# From Transeiver LVDS RX (DDR 32 MHz) to FPGA fabric (100 MHz)
#set_false_path -from [get_clocks clk_32_lvds_in_mcu_clk_wiz_0_0] -to [get_clocks clk_pll_i]
#set_false_path -from [get_clocks clk_32_lvds_in_mcu_clk_wiz_0_0] -to [get_clocks clk_pll_i_1]


# From FPGA fabric (100 MHz) to LVDS of Transceiver (DDR 32 MHz)
#set_false_path -from [get_clocks clk_pll_i] -to [get_clocks clk_32_lvds_out_mcu_clk_wiz_0_0]
#set_false_path -from [get_clocks clk_pll_i_1] -to [get_clocks clk_32_lvds_out_mcu_clk_wiz_0_0]


set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clkfbout_mcu_clk_wiz_1_0] -group [get_clocks -include_generated_clocks clkfbout_mcu_clk_wiz_1_0_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_12mhz_mcu_clk_wiz_1_0] -group [get_clocks -include_generated_clocks clk_12mhz_mcu_clk_wiz_1_0_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_pll_i] -group [get_clocks -include_generated_clocks clk_pll_i_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout0] -group [get_clocks -include_generated_clocks mmcm_clkout0_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout1] -group [get_clocks -include_generated_clocks mmcm_clkout1_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout2] -group [get_clocks -include_generated_clocks mmcm_clkout2_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout3] -group [get_clocks -include_generated_clocks mmcm_clkout3_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_clkout4] -group [get_clocks -include_generated_clocks mmcm_clkout4_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mmcm_ps_clk_bufg_in] -group [get_clocks -include_generated_clocks mmcm_ps_clk_bufg_in_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks clk_div2_bufg_in] -group [get_clocks -include_generated_clocks clk_div2_bufg_in_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks pll_clkfbout] -group [get_clocks -include_generated_clocks pll_clkfbout_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks freq_refclk] -group [get_clocks -include_generated_clocks freq_refclk_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks mem_refclk] -group [get_clocks -include_generated_clocks mem_refclk_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks sync_pulse] -group [get_clocks -include_generated_clocks sync_pulse_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks pll_clk3_out] -group [get_clocks -include_generated_clocks pll_clk3_out_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk] -group [get_clocks -include_generated_clocks oserdes_clk_8]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv] -group [get_clocks -include_generated_clocks oserdes_clkdiv_8]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_1] -group [get_clocks -include_generated_clocks oserdes_clk_9]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_1] -group [get_clocks -include_generated_clocks oserdes_clkdiv_9]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_2] -group [get_clocks -include_generated_clocks oserdes_clk_10]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_2] -group [get_clocks -include_generated_clocks oserdes_clkdiv_10]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_3] -group [get_clocks -include_generated_clocks oserdes_clk_11]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_3] -group [get_clocks -include_generated_clocks oserdes_clkdiv_11]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_A.ddr_byte_lane_A/iserdes_clk_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv] -group [get_clocks -include_generated_clocks iserdes_clkdiv_4]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_4] -group [get_clocks -include_generated_clocks oserdes_clk_12]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_4] -group [get_clocks -include_generated_clocks oserdes_clkdiv_12]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/iserdes_clk_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_1] -group [get_clocks -include_generated_clocks iserdes_clkdiv_5]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_5] -group [get_clocks -include_generated_clocks oserdes_clk_13]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_5] -group [get_clocks -include_generated_clocks oserdes_clkdiv_13]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/iserdes_clk_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_2] -group [get_clocks -include_generated_clocks iserdes_clkdiv_6]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_6] -group [get_clocks -include_generated_clocks oserdes_clk_14]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_6] -group [get_clocks -include_generated_clocks oserdes_clkdiv_14]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk] -group [get_clocks -include_generated_clocks u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/iserdes_clk_1]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks iserdes_clkdiv_3] -group [get_clocks -include_generated_clocks iserdes_clkdiv_7]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clk_7] -group [get_clocks -include_generated_clocks oserdes_clk_15]
set_clock_groups -physically_exclusive -group [get_clocks -include_generated_clocks oserdes_clkdiv_7] -group [get_clocks -include_generated_clocks oserdes_clkdiv_15]

set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks {freq_refclk_1 mem_refclk_1 pll_clk3_out_1 pll_clkfbout_1 sync_pulse_1}] -group [get_clocks -include_generated_clocks {freq_refclk mem_refclk pll_clk3_out pll_clkfbout sync_pulse}]

set_clock_groups -asynchronous -group [get_clocks clk_pll_i] -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks clk_pll_i_1] -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0]
set_clock_groups -asynchronous -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0] -group [get_clocks clk_pll_i]
set_clock_groups -asynchronous -group [get_clocks clk_32_lvds_mcu_clk_wiz_0_0] -group [get_clocks clk_pll_i_1]

set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[1]/CLR}]
set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[2]/CLR}]
set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[3]/CLR}]
set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[4]/CLR}]
set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[5]/CLR}]
set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[6]/CLR}]
set_false_path -reset_path -from [get_pins {mcu_wrapper_i/mcu_i/rst_clk_wiz_1_50mhz/U0/BSR_OUT_DFF[0].FDRE_BSR/C}] -to [get_pins {mcu_wrapper_i/mcu_i/clk_32mhz_LVDS/inst/seq_reg2_reg[7]/CLR}]
