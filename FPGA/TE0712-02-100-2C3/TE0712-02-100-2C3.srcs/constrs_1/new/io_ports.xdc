######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################


## Bank 13 / VCCIO13 (2.5 V)

set_property CONFIG VCCOSENSEMODE13 ALWAYSACTIVE;

set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS25} [get_ports {io_0_13}]
#IO_0_13 sch:-


set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS25} [get_ports {b13_l1_p}]
#IO_L1P_T0_13 sch:B13_L1_P

set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS25} [get_ports {b13_l1_n}]
#IO_L1N_T0_13 sch:B13_L1_N


set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS25} [get_ports {b13_l2_p}]
#IO_L2P_T0_13 sch:B13_L2_P

set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS25} [get_ports {b13_l2_n}]
#IO_L2N_T0_13 sch:B13_L2_N


set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVDS} [get_ports {ufb_trx_rxd09_p}]
#IO_L3P_T0_DQS_13 sch:B13_L3_P --> UFB_TRX_RXD09_P

set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVDS} [get_ports {ufb_trx_rxd09_n}]
#IO_L3N_T0_DQS_13 sch:B13_L3_N --> UFB_TRX_RXD09_N


set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS25} [get_ports {b13_l4_p}]
#IO_L4P_T0_13 sch:B13_L4_P

set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS25} [get_ports {b13_l4_n}]
#IO_L4N_T0_13 sch:B13_L4_N


set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS25} [get_ports {ufb_trx_txd_p}]
#IO_L5P_T0_13 sch:B13_L5_P --> UFB_TRX_TXD_P

set_property -dict {PACKAGE_PIN AA14 IOSTANDARD LVCMOS25} [get_ports {ufb_trx_txd_n}]
#IO_L5N_T0_13 sch:B13_L5_N --> UFB_TRX_TXD_N


set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS25} [get_ports {ufb_trx_txclk_p}]
#IO_L6P_T0_13 sch:B13_L6_P --> UFB_TRX_TXCLK_P

set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS25} [get_ports {ufb_trx_txclk_n}]
#IO_L6N_T0_VREF_13 sch:B13_L6_N --> UFB_TRX_TXCLK_N


set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS25} [get_ports {io_l7p_t1_13}]
#IO_L7P_T1_13 sch:-

set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS25} [get_ports {io_l7n_t1_13}]
#IO_L7N_T1_13 sch:-


set_property -dict {PACKAGE_PIN AA9 IOSTANDARD LVCMOS25} [get_ports {io_l8p_t1_13}]
#IO_L8P_T1_13 sch:-

set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVCMOS25} [get_ports {io_l8n_t1_13}]
#IO_L8N_T1_13 sch:-


set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVDS} [get_ports {ufb_trx_rxd24_p}]
#IO_L9P_T1_DQS_13 sch:B13_L9_P --> UFB_TRX_RXD24_P

set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVDS} [get_ports {ufb_trx_rxd24_n}]
#IO_L9N_T1_DQS_13 sch:B13_L9_N --> UFB_TRX_RXD24_N


set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS25} [get_ports {b13_l10_p}]
#IO_L10P_T1_13 sch:B13_L10_P

set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS25} [get_ports {b13_l10_n}]
#IO_L10N_T1_13 sch:B13_L10_N


set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVDS} [get_ports {ufb_trx_rxclk_p}]
#IO_L11P_T1_SRCC_13 sch:B13_L11_P --> UFB_TRX_RXCLK_P

set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVDS} [get_ports {ufb_trx_rxclk_n}]
#IO_L11N_T1_SRCC_13 sch:B13_L11_N --> UFB_TRX_RXCLK_N


set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS25} [get_ports {b13_l12_p}]
#IO_L12P_T1_MRCC_13 sch:B13_L12_P

set_property -dict {PACKAGE_PIN W12 IOSTANDARD LVCMOS25} [get_ports {b13_l12_n}]
#IO_L12N_T1_MRCC_13 sch:B13_L12_N


set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS25} [get_ports {b13_l13_p}]
#IO_L13P_T2_MRCC_13 sch:B13_L13_P

set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS25} [get_ports {b13_l13_n}]
#IO_L13N_T2_MRCC_13 sch:B13_L13_N


set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS25} [get_ports {b13_l14_p}]
#IO_L14P_T2_SRCC_13 sch:B13_L14_P

set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS25} [get_ports {b13_l14_n}]
#IO_L14N_T2_SRCC_13 sch:B13_L14_N


set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports {b13_l15_p}]
#IO_L15P_T2_DQS_13 sch:B13_L15_P

set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS25} [get_ports {b13_l15_n}]
#IO_L15N_T2_DQS_13 sch:B13_L15_N


