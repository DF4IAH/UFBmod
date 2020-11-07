################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name microblaze_0_Clk_100MHz -period 10 [get_ports microblaze_0_Clk_100MHz]
create_clock -name TRX_clk_26MHz -period 38.462 [get_ports TRX_clk_26MHz]
create_clock -name mig_7series_0_ui_addn_clk_0_200MHz -period 5 [get_ports mig_7series_0_ui_addn_clk_0_200MHz]
create_clock -name TRX_rx_clk_64MHz_clk_p -period 15.625 [get_ports TRX_rx_clk_64MHz_clk_p]

################################################################################