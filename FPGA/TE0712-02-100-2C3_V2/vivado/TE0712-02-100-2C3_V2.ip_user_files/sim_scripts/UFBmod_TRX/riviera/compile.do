vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/c_gate_bit_v12_0_6
vlib riviera/xbip_counter_v3_0_6
vlib riviera/c_counter_binary_v12_0_14
vlib riviera/xlconcat_v2_1_3
vlib riviera/xlslice_v1_0_2
vlib riviera/fifo_generator_v13_2_5
vlib riviera/xlconstant_v1_1_7
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/c_mux_bit_v12_0_6
vlib riviera/c_shift_ram_v12_0_14
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_16
vlib riviera/axi_utils_v2_0_6
vlib riviera/cordic_v6_0_16
vlib riviera/cmpy_v6_0_18
vlib riviera/floating_point_v7_0_17
vlib riviera/xfft_v9_1_4
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/util_reduced_logic_v2_0_4
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_multadd_v3_0_15
vlib riviera/dds_compiler_v6_0_20

vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 riviera/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 riviera/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_14 riviera/c_counter_binary_v12_0_14
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap c_mux_bit_v12_0_6 riviera/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 riviera/c_shift_ram_v12_0_14
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 riviera/mult_gen_v12_0_16
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap cordic_v6_0_16 riviera/cordic_v6_0_16
vmap cmpy_v6_0_18 riviera/cmpy_v6_0_18
vmap floating_point_v7_0_17 riviera/floating_point_v7_0_17
vmap xfft_v9_1_4 riviera/xfft_v9_1_4
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap util_reduced_logic_v2_0_4 riviera/util_reduced_logic_v2_0_4
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_multadd_v3_0_15 riviera/xbip_multadd_v3_0_15
vmap dds_compiler_v6_0_20 riviera/dds_compiler_v6_0_20

vlog -work xpm  -sv2k12 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_proc_sys_reset_0_1/sim/UFBmod_TRX_TRX_proc_sys_reset_0_1.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_14 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/1f12/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_io_reset_counter_binary_0_1/sim/UFBmod_TRX_TRX_io_reset_counter_binary_0_1.vhd" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx09_xlconcat_0_1/sim/UFBmod_TRX_TRX_rx09_xlconcat_0_1.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_00to00_1/sim/UFBmod_TRX_TRX_rx_xlslice_00to00_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_02to02_1/sim/UFBmod_TRX_TRX_rx_xlslice_02to02_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_04to04_1/sim/UFBmod_TRX_TRX_rx_xlslice_04to04_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_06to06_1/sim/UFBmod_TRX_TRX_rx_xlslice_06to06_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_10to10_1/sim/UFBmod_TRX_TRX_rx_xlslice_10to10_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_12to12_1/sim/UFBmod_TRX_TRX_rx_xlslice_12to12_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_14to14_1/sim/UFBmod_TRX_TRX_rx_xlslice_14to14_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_08to08_1/sim/UFBmod_TRX_TRX_rx_xlslice_08to08_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx24_xlconcat_0_1/sim/UFBmod_TRX_TRX_rx24_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_15to15_1/sim/UFBmod_TRX_TRX_rx_xlslice_15to15_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_13to13_1/sim/UFBmod_TRX_TRX_rx_xlslice_13to13_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_11to11_1/sim/UFBmod_TRX_TRX_rx_xlslice_11to11_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_09to09_1/sim/UFBmod_TRX_TRX_rx_xlslice_09to09_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_07to07_1/sim/UFBmod_TRX_TRX_rx_xlslice_07to07_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_05to05_1/sim/UFBmod_TRX_TRX_rx_xlslice_05to05_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_03to03_1/sim/UFBmod_TRX_TRX_rx_xlslice_03to03_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx_xlslice_01to01_1/sim/UFBmod_TRX_TRX_rx_xlslice_01to01_1.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx09_fifo_generator_0_1/sim/UFBmod_TRX_TRX_rx09_fifo_generator_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_rx24_fifo_generator_0_1/sim/UFBmod_TRX_TRX_rx24_fifo_generator_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx09_fifo_generator_0_1/sim/UFBmod_TRX_TRX_tx09_fifo_generator_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx_LVDS_interleave_xlconcat_0_1/sim/UFBmod_TRX_TRX_tx_LVDS_interleave_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_00to00_1/sim/UFBmod_TRX_xlslice_00to00_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_01to01_1/sim/UFBmod_TRX_xlslice_01to01_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_02to02_1/sim/UFBmod_TRX_xlslice_02to02_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_03to03_1/sim/UFBmod_TRX_xlslice_03to03_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_04to04_1/sim/UFBmod_TRX_xlslice_04to04_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_05to05_1/sim/UFBmod_TRX_xlslice_05to05_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_06to06_1/sim/UFBmod_TRX_xlslice_06to06_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_07to07_1/sim/UFBmod_TRX_xlslice_07to07_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx_word_format_xlconcat_0_1/sim/UFBmod_TRX_TRX_tx_word_format_xlconcat_0_1.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_val0_len1_2/sim/UFBmod_TRX_xlconstant_val0_len1_2.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_val1_len1_5/sim/UFBmod_TRX_xlconstant_val1_len1_5.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_blank_tx_util_vector_logic_0_1/sim/UFBmod_TRX_TRX_blank_tx_util_vector_logic_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_blank_tx_xlconcat_0_1/sim/UFBmod_TRX_TRX_blank_tx_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_blank_tx_util_vector_logic_1_1/sim/UFBmod_TRX_TRX_blank_tx_util_vector_logic_1_1.v" \

