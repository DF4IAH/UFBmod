onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib UFBmod_TRX_opt

do {wave.do}

view wave
view structure
view signals

do {UFBmod_TRX.udo}

run -all

quit -force