set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS25} [get_ports {b13_l16_p}]
#IO_L16P_T2_13 sch:B13_L16_P

set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS25} [get_ports {b13_l16_n}]
#IO_L16N_T2_13 sch:B13_L16_N


set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS25} [get_ports {b13_l17_p}]
#IO_L17P_T2_13 sch:B13_L17_P

set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS25} [get_ports {b13_l17_n}]
#IO_L17N_T2_13 sch:B13_L17_N



## Bank 14 / 3.3 V

set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {eth_rx_dv}]
#IO_0_14 sch:ETH_RX_DV

set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {link_led}]
#IO_25_14 sch:LINK_LED


set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports {spi_dq0}]
#IO_L1P_T0_D00_MOSI_14 sch:SPI-DQ0

set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33} [get_ports {spi_dq1}]
#IO_L1N_T0_D01_DIN_14 sch:SPI-DQ1


set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports {spi_dq2}]
#IO_L2P_T0_D02_14 sch:SPI-DQ2

set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports {spi_dq3}]
#IO_L2N_T0_D03_14 sch:SPI-DQ3


set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {fpga_io}]
#IO_L3P_T0_DQS_PUDC_B_14 sch:FPGA_IO

set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {onewire}]
#IO_L3N_T0_DQS_EMCCLK_14 sch:ONEWIRE


set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {b14_l4_p}]
#IO_L4P_T0_D04_14 sch:B14_L4_P

set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {b14_l4_n}]
#IO_L4N_T0_D05_14 sch:B14_L4_N


set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {b14_l5_p}]
#IO_L5P_T0_D06_14 sch:B14_L5_P

set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {b14_l5_n}]
#IO_L5N_T0_D07_14 sch:B14_L5_N


set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {spi_cs}]
#IO_L6P_T0_FCS_B_14 sch:SPI-CS

set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {pll_sda}]
#IO_L6N_T0_D08_VREF_14 sch:PLL_SDA


set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports {pll_scl}]
#IO_L7P_T1_D09_14 sch:PLL_SCL

set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {uli_system}]
#IO_L7N_T1_D10_14 sch:ULI_SYSTEM


set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports {b14_l8_p}]
#IO_L8P_T1_D11_14 sch:B14_L8_P

set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports {b14_l8_n}]
#IO_L8N_T1_D12_14 sch:B14_L8_N


set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports {b14_l9_p}]
#IO_L9P_T1_DQS_14 sch:B14_L9_P

set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports {b14_l9_n}]
#IO_L9N_T1_DQS_D13_14 sch:B14_L9_N


set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {b14_l10_p}]
#IO_L10P_T1_D14_14 sch:B14_L10_P

set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {b14_l10_n}]
#IO_L10N_T1_D15_14 sch:B14_L10_N


set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {b14_l11_p}]
#IO_L11P_T1_SRCC_14 sch:B14_L11_P

set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports {b14_l11_n}]
#IO_L11N_T1_SRCC_14 sch:B14_L11_N


set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {b14_l12_p}]
#IO_L12P_T1_MRCC_14 sch:B14_L12_P

set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports {b14_l12_n}]
#IO_L12N_T1_MRCC_14 sch:B14_L12_N


set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {b14_l13_p}]
#IO_L13P_T2_MRCC_14 sch:B14_L13_P

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {b14_l13_n}]
#IO_L13N_T2_MRCC_14 sch:B14_L13_N


set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports {b14_l14_p}]
#IO_L14P_T2_SRCC_14 sch:B14_L14_P

set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {b14_l14_n}]
#IO_L14N_T2_SRCC_14 sch:B14_L14_N


set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {b14_l15_p}]
#IO_L15P_T2_DQS_RDWR_B_14 sch:B14_L15_P

set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {b14_l15_n}]
#IO_L15N_T2_DQS_DOUT_CSO_B_14 sch:B14_L15_N


set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {b14_l16_p}]
#IO_L16P_T2_CSI_B_14 sch:B14_L16_P

set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {b14_l16_n}]
#IO_L16N_T2_A15_D31_14 sch:B14_L16_N


set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {b14_l17_p}]
#IO_L17P_T2_A14_D30_14 sch:B14_L17_P

set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports {b14_l17_n}]
#IO_L17N_T2_A13_D29_14 sch:B14_L17_N


set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {b14_l18_p}]
#IO_L18P_T2_A12_D28_14 sch:B14_L18_P

set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {b14_l18_n}]
#IO_L18N_T2_A11_D27_14 sch:B14_L18_N


set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {eth_tx_d0}]
#IO_L19P_T3_A10_D26_14 sch:ETH_TX_D0

set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports {eth_tx_en}]
#IO_L19N_T3_A09_D25_VREF_14 sch:ETH_TX_EN