vcom -work c_mux_bit_v12_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_blank_tx_c_shift_ram_0_1/sim/UFBmod_TRX_TRX_blank_tx_c_shift_ram_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1/UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1_selectio_wiz.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1/UFBmod_TRX_TRX_LVDS_selectio_wiz_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_1_len1_1/sim/UFBmod_TRX_xlconstant_1_len1_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_LVDS_util_ds_buf_0_1/util_ds_buf.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_LVDS_util_ds_buf_0_1/sim/UFBmod_TRX_TRX_LVDS_util_ds_buf_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_c_shift_ram_dly386_1_1/sim/UFBmod_TRX_c_shift_ram_dly386_1_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconcat_0_2/sim/UFBmod_TRX_xlconcat_0_2.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_fifo_generator_dly2049_0_1/sim/UFBmod_TRX_fifo_generator_dly2049_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_val1_len1_6/sim/UFBmod_TRX_xlconstant_val1_len1_6.v" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_16 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/5bf0/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_cordic_rx09_1/sim/UFBmod_TRX_cordic_rx09_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_rx09_xlslice_15to0_1/sim/UFBmod_TRX_rx09_xlslice_15to0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_fft_rx09_s_data_xlconcat_0_1/sim/UFBmod_TRX_fft_rx09_s_data_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_cordic_rx09_xlconcat_0_1/sim/UFBmod_TRX_cordic_rx09_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_cordic_rx09_addra_xlslice_9to0_1/sim/UFBmod_TRX_cordic_rx09_addra_xlslice_9to0_1.v" \

