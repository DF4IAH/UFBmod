## This file is a general .xdc for the CmodA7 rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## DF4IAH: UFBmod expanded


## 12 MHz Clock Signal
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports sysclk]
#IO_L12P_T1_MRCC_14 Sch=gclk

create_clock -period 83.330 -name sys_clk_pin -waveform {0.000 41.660} -add [get_ports sysclk]


## LEDs
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
#IO_L12N_T1_MRCC_16 Sch=led[1]

set_property -dict {PACKAGE_PIN C16 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
#IO_L13P_T2_MRCC_16 Sch=led[2]

## RGB LED
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports ledrgb_b]
#IO_L14N_T2_SRCC_16 Sch=led0_b

set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports ledrgb_g]
#IO_L13N_T2_MRCC_16 Sch=led0_g

set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports ledrgb_r]
#IO_L14P_T2_SRCC_16 Sch=led0_r


## Buttons
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {btn[0]}]
#IO_L19N_T3_VREF_16 Sch=btn[0]

set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {btn[1]}]
#IO_L19P_T3_16 Sch=btn[1]


## Pmod Header JA
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {ja[0]}]
#IO_L5N_T0_D07_14 Sch=ja[1]

set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {ja[1]}]
#IO_L4N_T0_D05_14 Sch=ja[2]

set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {ja[2]}]
#IO_L9P_T1_DQS_14 Sch=ja[3]

set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {ja[3]}]
#IO_L8P_T1_D11_14 Sch=ja[4]

set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {ja[4]}]
#IO_L5P_T0_D06_14 Sch=ja[7]

set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {ja[5]}]
#IO_L4P_T0_D04_14 Sch=ja[8]

set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {ja[6]}]
#IO_L6N_T0_D08_VREF_14 Sch=ja[9]

set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {ja[7]}]
#IO_L8N_T1_D12_14 Sch=ja[10]


## Analog XADC Pins
## Only declare these if you want to use pins 15 and 16 as single ended analog inputs. pin 15 -> vaux4, pin16 -> vaux12
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {xa_n[0]}]
#IO_L1N_T0_AD4N_35 Sch=ain_n[15]

set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports {xa_p[0]}]
#IO_L1P_T0_AD4P_35 Sch=ain_p[15]

set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports {xa_n[1]}]
#IO_L2N_T0_AD12N_35 Sch=ain_n[16]

set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {xa_p[1]}]
#IO_L2P_T0_AD12P_35 Sch=ain_p[16]


## GPIO Pins
## Pins 15 and 16 should remain commented if using them as analog inputs
set_property -dict {PACKAGE_PIN M3 IOSTANDARD MINI_LVDS_25} [get_ports pio1_trx_rxd24_n]
#IO_L8N_T1_AD14N_35 Sch=pio[01]

set_property -dict {PACKAGE_PIN L3 IOSTANDARD MINI_LVDS_25} [get_ports pio2_trx_rxd24_p]
#IO_L8P_T1_AD14P_35 Sch=pio[02]

set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports pio3_fpga_12p16]
#IO_L12P_T1_MRCC_16 Sch=pio[03]

set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports pio4_fpga_7n35]
#IO_L7N_T1_AD6N_35 Sch=pio[04]

set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports pio5_fpga_11_16_p]
#IO_L11P_T1_SRCC_16 Sch=pio[05]

set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports pio6_fpga_3p35]
#IO_L3P_T0_DQS_AD5P_35 Sch=pio[06]

set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports pio7_rot_i]
#IO_L6N_T0_VREF_16 Sch=pio[07]

set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports pio8_fpga_11_16_n]
#IO_L11N_T1_SRCC_16 Sch=pio[08]

set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports pio9_led_r]
#IO_L6P_T0_16 Sch=pio[09]

set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports pio10_led_g]
#IO_L7P_T1_AD6P_35 Sch=pio[10]

set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports pio11_led_b]
#IO_L3N_T0_DQS_AD5N_35 Sch=pio[11]

