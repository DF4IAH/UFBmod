################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name CLK1B -period 20 [get_ports CLK1B]
create_clock -name TRX_clk_26MHz -period 38.462 [get_ports TRX_clk_26MHz]
create_clock -name CLK0_clk_p -period 10 [get_ports CLK0_clk_p]
create_clock -name mgt_clk0_clk_p -period 8 [get_ports mgt_clk0_clk_p]
create_clock -name sys_diff_clock_clk_p -period 10 [get_ports sys_diff_clock_clk_p]
create_clock -name TRX_rx_clk_64MHz_clk_p -period 15.625 [get_ports TRX_rx_clk_64MHz_clk_p]

################################################################################