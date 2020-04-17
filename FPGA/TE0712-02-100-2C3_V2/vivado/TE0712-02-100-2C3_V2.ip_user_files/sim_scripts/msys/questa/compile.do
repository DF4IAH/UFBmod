vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/lib_bmg_v1_0_13
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/lib_fifo_v1_0_14
vlib questa_lib/msim/axi_ethernetlite_v3_0_19
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_iic_v2_0_23
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_20
vlib questa_lib/msim/axi_data_fifo_v2_1_19
vlib questa_lib/msim/axi_crossbar_v2_1_21
vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_quad_spi_v3_2_19
vlib questa_lib/msim/axi_timer_v2_0_22
vlib questa_lib/msim/axi_uartlite_v2_0_24
vlib questa_lib/msim/mdm_v3_2_17
vlib questa_lib/msim/microblaze_v11_0_2
vlib questa_lib/msim/axi_intc_v4_1_14
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_17
vlib questa_lib/msim/lmb_v10_v3_0_10
vlib questa_lib/msim/xlconcat_v2_1_3
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/iomodule_v3_1_5
vlib questa_lib/msim/mii_to_rmii_v2_0_20
vlib questa_lib/msim/axi_clock_converter_v2_1_19

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 questa_lib/msim/lib_bmg_v1_0_13
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 questa_lib/msim/lib_fifo_v1_0_14
vmap axi_ethernetlite_v3_0_19 questa_lib/msim/axi_ethernetlite_v3_0_19
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_iic_v2_0_23 questa_lib/msim/axi_iic_v2_0_23
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 questa_lib/msim/axi_register_slice_v2_1_20
vmap axi_data_fifo_v2_1_19 questa_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 questa_lib/msim/axi_crossbar_v2_1_21
vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_quad_spi_v3_2_19 questa_lib/msim/axi_quad_spi_v3_2_19
vmap axi_timer_v2_0_22 questa_lib/msim/axi_timer_v2_0_22
vmap axi_uartlite_v2_0_24 questa_lib/msim/axi_uartlite_v2_0_24
vmap mdm_v3_2_17 questa_lib/msim/mdm_v3_2_17
vmap microblaze_v11_0_2 questa_lib/msim/microblaze_v11_0_2
vmap axi_intc_v4_1_14 questa_lib/msim/axi_intc_v4_1_14
vmap lmb_bram_if_cntlr_v4_0_17 questa_lib/msim/lmb_bram_if_cntlr_v4_0_17
vmap lmb_v10_v3_0_10 questa_lib/msim/lmb_v10_v3_0_10
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap iomodule_v3_1_5 questa_lib/msim/iomodule_v3_1_5
vmap mii_to_rmii_v2_0_20 questa_lib/msim/mii_to_rmii_v2_0_20
vmap axi_clock_converter_v2_1_19 questa_lib/msim/axi_clock_converter_v2_1_19

vlog -work xpm -64 -sv "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ipshared/97ab/scr/SC0712.vhd" \
"../../../bd/msys/ip/msys_SC0712_0_0/sim/msys_SC0712_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_19 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/d3f4/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_axi_ethernetlite_0_0/sim/msys_axi_ethernetlite_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_23 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/b41e/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_axi_iic_0_0/sim/msys_axi_iic_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_xbar_0/sim/msys_xbar_0.v" \

vlog -work dist_mem_gen_v8_0_13 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_19 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/58f3/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_axi_quad_spi_0_0/sim/msys_axi_quad_spi_0_0.vhd" \

vcom -work axi_timer_v2_0_22 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/a141/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_axi_timer_0_0/sim/msys_axi_timer_0_0.vhd" \

vcom -work axi_uartlite_v2_0_24 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_axi_uartlite_0_0/sim/msys_axi_uartlite_0_0.vhd" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/2bc4/labtools_fmeter.vhd" \
"../../../bd/msys/ip/msys_labtools_fmeter_0_0/sim/msys_labtools_fmeter_0_0.vhd" \

vcom -work mdm_v3_2_17 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_mdm_1_0/sim/msys_mdm_1_0.vhd" \

