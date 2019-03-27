vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uart16550_v2_0_20
vlib questa_lib/msim/dist_mem_gen_v8_0_12
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/lib_fifo_v1_0_12
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_quad_spi_v3_2_17
vlib questa_lib/msim/emc_common_v3_0_5
vlib questa_lib/msim/axi_emc_v3_0_18
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/axi_protocol_converter_v2_1_18
vlib questa_lib/msim/microblaze_v11_0_0
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/axi_crossbar_v2_1_19
vlib questa_lib/msim/axi_intc_v4_1_12
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/mdm_v3_2_15
vlib questa_lib/msim/axi_gpio_v2_0_20
vlib questa_lib/msim/axi_timer_v2_0_20

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_20 questa_lib/msim/axi_uart16550_v2_0_20
vmap dist_mem_gen_v8_0_12 questa_lib/msim/dist_mem_gen_v8_0_12
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 questa_lib/msim/lib_fifo_v1_0_12
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_17 questa_lib/msim/axi_quad_spi_v3_2_17
vmap emc_common_v3_0_5 questa_lib/msim/emc_common_v3_0_5
vmap axi_emc_v3_0_18 questa_lib/msim/axi_emc_v3_0_18
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap axi_protocol_converter_v2_1_18 questa_lib/msim/axi_protocol_converter_v2_1_18
vmap microblaze_v11_0_0 questa_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap axi_crossbar_v2_1_19 questa_lib/msim/axi_crossbar_v2_1_19
vmap axi_intc_v4_1_12 questa_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap mdm_v3_2_15 questa_lib/msim/mdm_v3_2_15
vmap axi_gpio_v2_0_20 questa_lib/msim/axi_gpio_v2_0_20
vmap axi_timer_v2_0_20 questa_lib/msim/axi_timer_v2_0_20

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_family.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/AXI_bd_0_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/AXI_bd_0_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/AXI_bd_0_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xadc_wiz_0_0/AXI_bd_0_xadc_wiz_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_20 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/07cf/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_uart16550_0_0/sim/AXI_bd_0_axi_uart16550_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_12 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_17 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/c3d3/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_quad_spi_0_0/sim/AXI_bd_0_axi_quad_spi_0_0.vhd" \

vcom -work emc_common_v3_0_5 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ea80/hdl/emc_common_v3_0_vh_rfs.vhd" \

vcom -work axi_emc_v3_0_18 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/0cd1/hdl/axi_emc_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_emc_0_0/sim/AXI_bd_0_axi_emc_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_0/AXI_bd_0_clk_wiz_0_clk_wiz.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_0/AXI_bd_0_clk_wiz_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_rst_clk_wiz_0_100M_0/sim/AXI_bd_0_rst_clk_wiz_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_protocol_convert_0_0/sim/AXI_bd_0_axi_protocol_convert_0_0.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_protocol_convert_1_0/sim/AXI_bd_0_axi_protocol_convert_1_0.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_protocol_convert_2_0/sim/AXI_bd_0_axi_protocol_convert_2_0.v" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_microblaze_0_0/sim/AXI_bd_0_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_dlmb_v10_0/sim/AXI_bd_0_dlmb_v10_0.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_ilmb_v10_0/sim/AXI_bd_0_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_dlmb_bram_if_cntlr_0/sim/AXI_bd_0_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_ilmb_bram_if_cntlr_0/sim/AXI_bd_0_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_lmb_bram_0/sim/AXI_bd_0_lmb_bram_0.v" \

vlog -work axi_crossbar_v2_1_19 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_xbar_0/sim/AXI_bd_0_xbar_0.v" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_microblaze_0_axi_intc_0/sim/AXI_bd_0_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_microblaze_0_xlconcat_0/sim/AXI_bd_0_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_mdm_1_0/sim/AXI_bd_0_mdm_1_0.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_gpio_0_0/sim/AXI_bd_0_axi_gpio_0_0.vhd" \

vcom -work axi_timer_v2_0_20 -64 -93 \
"../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_timer_0_0/sim/AXI_bd_0_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_protocol_convert_3_0/sim/AXI_bd_0_axi_protocol_convert_3_0.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/AXI_bd_0_clk_wiz_1_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_conv_funs_pkg.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_proc_common_pkg.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_ipif_pkg.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_family_support.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_family.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_soft_reset.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/proc_common_v3_00_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_pselect_f.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_address_decoder.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_slave_attachment.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/AXI_bd_0_clk_wiz_1_0_axi_lite_ipif.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/AXI_bd_0_clk_wiz_1_0_clk_wiz_drp.vhd" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/AXI_bd_0_clk_wiz_1_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/85a3" "+incdir+../../../../CMOD_A7-35T.srcs/sources_1/bd/AXI_bd_0/ipshared/ec67/hdl" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/AXI_bd_0_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_clk_wiz_1_0/AXI_bd_0_clk_wiz_1_0.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_protocol_convert_4_0/sim/AXI_bd_0_axi_protocol_convert_4_0.v" \
"../../../bd/AXI_bd_0/sim/AXI_bd_0.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_axi_protocol_convert_5_0/sim/AXI_bd_0_axi_protocol_convert_5_0.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_auto_pc_1/sim/AXI_bd_0_auto_pc_1.v" \
"../../../bd/AXI_bd_0/ip/AXI_bd_0_auto_pc_0/sim/AXI_bd_0_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

