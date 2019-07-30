onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mcu_opt

do {wave.do}

view wave
view structure
view signals

do {mcu.udo}

run -all

quit -force