vcom -work microblaze_v11_0_2 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_microblaze_0_0/sim/msys_microblaze_0_0.vhd" \

vcom -work axi_intc_v4_1_14 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/f78a/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_microblaze_0_axi_intc_0/sim/msys_microblaze_0_axi_intc_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_xbar_1/sim/msys_xbar_1.v" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_dlmb_bram_if_cntlr_0/sim/msys_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_10 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_dlmb_v10_0/sim/msys_dlmb_v10_0.vhd" \
"../../../bd/msys/ip/msys_ilmb_bram_if_cntlr_0/sim/msys_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/msys/ip/msys_ilmb_v10_0/sim/msys_ilmb_v10_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_lmb_bram_0/sim/msys_lmb_bram_0.v" \

vlog -work xlconcat_v2_1_3 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_microblaze_0_xlconcat_0/sim/msys_microblaze_0_xlconcat_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_0/sim/bd_cf59_microblaze_I_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_1/sim/bd_cf59_rst_0_0.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_2/sim/bd_cf59_ilmb_0.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_3/sim/bd_cf59_dlmb_0.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_4/sim/bd_cf59_dlmb_cntlr_0.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_5/sim/bd_cf59_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_6/sim/bd_cf59_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_7/sim/bd_cf59_second_dlmb_cntlr_0.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_8/sim/bd_cf59_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_9/sim/bd_cf59_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_5 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/f748/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/ip/ip_10/sim/bd_cf59_iomodule_0_0.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/bd_0/sim/bd_cf59.vhd" \
"../../../bd/msys/ip/msys_microblaze_mcs_0_0/sim/msys_microblaze_mcs_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/msys_mig_7series_0_0_mig_sim.v" \
"../../../bd/msys/ip/msys_mig_7series_0_0/msys_mig_7series_0_0/user_design/rtl/msys_mig_7series_0_0.v" \

vcom -work mii_to_rmii_v2_0_20 -64 -93 \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/90e9/hdl/mii_to_rmii_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/ip/msys_mii_to_rmii_0_0/sim/msys_mii_to_rmii_0_0.vhd" \
"../../../bd/msys/ipshared/adc9/hdl/mii_y_adapater.vhd" \
"../../../bd/msys/ip/msys_mii_y_adapater_0_0/sim/msys_mii_y_adapater_0_0.vhd" \
"../../../bd/msys/ip/msys_proc_sys_reset_0_0/sim/msys_proc_sys_reset_0_0.vhd" \
"../../../bd/msys/ip/msys_proc_sys_reset_eth_0/sim/msys_proc_sys_reset_eth_0.vhd" \
"../../../bd/msys/ip/msys_rst_mig_7series_0_100M_0/sim/msys_rst_mig_7series_0_100M_0.vhd" \
"../../../bd/msys/ip/msys_rst_mig_7series_0_50M_0/sim/msys_rst_mig_7series_0_50M_0.vhd" \
"../../../bd/msys/ip/msys_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/msys/ip/msys_util_ds_buf_0_0/sim/msys_util_ds_buf_0_0.vhd" \
"../../../bd/msys/ip/msys_util_ds_buf_1_0/sim/msys_util_ds_buf_1_0.vhd" \
"../../../bd/msys/ip/msys_util_ds_buf_2_0/sim/msys_util_ds_buf_2_0.vhd" \
"../../../bd/msys/ip/msys_vio_0_0/sim/msys_vio_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_xlconcat_0_0/sim/msys_xlconcat_0_0.v" \

vlog -work axi_clock_converter_v2_1_19 -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/ec67/hdl" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/1b7e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/122e/hdl/verilog" "+incdir+../../../../TE0712-02-100-2C3_V2.srcs/sources_1/bd/msys/ipshared/46fd/hdl" \
"../../../bd/msys/ip/msys_auto_cc_0/sim/msys_auto_cc_0.v" \
"../../../bd/msys/ip/msys_auto_cc_1/sim/msys_auto_cc_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/msys/sim/msys.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
