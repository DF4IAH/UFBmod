################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name ufb_trx_rxclk_n -period 31.250 [get_ports ufb_trx_rxclk_n]
create_clock -name ufb_trx_rxclk_p -period 31.250 [get_ports ufb_trx_rxclk_p]
create_clock -name pll_clk_g -period 20 [get_ports pll_clk_g]
create_clock -name trx_clk_026mhz000_g -period 38.462 [get_ports trx_clk_026mhz000_g]

################################################################################