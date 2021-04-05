# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\espero\git\UFBmod\SW\vitis_workspace\rtos_ufbmod_system\_ide\scripts\debugger_rtos-ufbmod_default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\espero\git\UFBmod\SW\vitis_workspace\rtos_ufbmod_system\_ide\scripts\debugger_rtos-ufbmod_default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/espero/git/UFBmod/SW/vitis_workspace/TE0712_02_DF4IAH_V2/export/TE0712_02_DF4IAH_V2/hw/top.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#1" && bscan=="USER2" }
rst -processor
targets -set -nocase -filter {name =~ "*microblaze*#1" && bscan=="USER2" }
dow C:/Users/espero/git/UFBmod/SW/vitis_workspace/rtos_ufbmod/Debug/rtos_ufbmod.elf
bpadd -addr &main
