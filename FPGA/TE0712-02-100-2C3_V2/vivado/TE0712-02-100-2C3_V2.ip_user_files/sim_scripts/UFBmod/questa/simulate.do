onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib UFBmod_opt

do {wave.do}

view wave
view structure
view signals

do {UFBmod.udo}

run -all

quit -force
