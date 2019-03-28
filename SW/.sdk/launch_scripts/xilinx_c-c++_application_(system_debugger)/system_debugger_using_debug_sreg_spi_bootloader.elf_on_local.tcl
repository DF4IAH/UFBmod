connect -url tcp:127.0.0.1:3121
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328A9FE8BA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Cmod A7 - 35T 210328A9FE8BA"} -index 0
dow C:/Users/espero/git/UFBmod/SW/sreg_spi_bootloader/Debug/sreg_spi_bootloader.elf
bpadd -addr &main
