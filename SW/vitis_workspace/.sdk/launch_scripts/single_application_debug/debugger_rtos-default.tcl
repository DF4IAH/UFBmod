connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/espero/git/UFBmod/SW/vitis_workspace/TE0712_02_DF4IAH/export/TE0712_02_DF4IAH/hw/msys_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#1" && bscan=="USER2" }
rst -processor
targets -set -nocase -filter {name =~ "*microblaze*#1" && bscan=="USER2" }
dow C:/Users/espero/git/UFBmod/SW/vitis_workspace/rtos/Debug/rtos.elf
bpadd -addr &main