set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports pio12_fpga_5_35_p]
#IO_L5P_T0_AD13P_35 Sch=pio[12]

set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports pio13_rot_q]
#IO_L6N_T0_VREF_35 Sch=pio[13]

set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports pio14_fpga_5_35_n]
#IO_L5N_T0_AD13N_35 Sch=pio[14]


set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports pio17_fpga_9n35]
#IO_L9N_T1_DQS_AD7N_35 Sch=pio[17]

set_property -dict {PACKAGE_PIN N3 IOSTANDARD MINI_LVDS_25} [get_ports pio18_trx_txclk_p]
#IO_L12P_T1_MRCC_35 Sch=pio[18]

set_property -dict {PACKAGE_PIN P3 IOSTANDARD MINI_LVDS_25} [get_ports pio19_trx_txclk_n]
#IO_L12N_T1_MRCC_35 Sch=pio[19]

set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports pio20_fpga_trx_rstn]
#IO_L9P_T1_DQS_AD7P_35 Sch=pio[20]

set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports pio21_fpga_trx_clko]
#IO_L10N_T1_AD15N_35 Sch=pio[21]

set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports pio22_fpga_10p35]
#IO_L10P_T1_AD15P_35 Sch=pio[22]

set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports pio23_fe09_mode]
#IO_L19N_T3_VREF_35 Sch=pio[23]


set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports pio26_fpga_i2c_scl]
#IO_L2P_T0_34 Sch=pio[26]

set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports pio27_fpga_i2c_sda]
#IO_L2N_T0_34 Sch=pio[27]

set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports pio28_fpga_1_34_p]
#IO_L1P_T0_34 Sch=pio[28]

set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports pio29_fpga_3_34_n]
#IO_L3P_T0_DQS_34 Sch=pio[29]

set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports pio30_fpga_1_34_n]
#IO_L1N_T0_34 Sch=pio[30]

set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports pio31_fpga_3_34_p]
#IO_L3N_T0_DQS_34 Sch=pio[31]

set_property -dict {PACKAGE_PIN W2 IOSTANDARD LVCMOS33} [get_ports pio32_fpga_5_34_n]
#IO_L5N_T0_34 Sch=pio[32]

set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports pio33_fpga_5_34_p]
#IO_L5P_T0_34 Sch=pio[33]

set_property -dict {PACKAGE_PIN W3 IOSTANDARD MINI_LVDS_25} [get_ports pio34_trx_txd_n]
#IO_L6N_T0_VREF_34 Sch=pio[34]

set_property -dict {PACKAGE_PIN V3 IOSTANDARD MINI_LVDS_25} [get_ports pio35_trx_txd_p]
#IO_L6P_T0_34 Sch=pio[35]

set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports pio36_fpga_12p34]
#IO_L12P_T1_MRCC_34 Sch=pio[36]

set_property -dict {PACKAGE_PIN V4 IOSTANDARD MINI_LVDS_25} [get_ports pio37_trx_rxd09_n]
#IO_L11N_T1_SRCC_34 Sch=pio[37]

set_property -dict {PACKAGE_PIN U4 IOSTANDARD MINI_LVDS_25} [get_ports pio38_trx_rxd09_p]
#IO_L11P_T1_SRCC_34 Sch=pio[38]

set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports pio39_fpga_16_34_n]
#IO_L16N_T2_34 Sch=pio[39]

set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports pio40_fpga_trx_irq]
#IO_L12N_T1_MRCC_34 Sch=pio[40]

set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports pio41_fpga_16_34_p]
#IO_L16P_T2_34 Sch=pio[41]

set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports pio42_fpga_miso]
#IO_L9N_T1_DQS_34 Sch=pio[42]

set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports pio43_fpga_mosi]
#IO_L13N_T2_MRCC_34 Sch=pio[43]

set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS33} [get_ports pio44_fpga_seln]
#IO_L9P_T1_DQS_34 Sch=pio[44]

set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports pio45_fpga_sclk]
#IO_L19P_T3_34 Sch=pio[45]

