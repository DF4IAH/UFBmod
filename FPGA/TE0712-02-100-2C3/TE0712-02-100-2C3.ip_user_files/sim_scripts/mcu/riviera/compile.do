vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v11_0_0
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_15
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_12
vlib riviera/xlconcat_v2_1_1
vlib riviera/mdm_v3_2_15
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/iomodule_v3_1_4
vlib riviera/axi_protocol_converter_v2_1_18

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v11_0_0 riviera/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_12 riviera/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap mdm_v3_2_15 riviera/mdm_v3_2_15
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap iomodule_v3_1_4 riviera/iomodule_v3_1_4
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_microblaze_0_0/sim/mcu_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_dlmb_v10_0/sim/mcu_dlmb_v10_0.vhd" \
"../../../bd/mcu/ip/mcu_ilmb_v10_0/sim/mcu_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_dlmb_bram_if_cntlr_0/sim/mcu_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/mcu/ip/mcu_ilmb_bram_if_cntlr_0/sim/mcu_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../bd/mcu/ip/mcu_lmb_bram_0/sim/mcu_lmb_bram_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_lmb_v10_0/sim/mcu_lmb_v10_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_12 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_microblaze_0_axi_intc_0/sim/mcu_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../bd/mcu/ip/mcu_microblaze_0_xlconcat_0/sim/mcu_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_15 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_mdm_1_0/sim/mcu_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_rst_clk_wiz_1_100M_0/sim/mcu_rst_clk_wiz_1_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../bd/mcu/ip/mcu_xbar_0/sim/mcu_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_0/sim/bd_f021_microblaze_I_0.vhd" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_1/sim/bd_f021_rst_0_0.vhd" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_2/sim/bd_f021_ilmb_0.vhd" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_3/sim/bd_f021_dlmb_0.vhd" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_4/sim/bd_f021_dlmb_cntlr_0.vhd" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_5/sim/bd_f021_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_6/sim/bd_f021_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_4 -93 \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/18fc/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/ip/ip_7/sim/bd_f021_iomodule_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/bd_0/sim/bd_f021.v" \
"../../../bd/mcu/ip/mcu_microblaze_mcs_0_0/sim/mcu_microblaze_mcs_0_0.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/mcu_mig_7series_0_0_mig_sim.v" \
"../../../bd/mcu/ip/mcu_mig_7series_0_0/mcu_mig_7series_0_0/user_design/rtl/mcu_mig_7series_0_0.v" \
"../../../bd/mcu/sim/mcu.v" \
"../../../bd/mcu/ip/mcu_selectio_wiz_0_0/mcu_selectio_wiz_0_0_selectio_wiz.v" \
"../../../bd/mcu/ip/mcu_selectio_wiz_0_0/mcu_selectio_wiz_0_0.v" \
"../../../bd/mcu/ip/mcu_selectio_wiz_1_0/mcu_selectio_wiz_1_0_selectio_wiz.v" \
"../../../bd/mcu/ip/mcu_selectio_wiz_1_0/mcu_selectio_wiz_1_0.v" \
"../../../bd/mcu/ip/mcu_clk_wiz_0_0/mcu_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/mcu/ip/mcu_clk_wiz_0_0/mcu_clk_wiz_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3.srcs/sources_1/bd/mcu/ipshared/85a3" \
"../../../bd/mcu/ip/mcu_auto_pc_1/sim/mcu_auto_pc_1.v" \
"../../../bd/mcu/ip/mcu_auto_pc_0/sim/mcu_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

