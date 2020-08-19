connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299A5643E" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299A5643E-13631093-0"}
fpga -file C:/Users/espero/git/UFBmod/SW/vitis_workspace/boot_pll/_ide/bitstream/msys_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/espero/git/UFBmod/SW/vitis_workspace/mb0_boot/export/mb0_boot/hw/msys_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/espero/git/UFBmod/SW/vitis_workspace/boot_pll/Debug/boot_pll.elf
bpadd -addr &main