set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports pio46_fpga_13p_34]
#IO_L13P_T2_MRCC_34 Sch=pio[46]

set_property -dict {PACKAGE_PIN U8 IOSTANDARD MINI_LVDS_25} [get_ports pio47_trx_rxclk_p]
#IO_L14P_T2_SRCC_34 Sch=pio[47]

set_property -dict {PACKAGE_PIN V8 IOSTANDARD MINI_LVDS_25} [get_ports pio48_trx_rxclk_n]
#IO_L14N_T2_SRCC_34 Sch=pio[48]


## UART
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports usb_uart_txd]
#IO_L7N_T1_D10_14 Sch=uart_rxd_out

set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports usb_uart_rxd]
#IO_L7P_T1_D09_14 Sch=uart_txd_in


## Crypto 1 Wire Interface
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports crypto_sda]
#IO_0_14 Sch=crypto_sda


## QSPI
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports qspi_cs]
#IO_L6P_T0_FCS_B_14 Sch=qspi_cs

set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {qspi_dq[0]}]
#IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]

set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {qspi_dq[1]}]
#IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]

set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {qspi_dq[2]}]
#IO_L2P_T0_D02_14 Sch=qspi_dq[2]

set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {qspi_dq[3]}]
#IO_L2N_T0_D03_14 Sch=qspi_dq[3]


## Cellular RAM
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {MemAdr[0]}]
#IO_L11P_T1_SRCC_14 Sch=sram- a[0]

set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {MemAdr[1]}]
#IO_L11N_T1_SRCC_14 Sch=sram- a[1]

set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports {MemAdr[2]}]
#IO_L12N_T1_MRCC_14 Sch=sram- a[2]

set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {MemAdr[3]}]
#IO_L13P_T2_MRCC_14 Sch=sram- a[3]

set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {MemAdr[4]}]
#IO_L13N_T2_MRCC_14 Sch=sram- a[4]

set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {MemAdr[5]}]
#IO_L14P_T2_SRCC_14 Sch=sram- a[5]

set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {MemAdr[6]}]
#IO_L14N_T2_SRCC_14 Sch=sram- a[6]

set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {MemAdr[7]}]
#IO_L16N_T2_A15_D31_14 Sch=sram- a[7]

set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {MemAdr[8]}]
#IO_L15P_T2_DQS_RDWR_B_14 Sch=sram- a[8]

set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {MemAdr[9]}]
#IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=sram- a[9]

set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {MemAdr[10]}]
#IO_L16P_T2_CSI_B_14 Sch=sram- a[10]

set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {MemAdr[11]}]
#IO_L17P_T2_A14_D30_14 Sch=sram- a[11]

set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {MemAdr[12]}]
#IO_L17N_T2_A13_D29_14 Sch=sram- a[12]

set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {MemAdr[13]}]
#IO_L18P_T2_A12_D28_14 Sch=sram- a[13]

set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {MemAdr[14]}]
#IO_L18N_T2_A11_D27_14 Sch=sram- a[14]

set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {MemAdr[15]}]
#IO_L19P_T3_A10_D26_14 Sch=sram- a[15]

set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {MemAdr[16]}]
#IO_L20P_T3_A08_D24_14 Sch=sram- a[16]

set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {MemAdr[17]}]
#IO_L20N_T3_A07_D23_14 Sch=sram- a[17]

set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {MemAdr[18]}]
#IO_L21P_T3_DQS_14 Sch=sram- a[18]

set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {MemDB[0]}]
#IO_L21N_T3_DQS_A06_D22_14 Sch=sram-dq[0]

set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {MemDB[1]}]
#IO_L22P_T3_A05_D21_14 Sch=sram-dq[1]

set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {MemDB[2]}]
#IO_L22N_T3_A04_D20_14 Sch=sram-dq[2]

set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {MemDB[3]}]
#IO_L23P_T3_A03_D19_14 Sch=sram-dq[3]

set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {MemDB[4]}]
#IO_L23N_T3_A02_D18_14 Sch=sram-dq[4]

set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {MemDB[5]}]
#IO_L24P_T3_A01_D17_14 Sch=sram-dq[5]

