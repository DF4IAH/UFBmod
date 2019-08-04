##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  Sun Aug  4 22:21:33 2019

##  Generated by MIG Version 4.2
##  
##################################################################################################
##  File name :       example_top.sd
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A35TFGG484_PKG
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         400 MHz
##                    Time Period:       2500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41J256m16XX-125
## Data Width: 32
## Time Period: 2500
## Data Mask: 1
##################################################################################################

set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_n[*]} ]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr3_ck_p[*]} ]
          
create_clock -period 20 [get_ports sys_clk_p]
          
#create_clock -period 5 [get_ports clk_ref_i]
          
############## NET - IOSTANDARD ##################


# PadFunction: IO_L8N_T1_D12_14 
set_property IOSTANDARD LVCMOS25 [get_ports {init_calib_complete}]
set_property PACKAGE_PIN AA21 [get_ports {init_calib_complete}]

# PadFunction: IO_L9P_T1_DQS_14 
set_property IOSTANDARD LVCMOS25 [get_ports {tg_compare_error}]
set_property PACKAGE_PIN Y21 [get_ports {tg_compare_error}]

