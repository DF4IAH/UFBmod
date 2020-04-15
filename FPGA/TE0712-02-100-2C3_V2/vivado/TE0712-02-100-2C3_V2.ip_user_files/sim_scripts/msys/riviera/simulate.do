onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+msys -L xpm -L xil_defaultlib -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L blk_mem_gen_v8_4_4 -L lib_bmg_v1_0_13 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L axi_ethernetlite_v3_0_19 -L lib_pkg_v1_0_2 -L interrupt_control_v3_1_4 -L axi_iic_v2_0_23 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_20 -L axi_data_fifo_v2_1_19 -L axi_crossbar_v2_1_21 -L dist_mem_gen_v8_0_13 -L lib_srl_fifo_v1_0_2 -L axi_quad_spi_v3_2_19 -L axi_timer_v2_0_22 -L axi_uartlite_v2_0_24 -L mdm_v3_2_17 -L microblaze_v11_0_2 -L axi_intc_v4_1_14 -L lmb_bram_if_cntlr_v4_0_17 -L lmb_v10_v3_0_10 -L xlconcat_v2_1_3 -L proc_sys_reset_v5_0_13 -L iomodule_v3_1_5 -L mii_to_rmii_v2_0_20 -L axi_clock_converter_v2_1_19 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.msys xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {msys.udo}

run -all

endsim

quit -force