vcom -work cmpy_v6_0_18 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/231d/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_17 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/096f/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_4 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/2a49/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xfft_rx09_dly3459_1/sim/UFBmod_TRX_xfft_rx09_dly3459_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_window_rx09_re_mult_gen_0_1/sim/UFBmod_TRX_window_rx09_re_mult_gen_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_window_rx09_im_mult_gen_0_1/sim/UFBmod_TRX_window_rx09_im_mult_gen_0_1.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_window_coef_rom_blk_mem_gen_0_1/sim/UFBmod_TRX_window_coef_rom_blk_mem_gen_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pre_fft_rx09_blk_mem_gen_0_1/sim/UFBmod_TRX_pre_fft_rx09_blk_mem_gen_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_blk_mem_gen_0_1/sim/UFBmod_TRX_post_fft_rx09_blk_mem_gen_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pre_fft_rx09_xlslice_25to13_1/sim/UFBmod_TRX_pre_fft_rx09_xlslice_25to13_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pre_fft_rx09_xlslice_12to00_1/sim/UFBmod_TRX_pre_fft_rx09_xlslice_12to00_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_xlslice_9downto0_1/sim/UFBmod_TRX_post_fft_rx09_xlslice_9downto0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_val1_len1_7/sim/UFBmod_TRX_xlconstant_val1_len1_7.v" \

vlog -work util_reduced_logic_v2_0_4  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/4c94/hdl/util_reduced_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_mem_a_rx09_util_reduced_logic_0_1/sim/UFBmod_TRX_post_fft_mem_a_rx09_util_reduced_logic_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_mem_a_rx09_xlconcat_0_1/sim/UFBmod_TRX_post_fft_mem_a_rx09_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pushdata_rx09_xlconcat_0_1/sim/UFBmod_TRX_pushdata_rx09_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pushdata_rx09_xlslice_31to16_1/sim/UFBmod_TRX_pushdata_rx09_xlslice_31to16_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pushdata_rx09_xlslice_8to8_1/sim/UFBmod_TRX_pushdata_rx09_xlslice_8to8_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_fifo_generator_0_1/sim/UFBmod_TRX_fifo_generator_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_gpio_xlslice_31downto31_resetn_0_1/sim/UFBmod_TRX_TRX_gpio_xlslice_31downto31_resetn_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_gpio_xlslice_30downto30_rfxmode_0_1/sim/UFBmod_TRX_TRX_gpio_xlslice_30downto30_rfxmode_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_gpio_xlslice_0downto0_blankTx_0_1/sim/UFBmod_TRX_TRX_gpio_xlslice_0downto0_blankTx_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_gpio_xlconcat_0_1/sim/UFBmod_TRX_TRX_gpio_xlconcat_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_PLL_clk_wiz_0_1/UFBmod_TRX_TRX_PLL_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_PLL_clk_wiz_0_1/UFBmod_TRX_TRX_PLL_clk_wiz_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_PLL_util_ds_buf_0_1/sim/UFBmod_TRX_TRX_PLL_util_ds_buf_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_reset_util_vector_logic_0_1/sim/UFBmod_TRX_TRX_reset_util_vector_logic_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx_4to1_c_counter_binary_0_1/sim/UFBmod_TRX_TRX_tx_4to1_c_counter_binary_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx0_re_xlslice_12to00_1/sim/UFBmod_TRX_TRX_tx0_re_xlslice_12to00_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx1_re_xlslice_12to00_1/sim/UFBmod_TRX_TRX_tx1_re_xlslice_12to00_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx0_im_xlslice_28to16_1/sim/UFBmod_TRX_TRX_tx0_im_xlslice_28to16_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx1_im_xlslice_28to16_1/sim/UFBmod_TRX_TRX_tx1_im_xlslice_28to16_1.v" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_multadd_v3_0_15 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8914/hdl/xbip_multadd_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx0_re_xbip_multadd_0_1/sim/UFBmod_TRX_TRX_tx0_re_xbip_multadd_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx0_im_xbip_multadd_0_1/sim/UFBmod_TRX_TRX_tx0_im_xbip_multadd_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_CDC_dds_tx0_c_shift_ram_0_1/sim/UFBmod_TRX_TRX_CDC_dds_tx0_c_shift_ram_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_CDC_dds_tx1_c_shift_ram_0_1/sim/UFBmod_TRX_TRX_CDC_dds_tx1_c_shift_ram_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_ampt_tx1_xslice_15to8_1/sim/UFBmod_TRX_TRX_ampt_tx1_xslice_15to8_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_ampt_tx1_xslice_7to0_1/sim/UFBmod_TRX_TRX_ampt_tx1_xslice_7to0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx1_re_xbip_multadd_0_1/sim/UFBmod_TRX_TRX_tx1_re_xbip_multadd_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx1_im_xbip_multadd_0_1/sim/UFBmod_TRX_TRX_tx1_im_xbip_multadd_0_1.vhd" \

