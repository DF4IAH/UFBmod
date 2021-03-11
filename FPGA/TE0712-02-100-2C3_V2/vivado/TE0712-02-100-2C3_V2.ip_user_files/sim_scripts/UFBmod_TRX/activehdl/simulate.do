onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+UFBmod_TRX -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L c_gate_bit_v12_0_6 -L xbip_counter_v3_0_6 -L c_counter_binary_v12_0_14 -L xlconcat_v2_1_3 -L xlslice_v1_0_2 -L fifo_generator_v13_2_5 -L xlconstant_v1_1_7 -L util_vector_logic_v2_0_1 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L axi_utils_v2_0_6 -L cordic_v6_0_16 -L cmpy_v6_0_18 -L floating_point_v7_0_17 -L xfft_v9_1_4 -L blk_mem_gen_v8_4_4 -L util_reduced_logic_v2_0_4 -L xbip_dsp48_multadd_v3_0_6 -L xbip_multadd_v3_0_15 -L dds_compiler_v6_0_20 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.UFBmod_TRX xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {UFBmod_TRX.udo}

run -all

endsim

quit -force
