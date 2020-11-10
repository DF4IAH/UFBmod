onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib UFBmod_Encoder_opt

do {wave.do}

view wave
view structure
view signals

do {UFBmod_Encoder.udo}

run -all

quit -force
