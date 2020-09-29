connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299A5643E" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299A5643E-13631093-0"}
fpga -file C:/Users/espero/git/UFBmod/SW/vitis_workspace/rtos/_ide/bitstream/msys_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/espero/git/UFBmod/SW/vitis_workspace/TE0712_02_DF4IAH/export/TE0712_02_DF4IAH/hw/msys_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#1" && bscan=="USER2" }
dow C:/Users/espero/git/UFBmod/SW/vitis_workspace/rtos/Debug/rtos.elf
bpadd -addr &main
