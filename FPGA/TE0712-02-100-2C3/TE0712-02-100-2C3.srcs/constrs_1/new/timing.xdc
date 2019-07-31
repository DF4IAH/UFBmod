######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################


create_clock -name pll_clk_p -period 20.000  -waveform { 0.000 10.000} [get_ports {pll_clk_p}]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_p]] 0.1
create_clock -name pll_clk_n -period 20.000  -waveform {10.000 20.000} [get_ports {pll_clk_n}]
set_input_jitter [get_clocks -of_objects [get_ports pll_clk_n]] 0.1


create_clock -name mgt_clk0_p -period  8.333 -waveform { 0.000  4.167} [get_ports {mgt_clk0_p}]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_p]] 0.1
create_clock -name mgt_clk0_n -period  8.333 -waveform { 4.167  8.333} [get_ports {mgt_clk0_n}]
set_input_jitter [get_clocks -of_objects [get_ports mgt_clk0_n]] 0.1


create_clock -name ufb_fpga_trx_clk -period 31.250 -waveform { 0.000 15.625} [get_ports {ufb_fpga_trx_clk}]
set_input_jitter [get_clocks -of_objects [get_ports ufb_fpga_trx_clk]] 0.1


set_false_path -from [get_ports reset]   -to [get_ports {pll_clk_p}]
set_false_path -from [get_ports reset]   -to [get_ports {pll_clk_n}]
set_false_path -from [get_ports sys_rst] -to [get_ports {pll_clk_p}]
set_false_path -from [get_ports sys_rst] -to [get_ports {pll_clk_n}]

set_false_path -from [get_ports ufb_trx_rxclk_p] -to [get_ports {pll_clk_p}]
set_false_path -from [get_ports ufb_trx_rxclk_p] -to [get_ports {pll_clk_n}]
set_false_path -from [get_ports ufb_trx_rxclk_n] -to [get_ports {pll_clk_p}]
set_false_path -from [get_ports ufb_trx_rxclk_n] -to [get_ports {pll_clk_n}]