set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {b14_l20_p}]
#IO_L20P_T3_A08_D24_14 sch:B14_L20_P

set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {b14_l20_n}]
#IO_L20N_T3_A07_D23_14 sch:B14_L20_N


set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {eth_rst}]
#IO_L21P_T3_DQS_14 sch:ETH-RST

set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {mdio}]
#IO_L21N_T3_DQS_A06_D22_14 sch:MDIO


set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {eth_tx_d1}]
#IO_L22P_T3_A05_D21_14 sch:ETH_TX_D1

set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {mdc}]
#IO_L22N_T3_A04_D20_14 sch:MDC


set_property -dict {PACKAGE_PIN N13 IOSTANDARD LVCMOS33} [get_ports {eth_rx_d0}]
#IO_L23P_T3_A03_D19_14 sch:ETH_RX_D0

set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {eth_rx_d1}]
#IO_L23N_T3_A02_D18_14 sch:ETH_RX_D1


set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {b14_l24_p}]
#IO_L24P_T3_A01_D17_14 sch:B14_L24_P

set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {b14_l24_n}]
#IO_L24N_T3_A00_D16_14 sch:B14_L24_N



## Bank 15 / VCCIO15 (3.3 V)

set_property CONFIG VCCOSENSEMODE15 ALWAYSACTIVE;

set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports {b15_io0}]
#IO_0_15 sch:B15_IO0

set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_12mhz}]
#IO_25_15 sch:B15_IO25 --> UFB_FPGA_FT_12MHZ


set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports {ufb_trx_sclk}]
#IO_L1P_T0_AD0P_15 sch:B15_L1_P --> UFB_TRX_SCLK

set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports {ufb_trx_seln}]
#IO_L1N_T0_AD0N_15 sch:B15_L1_N --> UFB_TRX_SELN


set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {ufb_trx_miso}]
#IO_L2P_T0_AD8P_15 sch:B15_L2_P --> UFB_TRX_MISO

set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports {ufb_trx_mosi}]
#IO_L2N_T0_AD8N_15 sch:B15_L2_N --> UFB_TRX_MOSI


set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {b15_l3_p}]
#IO_L3P_T0_DQS_AD1P_15 sch:B15_L3_P

set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {b15_l3_n}]
#IO_L3N_T0_DQS_AD1N_15 sch:B15_L3_N


set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {b15_l4_p}]
#IO_L4P_T0_15 sch:B15_L4_P

set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {b15_l4_n}]
#IO_L4N_T0_15 sch:B15_L4_N


set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {b15_l5_p}]
#IO_L5P_T0_AD9P_15 sch:B15_L5_P

set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {b15_l5_n}]
#IO_L5N_T0_AD9N_15 sch:B15_L5_N


set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_rxd}]
#IO_L6P_T0_15 sch:B15_L6_P --> UFB_FPGA_FT_RXD

set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_txd}]
#IO_L6N_T0_VREF_15 sch:B15_L6_N --> UFB_FPGA_FT_TXD


set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS33} [get_ports {b15_l7_p}]
#IO_L7P_T1_AD2P_15 sch:B15_L7_P

set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports {b15_l7_n}]
#IO_L7N_T1_AD2N_15 sch:B15_L7_N


set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports {b15_l8_p}]
#IO_L8P_T1_AD10P_15 sch:B15_L8_P

set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {b15_l8_n}]
#IO_L8N_T1_AD10N_15 sch:B15_L8_N


set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports {b15_l9_p}]
#IO_L9P_T1_DQS_AD3P_15 sch:B15_L9_P

set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS33} [get_ports {b15_l9_n}]
#IO_L9N_T1_DQS_AD3N_15 sch:B15_L9_N


set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports {b15_l10_p}]
#IO_L10P_T1_AD11P_15 sch:B15_L10_P

set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS33} [get_ports {b15_l10_n}]
#IO_L10N_T1_AD11N_15 sch:B15_L10_N


set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports {b15_l11_p}]
#IO_L11P_T1_SRCC_15 sch:B15_L11_P

set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVCMOS33} [get_ports {b15_l11_n}]
#IO_L11N_T1_SRCC_15 sch:B15_L11_N


set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {b15_l12_p}]
#IO_L12P_T1_MRCC_15 sch:B15_L12_P

set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {b15_l12_n}]
#IO_L12N_T1_MRCC_15 sch:B15_L12_N


set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {b15_l13_p}]
#IO_L13P_T2_MRCC_15 sch:B15_L13_P

set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {b15_l13_n}]
#IO_L13N_T2_MRCC_15 sch:B15_L13_N


set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {b15_l14_p}]
#IO_L14P_T2_SRCC_15 sch:B15_L14_P

