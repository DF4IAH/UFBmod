onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+UFBmod_Encoder -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.UFBmod_Encoder xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {UFBmod_Encoder.udo}

run -all

endsim

quit -force
