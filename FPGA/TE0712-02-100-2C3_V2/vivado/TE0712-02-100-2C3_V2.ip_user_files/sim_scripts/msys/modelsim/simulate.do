onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L blk_mem_gen_v8_4_4 -L lib_bmg_v1_0_13 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L axi_ethernetlite_v3_0_20 -L lib_pkg_v1_0_2 -L interrupt_control_v3_1_4 -L axi_iic_v2_0_24 -L dist_mem_gen_v8_0_13 -L lib_srl_fifo_v1_0_2 -L axi_quad_spi_v3_2_20 -L axi_timer_v2_0_23 -L axi_uartlite_v2_0_25 -L mdm_v3_2_18 -L microblaze_v11_0_3 -L axi_intc_v4_1_14 -L lmb_bram_if_cntlr_v4_0_18 -L lmb_v10_v3_0_11 -L xlconcat_v2_1_3 -L proc_sys_reset_v5_0_13 -L iomodule_v3_1_6 -L mii_to_rmii_v2_0_20 -L axi_gpio_v2_0_23 -L xlslice_v1_0_2 -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_14 -L c_gate_bit_v12_0_6 -L xbip_counter_v3_0_6 -L c_counter_binary_v12_0_14 -L xlconstant_v1_1_7 -L axi_utils_v2_0_6 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L cmpy_v6_0_18 -L floating_point_v7_0_17 -L xfft_v9_1_4 -L cordic_v6_0_16 -L util_vector_logic_v2_0_1 -L xbip_dsp48_multadd_v3_0_6 -L dds_compiler_v6_0_20 -L xbip_multadd_v3_0_15 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_21 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L axi_clock_converter_v2_1_20 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.msys xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {msys.udo}

run -all

quit -force