set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {b15_l14_n}]
#IO_L14N_T2_SRCC_15 sch:B15_L14_N


set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_rfx_mode}]
#IO_L15P_T2_DQS_15 sch:B15_L15_P --> UFB_FPGA_RFX_MODE

set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_reset}]
#IO_L15N_T2_DQS_ADV_B_15 sch:B15_L15_N --> UFB_FPGA_FT_RESET


set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {ufb_trx_rstn}]
#IO_L16P_T2_A28_15 sch:B15_L16_P --> UFB_TRX_RSTN

set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {ufb_trx_irq}]
#IO_L16N_T2_A27_15 sch:B15_L16_N --> UFB_TRX_IRQ


set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {b15_l17_p}]
#IO_L17P_T2_A26_15 sch:B15_L17_P

set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports {b15_l17_n}]
#IO_L17N_T2_A25_15 sch:B15_L17_N


set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {b15_l18_p}]
#IO_L18P_T2_A24_15 sch:B15_L18_P

set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {b15_l18_n}]
#IO_L18N_T2_A23_15 sch:B15_L18_N


set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports {b15_l19_p}]
#IO_L19P_T3_A22_15 sch:B15_L19_P

set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports {b15_l19_n}]
#IO_L19N_T3_A21_VREF_15 sch:B15_L19_N


set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {b15_l20_p}]
#IO_L20P_T3_A20_15 sch:B15_L20_P

set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports {b15_l20_n}]
#IO_L20N_T3_A19_15 sch:B15_L20_N


set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_rts}]
#IO_L21P_T3_DQS_15 sch:B15_L21_P --> UFB_FPGA_FT_RTS

set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_cts}]
#IO_L21N_T3_DQS_A18_15 sch:B15_L21_N --> UFB_FPGA_FT_CTS


set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_ri}]
#IO_L22P_T3_A17_15 sch:B15_L22_P --> UFB_FPGA_FT_RI

set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_dcd}]
#IO_L22N_T3_A16_15 sch:B15_L22_N --> UFB_FPGA_FT_DCD


set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {b15_l23_p}]
#IO_L23P_T3_FOE_B_15 sch:B15_L23_P

set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports {b15_l23_n}]
#IO_L23N_T3_FWE_B_15 sch:B15_L23_N


set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_dsr}]
#IO_L24P_T3_RS1_15 sch:B15_L24_P --> UFB_FPGA_FT_DSR

set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_ft_dtr}]
#IO_L24N_T3_RS0_15 sch:B15_L24_N --> UFB_FPGA_FT_DTR



## Bank 16 / VCCIO16 (3.3 V)

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports {b16_io0}]
#IO_0_16 sch:-

set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS33} [get_ports {b16_io25}]
#IO_25_16 sch:-


set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports {b16_l1_p}]
#IO_L1P_T0_16 sch:B16_L1_P

set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {b16_l1_n}]
#IO_L1N_T0_16 sch:B16_L1_N


set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports {b16_l2_p}]
#IO_L2P_T0_16 sch:B16_L2_P

set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {b16_l2_n}]
#IO_L2N_T0_16 sch:B16_L2_N


set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports {b16_l3_p}]
#IO_L3P_T0_DQS_16 sch:B16_L3_P

set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {b16_l3_n}]
#IO_L3N_T0_DQS_16 sch:B16_L3_N


set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports {b16_l4_p}]
#IO_L4P_T0_16 sch:B16_L4_P

set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS33} [get_ports {b16_l4_n}]
#IO_L4N_T0_16 sch:B16_L4_N


set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {b16_l5_p}]
#IO_L5P_T0_16 sch:B16_L5_P

set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports {b16_l5_n}]
#IO_L5N_T0_16 sch:B16_L5_N


set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports {b16_l6_p}]
#IO_L6P_T0_16 sch:B16_L6_P

set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {b16_l6_n}]
#IO_L6N_T0_VREF_16 sch:B16_L6_N


set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports {b16_l7_p}]
#IO_L7P_T1_16 sch:B16_L7_P

set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports {b16_l7_n}]
#IO_L7N_T1_16 sch:B16_L7_N


set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports {b16_l8_p}]
#IO_L8P_T1_16 sch:B16_L8_P

set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports {b16_l8_n}]
#IO_L8N_T1_16 sch:B16_L8_N


set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {b16_l9_p}]
#IO_L9P_T1_DQS_16 sch:B16_L9_P

set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {b16_l9_n}]
#IO_L9N_T1_DQS_16 sch:B16_L9_N


set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports {b16_l10_p}]
#IO_L10P_T1_16 sch:B16_L10_P

set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports {b16_l10_n}]
#IO_L10N_T1_16 sch:B16_L10_N


