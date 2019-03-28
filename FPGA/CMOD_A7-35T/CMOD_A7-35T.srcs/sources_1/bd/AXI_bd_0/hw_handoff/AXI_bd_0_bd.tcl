
################################################################
# This is a generated script based on design: AXI_bd_0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source AXI_bd_0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:cmod_a7-35t:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name AXI_bd_0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set AXI_bd_Vaux4 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 AXI_bd_Vaux4 ]
  set AXI_bd_Vaux12 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 AXI_bd_Vaux12 ]
  set AXI_bd_gpio_led [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 AXI_bd_gpio_led ]
  set AXI_bd_gpio_ledrgb [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 AXI_bd_gpio_ledrgb ]
  set AXI_bd_usb_uart_UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 AXI_bd_usb_uart_UART ]
  set cellular_ram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:emc_rtl:1.0 cellular_ram ]
  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]

  # Create ports
  set AXI_bd_btn0 [ create_bd_port -dir I AXI_bd_btn0 ]
  set AXI_bd_btn1 [ create_bd_port -dir I AXI_bd_btn1 ]
  set AXI_bd_clk_100mhz_out [ create_bd_port -dir O -type clk AXI_bd_clk_100mhz_out ]
  set AXI_bd_pll_i [ create_bd_port -dir O -type clk AXI_bd_pll_i ]
  set AXI_bd_pll_q [ create_bd_port -dir O -type clk AXI_bd_pll_q ]
  set AXI_bd_sys_clock [ create_bd_port -dir I -type clk AXI_bd_sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {12000000} \
   CONFIG.PHASE {0.000} \
 ] $AXI_bd_sys_clock

  # Create instance: axi_emc_0, and set properties
  set axi_emc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_emc:3.0 axi_emc_0 ]
  set_property -dict [ list \
   CONFIG.C_MAX_MEM_WIDTH {8} \
   CONFIG.C_MEM0_TYPE {1} \
   CONFIG.C_MEM0_WIDTH {8} \
   CONFIG.C_TAVDV_PS_MEM_0 {8000} \
   CONFIG.C_TCEDV_PS_MEM_0 {8000} \
   CONFIG.C_THZCE_PS_MEM_0 {8000} \
   CONFIG.C_THZOE_PS_MEM_0 {8000} \
   CONFIG.C_TLZWE_PS_MEM_0 {3000} \
   CONFIG.C_TWC_PS_MEM_0 {8000} \
   CONFIG.C_TWP_PS_MEM_0 {8000} \
   CONFIG.EMC_BOARD_INTERFACE {cellular_ram} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_emc_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_DOUT_DEFAULT {0x00000003} \
   CONFIG.C_GPIO2_WIDTH {3} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {rgb_led} \
   CONFIG.GPIO_BOARD_INTERFACE {led_2bits} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.GPIO_BOARD_INTERFACE {push_buttons_1bit} \
 ] $axi_gpio_1

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]

  # Create instance: axi_protocol_convert_1, and set properties
  set axi_protocol_convert_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_1 ]

  # Create instance: axi_protocol_convert_2, and set properties
  set axi_protocol_convert_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_2 ]

  # Create instance: axi_protocol_convert_3, and set properties
  set axi_protocol_convert_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_3 ]

  # Create instance: axi_protocol_convert_4, and set properties
  set axi_protocol_convert_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_4 ]

  # Create instance: axi_protocol_convert_5, and set properties
  set axi_protocol_convert_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_5 ]

  # Create instance: axi_protocol_convert_6, and set properties
  set axi_protocol_convert_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_6 ]

  # Create instance: axi_protocol_convert_7, and set properties
  set axi_protocol_convert_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_7 ]

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_SPI_MEMORY {2} \
   CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]
  set_property -dict [ list \
   CONFIG.C_IS_A_16550 {16550} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {100000000} \
   CONFIG.UART_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uart16550_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {479.872} \
   CONFIG.CLKOUT1_PHASE_ERROR {668.310} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_OUT1_PORT {clk_100mhz} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {62.500} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_LOCKED {true} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {true} \
   CONFIG.CLKIN1_JITTER_PS {100.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {446.763} \
   CONFIG.CLKOUT1_PHASE_ERROR {313.282} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {10.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {446.763} \
   CONFIG.CLKOUT2_PHASE_ERROR {313.282} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {10.000} \
   CONFIG.CLKOUT2_REQUESTED_PHASE {90.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {41} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {82} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {82} \
   CONFIG.MMCM_CLKOUT1_PHASE {90.000} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PHASE_DUTY_CONFIG {true} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {100} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.USE_DYN_RECONFIG {true} \
 ] $clk_wiz_1

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_SIZE {32} \
   CONFIG.C_DBG_MEM_ACCESS {0} \
   CONFIG.C_DBG_REG_ACCESS {1} \
   CONFIG.C_M_AXI_ADDR_WIDTH {32} \
   CONFIG.C_S_AXI_ADDR_WIDTH {5} \
   CONFIG.C_TRACE_OUTPUT {0} \
   CONFIG.C_USE_CROSS_TRIGGER {0} \
   CONFIG.C_USE_UART {0} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {13} \
   CONFIG.C_AREA_OPTIMIZED {1} \
   CONFIG.C_CACHE_BYTE_SIZE {4096} \
   CONFIG.C_DCACHE_ADDR_TAG {13} \
   CONFIG.C_DCACHE_BYTE_SIZE {4096} \
   CONFIG.C_DCACHE_LINE_LEN {4} \
   CONFIG.C_DCACHE_USE_WRITEBACK {0} \
   CONFIG.C_DCACHE_VICTIMS {0} \
   CONFIG.C_DEBUG_ENABLED {2} \
   CONFIG.C_DEBUG_TRACE_SIZE {16384} \
   CONFIG.C_DIV_ZERO_EXCEPTION {0} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_FPU_EXCEPTION {0} \
   CONFIG.C_FSL_LINKS {0} \
   CONFIG.C_ICACHE_FORCE_TAG_LUTRAM {0} \
   CONFIG.C_ICACHE_LINE_LEN {4} \
   CONFIG.C_ICACHE_STREAMS {0} \
   CONFIG.C_ICACHE_VICTIMS {0} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {0} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_DTLB_SIZE {2} \
   CONFIG.C_MMU_ITLB_SIZE {1} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {0} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {0} \
   CONFIG.C_NUMBER_OF_PC_BRK {5} \
   CONFIG.C_NUMBER_OF_RD_ADDR_BRK {1} \
   CONFIG.C_NUMBER_OF_WR_ADDR_BRK {1} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {0} \
   CONFIG.C_PVR {0} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {0} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_BRANCH_TARGET_CACHE {0} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_FPU {2} \
   CONFIG.C_USE_HW_MUL {2} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MMU {0} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.C_USE_REORDER_INSTR {0} \
   CONFIG.G_TEMPLATE_LIST {8} \
   CONFIG.G_USE_EXCEPTIONS {0} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
   CONFIG.C_NUM_SW_INTR {8} \
   CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {100.0} \
   CONFIG.C_S_AXI_ACLK_FREQ_MHZ {100.0} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {10} \
   CONFIG.NUM_SI {3} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $microblaze_0_xlconcat

  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_100M ]

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
   CONFIG.ACQUISITION_TIME {4} \
   CONFIG.ADC_CONVERSION_RATE {192.0} \
   CONFIG.AVERAGE_ENABLE_TEMPERATURE {false} \
   CONFIG.AVERAGE_ENABLE_VAUXP12_VAUXN12 {true} \
   CONFIG.AVERAGE_ENABLE_VAUXP4_VAUXN4 {true} \
   CONFIG.AVERAGE_ENABLE_VBRAM {false} \
   CONFIG.AVERAGE_ENABLE_VCCAUX {false} \
   CONFIG.AVERAGE_ENABLE_VCCINT {false} \
   CONFIG.CHANNEL_AVERAGING {16} \
   CONFIG.CHANNEL_ENABLE_CALIBRATION {true} \
   CONFIG.CHANNEL_ENABLE_TEMPERATURE {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP12_VAUXN12 {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP4_VAUXN4 {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP6_VAUXN6 {false} \
   CONFIG.CHANNEL_ENABLE_VBRAM {false} \
   CONFIG.CHANNEL_ENABLE_VCCAUX {true} \
   CONFIG.CHANNEL_ENABLE_VCCINT {true} \
   CONFIG.CHANNEL_ENABLE_VP_VN {false} \
   CONFIG.DCLK_FREQUENCY {100.0} \
   CONFIG.ENABLE_AXI4STREAM {false} \
   CONFIG.ENABLE_EXTERNAL_MUX {true} \
   CONFIG.EXTERNAL_MUX_CHANNEL {VAUXP4_VAUXN4} \
   CONFIG.OT_ALARM {false} \
   CONFIG.SEQUENCER_MODE {Off} \
   CONFIG.SINGLE_CHANNEL_ACQUISITION_TIME {false} \
   CONFIG.SINGLE_CHANNEL_SELECTION {TEMPERATURE} \
   CONFIG.TIMING_MODE {Continuous} \
   CONFIG.USER_TEMP_ALARM {false} \
   CONFIG.VCCAUX_ALARM {false} \
   CONFIG.VCCINT_ALARM {false} \
   CONFIG.XADC_STARUP_SELECTION {simultaneous_sampling} \
 ] $xadc_wiz_0

  set_property -dict [ list \
   CONFIG.PHASE {0.0} \
   CONFIG.CLK_DOMAIN {/clk_wiz_0_clk_out1} \
 ] [get_bd_pins /xadc_wiz_0/s_axi_aclk]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Vaux12_0_1 [get_bd_intf_ports AXI_bd_Vaux12] [get_bd_intf_pins xadc_wiz_0/Vaux12]
  connect_bd_intf_net -intf_net Vaux4_0_1 [get_bd_intf_ports AXI_bd_Vaux4] [get_bd_intf_pins xadc_wiz_0/Vaux4]
  connect_bd_intf_net -intf_net axi_emc_0_EMC_INTF [get_bd_intf_ports cellular_ram] [get_bd_intf_pins axi_emc_0/EMC_INTF]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports AXI_bd_gpio_led] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports AXI_bd_gpio_ledrgb] [get_bd_intf_pins axi_gpio_0/GPIO2]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_protocol_convert_0/M_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_protocol_convert_1_M_AXI [get_bd_intf_pins axi_protocol_convert_1/M_AXI] [get_bd_intf_pins axi_uart16550_0/S_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_2_M_AXI [get_bd_intf_pins axi_protocol_convert_2/M_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net axi_protocol_convert_3_M_AXI [get_bd_intf_pins axi_protocol_convert_3/M_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_4_M_AXI [get_bd_intf_pins axi_protocol_convert_4/M_AXI] [get_bd_intf_pins clk_wiz_1/s_axi_lite]
  connect_bd_intf_net -intf_net axi_protocol_convert_5_M_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_protocol_convert_5/M_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_6_M_AXI [get_bd_intf_pins axi_protocol_convert_6/M_AXI] [get_bd_intf_pins mdm_1/S_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_7_M_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins axi_protocol_convert_7/M_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_uart16550_0_UART [get_bd_intf_ports AXI_bd_usb_uart_UART] [get_bd_intf_pins axi_uart16550_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins microblaze_0/M_AXI_DC] [get_bd_intf_pins microblaze_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins microblaze_0/M_AXI_IC] [get_bd_intf_pins microblaze_0_axi_periph/S02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_emc_0/S_AXI_MEM] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_protocol_convert_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_protocol_convert_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins axi_protocol_convert_2/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins axi_protocol_convert_5/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins axi_protocol_convert_3/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_protocol_convert_4/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins axi_protocol_convert_6/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins axi_protocol_convert_7/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net AXI_bd_btn1_1 [get_bd_ports AXI_bd_btn1] [get_bd_pins axi_gpio_1/gpio_io_i]
  connect_bd_net -net axi_gpio_1_ip2intc_irpt [get_bd_pins axi_gpio_1/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In4]
  connect_bd_net -net axi_uart16550_0_ip2intc_irpt [get_bd_pins axi_uart16550_0/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In3]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_100M/dcm_locked]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_ports AXI_bd_pll_i] [get_bd_pins clk_wiz_1/clk_out1]
  connect_bd_net -net clk_wiz_1_clk_out2 [get_bd_ports AXI_bd_pll_q] [get_bd_pins clk_wiz_1/clk_out2]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_ports AXI_bd_clk_100mhz_out] [get_bd_pins axi_emc_0/rdclk] [get_bd_pins axi_emc_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_protocol_convert_1/aclk] [get_bd_pins axi_protocol_convert_2/aclk] [get_bd_pins axi_protocol_convert_3/aclk] [get_bd_pins axi_protocol_convert_4/aclk] [get_bd_pins axi_protocol_convert_5/aclk] [get_bd_pins axi_protocol_convert_6/aclk] [get_bd_pins axi_protocol_convert_7/aclk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_100mhz] [get_bd_pins clk_wiz_1/clk_in1] [get_bd_pins clk_wiz_1/s_axi_aclk] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_axi_periph/S01_ACLK] [get_bd_pins microblaze_0_axi_periph/S02_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net reset_1 [get_bd_ports AXI_bd_btn0] [get_bd_pins clk_wiz_0/reset] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_0_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_interconnect_aresetn [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins axi_protocol_convert_1/aresetn] [get_bd_pins axi_protocol_convert_2/aresetn] [get_bd_pins axi_protocol_convert_3/aresetn] [get_bd_pins axi_protocol_convert_4/aresetn] [get_bd_pins axi_protocol_convert_5/aresetn] [get_bd_pins axi_protocol_convert_6/aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins microblaze_0_axi_periph/S01_ARESETN] [get_bd_pins microblaze_0_axi_periph/S02_ARESETN] [get_bd_pins rst_clk_wiz_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_0_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_0_100M_peripheral_aresetn [get_bd_pins axi_emc_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins axi_protocol_convert_7/aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins clk_wiz_1/s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net sys_clock_1 [get_bd_ports AXI_bd_sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net xadc_wiz_0_ip2intc_irpt [get_bd_pins microblaze_0_xlconcat/In2] [get_bd_pins xadc_wiz_0/ip2intc_irpt]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins rst_clk_wiz_0_100M/aux_reset_in] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x02000000 -offset 0x60000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_emc_0/S_AXI_MEM/Mem0] SEG_axi_emc_0_Mem0
  create_bd_addr_seg -range 0x02000000 -offset 0x60000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_emc_0/S_AXI_MEM/Mem0] SEG_axi_emc_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A30000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs clk_wiz_1/s_axi_lite/Reg] SEG_clk_wiz_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A30000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs clk_wiz_1/s_axi_lite/Reg] SEG_clk_wiz_1_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] SEG_xadc_wiz_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


