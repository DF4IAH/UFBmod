onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_13 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L blk_mem_gen_v8_4_3 -L lib_bmg_v1_0_12 -L fifo_generator_v13_2_4 -L lib_fifo_v1_0_13 -L axi_ethernetlite_v3_0_17 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_21 -L lib_pkg_v1_0_2 -L axi_iic_v2_0_22 -L lib_srl_fifo_v1_0_2 -L axi_quad_spi_v3_2_18 -L axi_timer_v2_0_21 -L axi_uart16550_v2_0_21 -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_13 -L xbip_dsp48_acc_v3_0_6 -L xbip_accum_v3_0_6 -L c_accum_v12_0_13 -L microblaze_v11_0_1 -L axi_intc_v4_1_13 -L xlconcat_v2_1_3 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_19 -L axi_data_fifo_v2_1_18 -L axi_crossbar_v2_1_20 -L lmb_bram_if_cntlr_v4_0_16 -L lmb_v10_v3_0_9 -L mdm_v3_2_16 -L proc_sys_reset_v5_0_13 -L mii_to_rmii_v2_0_21 -L xlconstant_v1_1_6 -L xlslice_v1_0_2 -L util_vector_logic_v2_0_1 -L util_reduced_logic_v2_0_4 -L axi_utils_v2_0_6 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_13 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L cmpy_v6_0_17 -L floating_point_v7_0_16 -L xfft_v9_1_2 -L axi_protocol_converter_v2_1_19 -L axi_clock_converter_v2_1_18 -L axi_dwidth_converter_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mcu xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mcu.udo}

run -all

quit -force
