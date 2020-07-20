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

set_false_path -from [get_clocks {CLK1B_clk[0]}] -to [get_clocks CFGMCLK]
set_false_path -from [get_clocks {CLK1B_clk[0]}] -to [get_clocks {CLK0_clk_p[0]}]
set_false_path -from [get_clocks {CLK1B_clk[0]}] -to [get_clocks -of_objects [get_pins msys_i/BOARD_clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]

set_false_path -from [get_clocks CLK2_mgt_clk0_clk_p] -to [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]

set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks CFGMCLK]
set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks {CLK0_clk_p[0]}]
set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks CLK2_mgt_clk0_clk_p]
set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks -of_objects [get_pins msys_i/TRX/TRX_LVDS/TRX_LVDS_selectio_wiz_0/inst/clk_div_out]]

set_false_path -from [get_pins {msys_i/SC0712_0/U0/rst_delay_i_reg[3]/C}] -to [get_pins -hierarchical -filter {NAME =~*u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/rstdiv0*/PRE}]

set_false_path -from [get_clocks msys_i/ETH0/axi_ethernetlite_0/U0/phy_tx_clk] -to [get_clocks -of_objects [get_pins msys_i/BOARD_clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]]
set_false_path -from [get_clocks msys_i/ETH0/axi_ethernetlite_0/U0/phy_tx_clk] -to [get_clocks CFGMCLK]

set_false_path -from [get_clocks TRX_rx_clk_64MHz_clk_p] -to [get_clocks CFGMCLK]
set_false_path -from [get_clocks TRX_rx_clk_64MHz_clk_p] -to [get_clocks {CLK0_clk_p[0]}]
set_false_path -from [get_clocks TRX_rx_clk_64MHz_clk_p] -to [get_clocks {CLK1B_clk[0]}]

set _xlnx_shared_i0 [get_pins {msys_i/vio_0/inst/PROBE_IN_INST/probe_in_reg_reg[*]/D}]
set_false_path -from [get_pins {msys_i/labtools_fmeter_0/U0/F_reg[*]/C}] -to $_xlnx_shared_i0
set_false_path -from [get_pins msys_i/labtools_fmeter_0/U0/COUNTER_REFCLK_inst/bl.DSP48E_2/CLK] -to $_xlnx_shared_i0
set_false_path -from [get_pins {msys_i/labtools_fmeter_0/U0/FMETER_gen[*].COUNTER_F_inst/bl.DSP48E_2/CLK}] -to [get_pins {msys_i/labtools_fmeter_0/U0/F_reg[*]/D}]

