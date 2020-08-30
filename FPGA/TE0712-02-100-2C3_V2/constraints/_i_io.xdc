#I2C
#set_property PACKAGE_PIN W21 [get_ports PLL_I2C_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports PLL_I2C_scl_io]
#set_property PACKAGE_PIN T20 [get_ports PLL_I2C_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports PLL_I2C_sda_io]
set_property PACKAGE_PIN W21 [get_ports PLL_I2C_ext_scl_o]
set_property IOSTANDARD LVCMOS33 [get_ports PLL_I2C_ext_scl_o]
set_property PACKAGE_PIN T20 [get_ports PLL_I2C_ext_sda]
set_property IOSTANDARD LVCMOS33 [get_ports PLL_I2C_ext_sda]

#Reset
#!set_property PACKAGE_PIN T3 [get_ports reset]
set_property PACKAGE_PIN AA16 [get_ports reset]
set_property IOSTANDARD LVCMOS25 [get_ports reset]
#CLKS
set_property PACKAGE_PIN R4 [get_ports {CLK1B_clk[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {CLK1B_clk[0]}]
set_property PACKAGE_PIN K4 [get_ports {CLK0_clk_p[0]}]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {CLK0_clk_p[0]}]

#ETH PHY
set_property PACKAGE_PIN N17 [get_ports phy_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports phy_rst_n]








