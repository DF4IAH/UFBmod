######################
##                  ##
##  DF4IAH: UFBmod  ##
##                  ##
######################


#set_property IO_BUFFER_TYPE NONE [get_ports xa_*]

#set_property DRIVE 4 [get_ports {led[1]}]
#set_property DRIVE 4 [get_ports {led[0]}]
#set_property DRIVE 4 [get_ports ledrgb_b]
#set_property DRIVE 4 [get_ports ledrgb_g]
#set_property DRIVE 4 [get_ports ledrgb_r]
#set_property DRIVE 4 [get_ports pio9_led_r]
#set_property DRIVE 4 [get_ports pio10_led_g]
#set_property DRIVE 4 [get_ports pio11_led_b]

#set_property DRIVE 4 [get_ports pio3_fpga_12p16]
#set_property DRIVE 4 [get_ports pio4_fpga_7n35]
#set_property DRIVE 4 [get_ports pio5_fpga_11_16_p]
#set_property DRIVE 4 [get_ports pio6_fpga_3p35]
#set_property DRIVE 4 [get_ports pio7_rot_i]
#set_property DRIVE 4 [get_ports pio8_fpga_11_16_n]
#set_property DRIVE 4 [get_ports pio12_fpga_5_35_p]
#set_property DRIVE 4 [get_ports pio13_rot_q]
#set_property DRIVE 4 [get_ports pio14_fpga_5_35_n]
#set_property DRIVE 4 [get_ports pio17_fpga_9n35]
#set_property DRIVE 4 [get_ports pio20_fpga_trx_rstn]
#set_property DRIVE 4 [get_ports pio21_fpga_trx_clko]
#set_property DRIVE 4 [get_ports pio22_fpga_10p35]
#set_property DRIVE 4 [get_ports pio23_fe09_mode]
#set_property DRIVE 4 [get_ports pio26_fpga_i2c_scl]
#set_property DRIVE 4 [get_ports pio27_fpga_i2c_sda]
#set_property DRIVE 4 [get_ports pio28_fpga_1_34_p]
#set_property DRIVE 4 [get_ports pio29_fpga_3_34_n]
#set_property DRIVE 4 [get_ports pio30_fpga_1_34_n]
#set_property DRIVE 4 [get_ports pio31_fpga_3_34_p]
#set_property DRIVE 4 [get_ports pio32_fpga_5_34_n]
#set_property DRIVE 4 [get_ports pio33_fpga_5_34_p]
#set_property DRIVE 4 [get_ports pio36_fpga_12p34]
#set_property DRIVE 4 [get_ports pio39_fpga_16_34_n]
#set_property DRIVE 4 [get_ports pio40_fpga_trx_irq]
#set_property DRIVE 4 [get_ports pio41_fpga_16_34_p]
#set_property DRIVE 4 [get_ports pio42_fpga_miso]
#set_property DRIVE 4 [get_ports pio43_fpga_mosi]
#set_property DRIVE 4 [get_ports pio44_fpga_seln]
#set_property DRIVE 4 [get_ports pio45_fpga_sclk]
#set_property DRIVE 4 [get_ports pio46_fpga_13p_34]

# CmodA7 internals
#set_property DRIVE 12 [get_ports crypto_sda]
#set_property DRIVE 12 [get_ports qspi_cs]
#set_property DRIVE 12 [get_ports {qspi_dq[3]}]
#set_property DRIVE 12 [get_ports {qspi_dq[2]}]
#set_property DRIVE 12 [get_ports {qspi_dq[1]}]
#set_property DRIVE 12 [get_ports {qspi_dq[0]}]
#set_property DRIVE 12 [get_ports RamCEn]
#set_property DRIVE 12 [get_ports RamOEn]
#set_property DRIVE 12 [get_ports RamWEn]
#set_property DRIVE 12 [get_ports usb_uart_txd]
#set_property DRIVE 12 [get_ports {MemAdr[18]}]
#set_property DRIVE 12 [get_ports {MemAdr[17]}]
#set_property DRIVE 12 [get_ports {MemAdr[16]}]
#set_property DRIVE 12 [get_ports {MemAdr[15]}]
#set_property DRIVE 12 [get_ports {MemAdr[14]}]
#set_property DRIVE 12 [get_ports {MemAdr[13]}]
#set_property DRIVE 12 [get_ports {MemAdr[12]}]
#set_property DRIVE 12 [get_ports {MemAdr[11]}]
#set_property DRIVE 12 [get_ports {MemAdr[10]}]
#set_property DRIVE 12 [get_ports {MemAdr[9]}]
#set_property DRIVE 12 [get_ports {MemAdr[8]}]
#set_property DRIVE 12 [get_ports {MemAdr[7]}]
#set_property DRIVE 12 [get_ports {MemAdr[6]}]
#set_property DRIVE 12 [get_ports {MemAdr[5]}]
#set_property DRIVE 12 [get_ports {MemAdr[4]}]
#set_property DRIVE 12 [get_ports {MemAdr[3]}]
#set_property DRIVE 12 [get_ports {MemAdr[2]}]
#set_property DRIVE 12 [get_ports {MemAdr[1]}]
#set_property DRIVE 12 [get_ports {MemAdr[0]}]
#set_property DRIVE 12 [get_ports {MemDB[7]}]
#set_property DRIVE 12 [get_ports {MemDB[6]}]
#set_property DRIVE 12 [get_ports {MemDB[5]}]
#set_property DRIVE 12 [get_ports {MemDB[4]}]
#set_property DRIVE 12 [get_ports {MemDB[3]}]
#set_property DRIVE 12 [get_ports {MemDB[2]}]
#set_property DRIVE 12 [get_ports {MemDB[1]}]
#set_property DRIVE 12 [get_ports {MemDB[0]}]



# <EOF>




