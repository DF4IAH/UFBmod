onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib UFBmod_Decoder_opt

do {wave.do}

view wave
view structure
view signals

do {UFBmod_Decoder.udo}

run -all

quit -force
