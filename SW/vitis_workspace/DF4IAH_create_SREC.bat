
F:/Xilinx/Vitis/2020.1/gnu/microblaze/nt/bin/mb-objcopy.EXE -O srec rtos_ufbmod/Debug/rtos_ufbmod.elf rtos_ufbmod/Debug/rtos_ufbmod.srec1
echo -e "\r" > rtos_ufbmod/Debug/rtos_ufbmod.srec
tail -n +2  rtos_ufbmod/Debug/rtos_ufbmod.srec1 >> rtos_ufbmod/Debug/rtos_ufbmod.srec
rm rtos_ufbmod/Debug/rtos_ufbmod.srec1
