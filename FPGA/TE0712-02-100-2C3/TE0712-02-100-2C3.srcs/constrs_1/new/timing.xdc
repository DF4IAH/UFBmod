######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################


create_clock -period 20.000 -name pll_clk_p        -waveform ( 0.000 10.000) [get_pins {pll_clk_p}]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_p]] 0.02
create_clock -period 20.000 -name pll_clk_n        -waveform (10.000 20.000) [get_pins {pll_clk_n}]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_n]] 0.02


create_clock -period  8.333 -name mgt_clk0_p       -waveform ( 0.000  4.167) [get_pins {mgt_clk0_p}]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_p]] 0.02
create_clock -period  8.333 -name mgt_clk0_n       -waveform ( 4.167  8.333) [get_pins {mgt_clk0_n}]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_n]] 0.02


create_clock -period 31.250 -name ufb_fpga_trx_clk -waveform ( 0.000 15.625) [get_pins {ufb_fpga_trx_clk}]
set_input_jitter [get_clocks -of_objects [get_ports ufb_fpga_trx_clk]] 0.02


set_false_path -from [get_ports reset]   -to [get_clocks [get_clocks -of_objects [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]]
set_false_path -from [get_ports sys_rst] -to [get_clocks [get_clocks -of_objects [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]]


