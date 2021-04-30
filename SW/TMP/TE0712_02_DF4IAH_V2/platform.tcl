# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\espero\git\UFBmod\SW\vitis_workspace\TE0712_02_DF4IAH_V2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\espero\git\UFBmod\SW\vitis_workspace\TE0712_02_DF4IAH_V2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform active {TE0712_02_DF4IAH_V2}
platform clean
platform clean
platform clean
platform generate
platform active {TE0712_02_DF4IAH_V2}
bsp reload
bsp write
bsp setosversion -ver 1.7
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
bsp config stdin "UART0_axi_UART0_uartlite_0"
bsp config stdout "UART0_axi_UART0_uartlite_0"
bsp config clocking "false"
bsp config max_task_name_len "32"
bsp write
bsp reload
catch {bsp regenerate}
bsp config api_mode "SOCKET_API"
bsp config lwip_tcp_keepalive "true"
bsp config use_emaclite_on_zynq "0"
bsp config use_axieth_on_zynq "0"
bsp config use_emaclite_on_zynq "0"
bsp config arp_table_size "32"
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {TE0712_02_DF4IAH_V2}
platform config -updatehw {C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/top.xsa}
platform -make-local
platform clean
platform clean
platform clean
platform generate
platform active {TE0712_02_DF4IAH_V2}
platform config -updatehw {C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/top.xsa}
platform -make-local
platform generate -domains 
platform config -updatehw {C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/top.xsa}
platform config -updatehw {C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/top.xsa}
platform -make-local
platform generate -domains 
platform clean
platform generate
platform active {TE0712_02_DF4IAH_V2}
platform config -updatehw {C:/Users/espero/git/UFBmod/FPGA/TE0712-02-100-2C3_V2/vivado/top.xsa}
platform -make-local
platform generate -domains 
platform clean
platform generate