set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {b16_l11_p}]
#IO_L11P_T1_SRCC_16 sch:B16_L11_P

set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {b16_l11_n}]
#IO_L11N_T1_SRCC_16 sch:B16_L11_N


set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports {ufb_fpga_trx_clk0}]
#IO_L12P_T1_MRCC_16 sch:B16_L12_P --> UFB_FPGA_TRX_CLK0  32.0 MHz

set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports {b16_l12_n}]
#IO_L12N_T1_MRCC_16 sch:B16_L12_N


set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports {b16_l13_p}]
#IO_L13P_T2_MRCC_16 sch:B16_L13_P

set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS33} [get_ports {b16_l13_n}]
#IO_L13N_T2_MRCC_16 sch:B16_L13_N


set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {b16_l14_p}]
#IO_L14P_T2_SRCC_16 sch:B16_L14_P

set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {b16_l14_n}]
#IO_L14N_T2_SRCC_16 sch:B16_L14_N


set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {b16_l15_p}]
#IO_L15P_T2_DQS_16 sch:B16_L15_P

set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {b16_l15_n}]
#IO_L15N_T2_DQS_16 sch:B16_L15_N


set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports {b16_l16_p}]
#IO_L16P_T2_16 sch:B16_L16_P

set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {b16_l16_n}]
#IO_L16N_T2_16 sch:B16_L16_N


set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {b16_l17_p}]
#IO_L17P_T2_16 sch:B16_L17_P

set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVCMOS33} [get_ports {b16_l17_n}]
#IO_L17N_T2_16 sch:B16_L17_N


set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports {b16_l18_p}]
#IO_L18P_T2_16 sch:B16_L18_P

set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports {b16_l18_n}]
#IO_L18N_T2_16 sch:B16_L18_N


set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {b16_l19_p}]
#IO_L19P_T3_16 sch:B16_L19_P

set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports {b16_l19_n}]
#IO_L19N_T3_VREF_16 sch:B16_L19_N


set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports {b16_l20_p}]
#IO_L20P_T3_16 sch:B16_L20_P

set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports {b16_l20_n}]
#IO_L20N_T3_16 sch:B16_L20_N


set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports {b16_l21_p}]
#IO_L21P_T3_DQS_16 sch:B16_L21_P

set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS33} [get_ports {b16_l21_n}]
#IO_L21N_T3_DQS_16 sch:B16_L21_N


set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports {b16_l22_p}]
#IO_L22P_T3_16 sch:B16_L22_P

set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports {b16_l22_n}]
#IO_L22N_T3_16 sch:B16_L22_N


set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports {b16_l23_p}]
#IO_L23P_T3_16 sch:B16_L23_P

set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports {b16_l23_n}]
#IO_L23N_T3_16 sch:B16_L23_N


set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports {b16_l24_p}]
#IO_L24P_T3_16 sch:B16_L24_P

set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports {b16_l24_n}]
#IO_L24N_T3_16 sch:B16_L24_N



## Bank 34 / 1.5 V

set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS15} [get_ports {b34_io0}]
#IO_0_34 sch:B34_IO0

set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS15} [get_ports {b34_io25}]
#IO_25_34 sch:B34_IO25


set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS15} [get_ports {ddr3_d0}]
#IO_L1P_T0_34 sch:DDR3-D0

set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS15} [get_ports {ddr3_d3}]
#IO_L1N_T0_34 sch:DDR3-D3


set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS15} [get_ports {ddr3_d2}]
#IO_L2P_T0_34 sch:DDR3-D2

set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS15} [get_ports {ddr3_d7}]
#IO_L2N_T0_34 sch:DDR3-D7


set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs0_p}]
#IO_L3P_T0_DQS_34 sch:DDR3-DQS0_P

set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs0_n}]
#IO_L3N_T0_DQS_34 sch:DDR3-DQS0_N


set_property -dict {PACKAGE_PIN W2 IOSTANDARD LVCMOS15} [get_ports {ddr3_dm0}]
#IO_L4P_T0_34 sch:DDR3-DM0

set_property -dict {PACKAGE_PIN Y2 IOSTANDARD LVCMOS15} [get_ports {ddr3_d4}]
#IO_L4N_T0_34 sch:DDR3-D4


set_property -dict {PACKAGE_PIN W1 IOSTANDARD LVCMOS15} [get_ports {ddr3_d5}]
#IO_L5P_T0_34 sch:DDR3-D5

set_property -dict {PACKAGE_PIN Y1 IOSTANDARD LVCMOS15} [get_ports {ddr3_d6}]
#IO_L5N_T0_34 sch:DDR3-D6


set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS15} [get_ports {ddr3_d5}]
#IO_L6P_T0_34 sch:DDR3-D1