set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {MemDB[6]}]
#IO_L24N_T3_A00_D16_14 Sch=sram-dq[6]

set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {MemDB[7]}]
#IO_25_14 Sch=sram-dq[7]

set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports RamOEn]
#IO_L10P_T1_D14_14 Sch=sram-oe

set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports RamWEn]
#IO_L10N_T1_D15_14 Sch=sram-we

set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports RamCEn]
#IO_L9N_T1_DQS_D13_14 Sch=sram-ce



set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

#set_property IO_BUFFER_TYPE NONE [get_ports xa_*]

set_property DRIVE 4 [get_ports {led[1]}]
set_property DRIVE 4 [get_ports {led[0]}]
set_property DRIVE 4 [get_ports ledrgb_b]
set_property DRIVE 4 [get_ports ledrgb_g]
set_property DRIVE 4 [get_ports ledrgb_r]
set_property DRIVE 4 [get_ports pio9_led_r]
set_property DRIVE 4 [get_ports pio10_led_g]
set_property DRIVE 4 [get_ports pio11_led_b]

set_property DRIVE 4 [get_ports pio3_fpga_12p16]
set_property DRIVE 4 [get_ports pio4_fpga_7n35]
set_property DRIVE 4 [get_ports pio5_fpga_11_16_p]
set_property DRIVE 4 [get_ports pio6_fpga_3p35]
set_property DRIVE 4 [get_ports pio7_rot_i]
set_property DRIVE 4 [get_ports pio8_fpga_11_16_n]
set_property DRIVE 4 [get_ports pio12_fpga_5_35_p]
set_property DRIVE 4 [get_ports pio13_rot_q]
set_property DRIVE 4 [get_ports pio14_fpga_5_35_n]
set_property DRIVE 4 [get_ports pio17_fpga_9n35]
set_property DRIVE 4 [get_ports pio20_fpga_trx_rstn]
set_property DRIVE 4 [get_ports pio21_fpga_trx_clko]
set_property DRIVE 4 [get_ports pio22_fpga_10p35]
set_property DRIVE 4 [get_ports pio23_fe09_mode]
set_property DRIVE 4 [get_ports pio26_fpga_i2c_scl]
set_property DRIVE 4 [get_ports pio27_fpga_i2c_sda]
set_property DRIVE 4 [get_ports pio28_fpga_1_34_p]
set_property DRIVE 4 [get_ports pio29_fpga_3_34_n]
set_property DRIVE 4 [get_ports pio30_fpga_1_34_n]
set_property DRIVE 4 [get_ports pio31_fpga_3_34_p]
set_property DRIVE 4 [get_ports pio32_fpga_5_34_n]
set_property DRIVE 4 [get_ports pio33_fpga_5_34_p]
set_property DRIVE 4 [get_ports pio36_fpga_12p34]
set_property DRIVE 4 [get_ports pio39_fpga_16_34_n]
set_property DRIVE 4 [get_ports pio40_fpga_trx_irq]
set_property DRIVE 4 [get_ports pio41_fpga_16_34_p]
set_property DRIVE 4 [get_ports pio42_fpga_miso]
set_property DRIVE 4 [get_ports pio43_fpga_mosi]
set_property DRIVE 4 [get_ports pio44_fpga_seln]
set_property DRIVE 4 [get_ports pio45_fpga_sclk]
set_property DRIVE 4 [get_ports pio46_fpga_13p_34]

