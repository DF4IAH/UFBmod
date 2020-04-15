#--------------------Physical Constraints-----------------

set_property BOARD_PIN {RMII0_CRSDV} [get_ports phy2rmii_crs_dv]
set_property BOARD_PIN {RMII0_RXD0} [get_ports phy2rmii_rxd[0]]

set_property BOARD_PIN {RMII0_RXD1} [get_ports phy2rmii_rxd[1]]

set_property BOARD_PIN {RMII0_TXEN} [get_ports rmii2phy_tx_en]
set_property BOARD_PIN {RMII0_TXD0} [get_ports rmii2phy_txd[0]]

set_property BOARD_PIN {RMII0_TXD1} [get_ports rmii2phy_txd[1]]