set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVCMOS15} [get_ports {vttref}]
#IO_L6N_T0_VREF_34 sch:VTTREF


set_property -dict {PACKAGE_PIN AA1 IOSTANDARD LVCMOS15} [get_ports {ddr3_d19}]
#IO_L7P_T1_34 sch:DDR3-D19

set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVCMOS15} [get_ports {ddr3_d16}]
#IO_L7N_T1_34 sch:DDR3-D16


set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVCMOS15} [get_ports {ddr3_d18}]
#IO_L8P_T1_34 sch:DDR3-D18

set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVCMOS15} [get_ports {ddr3_d22}]
#IO_L8N_T1_34 sch:DDR3-D22


set_property -dict {PACKAGE_PIN Y3 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs2_p}]
#IO_L9P_T1_DQS_34 sch:DDR3-DQS2_P

set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs2_n}]
#IO_L9N_T1_DQS_34 sch:DDR3-DQS2_N


set_property -dict {PACKAGE_PIN AA5 IOSTANDARD LVCMOS15} [get_ports {ddr3_d21}]
#IO_L10P_T1_34 sch:DDR3-D21

set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS15} [get_ports {ddr3_d17}]
#IO_L10N_T1_34 sch:DDR3-D17


set_property -dict {PACKAGE_PIN AA5 IOSTANDARD LVCMOS15} [get_ports {ddr3_d20}]
#IO_L11P_T1_SRCC_34 sch:DDR3-D20

set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS15} [get_ports {b34_l11_n}]
#IO_L11N_T1_SRCC_34 sch:-


set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVCMOS15} [get_ports {ddr3_dm2}]
#IO_L12P_T1_MRCC_34 sch:DDR3-DM2

set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS15} [get_ports {ddr3_d23}]
#IO_L12N_T1_MRCC_34 sch:DDR3-D23


set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS15} [get_ports {clk50m2}]
#IO_L13P_T2_MRCC_34 sch:CLK50M2

set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVCMOS15} [get_ports {ddr3_d24}]
#IO_L13N_T2_MRCC_34 sch:DDR3-D24


set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVCMOS15} [get_ports {ddr3_d29}]
#IO_L14P_T2_SRCC_34 sch:DDR3-D29

set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS15} [get_ports {ddr3_d30}]
#IO_L14N_T2_SRCC_34 sch:DDR3-D30


set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs3_p}]
#IO_L15P_T2_DQS_34 sch:DDR3-DQS3_P

set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs3_n}]
#IO_L15N_T2_DQS_34 sch:DDR3-DQS3_N


set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVCMOS15} [get_ports {ddr3_d25}]
#IO_L16P_T2_34 sch:DDR3-D25

set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS15} [get_ports {ddr3_dm3}]
#IO_L16N_T2_34 sch:DDR3-DM3


set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS15} [get_ports {ddr3_d31}]
#IO_L17P_T2_34 sch:DDR3-D31

set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS15} [get_ports {ddr3_d26}]
#IO_L17N_T2_34 sch:DDR3-D26


set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS15} [get_ports {ddr3_d28}]
#IO_L18P_T2_34 sch:DDR3-D28

set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS15} [get_ports {ddr3_d27}]
#IO_L18N_T2_34 sch:DDR3-D27


set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS15} [get_ports {ddr3_d8}]
#IO_L19P_T3_34 sch:DDR3-D8

set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS15} [get_ports {vttref}]
#IO_L19N_T3_VREF_34 sch:VTTREF


set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS15} [get_ports {ddr3_d10}]
#IO_L20P_T3_34 sch:DDR3-D10

set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS15} [get_ports {ddr3_d13}]
#IO_L20N_T3_34 sch:DDR3-D13


set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs1_p}]
#IO_L21P_T3_DQS_34 sch:DDR3-DQS1_P

set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS15} [get_ports {ddr3_dqs1_n}]
#IO_L21N_T3_DQS_34 sch:DDR3-DQS1_N


set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS15} [get_ports {ddr3_d11}]
#IO_L22P_T3_34 sch:DDR3-D11

set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS15} [get_ports {ddr3_d12}]
#IO_L22N_T3_34 sch:DDR3-D12


set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS15} [get_ports {ddr3_d14}]
#IO_L23P_T3_34 sch:DDR3-D14

set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS15} [get_ports {ddr3_dm1}]
#IO_L23N_T3_34 sch:DDR3-DM1


set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVCMOS15} [get_ports {ddr3_d9}]
#IO_L24P_T3_34 sch:DDR3-D9

set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS15} [get_ports {ddr3_d15}]
#IO_L24N_T3_34 sch:DDR3-D15



## Bank 35 / 1.5 V

