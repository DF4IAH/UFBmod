##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Mon Sep  2 00:33:13 2019

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A100T-FGG484
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         333.32999999999998 MHz
##                    Time Period:       3000 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41J256m16XX-125
## Data Width: 32
## Time Period: 3000
## Data Mask: 1
##################################################################################################
############## NET - IOSTANDARD ##################


# PadFunction: IO_L8N_T1_D12_14 
set_property IOSTANDARD LVCMOS25 [get_ports {init_calib_complete}]
set_property PACKAGE_PIN AA21 [get_ports {init_calib_complete}]

# PadFunction: IO_L9P_T1_DQS_14 
set_property IOSTANDARD LVCMOS25 [get_ports {tg_compare_error}]
set_property PACKAGE_PIN Y21 [get_ports {tg_compare_error}]

