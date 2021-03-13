################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name CLK1B_clk -period 20 [get_ports CLK1B_clk]
create_clock -name TRX_rx_clkdiv_16MHz_in -period 62.500 [get_ports TRX_rx_clkdiv_16MHz_in]
create_clock -name TRX_clk_trx_26MHz_vio -period 38.462 [get_ports TRX_clk_trx_26MHz_vio]
create_clock -name TRX_clk_trx_pll_25MHz_vio -period 40 [get_ports TRX_clk_trx_pll_25MHz_vio]
create_clock -name CLK0_clk_p -period 10 [get_ports CLK0_clk_p]
create_clock -name CLK2_mgt_clk0_clk_p -period 8 [get_ports CLK2_mgt_clk0_clk_p]
create_clock -name CLK3_sys_diff_clk_p -period 20 [get_ports CLK3_sys_diff_clk_p]

################################################################################