set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS15} [get_ports {bv0}]
#IO_0_35 sch:BV0

set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVCMOS15} [get_ports {bv1}]
#IO_25_35 sch:BV1


set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS15} [get_ports {b35_l1_p}]
#IO_L1P_T0_AD4P_35 sch:-

set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS15} [get_ports {b35_l1_n}]
#IO_L1N_T0_AD4N_35 sch:-


set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS15} [get_ports {b35_l2_p}]
#IO_L2P_T0_AD12P_35 sch:-

set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS15} [get_ports {pll_int}]
#IO_L2N_T0_AD12N_35 sch:PLL_INT


set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS15} [get_ports {ddr3_loop1_p}]
#IO_L3P_T0_DQS_AD5P_35 sch:DDR3_LOOP_P

set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS15} [get_ports {ddr3_loop1_n}]
#IO_L3N_T0_DQS_AD5N_35 sch:DDR3_LOOP_N


set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS15} [get_ports {ddr3_loop2_p}]
#IO_L4P_T0_35 sch:DDR3_LOOP_P

set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS15} [get_ports {ddr3_loop2_n}]
#IO_L4N_T0_35 sch:DDR3_LOOP_N


set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS15} [get_ports {ddr3_a4}]
#IO_L5P_T0_AD13P_35 sch:DDR3-A4

set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS15} [get_ports {b35_l5_n}]
#IO_L5N_T0_AD13N_35 sch:-


set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS15} [get_ports {b35_l6_p}]
#IO_L6P_T0_35 sch:-

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS15} [get_ports {b35_l6_n}]
#IO_L6N_T0_VREF_35 sch:-


set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS15} [get_ports {ddr3_s0}]
#IO_L7P_T1_AD6P_35 sch:DDR3-S0

set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS15} [get_ports {ddr3_a0}]
#IO_L7N_T1_AD6N_35 sch:DDR3-A0


set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS15} [get_ports {ddr3_ba2}]
#IO_L8P_T1_AD14P_35 sch:DDR3-BA2

set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS15} [get_ports {b35_l8_n}]
#IO_L8N_T1_AD14N_35 sch:-


set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS15} [get_ports {ddr3_a12}]
#IO_L9P_T1_DQS_AD7P_35 sch:DDR3-A12

set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS15} [get_ports {ddr3_we}]
#IO_L9N_T1_DQS_AD7N_35 sch:DDR3-WE


set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS15} [get_ports {ddr3_a7}]
#IO_L10P_T1_AD15P_35 sch:DDR3-A7

set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS15} [get_ports {ddr3_ba1}]
#IO_L10N_T1_AD15N_35 sch:DDR3-BA1


set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS15} [get_ports {ddr3_reset}]
#IO_L11P_T1_SRCC_35 sch:DDR3-RESET

set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS15} [get_ports {b35_l11_n}]
#IO_L11N_T1_SRCC_35 sch:-


set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS15} [get_ports {pll_clk_p}]
#IO_L12P_T1_MRCC_35 sch:PLL_CLK_P --> 50.0 MHz

set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS15} [get_ports {pll_clk_n}]
#IO_L12N_T1_MRCC_35 sch:PLL_CLK_N --> 50.0 MHz


set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS15} [get_ports {clk0_p}]
#IO_L13P_T2_MRCC_35 sch:CLK0_P

set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS15} [get_ports {clk0_n}]
#IO_L13N_T2_MRCC_35 sch:CLK0_N


set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS15} [get_ports {ddr3_cke0}]
#IO_L14P_T2_SRCC_35 sch:DDR3-CKE0

set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS15} [get_ports {ddr3_odt0}]
#IO_L14N_T2_SRCC_35 sch:DDR3-ODT0


set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS15} [get_ports {ddr3_a13}]
#IO_L15P_T2_DQS_35 sch:DDR3-A13

set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS15} [get_ports {ddr3_a8}]
#IO_L15N_T2_DQS_35 sch:DDR3-A8


set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS15} [get_ports {ddr3_a5}]
#IO_L16P_T2_35 sch:DDR3-A5

set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS15} [get_ports {ddr3_cas}]
#IO_L16N_T2_35 sch:DDR3-CAS


set_property -dict {PACKAGE_PIN K6 IOSTANDARD LVCMOS15} [get_ports {b35_l17_p}]
#IO_L17P_T2_35 sch:-

set_property -dict {PACKAGE_PIN J6 IOSTANDARD LVCMOS15} [get_ports {b35_l17_n}]
#IO_L17N_T2_35 sch:-


set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS15} [get_ports {b35_l18_p}]
#IO_L18P_T2_35 sch:-

set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS15} [get_ports {ddr3_a10}]
#IO_L18N_T2_35 sch:DDR3-A10


