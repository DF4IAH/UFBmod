connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/espero/git/UFBmod/SW/vitis_workspace/TE0712_02_DF4IAH_V2/export/TE0712_02_DF4IAH_V2/hw/top.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -processor
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/espero/git/UFBmod/SW/vitis_workspace/cfg_si5338/Debug/cfg_si5338.elf
bpadd -addr &main