# CmodA7 internals
set_property DRIVE 12 [get_ports crypto_sda]
set_property DRIVE 12 [get_ports qspi_cs]
set_property DRIVE 12 [get_ports {qspi_dq[3]}]
set_property DRIVE 12 [get_ports {qspi_dq[2]}]
set_property DRIVE 12 [get_ports {qspi_dq[1]}]
set_property DRIVE 12 [get_ports {qspi_dq[0]}]
set_property DRIVE 12 [get_ports RamCEn]
set_property DRIVE 12 [get_ports RamOEn]
set_property DRIVE 12 [get_ports RamWEn]
set_property DRIVE 12 [get_ports usb_uart_txd]
set_property DRIVE 12 [get_ports {MemAdr[18]}]
set_property DRIVE 12 [get_ports {MemAdr[17]}]
set_property DRIVE 12 [get_ports {MemAdr[16]}]
set_property DRIVE 12 [get_ports {MemAdr[15]}]
set_property DRIVE 12 [get_ports {MemAdr[14]}]
set_property DRIVE 12 [get_ports {MemAdr[13]}]
set_property DRIVE 12 [get_ports {MemAdr[12]}]
set_property DRIVE 12 [get_ports {MemAdr[11]}]
set_property DRIVE 12 [get_ports {MemAdr[10]}]
set_property DRIVE 12 [get_ports {MemAdr[9]}]
set_property DRIVE 12 [get_ports {MemAdr[8]}]
set_property DRIVE 12 [get_ports {MemAdr[7]}]
set_property DRIVE 12 [get_ports {MemAdr[6]}]
set_property DRIVE 12 [get_ports {MemAdr[5]}]
set_property DRIVE 12 [get_ports {MemAdr[4]}]
set_property DRIVE 12 [get_ports {MemAdr[3]}]
set_property DRIVE 12 [get_ports {MemAdr[2]}]
set_property DRIVE 12 [get_ports {MemAdr[1]}]
set_property DRIVE 12 [get_ports {MemAdr[0]}]
set_property DRIVE 12 [get_ports {MemDB[7]}]
set_property DRIVE 12 [get_ports {MemDB[6]}]
set_property DRIVE 12 [get_ports {MemDB[5]}]
set_property DRIVE 12 [get_ports {MemDB[4]}]
set_property DRIVE 12 [get_ports {MemDB[3]}]
set_property DRIVE 12 [get_ports {MemDB[2]}]
set_property DRIVE 12 [get_ports {MemDB[1]}]
set_property DRIVE 12 [get_ports {MemDB[0]}]


create_clock -period 10.000 -name VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0 -waveform {0.000 5.000}
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {MemDB[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {MemDB[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {btn[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {btn[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {led[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {led[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports {qspi_dq[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {qspi_dq[*]}]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports ledrgb_b]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_b]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports ledrgb_g]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_g]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports ledrgb_r]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_r]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.000 [get_ports usb_uart_rxd]
set_input_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports usb_uart_rxd]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {MemAdr[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {MemAdr[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {MemDB[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {MemDB[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {led[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {led[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports {qspi_dq[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports {qspi_dq[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports RamCEn]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports RamCEn]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports RamOEn]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports RamOEn]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports RamWEn]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports RamWEn]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports ledrgb_b]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_b]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports ledrgb_g]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_g]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports ledrgb_r]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports ledrgb_r]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports qspi_cs]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports qspi_cs]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -min 0.500 [get_ports usb_uart_txd]
set_output_delay -clock [get_clocks VIRTUAL_clk_100mhz_AXI_bd_0_clk_wiz_0] -max 3.300 [get_ports usb_uart_txd]

set_property OFFCHIP_TERM NONE [get_ports RamCEn]
set_property OFFCHIP_TERM NONE [get_ports RamOEn]
set_property OFFCHIP_TERM NONE [get_ports RamWEn]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[18]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[17]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[16]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[15]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[14]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[13]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[12]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[11]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[10]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[9]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[8]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[7]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[6]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[5]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[4]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[3]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[2]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[1]]
set_property OFFCHIP_TERM NONE [get_ports MemAdr[0]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[7]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[6]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[5]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[4]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[3]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[2]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[1]]
set_property OFFCHIP_TERM NONE [get_ports MemDB[0]]
set_property OFFCHIP_TERM NONE [get_ports qspi_dq[3]]
set_property OFFCHIP_TERM NONE [get_ports qspi_dq[2]]
set_property OFFCHIP_TERM NONE [get_ports qspi_dq[1]]
set_property OFFCHIP_TERM NONE [get_ports qspi_dq[0]]
