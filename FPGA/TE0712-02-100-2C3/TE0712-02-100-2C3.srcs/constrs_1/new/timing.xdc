######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################


#create_clock -period 83.330 -name sys_clk_pin -waveform {0.000 41.660} -add [get_ports sysclk]

#create_clock -period 10.000 -name VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0 -waveform {0.000 5.000}

#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {MemDB[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {MemDB[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {btn[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {btn[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {led[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {led[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {qspi_dq[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {qspi_dq[*]}]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports ledrgb_b]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_b]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports ledrgb_g]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_g]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports ledrgb_r]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_r]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports usb_uart_rxd]
#set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports usb_uart_rxd]

#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {MemAdr[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {MemAdr[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {MemDB[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {MemDB[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {led[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {led[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {qspi_dq[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {qspi_dq[*]}]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports RamCEn]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports RamCEn]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports RamOEn]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports RamOEn]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports RamWEn]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports RamWEn]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports ledrgb_b]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_b]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports ledrgb_g]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_g]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports ledrgb_r]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_r]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports qspi_cs]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports qspi_cs]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports usb_uart_txd]
#set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports usb_uart_txd]



# ---- test_board ----
#create_clock -period 8.000 -name mgt_clk0_clk_p -waveform {0.000 4.000} [get_ports mgt_clk0_clk_p]

#create_clock -period 10.000 -name {CLK0_clk_p[0]} -waveform {0.000 5.000} [get_ports {CLK0_clk_p[0]}]
#create_clock -period 20.000 -name {CLK1B[0]} -waveform {0.000 10.000} [get_ports {CLK1B[0]}]
#create_clock -period 15.152 -name CFGMCLK -waveform {0.000 7.576} [get_pins -hierarchical -filter {NAME =~*NO_DUAL_QUAD_MODE.QSPI_NORMAL/*STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst/CFGMCLK}]

#set_false_path -from [get_clocks {CLK0_clk_p[0]}] -to [get_clocks clk_pll_i]
#set_false_path -from [get_clocks mgt_clk0_clk_p] -to [get_clocks clk_pll_i]
#set_false_path -from [get_pins {msys_i/SC0712_0/U0/rst_delay_i_reg[3]/C}] -to [get_pins -hierarchical -filter {NAME =~*u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/rstdiv0*/PRE}]
#set_false_path -from [get_clocks -of_objects [get_pins msys_i/mig_7series_0/u_msys_mig_7series_0_0_mig/u_ddr3_infrastructure/gen_ui_extra_clocks.mmcm_i/CLKFBOUT]] -to [get_clocks mgt_clk0_clk_p]
#set_false_path -from [get_clocks clk_pll_i] -to [get_clocks {msys_i/util_ds_buf_0/U0/IBUF_OUT[0]}]
#set_false_path -from [get_pins {msys_i/labtools_fmeter_0/U0/F_reg[*]/C}] -to [get_pins {msys_i/vio_0/inst/PROBE_IN_INST/probe_in_reg_reg[*]/D}]
#set_false_path -from [get_pins msys_i/labtools_fmeter_0/U0/COUNTER_REFCLK_inst/bl.DSP48E_2/CLK] -to [get_pins {msys_i/vio_0/inst/PROBE_IN_INST/probe_in_reg_reg[*]/D}]
#set_false_path -from [get_pins {msys_i/labtools_fmeter_0/U0/FMETER_gen[*].COUNTER_F_inst/bl.DSP48E_2/CLK}] -to [get_pins {msys_i/labtools_fmeter_0/U0/F_reg[*]/D}]



# <EOF>

