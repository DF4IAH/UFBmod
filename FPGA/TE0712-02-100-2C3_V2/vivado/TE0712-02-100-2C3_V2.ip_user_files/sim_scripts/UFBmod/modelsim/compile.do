vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/c_reg_fd_v12_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_addsub_v3_0_6
vlib modelsim_lib/msim/c_addsub_v12_0_14
vlib modelsim_lib/msim/c_gate_bit_v12_0_6
vlib modelsim_lib/msim/xbip_counter_v3_0_6
vlib modelsim_lib/msim/c_counter_binary_v12_0_14
vlib modelsim_lib/msim/xbip_dsp48_acc_v3_0_6
vlib modelsim_lib/msim/xbip_accum_v3_0_6
vlib modelsim_lib/msim/c_accum_v12_0_14
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_16
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/floating_point_v7_0_17
vlib modelsim_lib/msim/xbip_dsp48_mult_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/div_gen_v5_1_16

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 modelsim_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 modelsim_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 modelsim_lib/msim/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 modelsim_lib/msim/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 modelsim_lib/msim/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_14 modelsim_lib/msim/c_counter_binary_v12_0_14
vmap xbip_dsp48_acc_v3_0_6 modelsim_lib/msim/xbip_dsp48_acc_v3_0_6
vmap xbip_accum_v3_0_6 modelsim_lib/msim/xbip_accum_v3_0_6
vmap c_accum_v12_0_14 modelsim_lib/msim/c_accum_v12_0_14
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 modelsim_lib/msim/mult_gen_v12_0_16
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap floating_point_v7_0_17 modelsim_lib/msim/floating_point_v7_0_17
vmap xbip_dsp48_mult_v3_0_6 modelsim_lib/msim/xbip_dsp48_mult_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap div_gen_v5_1_16 modelsim_lib/msim/div_gen_v5_1_16

vlog -work xpm  -incr -sv \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_blk_mem_gen_0_0/sim/UFBmod_blk_mem_gen_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_xlconstant_0_0/sim/UFBmod_xlconstant_0_0.v" \

vlog -work fifo_generator_v13_2_5  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_fifo_generator_0_0/sim/UFBmod_fifo_generator_0_0.v" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_14  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/1f12/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_c_counter_binary_0_0/sim/UFBmod_c_counter_binary_0_0.vhd" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_FFT_rx09_to_Decoder_0_0/sim/UFBmod_FFT_rx09_to_Decoder_0_0.vhd" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_UFBmod_rx09_Decoder_0_0/sim/UFBmod_UFBmod_rx09_Decoder_0_0.vhd" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_Decoder_rx09_to_FIFO_0_0/sim/UFBmod_Decoder_rx09_to_FIFO_0_0.vhd" \

vcom -work xbip_dsp48_acc_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/9f2d/hdl/xbip_dsp48_acc_v3_0_vh_rfs.vhd" \

vcom -work xbip_accum_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/ad2e/hdl/xbip_accum_v3_0_vh_rfs.vhd" \

vcom -work c_accum_v12_0_14  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/4f2e/hdl/c_accum_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_c_accum_0_0/sim/UFBmod_c_accum_0_0.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_mult_gen_0_0/sim/UFBmod_mult_gen_0_0.vhd" \

vcom -work axi_utils_v2_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_17  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/096f/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_mult_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/490d/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work div_gen_v5_1_16  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ipshared/f5d9/hdl/div_gen_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_div_gen_0_0/sim/UFBmod_div_gen_0_0.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_xlconstant_0_1/sim/UFBmod_xlconstant_0_1.v" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_xlconstant_0_2/sim/UFBmod_xlconstant_0_2.v" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_xlconstant_0_3/sim/UFBmod_xlconstant_0_3.v" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_xlconstant_0_4/sim/UFBmod_xlconstant_0_4.v" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_blk_mem_gen_0_1/sim/UFBmod_blk_mem_gen_0_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/ip/UFBmod_mult_gen_0_2/sim/UFBmod_mult_gen_0_2.vhd" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod/sim/UFBmod.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

