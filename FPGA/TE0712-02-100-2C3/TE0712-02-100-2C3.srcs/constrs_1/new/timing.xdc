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



set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay 0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 6.000 [get_ports ufb_trx_rxd09_n]

set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay 0.400 [get_ports ufb_trx_rxd09_n]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 6.000 [get_ports ufb_trx_rxd09_n]

set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -min -add_delay 0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -clock_fall -max -add_delay 6.000 [get_ports ufb_trx_rxd09_p]

set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -min -add_delay 0.400 [get_ports ufb_trx_rxd09_p]
set_input_delay -clock [get_clocks ufb_trx_rxclk_p] -max -add_delay 6.000 [get_ports ufb_trx_rxd09_p]


set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[0]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[1]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[2]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[3]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[4]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[5]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[6]/D}]
set_false_path -from [get_clocks ufb_trx_rxclk_p] -to [get_pins {mcu_wrapper_i/mcu_i/dist_mem_gen_lvds_out/U0/synth_options.dist_mem_inst/gen_sdp_ram.sdpram_inst/qsdpo_int_reg[7]/D}]


#set_false_path -from [get_clocks -of_objects [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks -of_objects [get_pins mcu_wrapper_i/mcu_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT1]]
#set_false_path -from [get_clocks -of_objects [get_pins mcu_wrapper_i/mcu_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins mcu_wrapper_i/mcu_i/mig_7series_0/u_mcu_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]]
