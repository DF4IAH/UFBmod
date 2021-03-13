
C:/Xilinx/Vitis/2020.2/gnu/microblaze/nt/bin/mb-objcopy.EXE -O srec vitis_workspace/rtos_ufbmod/Debug/rtos_ufbmod.elf ELF_SREC/rtos_ufbmod.srec1
echo -e "\r" > ELF_SREC/rtos_ufbmod.srec
tail -n +2  ELF_SREC/rtos_ufbmod.srec1 >> ELF_SREC/rtos_ufbmod.srec
rm ELF_SREC/rtos_ufbmod.srec1
