onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L c_gate_bit_v12_0_6 -L xbip_counter_v3_0_6 -L c_counter_binary_v12_0_14 -L xil_defaultlib -L fifo_generator_v13_2_5 -L blk_mem_gen_v8_4_4 -L xlconstant_v1_1_7 -L xbip_dsp48_acc_v3_0_6 -L xbip_accum_v3_0_6 -L c_accum_v12_0_14 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L axi_utils_v2_0_6 -L floating_point_v7_0_17 -L xbip_dsp48_mult_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L div_gen_v5_1_16 -L xlslice_v1_0_2 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.UFBmod_Decoder xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {UFBmod_Decoder.udo}

run -all

quit -force
