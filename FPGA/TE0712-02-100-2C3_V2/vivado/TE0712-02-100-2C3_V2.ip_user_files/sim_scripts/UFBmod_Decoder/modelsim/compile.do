vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/c_reg_fd_v12_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_addsub_v3_0_6
vlib modelsim_lib/msim/c_addsub_v12_0_14
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
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/c_mux_bit_v12_0_6
vlib modelsim_lib/msim/c_shift_ram_v12_0_14

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 modelsim_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 modelsim_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 modelsim_lib/msim/c_addsub_v12_0_14
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
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap c_mux_bit_v12_0_6 modelsim_lib/msim/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 modelsim_lib/msim/c_shift_ram_v12_0_14

vlog -work xpm  -incr -sv \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"F:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_signal_bins_rx09_ch00_blk_mem_gen_2clks_0/sim/UFBmod_Decoder_signal_bins_rx09_ch00_blk_mem_gen_2clks_0.v" \

vlog -work xlconstant_v1_1_7  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_xlconstant_val1_len1_0/sim/UFBmod_Decoder_xlconstant_val1_len1_0.v" \

vcom -work xbip_utils_v3_0_10  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_acc_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/9f2d/hdl/xbip_dsp48_acc_v3_0_vh_rfs.vhd" \

vcom -work xbip_accum_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/ad2e/hdl/xbip_accum_v3_0_vh_rfs.vhd" \

vcom -work c_accum_v12_0_14  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/4f2e/hdl/c_accum_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_rowsum_rx09_ch00_c_accum_1clk_0/sim/UFBmod_Decoder_rowsum_rx09_ch00_c_accum_1clk_0.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_signal_correction_rx09_ch00_mult_gen_4clks_0/sim/UFBmod_Decoder_signal_correction_rx09_ch00_mult_gen_4clks_0.vhd" \

vcom -work axi_utils_v2_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_17  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/096f/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_mult_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/490d/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work div_gen_v5_1_16  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/f5d9/hdl/div_gen_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_averaging_factor_rx09_ch00_div_gen_35clks_0/sim/UFBmod_Decoder_averaging_factor_rx09_ch00_div_gen_35clks_0.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_xlconstant_val256x32_len16_0/sim/UFBmod_Decoder_xlconstant_val256x32_len16_0.v" \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_xlconstant_val0_len1_0/sim/UFBmod_Decoder_xlconstant_val0_len1_0.v" \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_xlconstant_val0_len16_0/sim/UFBmod_Decoder_xlconstant_val0_len16_0.v" \

vlog -work xlslice_v1_0_2  -incr \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_noise_rx09_ch00_xlslice_18to0_0/sim/UFBmod_Decoder_noise_rx09_ch00_xlslice_18to0_0.v" \

vcom -work c_mux_bit_v12_0_6  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14  -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/UFBmod_Decoder/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_noise_rx09_ch00_c_shift_ram_0_0/sim/UFBmod_Decoder_noise_rx09_ch00_c_shift_ram_0_0.vhd" \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0/sim/UFBmod_Decoder_FFT_rx09_to_Decoder_FSM_0.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_decoder_artemis_blk_mem_gen_2clks_0/sim/UFBmod_Decoder_decoder_artemis_blk_mem_gen_2clks_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_decoder_artemis_mult_gen_4clks_0/sim/UFBmod_Decoder_decoder_artemis_mult_gen_4clks_0.vhd" \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_UFBmod_rx09_Decoder_0_0/sim/UFBmod_Decoder_UFBmod_rx09_Decoder_0_0.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_blk_mem_gen_0_0/sim/UFBmod_Decoder_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/UFBmod_Decoder/ip/UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0/sim/UFBmod_Decoder_Decoder_rx09_to_FIFO_0_0.vhd" \
"../../../bd/UFBmod_Decoder/sim/UFBmod_Decoder.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