vcom -work dds_compiler_v6_0_20 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/398e/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx1_dds_compiler_0_1/sim/UFBmod_TRX_TRX_tx1_dds_compiler_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_tx0_dds_compiler_0_1/sim/UFBmod_TRX_TRX_tx0_dds_compiler_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_val0_len1_3/sim/UFBmod_TRX_xlconstant_val0_len1_3.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_val1_len1_9/sim/UFBmod_TRX_xlconstant_val1_len1_9.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_CDC_ampt_tx0_c_shift_ram_0_1/sim/UFBmod_TRX_TRX_CDC_ampt_tx0_c_shift_ram_0_1.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_CDC_ampt_tx1_c_shift_ram_0_1/sim/UFBmod_TRX_TRX_CDC_ampt_tx1_c_shift_ram_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_ampt_tx0_xslice_15to8_1/sim/UFBmod_TRX_TRX_ampt_tx0_xslice_15to8_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_ampt_tx0_xslice_7to0_1/sim/UFBmod_TRX_TRX_ampt_tx0_xslice_7to0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pulldata_tx09_fifo_generator_0_1/sim/UFBmod_TRX_pulldata_tx09_fifo_generator_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_7to0_1/sim/UFBmod_TRX_xlslice_7to0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_30to30_1/sim/UFBmod_TRX_xlslice_30to30_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pulldata_tx09_c_shift_ram_0_1/sim/UFBmod_TRX_pulldata_tx09_c_shift_ram_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pulldata_tx09_util_reduced_logic_0_1/sim/UFBmod_TRX_pulldata_tx09_util_reduced_logic_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pulldata_tx09_util_vector_logic_0_1/sim/UFBmod_TRX_pulldata_tx09_util_vector_logic_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_pulldata_tx09_xlconcat_1_1/sim/UFBmod_TRX_pulldata_tx09_xlconcat_1_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_14to8_1/sim/UFBmod_TRX_xlslice_14to8_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconcat_0_3/sim/UFBmod_TRX_xlconcat_0_3.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_29to29_1/sim/UFBmod_TRX_xlslice_29to29_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlslice_28to28_1/sim/UFBmod_TRX_xlslice_28to28_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_CDC_dds_tx0_xlconcat_0_1/sim/UFBmod_TRX_TRX_CDC_dds_tx0_xlconcat_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_post_fft_rx09_ad_0_0/sim/UFBmod_TRX_TRX_post_fft_rx09_ad_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_0/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_0.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_1/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_1.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_2/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_2.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_3/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_3.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_4/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_4.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_5/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_5.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_6/sim/UFBmod_TRX_post_fft_rx09_ch00_blk_mem_gen_0_6.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_util_reduced_logic_0_0/sim/UFBmod_TRX_util_reduced_logic_0_0.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconcat_0_4/sim/UFBmod_TRX_xlconcat_0_4.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_c_shift_ram_0_0/sim/UFBmod_TRX_c_shift_ram_0_0.vhd" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_FIFO_Arbiter_0_0/sim/UFBmod_TRX_TRX_FIFO_Arbiter_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_TRX/ipshared/8b3d" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_xlconstant_0_0/sim/UFBmod_TRX_xlconstant_0_0.v" \
"../../../bd/UFBmod_TRX/ip/UFBmod_TRX_TRX_gpio_xlslice_0to0_blankTx_0_0/sim/UFBmod_TRX_TRX_gpio_xlslice_0to0_blankTx_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/UFBmod_TRX/sim/UFBmod_TRX.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