set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS15} [get_ports {b35_l19_p}]
#IO_L19P_T3_35 sch:-

set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS15} [get_ports {ddr3_a3}]
#IO_L19N_T3_VREF_35 sch:DDR3-A3


set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS15} [get_ports {ddr3_clk0_p}]
#IO_L20P_T3_35 sch:DDR3-CLK0_P --> xxx.x MHz - To be defined by the MIG tool and speed grade of FPGA

set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS15} [get_ports {ddr3_clk0_n}]
#IO_L20N_T3_35 sch:DDR3-CLK0_N --> xxx.x MHz - To be defined by the MIG tool and speed grade of FPGA


set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS15} [get_ports {ddr3_a11}]
#IO_L21P_T3_DQS_35 sch:DDR3-A11

set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS15} [get_ports {ddr3_ba0}]
#IO_L21N_T3_DQS_35 sch:DDR3-BA0


set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS15} [get_ports {ddr3_a9}]
#IO_L22P_T3_35 sch:DDR3-A9

set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS15} [get_ports {ddr3_a6}]
#IO_L22N_T3_35 sch:DDR3-A6


set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS15} [get_ports {ddr3_ras}]
#IO_L23P_T3_35 sch:DDR3-RAS

set_property -dict {PACKAGE_PIN M5 IOSTANDARD LVCMOS15} [get_ports {ddr3_a14}]
#IO_L23N_T3_35 sch:DDR3-A14


set_property -dict {PACKAGE_PIN P6 IOSTANDARD LVCMOS15} [get_ports {ddr3_a1}]
#IO_L24P_T3_35 sch:DDR3-A1

set_property -dict {PACKAGE_PIN N5 IOSTANDARD LVCMOS15} [get_ports {ddr3_a2}]
#IO_L24N_T3_35 sch:DDR3-A2



## Bank MGT / 1.0 V & 1.2 V

set_property -dict {PACKAGE_PIN F6 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_clk0_p}]
#MGTREFCLK0P_216 sch:MGT_CLK0_P --> 120.0 MHz

set_property -dict {PACKAGE_PIN E6 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_clk0_n}]
#MGTREFCLK0N_216 sch:MGT_CLK0_N --> 120.0 MHz


set_property -dict {PACKAGE_PIN F10 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_clk1_p}]
#MGTREFCLK1P_216 sch:MGT_CLK1_P

set_property -dict {PACKAGE_PIN E10 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_clk1_n}]
#MGTREFCLK1N_216 sch:MGT_CLK1_N


set_property -dict {PACKAGE_PIN B8 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx0_p}]
#MGTPRXP0_216 sch:MGT_RX0_P

set_property -dict {PACKAGE_PIN A8 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx0_n}]
#MGTPRXN0_216 sch:MGT_RX0_N


set_property -dict {PACKAGE_PIN D11 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx1_p}]
#MGTPRXP1_216 sch:MGT_RX1_P

set_property -dict {PACKAGE_PIN C11 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx1_n}]
#MGTPRXN1_216 sch:MGT_RX1_N


set_property -dict {PACKAGE_PIN B10 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx2_p}]
#MGTPRXP2_216 sch:MGT_RX2_P

set_property -dict {PACKAGE_PIN A10 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx2_n}]
#MGTPRXN2_216 sch:MGT_RX2_N


set_property -dict {PACKAGE_PIN D9 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx3_p}]
#MGTPRXP3_216 sch:MGT_RX3_P

set_property -dict {PACKAGE_PIN C9 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_rx3_n}]
#MGTPRXN3_216 sch:MGT_RX3_N


set_property -dict {PACKAGE_PIN B4 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx0_p}]
#MGTPTXP0_216 sch:MGT_TX0_P

set_property -dict {PACKAGE_PIN A4 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx0_n}]
#MGTPTXN0_216 sch:MGT_TX0_N


set_property -dict {PACKAGE_PIN D5 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx1_p}]
#MGTPTXP1_216 sch:MGT_TX1_P

set_property -dict {PACKAGE_PIN C5 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx1_n}]
#MGTPTXN1_216 sch:MGT_TX1_N


set_property -dict {PACKAGE_PIN B6 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx2_p}]
#MGTPTXP2_216 sch:MGT_TX2_P

set_property -dict {PACKAGE_PIN A6 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx2_n}]
#MGTPTXN2_216 sch:MGT_TX2_N


set_property -dict {PACKAGE_PIN D7 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx3_p}]
#MGTPTXP3_216 sch:MGT_TX3_P

set_property -dict {PACKAGE_PIN C7 IOSTANDARD DIFF_HSUL_12} [get_ports {mgt_tx3_n}]
#MGTPTXN3_216 sch:MGT_TX3_N


# <EOF>