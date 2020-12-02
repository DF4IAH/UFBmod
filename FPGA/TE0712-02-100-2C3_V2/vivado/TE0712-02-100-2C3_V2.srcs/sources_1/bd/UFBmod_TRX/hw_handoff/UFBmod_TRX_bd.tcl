
################################################################
# This is a generated script based on design: UFBmod_TRX
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
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source UFBmod_TRX_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# TRX_post_fft_rx09_addr_decoder, TRX_FIFO_Arbiter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg484-2
   set_property BOARD_PART trenz.biz:te0712_100_2c:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name UFBmod_TRX

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
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: delay_rx09_3459minus1024clk
proc create_hier_cell_delay_rx09_3459minus1024clk { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_delay_rx09_3459minus1024clk() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 29 -to 0 RF09_framectr
  create_bd_pin -dir I -from 1 -to 0 -type data RF09_quarterfrm
  create_bd_pin -dir O -from 31 -to 0 -type data premem_rx09_quarterfrm_out
  create_bd_pin -dir I -type rst reset_CD100_i
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_i

  # Create instance: c_shift_ram_dly386_1, and set properties
  set c_shift_ram_dly386_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_dly386_1 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00000000000000000000000000000000} \
   CONFIG.DefaultData {00000000000000000000000000000000} \
   CONFIG.Depth {386} \
   CONFIG.OptGoal {Resources} \
   CONFIG.SCLR {true} \
   CONFIG.ShiftRegType {Fixed_Length} \
   CONFIG.SyncInitVal {00000000000000000000000000000000} \
   CONFIG.Width {32} \
 ] $c_shift_ram_dly386_1

  # Create instance: fifo_generator_dly2049_0, and set properties
  set fifo_generator_dly2049_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_dly2049_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {11} \
   CONFIG.Fifo_Implementation {Common_Clock_Builtin_FIFO} \
   CONFIG.Full_Threshold_Assert_Value {2046} \
   CONFIG.Full_Threshold_Negate_Value {2045} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {2048} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {2048} \
   CONFIG.Read_Data_Count_Width {11} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
   CONFIG.Write_Data_Count_Width {11} \
 ] $fifo_generator_dly2049_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {2} \
   CONFIG.IN1_WIDTH {30} \
 ] $xlconcat_0

  # Create instance: xlconstant_val1_len1, and set properties
  set xlconstant_val1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val1_len1 ]

  # Create port connections
  connect_bd_net -net RF09_framectr_0 [get_bd_pins RF09_framectr] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net RF09_quarterfrm_0 [get_bd_pins RF09_quarterfrm] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net c_shift_ram_dly126_3_Q [get_bd_pins premem_rx09_quarterfrm_out] [get_bd_pins c_shift_ram_dly386_1/Q]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins c_shift_ram_dly386_1/D] [get_bd_pins fifo_generator_dly2049_0/dout]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset [get_bd_pins reset_CD100_i] [get_bd_pins c_shift_ram_dly386_1/SCLR] [get_bd_pins fifo_generator_dly2049_0/rst]
  connect_bd_net -net s_axi_aclk_CD100 [get_bd_pins s_axi_aclk_CD100_i] [get_bd_pins c_shift_ram_dly386_1/CLK] [get_bd_pins fifo_generator_dly2049_0/clk]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins fifo_generator_dly2049_0/din] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_val1_len1_dout [get_bd_pins fifo_generator_dly2049_0/rd_en] [get_bd_pins fifo_generator_dly2049_0/wr_en] [get_bd_pins xlconstant_val1_len1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PULLDATA
proc create_hier_cell_PULLDATA { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PULLDATA() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 Din
  create_bd_pin -dir O TRX_TX_RF09_PULLDATA_FIFO_empty
  create_bd_pin -dir O -from 11 -to 0 TRX_tx_data_count
  create_bd_pin -dir O -from 0 -to 0 encoder_pull_FIFO_dump
  create_bd_pin -dir O -from 6 -to 0 encoder_pull_data_len
  create_bd_pin -dir O -from 0 -to 0 encoder_pull_do_start
  create_bd_pin -dir O -from 31 -to 0 fifo_empty
  create_bd_pin -dir O -from 7 -to 0 pulldata_tx09_byteData
  create_bd_pin -dir I pulldata_tx09_en
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I ui_clk_sync_rst

  # Create instance: pulldata_tx09_c_shift_ram_0, and set properties
  set pulldata_tx09_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 pulldata_tx09_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {1} \
   CONFIG.SCLR {true} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $pulldata_tx09_c_shift_ram_0

  # Create instance: pulldata_tx09_fifo_generator_0, and set properties
  set pulldata_tx09_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 pulldata_tx09_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count {true} \
   CONFIG.Data_Count_Width {12} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
   CONFIG.Full_Threshold_Assert_Value {4094} \
   CONFIG.Full_Threshold_Negate_Value {4093} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {4096} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Output_Depth {4096} \
   CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
   CONFIG.Read_Data_Count_Width {12} \
   CONFIG.Reset_Type {Synchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Use_Extra_Logic {false} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Data_Count_Width {12} \
 ] $pulldata_tx09_fifo_generator_0

  # Create instance: pulldata_tx09_util_reduced_logic_0, and set properties
  set pulldata_tx09_util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 pulldata_tx09_util_reduced_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {2} \
 ] $pulldata_tx09_util_reduced_logic_0

  # Create instance: pulldata_tx09_util_vector_logic_0, and set properties
  set pulldata_tx09_util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 pulldata_tx09_util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $pulldata_tx09_util_vector_logic_0

  # Create instance: pulldata_tx09_xlconcat_1, and set properties
  set pulldata_tx09_xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 pulldata_tx09_xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
 ] $pulldata_tx09_xlconcat_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {31} \
   CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_0

  # Create instance: xlslice_14to8, and set properties
  set xlslice_14to8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_14to8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {8} \
   CONFIG.DOUT_WIDTH {7} \
 ] $xlslice_14to8

  # Create instance: xlslice_28to28, and set properties
  set xlslice_28to28 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_28to28 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {28} \
   CONFIG.DIN_TO {28} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_28to28

  # Create instance: xlslice_29to29, and set properties
  set xlslice_29to29 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_29to29 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {29} \
   CONFIG.DIN_TO {29} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_29to29

  # Create instance: xlslice_30to30, and set properties
  set xlslice_30to30 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_30to30 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {30} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_30to30

  # Create instance: xlslice_7to0, and set properties
  set xlslice_7to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_7to0

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins Din] [get_bd_pins xlslice_14to8/Din] [get_bd_pins xlslice_28to28/Din] [get_bd_pins xlslice_29to29/Din] [get_bd_pins xlslice_30to30/Din] [get_bd_pins xlslice_7to0/Din]
  connect_bd_net -net TRX_TX_RF09_PULLDATA_FIFO_empty [get_bd_pins TRX_TX_RF09_PULLDATA_FIFO_empty] [get_bd_pins pulldata_tx09_fifo_generator_0/empty] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net TRX_tx_data_count_0 [get_bd_pins TRX_tx_data_count] [get_bd_pins pulldata_tx09_fifo_generator_0/data_count]
  connect_bd_net -net pulldata_tx09_c_shift_ram_0_Q [get_bd_pins pulldata_tx09_c_shift_ram_0/Q] [get_bd_pins pulldata_tx09_util_vector_logic_0/Op1]
  connect_bd_net -net pulldata_tx09_en_1 [get_bd_pins pulldata_tx09_en] [get_bd_pins pulldata_tx09_fifo_generator_0/rd_en]
  connect_bd_net -net pulldata_tx09_fifo_generator_0_dout [get_bd_pins pulldata_tx09_byteData] [get_bd_pins pulldata_tx09_fifo_generator_0/dout]
  connect_bd_net -net pulldata_tx09_util_reduced_logic_0_Res [get_bd_pins pulldata_tx09_fifo_generator_0/wr_en] [get_bd_pins pulldata_tx09_util_reduced_logic_0/Res]
  connect_bd_net -net pulldata_tx09_util_vector_logic_0_Res [get_bd_pins pulldata_tx09_util_vector_logic_0/Res] [get_bd_pins pulldata_tx09_xlconcat_1/In1]
  connect_bd_net -net pulldata_tx09_xlconcat_1_dout [get_bd_pins pulldata_tx09_util_reduced_logic_0/Op1] [get_bd_pins pulldata_tx09_xlconcat_1/dout]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins pulldata_tx09_c_shift_ram_0/CLK] [get_bd_pins pulldata_tx09_fifo_generator_0/clk]
  connect_bd_net -net ui_clk_sync_rst_1 [get_bd_pins ui_clk_sync_rst] [get_bd_pins pulldata_tx09_c_shift_ram_0/SCLR] [get_bd_pins pulldata_tx09_fifo_generator_0/srst]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins fifo_empty] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_15to8_Dout [get_bd_pins encoder_pull_data_len] [get_bd_pins xlslice_14to8/Dout]
  connect_bd_net -net xlslice_28to28_Dout [get_bd_pins encoder_pull_FIFO_dump] [get_bd_pins xlslice_28to28/Dout]
  connect_bd_net -net xlslice_29to29_Dout [get_bd_pins encoder_pull_do_start] [get_bd_pins xlslice_29to29/Dout]
  connect_bd_net -net xlslice_30to30_Dout [get_bd_pins pulldata_tx09_c_shift_ram_0/D] [get_bd_pins pulldata_tx09_xlconcat_1/In0] [get_bd_pins xlslice_30to30/Dout]
  connect_bd_net -net xlslice_7to0_Dout [get_bd_pins pulldata_tx09_fifo_generator_0/din] [get_bd_pins xlslice_7to0/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_rx_FFT_calc
proc create_hier_cell_TRX_rx_FFT_calc { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_rx_FFT_calc() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 9 -to 0 FFT_window_coef_rom_rx09
  create_bd_pin -dir I -from 29 -to 0 RF09_framectr
  create_bd_pin -dir I -from 1 -to 0 -type data RF09_quarterfrm
  create_bd_pin -dir I -type rst aresetn_CD100_in
  create_bd_pin -dir O -from 41 -to 0 cordic_rx09_m_tuser_out
  create_bd_pin -dir O cordic_rx09_tvalid_out
  create_bd_pin -dir I -from 7 -to 0 fft09_config_tdata_in
  create_bd_pin -dir I fft09_config_tvalid_in
  create_bd_pin -dir I fft09_data_tlast_in
  create_bd_pin -dir O fft09_data_tready_out
  create_bd_pin -dir I fft09_data_tvalid_in
  create_bd_pin -dir I -from 12 -to 0 fft_s_data_rx09_im_in
  create_bd_pin -dir I -from 12 -to 0 fft_s_data_rx09_re_in
  create_bd_pin -dir I -type rst rst_mig_7series_0_100M_peripheral_reset_in
  create_bd_pin -dir O -from 15 -to 0 rx09_postmem_magnitude_out
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_in
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_data_in_channel_halt_out
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_frame_started_out
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_tlast_missing_out
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_tlast_unexpected_out

  # Create instance: cordic_rx09, and set properties
  set cordic_rx09 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_rx09 ]
  set_property -dict [ list \
   CONFIG.ARESETN {true} \
   CONFIG.Coarse_Rotation {true} \
   CONFIG.Compensation_Scaling {Embedded_Multiplier} \
   CONFIG.Data_Format {SignedFraction} \
   CONFIG.Functional_Selection {Translate} \
   CONFIG.Input_Width {27} \
   CONFIG.Output_Width {16} \
   CONFIG.Round_Mode {Nearest_Even} \
   CONFIG.cartesian_has_tlast {true} \
   CONFIG.cartesian_has_tuser {true} \
   CONFIG.cartesian_tuser_width {42} \
   CONFIG.out_tlast_behv {Pass_Cartesian_TLAST} \
 ] $cordic_rx09

  # Create instance: cordic_rx09_addra_xlslice_9to0, and set properties
  set cordic_rx09_addra_xlslice_9to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 cordic_rx09_addra_xlslice_9to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {10} \
 ] $cordic_rx09_addra_xlslice_9to0

  # Create instance: cordic_rx09_xlconcat_0, and set properties
  set cordic_rx09_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 cordic_rx09_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {10} \
   CONFIG.IN1_WIDTH {32} \
 ] $cordic_rx09_xlconcat_0

  # Create instance: delay_rx09_3459minus1024clk
  create_hier_cell_delay_rx09_3459minus1024clk $hier_obj delay_rx09_3459minus1024clk

  # Create instance: fft_rx09_s_data_xlconcat_0, and set properties
  set fft_rx09_s_data_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 fft_rx09_s_data_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {16} \
   CONFIG.IN1_WIDTH {16} \
   CONFIG.IN2_WIDTH {13} \
   CONFIG.IN3_WIDTH {3} \
   CONFIG.IN4_WIDTH {13} \
   CONFIG.IN5_WIDTH {3} \
   CONFIG.IN6_WIDTH {13} \
   CONFIG.IN7_WIDTH {3} \
   CONFIG.NUM_PORTS {2} \
 ] $fft_rx09_s_data_xlconcat_0

  # Create instance: rx09_xlslice_15to0, and set properties
  set rx09_xlslice_15to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 rx09_xlslice_15to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {16} \
 ] $rx09_xlslice_15to0

  # Create instance: window_coef_rom_blk_mem_gen_0, and set properties
  set window_coef_rom_blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 window_coef_rom_blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../new/window_hann_1024_16bit_unsigned.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Port_B_Clock {0} \
   CONFIG.Port_B_Enable_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Core {true} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Core {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {1024} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $window_coef_rom_blk_mem_gen_0

  # Create instance: window_rx09_im_mult_gen_0, and set properties
  set window_rx09_im_mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 window_rx09_im_mult_gen_0 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {28} \
   CONFIG.OutputWidthLow {13} \
   CONFIG.PipeStages {3} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {13} \
   CONFIG.PortBType {Unsigned} \
   CONFIG.PortBWidth {16} \
   CONFIG.RoundPoint {13} \
   CONFIG.UseRounding {true} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $window_rx09_im_mult_gen_0

  # Create instance: window_rx09_re_mult_gen_0, and set properties
  set window_rx09_re_mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 window_rx09_re_mult_gen_0 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {28} \
   CONFIG.OutputWidthLow {13} \
   CONFIG.PipeStages {3} \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {13} \
   CONFIG.PortBType {Unsigned} \
   CONFIG.PortBWidth {16} \
   CONFIG.RoundPoint {13} \
   CONFIG.UseRounding {true} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $window_rx09_re_mult_gen_0

  # Create instance: xfft_rx09_dly3459, and set properties
  set xfft_rx09_dly3459 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_rx09_dly3459 ]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.butterfly_type {use_xtremedsp_slices} \
   CONFIG.channels {1} \
   CONFIG.complex_mult_type {use_mults_performance} \
   CONFIG.cyclic_prefix_insertion {false} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {radix_4_burst_io} \
   CONFIG.input_width {16} \
   CONFIG.memory_options_data {block_ram} \
   CONFIG.memory_options_hybrid {true} \
   CONFIG.memory_options_phase_factors {block_ram} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {0} \
   CONFIG.output_ordering {bit_reversed_order} \
   CONFIG.rounding_modes {convergent_rounding} \
   CONFIG.scaling_options {unscaled} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.target_data_throughput {50} \
   CONFIG.throttle_scheme {realtime} \
   CONFIG.transform_length {1024} \
   CONFIG.xk_index {true} \
 ] $xfft_rx09_dly3459

  # Create port connections
  connect_bd_net -net FFT_window_coef_rom_rx09_1 [get_bd_pins FFT_window_coef_rom_rx09] [get_bd_pins window_coef_rom_blk_mem_gen_0/addra]
  connect_bd_net -net RF09_framectr_0 [get_bd_pins RF09_framectr] [get_bd_pins delay_rx09_3459minus1024clk/RF09_framectr]
  connect_bd_net -net RF09_quarterfrm_0 [get_bd_pins RF09_quarterfrm] [get_bd_pins delay_rx09_3459minus1024clk/RF09_quarterfrm]
  connect_bd_net -net TRX_rx_xfft_dly8334_m_axis_data_tlast_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tlast] [get_bd_pins xfft_rx09_dly3459/m_axis_data_tlast]
  connect_bd_net -net TRX_rx_xfft_dly8334_m_axis_data_tvalid_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tvalid] [get_bd_pins xfft_rx09_dly3459/m_axis_data_tvalid]
  connect_bd_net -net aresetn_CD100_0 [get_bd_pins aresetn_CD100_in] [get_bd_pins cordic_rx09/aresetn] [get_bd_pins xfft_rx09_dly3459/aresetn]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins window_coef_rom_blk_mem_gen_0/douta] [get_bd_pins window_rx09_im_mult_gen_0/B] [get_bd_pins window_rx09_re_mult_gen_0/B]
  connect_bd_net -net cordic_rx09_addra_xlslice_9to0_Dout [get_bd_pins cordic_rx09_addra_xlslice_9to0/Dout] [get_bd_pins cordic_rx09_xlconcat_0/In0]
  connect_bd_net -net cordic_rx09_m_axis_dout_tdata [get_bd_pins cordic_rx09/m_axis_dout_tdata] [get_bd_pins rx09_xlslice_15to0/Din]
  connect_bd_net -net cordic_rx09_m_tuser_out_0 [get_bd_pins cordic_rx09_m_tuser_out] [get_bd_pins cordic_rx09/m_axis_dout_tuser]
  connect_bd_net -net cordic_rx09_tvalid_out_0 [get_bd_pins cordic_rx09_tvalid_out] [get_bd_pins cordic_rx09/m_axis_dout_tvalid]
  connect_bd_net -net cordic_rx09_xlconcat_0_dout [get_bd_pins cordic_rx09/s_axis_cartesian_tuser] [get_bd_pins cordic_rx09_xlconcat_0/dout]
  connect_bd_net -net delay_rx09_3459minus1024clk_premem_rx09_quarterfrm_out [get_bd_pins cordic_rx09_xlconcat_0/In1] [get_bd_pins delay_rx09_3459minus1024clk/premem_rx09_quarterfrm_out]
  connect_bd_net -net fft09_config_tdata_in_0 [get_bd_pins fft09_config_tdata_in] [get_bd_pins xfft_rx09_dly3459/s_axis_config_tdata]
  connect_bd_net -net fft09_config_tvalid_in_0 [get_bd_pins fft09_config_tvalid_in] [get_bd_pins xfft_rx09_dly3459/s_axis_config_tvalid]
  connect_bd_net -net fft09_data_tlast_in_0 [get_bd_pins fft09_data_tlast_in] [get_bd_pins xfft_rx09_dly3459/s_axis_data_tlast]
  connect_bd_net -net fft09_data_tready_out_0 [get_bd_pins fft09_data_tready_out] [get_bd_pins xfft_rx09_dly3459/s_axis_data_tready]
  connect_bd_net -net fft09_data_tvalid_in_0 [get_bd_pins fft09_data_tvalid_in] [get_bd_pins xfft_rx09_dly3459/s_axis_data_tvalid]
  connect_bd_net -net fft09_s_data_xlconcat_0_dout [get_bd_pins fft_rx09_s_data_xlconcat_0/dout] [get_bd_pins xfft_rx09_dly3459/s_axis_data_tdata]
  connect_bd_net -net fft_s_data_rx09_im_in_0 [get_bd_pins fft_s_data_rx09_im_in] [get_bd_pins window_rx09_im_mult_gen_0/A]
  connect_bd_net -net fft_s_data_rx09_re_in_0 [get_bd_pins fft_s_data_rx09_re_in] [get_bd_pins window_rx09_re_mult_gen_0/A]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_0 [get_bd_pins rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins delay_rx09_3459minus1024clk/reset_CD100_i]
  connect_bd_net -net rx09_postmem_magnitude_0 [get_bd_pins rx09_postmem_magnitude_out] [get_bd_pins rx09_xlslice_15to0/Dout]
  connect_bd_net -net s_axi_aclk_CD100_0 [get_bd_pins s_axi_aclk_CD100_in] [get_bd_pins cordic_rx09/aclk] [get_bd_pins delay_rx09_3459minus1024clk/s_axi_aclk_CD100_i] [get_bd_pins window_coef_rom_blk_mem_gen_0/clka] [get_bd_pins window_rx09_im_mult_gen_0/CLK] [get_bd_pins window_rx09_re_mult_gen_0/CLK] [get_bd_pins xfft_rx09_dly3459/aclk]
  connect_bd_net -net window_rx09_im_mult_gen_0_P [get_bd_pins fft_rx09_s_data_xlconcat_0/In1] [get_bd_pins window_rx09_im_mult_gen_0/P]
  connect_bd_net -net window_rx09_re_mult_gen_0_P [get_bd_pins fft_rx09_s_data_xlconcat_0/In0] [get_bd_pins window_rx09_re_mult_gen_0/P]
  connect_bd_net -net xfft_rx09_dly3198_m_axis_data_tdata_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tdata] [get_bd_pins xfft_rx09_dly3459/m_axis_data_tdata]
  connect_bd_net -net xfft_rx09_dly3198_m_axis_data_tuser [get_bd_pins cordic_rx09_addra_xlslice_9to0/Din] [get_bd_pins xfft_rx09_dly3459/m_axis_data_tuser]
  connect_bd_net -net xfft_rx09_dly3449_event_data_in_channel_halt_out_0 [get_bd_pins xfft_rx09_dly3449_event_data_in_channel_halt_out] [get_bd_pins xfft_rx09_dly3459/event_data_in_channel_halt]
  connect_bd_net -net xfft_rx09_dly3449_event_frame_started_out_0 [get_bd_pins xfft_rx09_dly3449_event_frame_started_out] [get_bd_pins xfft_rx09_dly3459/event_frame_started]
  connect_bd_net -net xfft_rx09_dly3449_event_tlast_missing_out_0 [get_bd_pins xfft_rx09_dly3449_event_tlast_missing_out] [get_bd_pins xfft_rx09_dly3459/event_tlast_missing]
  connect_bd_net -net xfft_rx09_dly3449_event_tlast_unexpected_out_0 [get_bd_pins xfft_rx09_dly3449_event_tlast_unexpected_out] [get_bd_pins xfft_rx09_dly3459/event_tlast_unexpected]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PUSHDATA
proc create_hier_cell_PUSHDATA { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PUSHDATA() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir O TRX_PUSHDATA_ch00_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch00_req
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch01_din
  create_bd_pin -dir O TRX_PUSHDATA_ch01_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch01_req
  create_bd_pin -dir I TRX_PUSHDATA_ch01_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch02_din
  create_bd_pin -dir O TRX_PUSHDATA_ch02_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch02_req
  create_bd_pin -dir I TRX_PUSHDATA_ch02_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch03_din
  create_bd_pin -dir O TRX_PUSHDATA_ch03_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch03_req
  create_bd_pin -dir I TRX_PUSHDATA_ch03_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch04_din
  create_bd_pin -dir O TRX_PUSHDATA_ch04_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch04_req
  create_bd_pin -dir I TRX_PUSHDATA_ch04_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch05_din
  create_bd_pin -dir O TRX_PUSHDATA_ch05_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch05_req
  create_bd_pin -dir I TRX_PUSHDATA_ch05_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch06_din
  create_bd_pin -dir O TRX_PUSHDATA_ch06_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch06_req
  create_bd_pin -dir I TRX_PUSHDATA_ch06_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch07_din
  create_bd_pin -dir O TRX_PUSHDATA_ch07_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch07_req
  create_bd_pin -dir I TRX_PUSHDATA_ch07_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_din
  create_bd_pin -dir I TRX_PUSHDATA_wr_en
  create_bd_pin -dir O -from 31 -to 0 TRX_RX_PUSHDATA_GPIO1_i
  create_bd_pin -dir I -from 31 -to 0 TRX_RX_PUSHDATA_GPIO2_o
  create_bd_pin -dir O -from 15 -to 0 decoder_rx09_squelch_lvl
  create_bd_pin -dir I -type rst rst_mig_7series_0_100M_peripheral_reset_in
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_in
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: TRX_FIFO_Arbiter_0, and set properties
  set block_name TRX_FIFO_Arbiter
  set block_cell_name TRX_FIFO_Arbiter_0
  if { [catch {set TRX_FIFO_Arbiter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $TRX_FIFO_Arbiter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Fifo_Implementation {Common_Clock_Shift_Register} \
   CONFIG.Full_Flags_Reset_Value {0} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Reset_Type {Synchronous_Reset} \
 ] $fifo_generator_0

  # Create instance: pushdata_rx09_c_shift_ram_0, and set properties
  set pushdata_rx09_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 pushdata_rx09_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {1} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $pushdata_rx09_c_shift_ram_0

  # Create instance: pushdata_rx09_util_reduced_logic_0, and set properties
  set pushdata_rx09_util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 pushdata_rx09_util_reduced_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {2} \
 ] $pushdata_rx09_util_reduced_logic_0

  # Create instance: pushdata_rx09_xlconcat_0, and set properties
  set pushdata_rx09_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 pushdata_rx09_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {22} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.NUM_PORTS {4} \
 ] $pushdata_rx09_xlconcat_0

  # Create instance: pushdata_rx09_xlconcat_1, and set properties
  set pushdata_rx09_xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 pushdata_rx09_xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
 ] $pushdata_rx09_xlconcat_1

  # Create instance: pushdata_rx09_xlslice_31to16, and set properties
  set pushdata_rx09_xlslice_31to16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pushdata_rx09_xlslice_31to16 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $pushdata_rx09_xlslice_31to16

  # Create instance: pushdata_rx09_xlslice_8to8, and set properties
  set pushdata_rx09_xlslice_8to8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pushdata_rx09_xlslice_8to8 ]

  # Create port connections
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch00_grant [get_bd_pins TRX_PUSHDATA_ch00_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch00_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch01_grant [get_bd_pins TRX_PUSHDATA_ch01_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch01_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch02_grant [get_bd_pins TRX_PUSHDATA_ch02_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch02_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch03_grant [get_bd_pins TRX_PUSHDATA_ch03_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch03_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch04_grant [get_bd_pins TRX_PUSHDATA_ch04_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch04_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch05_grant [get_bd_pins TRX_PUSHDATA_ch05_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch05_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch06_grant [get_bd_pins TRX_PUSHDATA_ch06_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch06_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_ch07_grant [get_bd_pins TRX_PUSHDATA_ch07_grant] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch07_grant]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_din [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_din] [get_bd_pins fifo_generator_0/din]
  connect_bd_net -net TRX_FIFO_Arbiter_0_TRX_PUSHDATA_wr_en [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_wr_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch00_req_1 [get_bd_pins TRX_PUSHDATA_ch00_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch00_req]
  connect_bd_net -net TRX_PUSHDATA_ch01_din_1 [get_bd_pins TRX_PUSHDATA_ch01_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch01_din]
  connect_bd_net -net TRX_PUSHDATA_ch01_req_1 [get_bd_pins TRX_PUSHDATA_ch01_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch01_req]
  connect_bd_net -net TRX_PUSHDATA_ch01_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch01_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch01_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch02_din_1 [get_bd_pins TRX_PUSHDATA_ch02_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch02_din]
  connect_bd_net -net TRX_PUSHDATA_ch02_req_1 [get_bd_pins TRX_PUSHDATA_ch02_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch02_req]
  connect_bd_net -net TRX_PUSHDATA_ch02_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch02_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch02_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch03_din_1 [get_bd_pins TRX_PUSHDATA_ch03_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch03_din]
  connect_bd_net -net TRX_PUSHDATA_ch03_req_1 [get_bd_pins TRX_PUSHDATA_ch03_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch03_req]
  connect_bd_net -net TRX_PUSHDATA_ch03_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch03_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch03_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch04_din_1 [get_bd_pins TRX_PUSHDATA_ch04_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch04_din]
  connect_bd_net -net TRX_PUSHDATA_ch04_req_1 [get_bd_pins TRX_PUSHDATA_ch04_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch04_req]
  connect_bd_net -net TRX_PUSHDATA_ch04_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch04_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch04_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch05_din_1 [get_bd_pins TRX_PUSHDATA_ch05_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch05_din]
  connect_bd_net -net TRX_PUSHDATA_ch05_req_1 [get_bd_pins TRX_PUSHDATA_ch05_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch05_req]
  connect_bd_net -net TRX_PUSHDATA_ch05_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch05_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch05_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch06_din_1 [get_bd_pins TRX_PUSHDATA_ch06_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch06_din]
  connect_bd_net -net TRX_PUSHDATA_ch06_req_1 [get_bd_pins TRX_PUSHDATA_ch06_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch06_req]
  connect_bd_net -net TRX_PUSHDATA_ch06_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch06_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch06_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch07_din_1 [get_bd_pins TRX_PUSHDATA_ch07_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch07_din]
  connect_bd_net -net TRX_PUSHDATA_ch07_req_1 [get_bd_pins TRX_PUSHDATA_ch07_req] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch07_req]
  connect_bd_net -net TRX_PUSHDATA_ch07_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch07_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch07_wr_en]
  connect_bd_net -net TRX_PUSHDATA_din_1 [get_bd_pins TRX_PUSHDATA_din] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch00_din]
  connect_bd_net -net TRX_PUSHDATA_wr_en_1 [get_bd_pins TRX_PUSHDATA_wr_en] [get_bd_pins TRX_FIFO_Arbiter_0/TRX_PUSHDATA_ch00_wr_en]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins pushdata_rx09_xlconcat_0/In0]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_generator_0/empty] [get_bd_pins pushdata_rx09_xlconcat_0/In2]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins fifo_generator_0/full] [get_bd_pins pushdata_rx09_xlconcat_0/In3]
  connect_bd_net -net pushdata_rx09_axi_gpio_0_gpio2_io_o [get_bd_pins TRX_RX_PUSHDATA_GPIO2_o] [get_bd_pins pushdata_rx09_xlslice_31to16/Din] [get_bd_pins pushdata_rx09_xlslice_8to8/Din]
  connect_bd_net -net pushdata_rx09_c_shift_ram_0_Q [get_bd_pins pushdata_rx09_c_shift_ram_0/Q] [get_bd_pins pushdata_rx09_xlconcat_1/In1]
  connect_bd_net -net pushdata_rx09_util_reduced_logic_0_Res [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins pushdata_rx09_util_reduced_logic_0/Res]
  connect_bd_net -net pushdata_rx09_xlconcat_0_dout [get_bd_pins TRX_RX_PUSHDATA_GPIO1_i] [get_bd_pins pushdata_rx09_xlconcat_0/dout]
  connect_bd_net -net pushdata_rx09_xlconcat_1_dout [get_bd_pins pushdata_rx09_util_reduced_logic_0/Op1] [get_bd_pins pushdata_rx09_xlconcat_1/dout]
  connect_bd_net -net pushdata_rx09_xlslice_18to0_Dout [get_bd_pins decoder_rx09_squelch_lvl] [get_bd_pins pushdata_rx09_xlslice_31to16/Dout]
  connect_bd_net -net pushdata_rx09_xlslice_8to8_Dout [get_bd_pins pushdata_rx09_c_shift_ram_0/D] [get_bd_pins pushdata_rx09_xlconcat_1/In0] [get_bd_pins pushdata_rx09_xlslice_8to8/Dout]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_in_1 [get_bd_pins rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins TRX_FIFO_Arbiter_0/reset_100MHz] [get_bd_pins fifo_generator_0/srst]
  connect_bd_net -net s_axi_aclk_CD100_0 [get_bd_pins s_axi_aclk_CD100_in] [get_bd_pins TRX_FIFO_Arbiter_0/clk_100MHz] [get_bd_pins fifo_generator_0/clk] [get_bd_pins pushdata_rx09_c_shift_ram_0/CLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_tx_concat
proc create_hier_cell_TRX_tx_concat { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_tx_concat() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 TRX_config_LVDS_tx_blank_in
  create_bd_pin -dir I -from 0 -to 0 TRX_dds_tx_rf09_ptt
  create_bd_pin -dir O -from 31 -to 0 TRX_tx09_fifo_din
  create_bd_pin -dir I -from 7 -to 0 TRX_tx09_fifo_dout
  create_bd_pin -dir O -from 15 -to 0 TRX_tx_data_out_from_device_in
  create_bd_pin -dir I -from 20 -to 8 TRX_tx_im_out
  create_bd_pin -dir I -from 20 -to 8 TRX_tx_re_out
  create_bd_pin -dir I -type clk clk_div_out

  # Create instance: TRX_blank_tx_c_shift_ram_0, and set properties
  set TRX_blank_tx_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 TRX_blank_tx_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $TRX_blank_tx_c_shift_ram_0

  # Create instance: TRX_blank_tx_util_vector_logic_0, and set properties
  set TRX_blank_tx_util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 TRX_blank_tx_util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {16} \
 ] $TRX_blank_tx_util_vector_logic_0

  # Create instance: TRX_blank_tx_util_vector_logic_1, and set properties
  set TRX_blank_tx_util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 TRX_blank_tx_util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $TRX_blank_tx_util_vector_logic_1

  # Create instance: TRX_blank_tx_xlconcat_0, and set properties
  set TRX_blank_tx_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_blank_tx_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN10_WIDTH {1} \
   CONFIG.IN11_WIDTH {1} \
   CONFIG.IN12_WIDTH {1} \
   CONFIG.IN13_WIDTH {1} \
   CONFIG.IN14_WIDTH {1} \
   CONFIG.IN15_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {1} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {1} \
   CONFIG.NUM_PORTS {16} \
 ] $TRX_blank_tx_xlconcat_0

  # Create instance: TRX_tx_LVDS_interleave_xlconcat_0, and set properties
  set TRX_tx_LVDS_interleave_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_tx_LVDS_interleave_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $TRX_tx_LVDS_interleave_xlconcat_0

  # Create instance: TRX_tx_word_format_xlconcat_0, and set properties
  set TRX_tx_word_format_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_tx_word_format_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {13} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {13} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {1} \
   CONFIG.NUM_PORTS {8} \
 ] $TRX_tx_word_format_xlconcat_0

  # Create instance: xlconstant_val0_len1, and set properties
  set xlconstant_val0_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val0_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_val0_len1

  # Create instance: xlconstant_val1_len1, and set properties
  set xlconstant_val1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val1_len1 ]

  # Create instance: xlslice_00to00, and set properties
  set xlslice_00to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_00to00 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {8} \
 ] $xlslice_00to00

  # Create instance: xlslice_01to01, and set properties
  set xlslice_01to01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_01to01 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_01to01

  # Create instance: xlslice_02to02, and set properties
  set xlslice_02to02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_02to02 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_02to02

  # Create instance: xlslice_03to03, and set properties
  set xlslice_03to03 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_03to03 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_03to03

  # Create instance: xlslice_04to04, and set properties
  set xlslice_04to04 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_04to04 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_04to04

  # Create instance: xlslice_05to05, and set properties
  set xlslice_05to05 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_05to05 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_05to05

  # Create instance: xlslice_06to06, and set properties
  set xlslice_06to06 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_06to06 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_06to06

  # Create instance: xlslice_07to07, and set properties
  set xlslice_07to07 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_07to07 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_07to07

  # Create port connections
  connect_bd_net -net TRX_blank_tx_c_shift_ram_0_Q [get_bd_pins TRX_blank_tx_c_shift_ram_0/Q] [get_bd_pins TRX_blank_tx_util_vector_logic_1/Op1]
  connect_bd_net -net TRX_blank_tx_util_vector_logic_0_Res [get_bd_pins TRX_tx_data_out_from_device_in] [get_bd_pins TRX_blank_tx_util_vector_logic_0/Res]
  connect_bd_net -net TRX_blank_tx_xlconcat_0_dout [get_bd_pins TRX_blank_tx_util_vector_logic_0/Op2] [get_bd_pins TRX_blank_tx_xlconcat_0/dout]
  connect_bd_net -net TRX_config_LVDS_tx_blank_in_1 [get_bd_pins TRX_config_LVDS_tx_blank_in] [get_bd_pins TRX_blank_tx_c_shift_ram_0/D]
  connect_bd_net -net TRX_config_LVDS_tx_blankn_0 [get_bd_pins TRX_blank_tx_util_vector_logic_1/Res] [get_bd_pins TRX_blank_tx_xlconcat_0/In0] [get_bd_pins TRX_blank_tx_xlconcat_0/In1] [get_bd_pins TRX_blank_tx_xlconcat_0/In2] [get_bd_pins TRX_blank_tx_xlconcat_0/In3] [get_bd_pins TRX_blank_tx_xlconcat_0/In4] [get_bd_pins TRX_blank_tx_xlconcat_0/In5] [get_bd_pins TRX_blank_tx_xlconcat_0/In6] [get_bd_pins TRX_blank_tx_xlconcat_0/In7] [get_bd_pins TRX_blank_tx_xlconcat_0/In8] [get_bd_pins TRX_blank_tx_xlconcat_0/In9] [get_bd_pins TRX_blank_tx_xlconcat_0/In10] [get_bd_pins TRX_blank_tx_xlconcat_0/In11] [get_bd_pins TRX_blank_tx_xlconcat_0/In12] [get_bd_pins TRX_blank_tx_xlconcat_0/In13] [get_bd_pins TRX_blank_tx_xlconcat_0/In14] [get_bd_pins TRX_blank_tx_xlconcat_0/In15]
  connect_bd_net -net TRX_tx09_fifo_dout_0 [get_bd_pins TRX_tx09_fifo_dout] [get_bd_pins xlslice_00to00/Din] [get_bd_pins xlslice_01to01/Din] [get_bd_pins xlslice_02to02/Din] [get_bd_pins xlslice_03to03/Din] [get_bd_pins xlslice_04to04/Din] [get_bd_pins xlslice_05to05/Din] [get_bd_pins xlslice_06to06/Din] [get_bd_pins xlslice_07to07/Din]
  connect_bd_net -net TRX_tx_LVDS_interleave_xlconcat_0_dout [get_bd_pins TRX_blank_tx_util_vector_logic_0/Op1] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/dout]
  connect_bd_net -net TRX_tx_PTT_in_0 [get_bd_pins TRX_dds_tx_rf09_ptt] [get_bd_pins TRX_tx_word_format_xlconcat_0/In4]
  connect_bd_net -net TRX_tx_im_out_0 [get_bd_pins TRX_tx_im_out] [get_bd_pins TRX_tx_word_format_xlconcat_0/In1]
  connect_bd_net -net TRX_tx_re_out_0 [get_bd_pins TRX_tx_re_out] [get_bd_pins TRX_tx_word_format_xlconcat_0/In5]
  connect_bd_net -net TRX_tx_word_format_xlconcat_0_dout [get_bd_pins TRX_tx09_fifo_din] [get_bd_pins TRX_tx_word_format_xlconcat_0/dout]
  connect_bd_net -net clk_div_out_1 [get_bd_pins clk_div_out] [get_bd_pins TRX_blank_tx_c_shift_ram_0/CLK]
  connect_bd_net -net xlconstant_val0_len1_dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In1] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In3] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In5] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In7] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In9] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In11] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In13] [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In15] [get_bd_pins TRX_tx_word_format_xlconcat_0/In0] [get_bd_pins TRX_tx_word_format_xlconcat_0/In3] [get_bd_pins TRX_tx_word_format_xlconcat_0/In6] [get_bd_pins xlconstant_val0_len1/dout]
  connect_bd_net -net xlconstant_val1_len1_dout [get_bd_pins TRX_tx_word_format_xlconcat_0/In2] [get_bd_pins TRX_tx_word_format_xlconcat_0/In7] [get_bd_pins xlconstant_val1_len1/dout]
  connect_bd_net -net xlslice_00to00_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In14] [get_bd_pins xlslice_00to00/Dout]
  connect_bd_net -net xlslice_01to01_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In12] [get_bd_pins xlslice_01to01/Dout]
  connect_bd_net -net xlslice_02to02_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In10] [get_bd_pins xlslice_02to02/Dout]
  connect_bd_net -net xlslice_03to03_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In8] [get_bd_pins xlslice_03to03/Dout]
  connect_bd_net -net xlslice_04to04_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In6] [get_bd_pins xlslice_04to04/Dout]
  connect_bd_net -net xlslice_05to05_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In4] [get_bd_pins xlslice_05to05/Dout]
  connect_bd_net -net xlslice_06to06_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In2] [get_bd_pins xlslice_06to06/Dout]
  connect_bd_net -net xlslice_07to07_Dout [get_bd_pins TRX_tx_LVDS_interleave_xlconcat_0/In0] [get_bd_pins xlslice_07to07/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_rx24_concat
proc create_hier_cell_TRX_rx24_concat { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_rx24_concat() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 15 -to 0 Din
  create_bd_pin -dir O -from 7 -to 0 rx24_o

  # Create instance: TRX_rx24_xlconcat_0, and set properties
  set TRX_rx24_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_rx24_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $TRX_rx24_xlconcat_0

  # Create instance: TRX_rx_xlslice_01to01, and set properties
  set TRX_rx_xlslice_01to01 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_01to01 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_01to01

  # Create instance: TRX_rx_xlslice_03to03, and set properties
  set TRX_rx_xlslice_03to03 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_03to03 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_03to03

  # Create instance: TRX_rx_xlslice_05to05, and set properties
  set TRX_rx_xlslice_05to05 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_05to05 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_05to05

  # Create instance: TRX_rx_xlslice_07to07, and set properties
  set TRX_rx_xlslice_07to07 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_07to07 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_07to07

  # Create instance: TRX_rx_xlslice_09to09, and set properties
  set TRX_rx_xlslice_09to09 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_09to09 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {9} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_09to09

  # Create instance: TRX_rx_xlslice_11to11, and set properties
  set TRX_rx_xlslice_11to11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_11to11 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {11} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_11to11

  # Create instance: TRX_rx_xlslice_13to13, and set properties
  set TRX_rx_xlslice_13to13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_13to13 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {13} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_13to13

  # Create instance: TRX_rx_xlslice_15to15, and set properties
  set TRX_rx_xlslice_15to15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_15to15 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {15} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_15to15

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins Din] [get_bd_pins TRX_rx_xlslice_01to01/Din] [get_bd_pins TRX_rx_xlslice_03to03/Din] [get_bd_pins TRX_rx_xlslice_05to05/Din] [get_bd_pins TRX_rx_xlslice_07to07/Din] [get_bd_pins TRX_rx_xlslice_09to09/Din] [get_bd_pins TRX_rx_xlslice_11to11/Din] [get_bd_pins TRX_rx_xlslice_13to13/Din] [get_bd_pins TRX_rx_xlslice_15to15/Din]
  connect_bd_net -net TRX_rx24_8bits [get_bd_pins rx24_o] [get_bd_pins TRX_rx24_xlconcat_0/dout]
  connect_bd_net -net TRX_rx_xlslice_01to01_Dout [get_bd_pins TRX_rx24_xlconcat_0/In0] [get_bd_pins TRX_rx_xlslice_15to15/Dout]
  connect_bd_net -net TRX_rx_xlslice_03to03_Dout [get_bd_pins TRX_rx24_xlconcat_0/In1] [get_bd_pins TRX_rx_xlslice_13to13/Dout]
  connect_bd_net -net TRX_rx_xlslice_05to05_Dout [get_bd_pins TRX_rx24_xlconcat_0/In2] [get_bd_pins TRX_rx_xlslice_11to11/Dout]
  connect_bd_net -net TRX_rx_xlslice_07to07_Dout [get_bd_pins TRX_rx24_xlconcat_0/In3] [get_bd_pins TRX_rx_xlslice_09to09/Dout]
  connect_bd_net -net TRX_rx_xlslice_09to09_Dout [get_bd_pins TRX_rx24_xlconcat_0/In4] [get_bd_pins TRX_rx_xlslice_07to07/Dout]
  connect_bd_net -net TRX_rx_xlslice_11to11_Dout [get_bd_pins TRX_rx24_xlconcat_0/In5] [get_bd_pins TRX_rx_xlslice_05to05/Dout]
  connect_bd_net -net TRX_rx_xlslice_13to13_Dout [get_bd_pins TRX_rx24_xlconcat_0/In6] [get_bd_pins TRX_rx_xlslice_03to03/Dout]
  connect_bd_net -net TRX_rx_xlslice_15to15_Dout [get_bd_pins TRX_rx24_xlconcat_0/In7] [get_bd_pins TRX_rx_xlslice_01to01/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_rx09_concat
proc create_hier_cell_TRX_rx09_concat { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_rx09_concat() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 15 -to 0 Din
  create_bd_pin -dir O -from 7 -to 0 rx09_o

  # Create instance: TRX_rx09_xlconcat_0, and set properties
  set TRX_rx09_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_rx09_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $TRX_rx09_xlconcat_0

  # Create instance: TRX_rx_xlslice_00to00, and set properties
  set TRX_rx_xlslice_00to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_00to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_00to00

  # Create instance: TRX_rx_xlslice_02to02, and set properties
  set TRX_rx_xlslice_02to02 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_02to02 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_02to02

  # Create instance: TRX_rx_xlslice_04to04, and set properties
  set TRX_rx_xlslice_04to04 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_04to04 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_04to04

  # Create instance: TRX_rx_xlslice_06to06, and set properties
  set TRX_rx_xlslice_06to06 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_06to06 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_06to06

  # Create instance: TRX_rx_xlslice_08to08, and set properties
  set TRX_rx_xlslice_08to08 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_08to08 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_08to08

  # Create instance: TRX_rx_xlslice_10to10, and set properties
  set TRX_rx_xlslice_10to10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_10to10 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {10} \
   CONFIG.DIN_TO {10} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_10to10

  # Create instance: TRX_rx_xlslice_12to12, and set properties
  set TRX_rx_xlslice_12to12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_12to12 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {12} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_12to12

  # Create instance: TRX_rx_xlslice_14to14, and set properties
  set TRX_rx_xlslice_14to14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_rx_xlslice_14to14 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {14} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_rx_xlslice_14to14

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins Din] [get_bd_pins TRX_rx_xlslice_00to00/Din] [get_bd_pins TRX_rx_xlslice_02to02/Din] [get_bd_pins TRX_rx_xlslice_04to04/Din] [get_bd_pins TRX_rx_xlslice_06to06/Din] [get_bd_pins TRX_rx_xlslice_08to08/Din] [get_bd_pins TRX_rx_xlslice_10to10/Din] [get_bd_pins TRX_rx_xlslice_12to12/Din] [get_bd_pins TRX_rx_xlslice_14to14/Din]
  connect_bd_net -net TRX_rx09_8bits [get_bd_pins rx09_o] [get_bd_pins TRX_rx09_xlconcat_0/dout]
  connect_bd_net -net TRX_rx_xlslice_00to00_Dout [get_bd_pins TRX_rx09_xlconcat_0/In0] [get_bd_pins TRX_rx_xlslice_14to14/Dout]
  connect_bd_net -net TRX_rx_xlslice_02to02_Dout [get_bd_pins TRX_rx09_xlconcat_0/In1] [get_bd_pins TRX_rx_xlslice_12to12/Dout]
  connect_bd_net -net TRX_rx_xlslice_04to04_Dout [get_bd_pins TRX_rx09_xlconcat_0/In2] [get_bd_pins TRX_rx_xlslice_10to10/Dout]
  connect_bd_net -net TRX_rx_xlslice_06to06_Dout [get_bd_pins TRX_rx09_xlconcat_0/In3] [get_bd_pins TRX_rx_xlslice_08to08/Dout]
  connect_bd_net -net TRX_rx_xlslice_08to08_Dout [get_bd_pins TRX_rx09_xlconcat_0/In4] [get_bd_pins TRX_rx_xlslice_06to06/Dout]
  connect_bd_net -net TRX_rx_xlslice_10to10_Dout [get_bd_pins TRX_rx09_xlconcat_0/In5] [get_bd_pins TRX_rx_xlslice_04to04/Dout]
  connect_bd_net -net TRX_rx_xlslice_12to12_Dout [get_bd_pins TRX_rx09_xlconcat_0/In6] [get_bd_pins TRX_rx_xlslice_02to02/Dout]
  connect_bd_net -net TRX_rx_xlslice_14to14_Dout [get_bd_pins TRX_rx09_xlconcat_0/In7] [get_bd_pins TRX_rx_xlslice_00to00/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_tx_DDS_unit
proc create_hier_cell_TRX_tx_DDS_unit { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_tx_DDS_unit() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -type rst SCLR
  create_bd_pin -dir I -from 15 -to 0 -type data TRX_TX_DDSAMPL_GPIO1_o
  create_bd_pin -dir I -from 15 -to 0 -type data TRX_TX_DDSAMPL_GPIO2_o
  create_bd_pin -dir O -from 31 -to 0 TRX_TX_DDS_GPIO1_i
  create_bd_pin -dir I -from 31 -to 0 TRX_TX_DDS_GPIO1_o
  create_bd_pin -dir I -from 31 -to 0 -type data TRX_TX_DDS_GPIO2_o
  create_bd_pin -dir O TRX_TX_RF09_PULLDATA_FIFO_empty
  create_bd_pin -dir I -type clk TRX_rx_clkdiv_16MHz_i
  create_bd_pin -dir O -type data TRX_tx_4to1_c_counter_binary_0_THRESH0
  create_bd_pin -dir O -from 15 -to 0 TRX_tx_DDS0_gpio_ampt
  create_bd_pin -dir O -from 15 -to 0 TRX_tx_DDS1_gpio_ampt
  create_bd_pin -dir O -from 11 -to 0 TRX_tx_data_count
  create_bd_pin -dir O -from 20 -to 8 -type data TRX_tx_im_out
  create_bd_pin -dir O -from 20 -to 8 -type data TRX_tx_re_out
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O -from 0 -to 0 encoder_pull_FIFO_dump
  create_bd_pin -dir O -from 6 -to 0 encoder_pull_data_len
  create_bd_pin -dir O -from 0 -to 0 encoder_pull_do_start
  create_bd_pin -dir I -from 25 -to 0 -type data pulldata_dds_inc
  create_bd_pin -dir O -from 7 -to 0 pulldata_tx09_byteData
  create_bd_pin -dir I pulldata_tx09_en
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I ui_clk_sync_rst

  # Create instance: PULLDATA
  create_hier_cell_PULLDATA $hier_obj PULLDATA

  # Create instance: TRX_CDC_ampt_tx0_c_shift_ram_0, and set properties
  set TRX_CDC_ampt_tx0_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 TRX_CDC_ampt_tx0_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.CE {false} \
   CONFIG.Depth {2} \
   CONFIG.SCLR {true} \
   CONFIG.Width {16} \
 ] $TRX_CDC_ampt_tx0_c_shift_ram_0

  # Create instance: TRX_CDC_ampt_tx1_c_shift_ram_0, and set properties
  set TRX_CDC_ampt_tx1_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 TRX_CDC_ampt_tx1_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.Depth {2} \
   CONFIG.SCLR {true} \
   CONFIG.Width {16} \
 ] $TRX_CDC_ampt_tx1_c_shift_ram_0

  # Create instance: TRX_CDC_dds_tx0_c_shift_ram_0, and set properties
  set TRX_CDC_dds_tx0_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 TRX_CDC_dds_tx0_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00000000000000000000000000000000} \
   CONFIG.DefaultData {00000000000000000000000000000000} \
   CONFIG.Depth {2} \
   CONFIG.SCLR {true} \
   CONFIG.SyncInitVal {00000000000000000000000000000000} \
   CONFIG.Width {32} \
 ] $TRX_CDC_dds_tx0_c_shift_ram_0

  # Create instance: TRX_CDC_dds_tx0_xlconcat_0, and set properties
  set TRX_CDC_dds_tx0_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_CDC_dds_tx0_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {26} \
   CONFIG.IN1_WIDTH {6} \
 ] $TRX_CDC_dds_tx0_xlconcat_0

  # Create instance: TRX_CDC_dds_tx1_c_shift_ram_0, and set properties
  set TRX_CDC_dds_tx1_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 TRX_CDC_dds_tx1_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00000000000000000000000000000000} \
   CONFIG.DefaultData {00000000000000000000000000000000} \
   CONFIG.Depth {2} \
   CONFIG.SCLR {true} \
   CONFIG.SyncInitVal {00000000000000000000000000000000} \
   CONFIG.Width {32} \
 ] $TRX_CDC_dds_tx1_c_shift_ram_0

  # Create instance: TRX_ampt_tx0_xslice_15to8, and set properties
  set TRX_ampt_tx0_xslice_15to8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_ampt_tx0_xslice_15to8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $TRX_ampt_tx0_xslice_15to8

  # Create instance: TRX_ampt_tx0_xslice_7to0, and set properties
  set TRX_ampt_tx0_xslice_7to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_ampt_tx0_xslice_7to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $TRX_ampt_tx0_xslice_7to0

  # Create instance: TRX_ampt_tx1_xslice_15to8, and set properties
  set TRX_ampt_tx1_xslice_15to8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_ampt_tx1_xslice_15to8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $TRX_ampt_tx1_xslice_15to8

  # Create instance: TRX_ampt_tx1_xslice_7to0, and set properties
  set TRX_ampt_tx1_xslice_7to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_ampt_tx1_xslice_7to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $TRX_ampt_tx1_xslice_7to0

  # Create instance: TRX_tx0_dds_compiler_0, and set properties
  set TRX_tx0_dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 TRX_tx0_dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Channels {1} \
   CONFIG.DATA_Has_TLAST {Not_Required} \
   CONFIG.DDS_Clock_Rate {16} \
   CONFIG.DSP48_Use {Maximal} \
   CONFIG.Frequency_Resolution {0.4} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Latency {10} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.M_PHASE_Has_TUSER {Not_Required} \
   CONFIG.Memory_Type {Block_ROM} \
   CONFIG.Noise_Shaping {Taylor_Series_Corrected} \
   CONFIG.Optimization_Goal {Speed} \
   CONFIG.Output_Frequency1 {0} \
   CONFIG.Output_Width {13} \
   CONFIG.PINC1 {0} \
   CONFIG.Parameter_Entry {Hardware_Parameters} \
   CONFIG.Phase_Increment {Programmable} \
   CONFIG.Phase_Width {26} \
   CONFIG.Phase_offset {None} \
   CONFIG.S_PHASE_Has_TUSER {Not_Required} \
 ] $TRX_tx0_dds_compiler_0

  # Create instance: TRX_tx0_im_xbip_multadd_0, and set properties
  set TRX_tx0_im_xbip_multadd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_multadd:3.0 TRX_tx0_im_xbip_multadd_0 ]
  set_property -dict [ list \
   CONFIG.c_a_type {0} \
   CONFIG.c_a_width {13} \
   CONFIG.c_b_type {1} \
   CONFIG.c_b_width {8} \
   CONFIG.c_c_type {1} \
   CONFIG.c_c_width {1} \
   CONFIG.c_out_high {20} \
   CONFIG.c_out_low {0} \
 ] $TRX_tx0_im_xbip_multadd_0

  # Create instance: TRX_tx0_im_xlslice_28to16, and set properties
  set TRX_tx0_im_xlslice_28to16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_tx0_im_xlslice_28to16 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {28} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {13} \
 ] $TRX_tx0_im_xlslice_28to16

  # Create instance: TRX_tx0_re_xbip_multadd_0, and set properties
  set TRX_tx0_re_xbip_multadd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_multadd:3.0 TRX_tx0_re_xbip_multadd_0 ]
  set_property -dict [ list \
   CONFIG.c_a_type {0} \
   CONFIG.c_a_width {13} \
   CONFIG.c_b_type {1} \
   CONFIG.c_b_width {8} \
   CONFIG.c_c_type {1} \
   CONFIG.c_c_width {1} \
   CONFIG.c_out_high {20} \
   CONFIG.c_out_low {0} \
 ] $TRX_tx0_re_xbip_multadd_0

  # Create instance: TRX_tx0_re_xlslice_12to00, and set properties
  set TRX_tx0_re_xlslice_12to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_tx0_re_xlslice_12to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DOUT_WIDTH {13} \
 ] $TRX_tx0_re_xlslice_12to00

  # Create instance: TRX_tx1_dds_compiler_0, and set properties
  set TRX_tx1_dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 TRX_tx1_dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Channels {1} \
   CONFIG.DATA_Has_TLAST {Not_Required} \
   CONFIG.DDS_Clock_Rate {16} \
   CONFIG.DSP48_Use {Maximal} \
   CONFIG.Frequency_Resolution {0.4} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Latency {10} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.M_PHASE_Has_TUSER {Not_Required} \
   CONFIG.Memory_Type {Block_ROM} \
   CONFIG.Noise_Shaping {Taylor_Series_Corrected} \
   CONFIG.Optimization_Goal {Speed} \
   CONFIG.Output_Frequency1 {0} \
   CONFIG.Output_Width {13} \
   CONFIG.PINC1 {0} \
   CONFIG.Parameter_Entry {Hardware_Parameters} \
   CONFIG.Phase_Increment {Programmable} \
   CONFIG.Phase_Width {32} \
   CONFIG.Phase_offset {None} \
   CONFIG.S_PHASE_Has_TUSER {Not_Required} \
 ] $TRX_tx1_dds_compiler_0

  # Create instance: TRX_tx1_im_xbip_multadd_0, and set properties
  set TRX_tx1_im_xbip_multadd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_multadd:3.0 TRX_tx1_im_xbip_multadd_0 ]
  set_property -dict [ list \
   CONFIG.c_a_type {0} \
   CONFIG.c_a_width {13} \
   CONFIG.c_b_type {1} \
   CONFIG.c_b_width {8} \
   CONFIG.c_c_type {0} \
   CONFIG.c_c_width {21} \
   CONFIG.c_out_high {20} \
   CONFIG.c_out_low {8} \
 ] $TRX_tx1_im_xbip_multadd_0

  # Create instance: TRX_tx1_im_xlslice_28to16, and set properties
  set TRX_tx1_im_xlslice_28to16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_tx1_im_xlslice_28to16 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {28} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {13} \
 ] $TRX_tx1_im_xlslice_28to16

  # Create instance: TRX_tx1_re_xbip_multadd_0, and set properties
  set TRX_tx1_re_xbip_multadd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_multadd:3.0 TRX_tx1_re_xbip_multadd_0 ]
  set_property -dict [ list \
   CONFIG.c_a_type {0} \
   CONFIG.c_a_width {13} \
   CONFIG.c_b_type {1} \
   CONFIG.c_b_width {8} \
   CONFIG.c_c_type {0} \
   CONFIG.c_c_width {21} \
   CONFIG.c_out_high {20} \
   CONFIG.c_out_low {8} \
 ] $TRX_tx1_re_xbip_multadd_0

  # Create instance: TRX_tx1_re_xlslice_12to00, and set properties
  set TRX_tx1_re_xlslice_12to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_tx1_re_xlslice_12to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DOUT_WIDTH {13} \
 ] $TRX_tx1_re_xlslice_12to00

  # Create instance: TRX_tx_4to1_c_counter_binary_0, and set properties
  set TRX_tx_4to1_c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 TRX_tx_4to1_c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Final_Count_Value {3} \
   CONFIG.Output_Width {3} \
   CONFIG.Restrict_Count {true} \
   CONFIG.SCLR {true} \
   CONFIG.Sync_Threshold_Output {true} \
   CONFIG.Threshold_Value {3} \
 ] $TRX_tx_4to1_c_counter_binary_0

  # Create instance: xlconstant_val0_len1, and set properties
  set xlconstant_val0_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val0_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_val0_len1

  # Create instance: xlconstant_val1_len1, and set properties
  set xlconstant_val1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val1_len1 ]

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins TRX_TX_DDS_GPIO1_o] [get_bd_pins PULLDATA/Din]
  connect_bd_net -net PULLDATA_DDS_inc_0 [get_bd_pins pulldata_dds_inc] [get_bd_pins TRX_CDC_dds_tx0_xlconcat_0/In0]
  connect_bd_net -net PULLDATA_Encoder_FIFO_byteData_0 [get_bd_pins pulldata_tx09_byteData] [get_bd_pins PULLDATA/pulldata_tx09_byteData]
  connect_bd_net -net PULLDATA_Encoder_FIFO_data_len_0 [get_bd_pins encoder_pull_data_len] [get_bd_pins PULLDATA/encoder_pull_data_len]
  connect_bd_net -net PULLDATA_Encoder_FIFO_do_start_0 [get_bd_pins encoder_pull_do_start] [get_bd_pins PULLDATA/encoder_pull_do_start]
  connect_bd_net -net PULLDATA_Encoder_FIFO_dump_0 [get_bd_pins encoder_pull_FIFO_dump] [get_bd_pins PULLDATA/encoder_pull_FIFO_dump]
  connect_bd_net -net PULLDATA_Encoder_FIFO_en_0 [get_bd_pins pulldata_tx09_en] [get_bd_pins PULLDATA/pulldata_tx09_en]
  connect_bd_net -net PULLDATA_Encoder_FIFO_prog_empty_0 [get_bd_pins TRX_TX_DDS_GPIO1_i] [get_bd_pins PULLDATA/fifo_empty]
  connect_bd_net -net TRX_CDC_ampt_tx0_c_shift_ram_0_Q_0 [get_bd_pins TRX_CDC_ampt_tx0_c_shift_ram_0/Q] [get_bd_pins TRX_ampt_tx0_xslice_15to8/Din] [get_bd_pins TRX_ampt_tx0_xslice_7to0/Din]
  connect_bd_net -net TRX_CDC_ampt_tx1_c_shift_ram_0_Q_0 [get_bd_pins TRX_CDC_ampt_tx1_c_shift_ram_0/Q] [get_bd_pins TRX_ampt_tx1_xslice_15to8/Din] [get_bd_pins TRX_ampt_tx1_xslice_7to0/Din]
  connect_bd_net -net TRX_CDC_dds_tx0_xlconcat_0_dout_0 [get_bd_pins TRX_CDC_dds_tx0_c_shift_ram_0/D] [get_bd_pins TRX_CDC_dds_tx0_xlconcat_0/dout]
  connect_bd_net -net TRX_TX_DDSAMPL_GPIO1_o_1 [get_bd_pins TRX_TX_DDSAMPL_GPIO1_o] [get_bd_pins TRX_tx_DDS0_gpio_ampt] [get_bd_pins TRX_CDC_ampt_tx0_c_shift_ram_0/D]
  connect_bd_net -net TRX_TX_DDSAMPL_GPIO2_o_1 [get_bd_pins TRX_TX_DDSAMPL_GPIO2_o] [get_bd_pins TRX_tx_DDS1_gpio_ampt] [get_bd_pins TRX_CDC_ampt_tx1_c_shift_ram_0/D]
  connect_bd_net -net TRX_TX_DDS_GPIO2_o_1 [get_bd_pins TRX_TX_DDS_GPIO2_o] [get_bd_pins TRX_CDC_dds_tx1_c_shift_ram_0/D]
  connect_bd_net -net TRX_TX_RF09_PULLDATA_FIFO_empty_0 [get_bd_pins TRX_TX_RF09_PULLDATA_FIFO_empty] [get_bd_pins PULLDATA/TRX_TX_RF09_PULLDATA_FIFO_empty]
  connect_bd_net -net TRX_ampt_tx0_xslice_15to8_dout_0 [get_bd_pins TRX_ampt_tx0_xslice_15to8/Dout] [get_bd_pins TRX_tx0_im_xbip_multadd_0/B]
  connect_bd_net -net TRX_ampt_tx0_xslice_7to0_dout_0 [get_bd_pins TRX_ampt_tx0_xslice_7to0/Dout] [get_bd_pins TRX_tx0_re_xbip_multadd_0/B]
  connect_bd_net -net TRX_ampt_tx1_xslice_15to8_dout_0 [get_bd_pins TRX_ampt_tx1_xslice_15to8/Dout] [get_bd_pins TRX_tx1_im_xbip_multadd_0/B]
  connect_bd_net -net TRX_ampt_tx1_xslice_7to0_dout_0 [get_bd_pins TRX_ampt_tx1_xslice_7to0/Dout] [get_bd_pins TRX_tx1_re_xbip_multadd_0/B]
  connect_bd_net -net TRX_tx0_c_shift_ram_0_Q_0 [get_bd_pins TRX_CDC_dds_tx0_c_shift_ram_0/Q] [get_bd_pins TRX_tx0_dds_compiler_0/s_axis_config_tdata]
  connect_bd_net -net TRX_tx0_im_xbip_multadd_0_P_0 [get_bd_pins TRX_tx0_im_xbip_multadd_0/P] [get_bd_pins TRX_tx1_im_xbip_multadd_0/C]
  connect_bd_net -net TRX_tx0_re_xbip_multadd_0_P_0 [get_bd_pins TRX_tx0_re_xbip_multadd_0/P] [get_bd_pins TRX_tx1_re_xbip_multadd_0/C]
  connect_bd_net -net TRX_tx1_c_shift_ram_0_Q_0 [get_bd_pins TRX_CDC_dds_tx1_c_shift_ram_0/Q] [get_bd_pins TRX_tx1_dds_compiler_0/s_axis_config_tdata]
  connect_bd_net -net TRX_tx1_im_xlslice_28to16_dout_0 [get_bd_pins TRX_tx1_im_xbip_multadd_0/A] [get_bd_pins TRX_tx1_im_xlslice_28to16/Dout]
  connect_bd_net -net TRX_tx1_re_xlslice_12to00_dout_0 [get_bd_pins TRX_tx1_re_xbip_multadd_0/A] [get_bd_pins TRX_tx1_re_xlslice_12to00/Dout]
  connect_bd_net -net TRX_tx_4to1_c_counter_binary_0_THRESH0_0 [get_bd_pins TRX_tx_4to1_c_counter_binary_0_THRESH0] [get_bd_pins TRX_tx0_dds_compiler_0/aclken] [get_bd_pins TRX_tx1_dds_compiler_0/aclken] [get_bd_pins TRX_tx_4to1_c_counter_binary_0/THRESH0]
  connect_bd_net -net TRX_tx_data_count [get_bd_pins TRX_tx_data_count] [get_bd_pins PULLDATA/TRX_tx_data_count]
  connect_bd_net -net TRX_tx_dds_compiler_0_m_axis_data_tdata_0 [get_bd_pins TRX_tx0_dds_compiler_0/m_axis_data_tdata] [get_bd_pins TRX_tx0_im_xlslice_28to16/Din] [get_bd_pins TRX_tx0_re_xlslice_12to00/Din]
  connect_bd_net -net TRX_tx_dds_compiler_1_m_axis_data_tdata_0 [get_bd_pins TRX_tx1_dds_compiler_0/m_axis_data_tdata] [get_bd_pins TRX_tx1_im_xlslice_28to16/Din] [get_bd_pins TRX_tx1_re_xlslice_12to00/Din]
  connect_bd_net -net TRX_tx_im_out_0 [get_bd_pins TRX_tx_im_out] [get_bd_pins TRX_tx1_im_xbip_multadd_0/P]
  connect_bd_net -net TRX_tx_re_out_0 [get_bd_pins TRX_tx_re_out] [get_bd_pins TRX_tx1_re_xbip_multadd_0/P]
  connect_bd_net -net aresetn_0 [get_bd_pins aresetn] [get_bd_pins TRX_tx0_dds_compiler_0/aresetn] [get_bd_pins TRX_tx1_dds_compiler_0/aresetn]
  connect_bd_net -net clk_div_out_0 [get_bd_pins TRX_rx_clkdiv_16MHz_i] [get_bd_pins TRX_CDC_ampt_tx0_c_shift_ram_0/CLK] [get_bd_pins TRX_CDC_ampt_tx1_c_shift_ram_0/CLK] [get_bd_pins TRX_CDC_dds_tx0_c_shift_ram_0/CLK] [get_bd_pins TRX_CDC_dds_tx1_c_shift_ram_0/CLK] [get_bd_pins TRX_tx0_dds_compiler_0/aclk] [get_bd_pins TRX_tx0_im_xbip_multadd_0/CLK] [get_bd_pins TRX_tx0_re_xbip_multadd_0/CLK] [get_bd_pins TRX_tx1_dds_compiler_0/aclk] [get_bd_pins TRX_tx1_im_xbip_multadd_0/CLK] [get_bd_pins TRX_tx1_re_xbip_multadd_0/CLK] [get_bd_pins TRX_tx_4to1_c_counter_binary_0/CLK]
  connect_bd_net -net s_axi_aclk_0 [get_bd_pins s_axi_aclk] [get_bd_pins PULLDATA/s_axi_aclk]
  connect_bd_net -net sclr_0 [get_bd_pins SCLR] [get_bd_pins TRX_CDC_ampt_tx0_c_shift_ram_0/SCLR] [get_bd_pins TRX_CDC_ampt_tx1_c_shift_ram_0/SCLR] [get_bd_pins TRX_CDC_dds_tx0_c_shift_ram_0/SCLR] [get_bd_pins TRX_CDC_dds_tx1_c_shift_ram_0/SCLR] [get_bd_pins TRX_tx0_im_xbip_multadd_0/SCLR] [get_bd_pins TRX_tx0_re_xbip_multadd_0/SCLR] [get_bd_pins TRX_tx1_im_xbip_multadd_0/SCLR] [get_bd_pins TRX_tx1_re_xbip_multadd_0/SCLR] [get_bd_pins TRX_tx_4to1_c_counter_binary_0/SCLR]
  connect_bd_net -net ui_clk_sync_rst_0 [get_bd_pins ui_clk_sync_rst] [get_bd_pins PULLDATA/ui_clk_sync_rst]
  connect_bd_net -net val0_len1_0 [get_bd_pins TRX_tx0_im_xbip_multadd_0/C] [get_bd_pins TRX_tx0_im_xbip_multadd_0/SUBTRACT] [get_bd_pins TRX_tx0_re_xbip_multadd_0/C] [get_bd_pins TRX_tx0_re_xbip_multadd_0/SUBTRACT] [get_bd_pins TRX_tx1_im_xbip_multadd_0/SUBTRACT] [get_bd_pins TRX_tx1_re_xbip_multadd_0/SUBTRACT] [get_bd_pins xlconstant_val0_len1/dout]
  connect_bd_net -net val1_len1_0 [get_bd_pins TRX_tx0_dds_compiler_0/s_axis_config_tvalid] [get_bd_pins TRX_tx0_im_xbip_multadd_0/CE] [get_bd_pins TRX_tx0_re_xbip_multadd_0/CE] [get_bd_pins TRX_tx1_dds_compiler_0/s_axis_config_tvalid] [get_bd_pins TRX_tx1_im_xbip_multadd_0/CE] [get_bd_pins TRX_tx1_re_xbip_multadd_0/CE] [get_bd_pins xlconstant_val1_len1/dout]
  connect_bd_net -net xlslice_0_12to00_dout_0 [get_bd_pins TRX_tx0_re_xbip_multadd_0/A] [get_bd_pins TRX_tx0_re_xlslice_12to00/Dout]
  connect_bd_net -net xlslice_0_28to16_dout_0 [get_bd_pins TRX_tx0_im_xbip_multadd_0/A] [get_bd_pins TRX_tx0_im_xlslice_28to16/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_rx_FFT_unit
proc create_hier_cell_TRX_rx_FFT_unit { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_rx_FFT_unit() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir I -from 9 -to 0 FFT_window_coef_rom_rx09
  create_bd_pin -dir I -from 29 -to 0 RF09_framectr
  create_bd_pin -dir I -from 1 -to 0 -type data RF09_quarterfrm
  create_bd_pin -dir O TRX_PUSHDATA_ch00_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch00_req
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch01_din
  create_bd_pin -dir O TRX_PUSHDATA_ch01_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch01_req
  create_bd_pin -dir I TRX_PUSHDATA_ch01_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch02_din
  create_bd_pin -dir O TRX_PUSHDATA_ch02_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch02_req
  create_bd_pin -dir I TRX_PUSHDATA_ch02_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch03_din
  create_bd_pin -dir O TRX_PUSHDATA_ch03_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch03_req
  create_bd_pin -dir I TRX_PUSHDATA_ch03_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch04_din
  create_bd_pin -dir O TRX_PUSHDATA_ch04_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch04_req
  create_bd_pin -dir I TRX_PUSHDATA_ch04_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch05_din
  create_bd_pin -dir O TRX_PUSHDATA_ch05_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch05_req
  create_bd_pin -dir I TRX_PUSHDATA_ch05_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch06_din
  create_bd_pin -dir O TRX_PUSHDATA_ch06_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch06_req
  create_bd_pin -dir I TRX_PUSHDATA_ch06_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_ch07_din
  create_bd_pin -dir O TRX_PUSHDATA_ch07_grant
  create_bd_pin -dir I TRX_PUSHDATA_ch07_req
  create_bd_pin -dir I TRX_PUSHDATA_ch07_wr_en
  create_bd_pin -dir I -from 7 -to 0 TRX_PUSHDATA_din
  create_bd_pin -dir I TRX_PUSHDATA_wr_en
  create_bd_pin -dir O -from 31 -to 0 TRX_RX_PUSHDATA_GPIO1_i
  create_bd_pin -dir I -from 31 -to 0 TRX_RX_PUSHDATA_GPIO2_o
  create_bd_pin -dir I -from 10 -to 0 TRX_rx_rf09_Pre_FFT_mem_addrb
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch00_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch00_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch01_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch01_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch02_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch02_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch03_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch03_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch04_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch04_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch05_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch05_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch06_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch06_Post_FFT_mem_b_dout
  create_bd_pin -dir I -from 4 -to 0 TRX_rx_rf09_ch07_Post_FFT_mem_b_addr
  create_bd_pin -dir O -from 15 -to 0 TRX_rx_rf09_ch07_Post_FFT_mem_b_dout
  create_bd_pin -dir I -type rst aresetn_CD100_in
  create_bd_pin -dir O -from 15 -to 0 decoder_rx09_squelch_lvl
  create_bd_pin -dir I -from 7 -to 0 fft09_config_tdata_in
  create_bd_pin -dir I fft09_config_tvalid_in
  create_bd_pin -dir I fft09_data_tlast_in
  create_bd_pin -dir O fft09_data_tready_out
  create_bd_pin -dir I fft09_data_tvalid_in
  create_bd_pin -dir O post_fft_mem_a_rx09_EoT
  create_bd_pin -dir O -from 41 -to 0 post_fft_rx09_mem_a_addr_out
  create_bd_pin -dir I -from 10 -to 0 premem_rx09_addra_in
  create_bd_pin -dir I -from 25 -to 0 premem_rx09_dina_in
  create_bd_pin -dir I -from 0 -to 0 premem_rx09_wea_in
  create_bd_pin -dir I -type rst rst_mig_7series_0_100M_peripheral_reset_in
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_in
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_data_in_channel_halt_out
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_frame_started_out
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_tlast_missing_out
  create_bd_pin -dir O -type intr xfft_rx09_dly3449_event_tlast_unexpected_out

  # Create instance: PUSHDATA
  create_hier_cell_PUSHDATA $hier_obj PUSHDATA

  # Create instance: TRX_post_fft_rx09_decoder_0, and set properties
  set block_name TRX_post_fft_rx09_addr_decoder
  set block_cell_name TRX_post_fft_rx09_decoder_0
  if { [catch {set TRX_post_fft_rx09_decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $TRX_post_fft_rx09_decoder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: TRX_rx_FFT_calc
  create_hier_cell_TRX_rx_FFT_calc $hier_obj TRX_rx_FFT_calc

  # Create instance: post_fft_mem_a_rx09_util_reduced_logic_0, and set properties
  set post_fft_mem_a_rx09_util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 post_fft_mem_a_rx09_util_reduced_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {11} \
 ] $post_fft_mem_a_rx09_util_reduced_logic_0

  # Create instance: post_fft_mem_a_rx09_xlconcat_0, and set properties
  set post_fft_mem_a_rx09_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 post_fft_mem_a_rx09_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {10} \
   CONFIG.IN1_WIDTH {1} \
 ] $post_fft_mem_a_rx09_xlconcat_0

  # Create instance: post_fft_rx09_ch00_blk_mem_gen_0, and set properties
  set post_fft_rx09_ch00_blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch00_blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch00_blk_mem_gen_0

  # Create instance: post_fft_rx09_ch01_blk_mem_gen, and set properties
  set post_fft_rx09_ch01_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch01_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch01_blk_mem_gen

  # Create instance: post_fft_rx09_ch02_blk_mem_gen, and set properties
  set post_fft_rx09_ch02_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch02_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch02_blk_mem_gen

  # Create instance: post_fft_rx09_ch03_blk_mem_gen, and set properties
  set post_fft_rx09_ch03_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch03_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch03_blk_mem_gen

  # Create instance: post_fft_rx09_ch04_blk_mem_gen, and set properties
  set post_fft_rx09_ch04_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch04_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch04_blk_mem_gen

  # Create instance: post_fft_rx09_ch05_blk_mem_gen, and set properties
  set post_fft_rx09_ch05_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch05_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch05_blk_mem_gen

  # Create instance: post_fft_rx09_ch06_blk_mem_gen, and set properties
  set post_fft_rx09_ch06_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch06_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch06_blk_mem_gen

  # Create instance: post_fft_rx09_ch07_blk_mem_gen, and set properties
  set post_fft_rx09_ch07_blk_mem_gen [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_ch07_blk_mem_gen ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {32} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_ch07_blk_mem_gen

  # Create instance: post_fft_rx09_xlslice_9to0, and set properties
  set post_fft_rx09_xlslice_9to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 post_fft_rx09_xlslice_9to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_WIDTH {42} \
   CONFIG.DOUT_WIDTH {10} \
 ] $post_fft_rx09_xlslice_9to0

  # Create instance: pre_fft_rx09_blk_mem_gen_0, and set properties
  set pre_fft_rx09_blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 pre_fft_rx09_blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Pipeline_Stages {0} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {26} \
   CONFIG.Read_Width_B {26} \
   CONFIG.Register_PortA_Output_of_Memory_Core {false} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.Write_Width_A {26} \
   CONFIG.Write_Width_B {26} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $pre_fft_rx09_blk_mem_gen_0

  # Create instance: pre_fft_rx09_xlslice_12to00, and set properties
  set pre_fft_rx09_xlslice_12to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pre_fft_rx09_xlslice_12to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_WIDTH {26} \
   CONFIG.DOUT_WIDTH {13} \
 ] $pre_fft_rx09_xlslice_12to00

  # Create instance: pre_fft_rx09_xlslice_25to13, and set properties
  set pre_fft_rx09_xlslice_25to13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pre_fft_rx09_xlslice_25to13 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {26} \
   CONFIG.DOUT_WIDTH {13} \
 ] $pre_fft_rx09_xlslice_25to13

  # Create instance: xlconstant_val1_len1, and set properties
  set xlconstant_val1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val1_len1 ]

  # Create port connections
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch00_grant [get_bd_pins TRX_PUSHDATA_ch00_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch00_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch01_grant [get_bd_pins TRX_PUSHDATA_ch01_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch01_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch02_grant [get_bd_pins TRX_PUSHDATA_ch02_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch02_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch03_grant [get_bd_pins TRX_PUSHDATA_ch03_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch03_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch04_grant [get_bd_pins TRX_PUSHDATA_ch04_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch04_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch05_grant [get_bd_pins TRX_PUSHDATA_ch05_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch05_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch06_grant [get_bd_pins TRX_PUSHDATA_ch06_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch06_grant]
  connect_bd_net -net PUSHDATA_TRX_PUSHDATA_ch07_grant [get_bd_pins TRX_PUSHDATA_ch07_grant] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch07_grant]
  connect_bd_net -net PUSHDATA_TRX_RX_PUSHDATA_GPIO1_i [get_bd_pins TRX_RX_PUSHDATA_GPIO1_i] [get_bd_pins PUSHDATA/TRX_RX_PUSHDATA_GPIO1_i]
  connect_bd_net -net TRX_PUSHDATA_ch00_req_1 [get_bd_pins TRX_PUSHDATA_ch00_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch00_req]
  connect_bd_net -net TRX_PUSHDATA_ch01_din_1 [get_bd_pins TRX_PUSHDATA_ch01_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch01_din]
  connect_bd_net -net TRX_PUSHDATA_ch01_req_1 [get_bd_pins TRX_PUSHDATA_ch01_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch01_req]
  connect_bd_net -net TRX_PUSHDATA_ch01_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch01_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch01_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch02_din_1 [get_bd_pins TRX_PUSHDATA_ch02_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch02_din]
  connect_bd_net -net TRX_PUSHDATA_ch02_req_1 [get_bd_pins TRX_PUSHDATA_ch02_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch02_req]
  connect_bd_net -net TRX_PUSHDATA_ch02_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch02_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch02_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch03_din_1 [get_bd_pins TRX_PUSHDATA_ch03_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch03_din]
  connect_bd_net -net TRX_PUSHDATA_ch03_req_1 [get_bd_pins TRX_PUSHDATA_ch03_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch03_req]
  connect_bd_net -net TRX_PUSHDATA_ch03_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch03_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch03_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch04_din_1 [get_bd_pins TRX_PUSHDATA_ch04_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch04_din]
  connect_bd_net -net TRX_PUSHDATA_ch04_req_1 [get_bd_pins TRX_PUSHDATA_ch04_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch04_req]
  connect_bd_net -net TRX_PUSHDATA_ch04_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch04_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch04_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch05_din_1 [get_bd_pins TRX_PUSHDATA_ch05_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch05_din]
  connect_bd_net -net TRX_PUSHDATA_ch05_req_1 [get_bd_pins TRX_PUSHDATA_ch05_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch05_req]
  connect_bd_net -net TRX_PUSHDATA_ch05_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch05_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch05_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch06_din_1 [get_bd_pins TRX_PUSHDATA_ch06_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch06_din]
  connect_bd_net -net TRX_PUSHDATA_ch06_req_1 [get_bd_pins TRX_PUSHDATA_ch06_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch06_req]
  connect_bd_net -net TRX_PUSHDATA_ch06_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch06_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch06_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch07_din_1 [get_bd_pins TRX_PUSHDATA_ch07_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch07_din]
  connect_bd_net -net TRX_PUSHDATA_ch07_req_1 [get_bd_pins TRX_PUSHDATA_ch07_req] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch07_req]
  connect_bd_net -net TRX_PUSHDATA_ch07_wr_en_1 [get_bd_pins TRX_PUSHDATA_ch07_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_ch07_wr_en]
  connect_bd_net -net TRX_RX_PUSHDATA_GPIO2_o_1 [get_bd_pins TRX_RX_PUSHDATA_GPIO2_o] [get_bd_pins PUSHDATA/TRX_RX_PUSHDATA_GPIO2_o]
  connect_bd_net -net TRX_post_fft_rx09_ad_0_ena_ch00 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch00] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_dout [get_bd_pins TRX_post_fft_rx09_decoder_0/dout] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/dina] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/dina] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/dina] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/dina] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/dina] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/dina] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/dina] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/dina]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch01 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch01] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch02 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch02] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch03 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch03] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch04 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch04] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch05 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch05] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch06 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch06] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/ena]
  connect_bd_net -net TRX_post_fft_rx09_decoder_0_ena_ch07 [get_bd_pins TRX_post_fft_rx09_decoder_0/ena_ch07] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/ena]
  connect_bd_net -net TRX_rx_rf09_Cordic_rx09_tvalid_0 [get_bd_pins TRX_post_fft_rx09_decoder_0/tvalid] [get_bd_pins TRX_rx_FFT_calc/cordic_rx09_tvalid_out] [get_bd_pins post_fft_mem_a_rx09_xlconcat_0/In1]
  connect_bd_net -net TRX_rx_rf09_FFT_config_tdata_0 [get_bd_pins fft09_config_tdata_in] [get_bd_pins TRX_rx_FFT_calc/fft09_config_tdata_in]
  connect_bd_net -net TRX_rx_rf09_FFT_config_tvalid_0 [get_bd_pins fft09_config_tvalid_in] [get_bd_pins TRX_rx_FFT_calc/fft09_config_tvalid_in]
  connect_bd_net -net TRX_rx_rf09_FFT_data_tlast_0 [get_bd_pins fft09_data_tlast_in] [get_bd_pins TRX_rx_FFT_calc/fft09_data_tlast_in]
  connect_bd_net -net TRX_rx_rf09_FFT_data_tready_0 [get_bd_pins fft09_data_tready_out] [get_bd_pins TRX_rx_FFT_calc/fft09_data_tready_out]
  connect_bd_net -net TRX_rx_rf09_FFT_data_tvalid_0 [get_bd_pins fft09_data_tvalid_in] [get_bd_pins TRX_rx_FFT_calc/fft09_data_tvalid_in]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_0 [get_bd_pins xfft_rx09_dly3449_event_data_in_channel_halt_out] [get_bd_pins TRX_rx_FFT_calc/xfft_rx09_dly3449_event_data_in_channel_halt_out]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_frame_started_0 [get_bd_pins xfft_rx09_dly3449_event_frame_started_out] [get_bd_pins TRX_rx_FFT_calc/xfft_rx09_dly3449_event_frame_started_out]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_tlast_missing_0 [get_bd_pins xfft_rx09_dly3449_event_tlast_missing_out] [get_bd_pins TRX_rx_FFT_calc/xfft_rx09_dly3449_event_tlast_missing_out]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_0 [get_bd_pins xfft_rx09_dly3449_event_tlast_unexpected_out] [get_bd_pins TRX_rx_FFT_calc/xfft_rx09_dly3449_event_tlast_unexpected_out]
  connect_bd_net -net TRX_rx_rf09_FFT_s_data_rx09_im_0 [get_bd_pins TRX_rx_FFT_calc/fft_s_data_rx09_im_in] [get_bd_pins pre_fft_rx09_xlslice_25to13/Dout]
  connect_bd_net -net TRX_rx_rf09_FFT_s_data_rx09_re_0 [get_bd_pins TRX_rx_FFT_calc/fft_s_data_rx09_re_in] [get_bd_pins pre_fft_rx09_xlslice_12to00/Dout]
  connect_bd_net -net TRX_rx_rf09_FFT_window_coef_rom_rx09_0 [get_bd_pins FFT_window_coef_rom_rx09] [get_bd_pins TRX_rx_FFT_calc/FFT_window_coef_rom_rx09]
  connect_bd_net -net TRX_rx_rf09_PUSHDATA_decoder_rx09_squelch_lvl_0 [get_bd_pins decoder_rx09_squelch_lvl] [get_bd_pins PUSHDATA/decoder_rx09_squelch_lvl]
  connect_bd_net -net TRX_rx_rf09_PUSHDATA_din_0 [get_bd_pins TRX_PUSHDATA_din] [get_bd_pins PUSHDATA/TRX_PUSHDATA_din]
  connect_bd_net -net TRX_rx_rf09_PUSHDATA_wr_en_0 [get_bd_pins TRX_PUSHDATA_wr_en] [get_bd_pins PUSHDATA/TRX_PUSHDATA_wr_en]
  connect_bd_net -net TRX_rx_rf09_Post_FFT_mem_a_addr_0 [get_bd_pins post_fft_rx09_mem_a_addr_out] [get_bd_pins TRX_rx_FFT_calc/cordic_rx09_m_tuser_out] [get_bd_pins post_fft_rx09_xlslice_9to0/Din]
  connect_bd_net -net TRX_rx_rf09_Post_FFT_mem_a_rx09_util_reduced_logic_0_Res_0 [get_bd_pins post_fft_mem_a_rx09_EoT] [get_bd_pins post_fft_mem_a_rx09_util_reduced_logic_0/Res]
  connect_bd_net -net TRX_rx_rf09_Post_FFT_mem_a_rx09_xlconcat_0_dout_0 [get_bd_pins post_fft_mem_a_rx09_util_reduced_logic_0/Op1] [get_bd_pins post_fft_mem_a_rx09_xlconcat_0/dout]
  connect_bd_net -net TRX_rx_rf09_Post_FFT_mem_magnitude_0 [get_bd_pins TRX_post_fft_rx09_decoder_0/din] [get_bd_pins TRX_rx_FFT_calc/rx09_postmem_magnitude_out]
  connect_bd_net -net TRX_rx_rf09_Post_FFT_xlslice_14downto0_dout_0 [get_bd_pins TRX_post_fft_rx09_decoder_0/addr_in] [get_bd_pins post_fft_mem_a_rx09_xlconcat_0/In0] [get_bd_pins post_fft_rx09_xlslice_9to0/Dout]
  connect_bd_net -net TRX_rx_rf09_Pre_FFT_blk_mem_gen_0_doutb_0 [get_bd_pins pre_fft_rx09_blk_mem_gen_0/doutb] [get_bd_pins pre_fft_rx09_xlslice_12to00/Din] [get_bd_pins pre_fft_rx09_xlslice_25to13/Din]
  connect_bd_net -net TRX_rx_rf09_Pre_FFT_mem_addra_0 [get_bd_pins premem_rx09_addra_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/addra]
  connect_bd_net -net TRX_rx_rf09_Pre_FFT_mem_addrb_0 [get_bd_pins TRX_rx_rf09_Pre_FFT_mem_addrb] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/addrb]
  connect_bd_net -net TRX_rx_rf09_Pre_FFT_mem_dina_0 [get_bd_pins premem_rx09_dina_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/dina]
  connect_bd_net -net TRX_rx_rf09_Pre_FFT_mem_wea_0 [get_bd_pins premem_rx09_wea_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/wea]
  connect_bd_net -net TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0 [get_bd_pins TRX_rx_rf09_ch00_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/addrb]
  connect_bd_net -net TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0 [get_bd_pins TRX_rx_rf09_ch00_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/doutb]
  connect_bd_net -net TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch01_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch02_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch03_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch04_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch05_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch06_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1 [get_bd_pins TRX_rx_rf09_ch07_Post_FFT_mem_b_addr] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/addrb]
  connect_bd_net -net TRX_rx_rf09_framectr_0 [get_bd_pins RF09_framectr] [get_bd_pins TRX_rx_FFT_calc/RF09_framectr]
  connect_bd_net -net TRX_rx_rf09_uarterfrm_0 [get_bd_pins RF09_quarterfrm] [get_bd_pins TRX_rx_FFT_calc/RF09_quarterfrm]
  connect_bd_net -net aresetn_CD100_0 [get_bd_pins aresetn_CD100_in] [get_bd_pins PUSHDATA/s_axi_aresetn] [get_bd_pins TRX_rx_FFT_calc/aresetn_CD100_in]
  connect_bd_net -net post_fft_rx09_ch00_xlslice_4to0_Dout [get_bd_pins TRX_post_fft_rx09_decoder_0/addr_out] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/addra] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/addra] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/addra] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/addra] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/addra] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/addra] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/addra] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/addra]
  connect_bd_net -net post_fft_rx09_ch01_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch01_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/doutb]
  connect_bd_net -net post_fft_rx09_ch02_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch02_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/doutb]
  connect_bd_net -net post_fft_rx09_ch03_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch03_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/doutb]
  connect_bd_net -net post_fft_rx09_ch04_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch04_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/doutb]
  connect_bd_net -net post_fft_rx09_ch05_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch05_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/doutb]
  connect_bd_net -net post_fft_rx09_ch06_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch06_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/doutb]
  connect_bd_net -net post_fft_rx09_ch07_blk_mem_gen_doutb [get_bd_pins TRX_rx_rf09_ch07_Post_FFT_mem_b_dout] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/doutb]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_0 [get_bd_pins rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins PUSHDATA/rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins TRX_post_fft_rx09_decoder_0/reset_100MHz] [get_bd_pins TRX_rx_FFT_calc/rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/rstb] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/rstb] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/rstb] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/rstb] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/rstb] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/rstb] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/rstb] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/rstb] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/rstb]
  connect_bd_net -net s_axi_aclk_CD100_0 [get_bd_pins s_axi_aclk_CD100_in] [get_bd_pins PUSHDATA/s_axi_aclk_CD100_in] [get_bd_pins TRX_post_fft_rx09_decoder_0/clk_100MHz] [get_bd_pins TRX_rx_FFT_calc/s_axi_aclk_CD100_in] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/clka] [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/clkb] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/clkb] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/clkb] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/clkb] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/clkb] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/clkb] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/clkb] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/clka] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/clkb] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/clka] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/clkb]
  connect_bd_net -net val1_len1_0 [get_bd_pins post_fft_rx09_ch00_blk_mem_gen_0/wea] [get_bd_pins post_fft_rx09_ch01_blk_mem_gen/wea] [get_bd_pins post_fft_rx09_ch02_blk_mem_gen/wea] [get_bd_pins post_fft_rx09_ch03_blk_mem_gen/wea] [get_bd_pins post_fft_rx09_ch04_blk_mem_gen/wea] [get_bd_pins post_fft_rx09_ch05_blk_mem_gen/wea] [get_bd_pins post_fft_rx09_ch06_blk_mem_gen/wea] [get_bd_pins post_fft_rx09_ch07_blk_mem_gen/wea] [get_bd_pins xlconstant_val1_len1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_config
proc create_hier_cell_TRX_config { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_config() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 LVDS_tx_blank
  create_bd_pin -dir I -from 0 -to 0 Status_LVDS_rx09_synced
  create_bd_pin -dir I -from 0 -to 0 Status_LVDS_rx24_synced
  create_bd_pin -dir I -from 31 -to 0 TRX_CONFIG_GPIO1_o
  create_bd_pin -dir O -from 31 -to 0 TRX_CONFIG_GPIO2_i
  create_bd_pin -dir O -from 0 -to 0 TRX_resetn
  create_bd_pin -dir O -from 0 -to 0 TRX_rfx_mode
  create_bd_pin -dir I locked
  create_bd_pin -dir O -from 0 -to 0 proc_sys_reset_aux

  # Create instance: TRX_gpio_xlconcat_0, and set properties
  set TRX_gpio_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 TRX_gpio_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {29} \
   CONFIG.NUM_PORTS {4} \
 ] $TRX_gpio_xlconcat_0

  # Create instance: TRX_gpio_xlslice_0to0_blankTx_0, and set properties
  set TRX_gpio_xlslice_0to0_blankTx_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_gpio_xlslice_0to0_blankTx_0 ]

  # Create instance: TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0, and set properties
  set TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0

  # Create instance: TRX_gpio_xlslice_30to30_rfxmode_0, and set properties
  set TRX_gpio_xlslice_30to30_rfxmode_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_gpio_xlslice_30to30_rfxmode_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {30} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_gpio_xlslice_30to30_rfxmode_0

  # Create instance: TRX_gpio_xlslice_31to31_resetn_0, and set properties
  set TRX_gpio_xlslice_31to31_resetn_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_gpio_xlslice_31to31_resetn_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {31} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_gpio_xlslice_31to31_resetn_0

  # Create port connections
  connect_bd_net -net TRX_gpio_xlconcat_0_dout [get_bd_pins TRX_CONFIG_GPIO2_i] [get_bd_pins TRX_gpio_xlconcat_0/dout]
  connect_bd_net -net TRX_gpio_xlslice_0to0_resetn_dout_0 [get_bd_pins TRX_resetn] [get_bd_pins TRX_gpio_xlslice_31to31_resetn_0/Dout]
  connect_bd_net -net TRX_gpio_xlslice_1to1_blankTx_dout_0 [get_bd_pins LVDS_tx_blank] [get_bd_pins TRX_gpio_xlslice_0to0_blankTx_0/Dout]
  connect_bd_net -net TRX_gpio_xlslice_1to1_rfxmode_dout_0 [get_bd_pins TRX_rfx_mode] [get_bd_pins TRX_gpio_xlslice_30to30_rfxmode_0/Dout]
  connect_bd_net -net TRX_rx_rf09_LVDS_status_synced_0 [get_bd_pins Status_LVDS_rx09_synced] [get_bd_pins TRX_gpio_xlconcat_0/In1]
  connect_bd_net -net TRX_rx_rf24_LVDS_status_synced_0 [get_bd_pins Status_LVDS_rx24_synced] [get_bd_pins TRX_gpio_xlconcat_0/In2]
  connect_bd_net -net axi_TRX_gpio_0_gpio_io_o_0 [get_bd_pins TRX_CONFIG_GPIO1_o] [get_bd_pins TRX_gpio_xlslice_0to0_blankTx_0/Din] [get_bd_pins TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0/Din] [get_bd_pins TRX_gpio_xlslice_30to30_rfxmode_0/Din] [get_bd_pins TRX_gpio_xlslice_31to31_resetn_0/Din]
  connect_bd_net -net locked_0 [get_bd_pins locked] [get_bd_pins TRX_gpio_xlconcat_0/In0]
  connect_bd_net -net proc_sys_reset_aux_0 [get_bd_pins proc_sys_reset_aux] [get_bd_pins TRX_gpio_xlslice_1to1_proc_sys_reset_aux_0/Dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_clock
proc create_hier_cell_TRX_clock { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_clock() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_N
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_P
  create_bd_pin -dir I -type clk TRX_clk_26MHz
  create_bd_pin -dir O -type clk clk_trx_26MHz_vio
  create_bd_pin -dir O -type clk clk_trx_pll_25MHz_vio
  create_bd_pin -dir O locked

  # Create instance: TRX_PLL_clk_wiz_0, and set properties
  set TRX_PLL_clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 TRX_PLL_clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {100.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {208.558} \
   CONFIG.CLKOUT1_PHASE_ERROR {208.908} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {206.498} \
   CONFIG.CLKOUT2_PHASE_ERROR {208.908} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {26.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {208.558} \
   CONFIG.CLKOUT3_PHASE_ERROR {208.908} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_out1_25MHz} \
   CONFIG.CLK_OUT2_PORT {clk_trx_26MHz_vio} \
   CONFIG.CLK_OUT3_PORT {clk_trx_pll_25MHz_vio} \
   CONFIG.FEEDBACK_SOURCE {FDBK_ONCHIP} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {50} \
   CONFIG.MMCM_CLKIN1_PERIOD {38.462} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {52} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {50} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {52} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $TRX_PLL_clk_wiz_0

  # Create instance: TRX_PLL_util_ds_buf_0, and set properties
  set TRX_PLL_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 TRX_PLL_util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $TRX_PLL_util_ds_buf_0

  # Create port connections
  connect_bd_net -net TRX_PLL_clk_wiz_0_25MHz_vio [get_bd_pins clk_trx_pll_25MHz_vio] [get_bd_pins TRX_PLL_clk_wiz_0/clk_trx_pll_25MHz_vio]
  connect_bd_net -net TRX_PLL_clk_wiz_0_26MHz_vio [get_bd_pins clk_trx_26MHz_vio] [get_bd_pins TRX_PLL_clk_wiz_0/clk_trx_26MHz_vio]
  connect_bd_net -net TRX_PLL_clk_wiz_0_clk_in1_26MHz_0 [get_bd_pins TRX_clk_26MHz] [get_bd_pins TRX_PLL_clk_wiz_0/clk_in1]
  connect_bd_net -net TRX_PLL_clk_wiz_0_clk_out1_25MHz_0 [get_bd_pins TRX_PLL_clk_wiz_0/clk_out1_25MHz] [get_bd_pins TRX_PLL_util_ds_buf_0/OBUF_IN]
  connect_bd_net -net TRX_PLL_clk_wiz_0_clkfb_out_0 [get_bd_pins TRX_PLL_clk_wiz_0/clkfb_in] [get_bd_pins TRX_PLL_clk_wiz_0/clkfb_out]
  connect_bd_net -net TRX_PLL_clk_wiz_0_locked_0 [get_bd_pins locked] [get_bd_pins TRX_PLL_clk_wiz_0/locked]
  connect_bd_net -net TRX_PLL_util_ds_buf_0_OBUF_DS_n_0 [get_bd_pins TRX_PLL_clk_25MHz_N] [get_bd_pins TRX_PLL_util_ds_buf_0/OBUF_DS_N]
  connect_bd_net -net TRX_PLL_util_ds_buf_0_OBUF_DS_p_0 [get_bd_pins TRX_PLL_clk_25MHz_P] [get_bd_pins TRX_PLL_util_ds_buf_0/OBUF_DS_P]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_LVDS
proc create_hier_cell_TRX_LVDS { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TRX_LVDS() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_rx_clk_64MHz

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_tx_clk


  # Create pins
  create_bd_pin -dir O -from 31 -to 0 TRX_LVDS_tx09_fifo_din
  create_bd_pin -dir I -from 0 -to 0 TRX_config_LVDS_tx_blank_in
  create_bd_pin -dir I -from 0 -to 0 TRX_dds_tx_rf09_ptt
  create_bd_pin -dir I -type rst TRX_io_reset_i
  create_bd_pin -dir O -from 31 -to 0 TRX_rx09_fifo_o
  create_bd_pin -dir O TRX_rx09_fifo_valid_o
  create_bd_pin -dir O -from 31 -to 0 TRX_rx24_fifo_o
  create_bd_pin -dir O TRX_rx24_fifo_valid_o
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_rx_clkdiv_16MHz_o
  create_bd_pin -dir I -from 1 -to 0 TRX_rx_data_n
  create_bd_pin -dir I -from 1 -to 0 TRX_rx_data_p
  create_bd_pin -dir O -from 3 -to 0 TRX_rx_rd_data_count
  create_bd_pin -dir I -type data TRX_tx_4to1_c_counter_binary_0_THRESH0_4MHz
  create_bd_pin -dir O -from 1 -to 0 TRX_tx_data_n
  create_bd_pin -dir O -from 1 -to 0 TRX_tx_data_p
  create_bd_pin -dir I -from 20 -to 8 -type data TRX_tx_im_out
  create_bd_pin -dir I -from 20 -to 8 -type data TRX_tx_re_out
  create_bd_pin -dir I clk_rst_i
  create_bd_pin -dir I ref_clock_i
  create_bd_pin -dir I -type rst reset_CD100_i
  create_bd_pin -dir I -type clk s_axi_aclk

  # Create instance: TRX_LVDS_selectio_wiz_0, and set properties
  set TRX_LVDS_selectio_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 TRX_LVDS_selectio_wiz_0 ]
  set_property -dict [ list \
   CONFIG.BUS_DIR {SEPARATE} \
   CONFIG.BUS_IO_STD {LVDS_25} \
   CONFIG.BUS_SIG_TYPE {DIFF} \
   CONFIG.CLK_DELAY {FIXED} \
   CONFIG.CLK_FWD {true} \
   CONFIG.CLK_FWD_IO_STD {LVDS_25} \
   CONFIG.CLK_FWD_SIG_TYPE {DIFF} \
   CONFIG.CLK_TAP {16} \
   CONFIG.IDELAY_HIGH_PERF_MODE {false} \
   CONFIG.SELIO_ACTIVE_EDGE {DDR} \
   CONFIG.SELIO_BUS_IN_DELAY {FIXED} \
   CONFIG.SELIO_BUS_IN_TAP {16} \
   CONFIG.SELIO_CLK_BUF {BUFIO} \
   CONFIG.SELIO_CLK_IO_STD {LVDS_25} \
   CONFIG.SELIO_CLK_SIG_TYPE {DIFF} \
   CONFIG.SELIO_DDR_ALIGNMENT {SAME_EDGE_PIPELINED} \
   CONFIG.SELIO_IDDR_RST_TYPE {ASYNC} \
   CONFIG.SELIO_INTERFACE_TYPE {NETWORKING} \
   CONFIG.SERIALIZATION_FACTOR {8} \
   CONFIG.SYSTEM_DATA_WIDTH {2} \
   CONFIG.USE_SERIALIZATION {true} \
 ] $TRX_LVDS_selectio_wiz_0

  # Create instance: TRX_LVDS_util_ds_buf_0, and set properties
  set TRX_LVDS_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 TRX_LVDS_util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $TRX_LVDS_util_ds_buf_0

  # Create instance: TRX_rx09_concat
  create_hier_cell_TRX_rx09_concat $hier_obj TRX_rx09_concat

  # Create instance: TRX_rx09_fifo_generator_0, and set properties
  set TRX_rx09_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 TRX_rx09_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count_Width {6} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {61} \
   CONFIG.Full_Threshold_Negate_Value {60} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {64} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {16} \
   CONFIG.Output_Register_Type {Both} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {4} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Data_Count {false} \
   CONFIG.Write_Data_Count_Width {6} \
   CONFIG.synchronization_stages {3} \
 ] $TRX_rx09_fifo_generator_0

  # Create instance: TRX_rx24_concat
  create_hier_cell_TRX_rx24_concat $hier_obj TRX_rx24_concat

  # Create instance: TRX_rx24_fifo_generator_0, and set properties
  set TRX_rx24_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 TRX_rx24_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count_Width {6} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Reset_Synchronization {true} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {61} \
   CONFIG.Full_Threshold_Negate_Value {60} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {64} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {16} \
   CONFIG.Output_Register_Type {Both} \
   CONFIG.Read_Data_Count {false} \
   CONFIG.Read_Data_Count_Width {4} \
   CONFIG.Reset_Pin {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Data_Count {false} \
   CONFIG.Write_Data_Count_Width {6} \
   CONFIG.synchronization_stages {3} \
 ] $TRX_rx24_fifo_generator_0

  # Create instance: TRX_tx09_fifo_generator_0, and set properties
  set TRX_tx09_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 TRX_tx09_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count_Width {4} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {13} \
   CONFIG.Full_Threshold_Negate_Value {12} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {16} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Output_Depth {64} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {6} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Data_Count {true} \
   CONFIG.Write_Data_Count_Width {4} \
   CONFIG.synchronization_stages {3} \
 ] $TRX_tx09_fifo_generator_0

  # Create instance: TRX_tx_concat
  create_hier_cell_TRX_tx_concat $hier_obj TRX_tx_concat

  # Create instance: xlconstant_val0_len2, and set properties
  set xlconstant_val0_len2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val0_len2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_val0_len2

  # Create instance: xlconstant_val1_len1, and set properties
  set xlconstant_val1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val1_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_val1_len1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins TRX_tx_clk] [get_bd_intf_pins TRX_LVDS_selectio_wiz_0/diff_clk_to_pins]
  connect_bd_intf_net -intf_net rx_clk_CD064 [get_bd_intf_pins TRX_rx_clk_64MHz] [get_bd_intf_pins TRX_LVDS_selectio_wiz_0/diff_clk_in]

  # Create port connections
  connect_bd_net -net TRX_LVDS_peripheral_reset_0 [get_bd_pins clk_rst_i] [get_bd_pins TRX_rx09_fifo_generator_0/rst] [get_bd_pins TRX_rx24_fifo_generator_0/rst] [get_bd_pins TRX_tx09_fifo_generator_0/rst]
  connect_bd_net -net TRX_LVDS_rx_clkdiv_16MHz [get_bd_pins TRX_rx_clkdiv_16MHz_o] [get_bd_pins TRX_LVDS_util_ds_buf_0/BUFG_O] [get_bd_pins TRX_rx09_fifo_generator_0/wr_clk] [get_bd_pins TRX_rx24_fifo_generator_0/wr_clk] [get_bd_pins TRX_tx09_fifo_generator_0/rd_clk] [get_bd_pins TRX_tx_concat/clk_div_out]
  connect_bd_net -net TRX_LVDS_rx_data_n_1 [get_bd_pins TRX_rx_data_n] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_in_from_pins_n]
  connect_bd_net -net TRX_LVDS_rx_data_p_1 [get_bd_pins TRX_rx_data_p] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_in_from_pins_p]
  connect_bd_net -net TRX_LVDS_selectio_wiz_0_clk_div_out_0 [get_bd_pins TRX_LVDS_selectio_wiz_0/clk_div_out] [get_bd_pins TRX_LVDS_util_ds_buf_0/BUFG_I]
  connect_bd_net -net TRX_LVDS_tx_rf09_DDS_ptt_0 [get_bd_pins TRX_dds_tx_rf09_ptt] [get_bd_pins TRX_tx_concat/TRX_dds_tx_rf09_ptt]
  connect_bd_net -net TRX_LVDS_tx_rf09_concat_tx_blank_0 [get_bd_pins TRX_config_LVDS_tx_blank_in] [get_bd_pins TRX_tx_concat/TRX_config_LVDS_tx_blank_in]
  connect_bd_net -net TRX_io_reset_0 [get_bd_pins TRX_io_reset_i] [get_bd_pins TRX_LVDS_selectio_wiz_0/io_reset]
  connect_bd_net -net TRX_rx_rf09_FIFO_generator_0_dout_0 [get_bd_pins TRX_rx09_fifo_o] [get_bd_pins TRX_rx09_fifo_generator_0/dout]
  connect_bd_net -net TRX_rx_rf09_FIFO_generator_0_rd_data_count_0 [get_bd_pins TRX_rx_rd_data_count] [get_bd_pins TRX_rx09_fifo_generator_0/rd_data_count]
  connect_bd_net -net TRX_rx_rf09_FIFO_generator_0_valid_0 [get_bd_pins TRX_rx09_fifo_valid_o] [get_bd_pins TRX_rx09_fifo_generator_0/valid]
  connect_bd_net -net TRX_rx_rf09_LVDS_16bits_CD016_0 [get_bd_pins TRX_LVDS_selectio_wiz_0/data_in_to_device] [get_bd_pins TRX_rx09_concat/Din] [get_bd_pins TRX_rx24_concat/Din]
  connect_bd_net -net TRX_rx_rf09_LVDS_concat_CD016_0 [get_bd_pins TRX_rx09_concat/rx09_o] [get_bd_pins TRX_rx09_fifo_generator_0/din]
  connect_bd_net -net TRX_rx_rf24_Concat_CD016_0 [get_bd_pins TRX_rx24_concat/rx24_o] [get_bd_pins TRX_rx24_fifo_generator_0/din]
  connect_bd_net -net TRX_rx_rf24_fifo_generator_0_dout_0 [get_bd_pins TRX_rx24_fifo_o] [get_bd_pins TRX_rx24_fifo_generator_0/dout]
  connect_bd_net -net TRX_rx_rf24_fifo_generator_0_valid_0 [get_bd_pins TRX_rx24_fifo_valid_o] [get_bd_pins TRX_rx24_fifo_generator_0/valid]
  connect_bd_net -net TRX_tx_rf09_4to1_c_counter_binary_0_THRESH0_4MHz [get_bd_pins TRX_tx_4to1_c_counter_binary_0_THRESH0_4MHz] [get_bd_pins TRX_tx09_fifo_generator_0/wr_clk]
  connect_bd_net -net TRX_tx_rf09_Concat_data_out_from_device_in_0 [get_bd_pins TRX_LVDS_selectio_wiz_0/data_out_from_device] [get_bd_pins TRX_tx_concat/TRX_tx_data_out_from_device_in]
  connect_bd_net -net TRX_tx_rf09_FIFO_din_0 [get_bd_pins TRX_LVDS_tx09_fifo_din] [get_bd_pins TRX_tx09_fifo_generator_0/din] [get_bd_pins TRX_tx_concat/TRX_tx09_fifo_din]
  connect_bd_net -net TRX_tx_rf09_FIFO_dout_0 [get_bd_pins TRX_tx09_fifo_generator_0/dout] [get_bd_pins TRX_tx_concat/TRX_tx09_fifo_dout]
  connect_bd_net -net TRX_tx_rf09_LVDS_im_out_0 [get_bd_pins TRX_tx_im_out] [get_bd_pins TRX_tx_concat/TRX_tx_im_out]
  connect_bd_net -net TRX_tx_rf09_LVDS_re_out_0 [get_bd_pins TRX_tx_re_out] [get_bd_pins TRX_tx_concat/TRX_tx_re_out]
  connect_bd_net -net TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_n [get_bd_pins TRX_tx_data_n] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_out_to_pins_n]
  connect_bd_net -net TRX_tx_rf09_selectio_wiz_0_data_out_to_pins_p [get_bd_pins TRX_tx_data_p] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_out_to_pins_p]
  connect_bd_net -net ref_clock_200MHz_0 [get_bd_pins ref_clock_i] [get_bd_pins TRX_LVDS_selectio_wiz_0/ref_clock]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_0 [get_bd_pins reset_CD100_i] [get_bd_pins TRX_LVDS_selectio_wiz_0/clk_reset]
  connect_bd_net -net s_axi_aclk_100MHz_0 [get_bd_pins s_axi_aclk] [get_bd_pins TRX_rx09_fifo_generator_0/rd_clk] [get_bd_pins TRX_rx24_fifo_generator_0/rd_clk]
  connect_bd_net -net val1_len1 [get_bd_pins TRX_rx09_fifo_generator_0/rd_en] [get_bd_pins TRX_rx09_fifo_generator_0/wr_en] [get_bd_pins TRX_rx24_fifo_generator_0/rd_en] [get_bd_pins TRX_rx24_fifo_generator_0/wr_en] [get_bd_pins TRX_tx09_fifo_generator_0/rd_en] [get_bd_pins TRX_tx09_fifo_generator_0/wr_en] [get_bd_pins xlconstant_val1_len1/dout]
  connect_bd_net -net xlconstant_val0_len2_dout [get_bd_pins TRX_LVDS_selectio_wiz_0/bitslip] [get_bd_pins xlconstant_val0_len2/dout]

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
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set TRX_rx_clk_64MHz [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_rx_clk_64MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {64000000} \
   ] $TRX_rx_clk_64MHz

  set TRX_tx_clk [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_tx_clk ]


  # Create ports
  set FFT_window_coef_rom_rx09 [ create_bd_port -dir I -from 9 -to 0 -type data FFT_window_coef_rom_rx09 ]
  set RF09_framectr [ create_bd_port -dir I -from 29 -to 0 -type data RF09_framectr ]
  set RF09_quarterfrm [ create_bd_port -dir I -from 1 -to 0 -type data RF09_quarterfrm ]
  set Status_LVDS_rx09_synced [ create_bd_port -dir I Status_LVDS_rx09_synced ]
  set Status_LVDS_rx24_synced [ create_bd_port -dir I Status_LVDS_rx24_synced ]
  set TRX_CONFIG_GPIO1_o [ create_bd_port -dir I -from 31 -to 0 TRX_CONFIG_GPIO1_o ]
  set TRX_CONFIG_GPIO2_i [ create_bd_port -dir O -from 31 -to 0 TRX_CONFIG_GPIO2_i ]
  set TRX_LVDS_tx09_fifo_din [ create_bd_port -dir O -from 31 -to 0 -type data TRX_LVDS_tx09_fifo_din ]
  set TRX_PLL_clk_25MHz_n [ create_bd_port -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_n ]
  set TRX_PLL_clk_25MHz_p [ create_bd_port -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_p ]
  set TRX_PUSHDATA_ch00_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch00_din ]
  set TRX_PUSHDATA_ch00_grant [ create_bd_port -dir O TRX_PUSHDATA_ch00_grant ]
  set TRX_PUSHDATA_ch00_req [ create_bd_port -dir I TRX_PUSHDATA_ch00_req ]
  set TRX_PUSHDATA_ch00_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch00_wr_en ]
  set TRX_PUSHDATA_ch01_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch01_din ]
  set TRX_PUSHDATA_ch01_grant [ create_bd_port -dir O TRX_PUSHDATA_ch01_grant ]
  set TRX_PUSHDATA_ch01_req [ create_bd_port -dir I TRX_PUSHDATA_ch01_req ]
  set TRX_PUSHDATA_ch01_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch01_wr_en ]
  set TRX_PUSHDATA_ch02_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch02_din ]
  set TRX_PUSHDATA_ch02_grant [ create_bd_port -dir O TRX_PUSHDATA_ch02_grant ]
  set TRX_PUSHDATA_ch02_req [ create_bd_port -dir I TRX_PUSHDATA_ch02_req ]
  set TRX_PUSHDATA_ch02_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch02_wr_en ]
  set TRX_PUSHDATA_ch03_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch03_din ]
  set TRX_PUSHDATA_ch03_grant [ create_bd_port -dir O TRX_PUSHDATA_ch03_grant ]
  set TRX_PUSHDATA_ch03_req [ create_bd_port -dir I TRX_PUSHDATA_ch03_req ]
  set TRX_PUSHDATA_ch03_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch03_wr_en ]
  set TRX_PUSHDATA_ch04_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch04_din ]
  set TRX_PUSHDATA_ch04_grant [ create_bd_port -dir O TRX_PUSHDATA_ch04_grant ]
  set TRX_PUSHDATA_ch04_req [ create_bd_port -dir I TRX_PUSHDATA_ch04_req ]
  set TRX_PUSHDATA_ch04_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch04_wr_en ]
  set TRX_PUSHDATA_ch05_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch05_din ]
  set TRX_PUSHDATA_ch05_grant [ create_bd_port -dir O TRX_PUSHDATA_ch05_grant ]
  set TRX_PUSHDATA_ch05_req [ create_bd_port -dir I TRX_PUSHDATA_ch05_req ]
  set TRX_PUSHDATA_ch05_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch05_wr_en ]
  set TRX_PUSHDATA_ch06_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch06_din ]
  set TRX_PUSHDATA_ch06_grant [ create_bd_port -dir O TRX_PUSHDATA_ch06_grant ]
  set TRX_PUSHDATA_ch06_req [ create_bd_port -dir I TRX_PUSHDATA_ch06_req ]
  set TRX_PUSHDATA_ch06_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch06_wr_en ]
  set TRX_PUSHDATA_ch07_din [ create_bd_port -dir I -from 7 -to 0 -type data TRX_PUSHDATA_ch07_din ]
  set TRX_PUSHDATA_ch07_grant [ create_bd_port -dir O TRX_PUSHDATA_ch07_grant ]
  set TRX_PUSHDATA_ch07_req [ create_bd_port -dir I TRX_PUSHDATA_ch07_req ]
  set TRX_PUSHDATA_ch07_wr_en [ create_bd_port -dir I TRX_PUSHDATA_ch07_wr_en ]
  set TRX_RX_PUSHDATA_GPIO1_i [ create_bd_port -dir O -from 31 -to 0 TRX_RX_PUSHDATA_GPIO1_i ]
  set TRX_RX_PUSHDATA_GPIO2_o [ create_bd_port -dir I -from 31 -to 0 TRX_RX_PUSHDATA_GPIO2_o ]
  set TRX_TX_DDSAMPL_GPIO1_o [ create_bd_port -dir I -from 15 -to 0 TRX_TX_DDSAMPL_GPIO1_o ]
  set TRX_TX_DDSAMPL_GPIO2_o [ create_bd_port -dir I -from 15 -to 0 TRX_TX_DDSAMPL_GPIO2_o ]
  set TRX_TX_DDS_GPIO1_i [ create_bd_port -dir O -from 31 -to 0 TRX_TX_DDS_GPIO1_i ]
  set TRX_TX_DDS_GPIO1_o [ create_bd_port -dir I -from 31 -to 0 TRX_TX_DDS_GPIO1_o ]
  set TRX_TX_DDS_GPIO2_o [ create_bd_port -dir I -from 31 -to 0 TRX_TX_DDS_GPIO2_o ]
  set TRX_TX_RF09_PULLDATA_FIFO_empty [ create_bd_port -dir O TRX_TX_RF09_PULLDATA_FIFO_empty ]
  set TRX_clk_26MHz [ create_bd_port -dir I -type clk -freq_hz 26000000 TRX_clk_26MHz ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {msys_TRX_clk_26MHz} \
 ] $TRX_clk_26MHz
  set TRX_clk_trx_26MHz_vio [ create_bd_port -dir O -type clk TRX_clk_trx_26MHz_vio ]
  set TRX_clk_trx_pll_25MHz_vio [ create_bd_port -dir O -type clk TRX_clk_trx_pll_25MHz_vio ]
  set TRX_dds_tx_rf09_inc [ create_bd_port -dir I -from 25 -to 0 -type data TRX_dds_tx_rf09_inc ]
  set TRX_dds_tx_rf09_ptt [ create_bd_port -dir I TRX_dds_tx_rf09_ptt ]
  set TRX_decoder_rx09_squelch_lvl [ create_bd_port -dir O -from 15 -to 0 -type data TRX_decoder_rx09_squelch_lvl ]
  set TRX_encoder_tx09_pull_FIFO_dump [ create_bd_port -dir O -from 0 -to 0 TRX_encoder_tx09_pull_FIFO_dump ]
  set TRX_encoder_tx09_pull_data_len [ create_bd_port -dir O -from 6 -to 0 -type data TRX_encoder_tx09_pull_data_len ]
  set TRX_encoder_tx09_pull_do_start [ create_bd_port -dir O -from 0 -to 0 TRX_encoder_tx09_pull_do_start ]
  set TRX_fft09_data_tready_out [ create_bd_port -dir O TRX_fft09_data_tready_out ]
  set TRX_post_fft_mem_a_rx09_EoT [ create_bd_port -dir O TRX_post_fft_mem_a_rx09_EoT ]
  set TRX_post_fft_rx09_mem_a_addr [ create_bd_port -dir O -from 41 -to 0 -type data TRX_post_fft_rx09_mem_a_addr ]
  set TRX_pulldata_tx09_byteData [ create_bd_port -dir O -from 7 -to 0 -type data TRX_pulldata_tx09_byteData ]
  set TRX_resetn [ create_bd_port -dir O -from 0 -to 0 -type rst TRX_resetn ]
  set TRX_rfx_mode [ create_bd_port -dir O -from 0 -to 0 TRX_rfx_mode ]
  set TRX_rx09_fifo [ create_bd_port -dir O -from 31 -to 0 -type data TRX_rx09_fifo ]
  set TRX_rx09_fifo_valid [ create_bd_port -dir O TRX_rx09_fifo_valid ]
  set TRX_rx24_fifo [ create_bd_port -dir O -from 31 -to 0 -type data TRX_rx24_fifo ]
  set TRX_rx24_fifo_valid [ create_bd_port -dir O TRX_rx24_fifo_valid ]
  set TRX_rx_clkdiv_16MHz [ create_bd_port -dir O -from 0 -to 0 -type clk TRX_rx_clkdiv_16MHz ]
  set TRX_rx_data_n [ create_bd_port -dir I -from 1 -to 0 TRX_rx_data_n ]
  set TRX_rx_data_p [ create_bd_port -dir I -from 1 -to 0 TRX_rx_data_p ]
  set TRX_rx_rd_data_count [ create_bd_port -dir O -from 3 -to 0 -type data TRX_rx_rd_data_count ]
  set TRX_rx_rf09_Pre_FFT_mem_addrb [ create_bd_port -dir I -from 10 -to 0 -type data TRX_rx_rf09_Pre_FFT_mem_addrb ]
  set TRX_rx_rf09_ch00_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch00_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch00_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 TRX_rx_rf09_ch00_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch01_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch01_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch01_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch01_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch02_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch02_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch02_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch02_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch03_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch03_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch03_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch03_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch04_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch04_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch04_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch04_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch05_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch05_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch05_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch05_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch06_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch06_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch06_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch06_Post_FFT_mem_b_dout ]
  set TRX_rx_rf09_ch07_Post_FFT_mem_b_addr [ create_bd_port -dir I -from 4 -to 0 -type data TRX_rx_rf09_ch07_Post_FFT_mem_b_addr ]
  set TRX_rx_rf09_ch07_Post_FFT_mem_b_dout [ create_bd_port -dir O -from 15 -to 0 -type data TRX_rx_rf09_ch07_Post_FFT_mem_b_dout ]
  set TRX_tx_DDS0_gpio_ampt [ create_bd_port -dir O -from 15 -to 0 -type data TRX_tx_DDS0_gpio_ampt ]
  set TRX_tx_DDS1_gpio_ampt [ create_bd_port -dir O -from 15 -to 0 -type data TRX_tx_DDS1_gpio_ampt ]
  set TRX_tx_data_count [ create_bd_port -dir O -from 11 -to 0 -type data TRX_tx_data_count ]
  set TRX_tx_data_n [ create_bd_port -dir O -from 1 -to 0 TRX_tx_data_n ]
  set TRX_tx_data_p [ create_bd_port -dir O -from 1 -to 0 TRX_tx_data_p ]
  set TRX_tx_im_out [ create_bd_port -dir O -from 20 -to 8 -type data TRX_tx_im_out ]
  set TRX_tx_re_out [ create_bd_port -dir O -from 20 -to 8 -type data TRX_tx_re_out ]
  set TRX_xfft_rx09_dly3449_event_data_in_channel_halt [ create_bd_port -dir O TRX_xfft_rx09_dly3449_event_data_in_channel_halt ]
  set TRX_xfft_rx09_dly3449_event_frame_started [ create_bd_port -dir O TRX_xfft_rx09_dly3449_event_frame_started ]
  set TRX_xfft_rx09_dly3449_event_tlast_missing [ create_bd_port -dir O TRX_xfft_rx09_dly3449_event_tlast_missing ]
  set TRX_xfft_rx09_dly3449_event_tlast_unexpected [ create_bd_port -dir O TRX_xfft_rx09_dly3449_event_tlast_unexpected ]
  set fft09_config_tdata_in [ create_bd_port -dir I -from 7 -to 0 -type data fft09_config_tdata_in ]
  set fft09_config_tvalid_in [ create_bd_port -dir I fft09_config_tvalid_in ]
  set fft09_data_tlast_in [ create_bd_port -dir I fft09_data_tlast_in ]
  set fft09_data_tvalid_in [ create_bd_port -dir I fft09_data_tvalid_in ]
  set microblaze_0_Clk_100MHz [ create_bd_port -dir I -type clk -freq_hz 100000000 microblaze_0_Clk_100MHz ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {msys_mig_7series_0_0_ui_clk} \
   CONFIG.PHASE {0} \
 ] $microblaze_0_Clk_100MHz
  set mig_7series_0_mmcm_locked [ create_bd_port -dir I mig_7series_0_mmcm_locked ]
  set mig_7series_0_ui_addn_clk_0_200MHz [ create_bd_port -dir I -type clk -freq_hz 200000000 mig_7series_0_ui_addn_clk_0_200MHz ]
  set premem_rx09_addra_in [ create_bd_port -dir I -from 10 -to 0 -type data premem_rx09_addra_in ]
  set premem_rx09_dina_in [ create_bd_port -dir I -from 25 -to 0 -type data premem_rx09_dina_in ]
  set premem_rx09_wea_in [ create_bd_port -dir I premem_rx09_wea_in ]
  set pulldata_tx09_en [ create_bd_port -dir I pulldata_tx09_en ]
  set rst_mig_7series_0_100M_peripheral_aresetn [ create_bd_port -dir I -type rst rst_mig_7series_0_100M_peripheral_aresetn ]
  set rst_mig_7series_0_100M_peripheral_reset [ create_bd_port -dir I -type rst rst_mig_7series_0_100M_peripheral_reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst_mig_7series_0_100M_peripheral_reset

  # Create instance: TRX_LVDS
  create_hier_cell_TRX_LVDS [current_bd_instance .] TRX_LVDS

  # Create instance: TRX_clock
  create_hier_cell_TRX_clock [current_bd_instance .] TRX_clock

  # Create instance: TRX_config
  create_hier_cell_TRX_config [current_bd_instance .] TRX_config

  # Create instance: TRX_io_reset_counter_binary_0, and set properties
  set TRX_io_reset_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 TRX_io_reset_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Count_Mode {UP} \
   CONFIG.Final_Count_Value {1e} \
   CONFIG.Output_Width {5} \
   CONFIG.Restrict_Count {true} \
   CONFIG.SCLR {true} \
   CONFIG.SSET {false} \
   CONFIG.Sync_Threshold_Output {true} \
   CONFIG.Threshold_Value {1e} \
 ] $TRX_io_reset_counter_binary_0

  # Create instance: TRX_proc_sys_reset_0, and set properties
  set TRX_proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 TRX_proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $TRX_proc_sys_reset_0

  # Create instance: TRX_reset_util_vector_logic_0, and set properties
  set TRX_reset_util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 TRX_reset_util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $TRX_reset_util_vector_logic_0

  # Create instance: TRX_rx_FFT_unit
  create_hier_cell_TRX_rx_FFT_unit [current_bd_instance .] TRX_rx_FFT_unit

  # Create instance: TRX_tx_DDS_unit
  create_hier_cell_TRX_tx_DDS_unit [current_bd_instance .] TRX_tx_DDS_unit

  # Create interface connections
  connect_bd_intf_net -intf_net TRX_TRX_tx_clk [get_bd_intf_ports TRX_tx_clk] [get_bd_intf_pins TRX_LVDS/TRX_tx_clk]
  connect_bd_intf_net -intf_net TRX_rx_clk_64MHz_1 [get_bd_intf_ports TRX_rx_clk_64MHz] [get_bd_intf_pins TRX_LVDS/TRX_rx_clk_64MHz]

  # Create port connections
  connect_bd_net -net TRX_16MHz_peripheral_reset_0 [get_bd_pins TRX_LVDS/clk_rst_i] [get_bd_pins TRX_io_reset_counter_binary_0/SCLR] [get_bd_pins TRX_proc_sys_reset_0/peripheral_reset] [get_bd_pins TRX_tx_DDS_unit/SCLR]
  connect_bd_net -net TRX_CONFIG_GPIO1_o_1 [get_bd_ports TRX_CONFIG_GPIO1_o] [get_bd_pins TRX_config/TRX_CONFIG_GPIO1_o]
  connect_bd_net -net TRX_LVDS_TRX_LVDS_tx09_fifo_din [get_bd_ports TRX_LVDS_tx09_fifo_din] [get_bd_pins TRX_LVDS/TRX_LVDS_tx09_fifo_din]
  connect_bd_net -net TRX_PLL_clk_25MHz_n_0 [get_bd_ports TRX_PLL_clk_25MHz_n] [get_bd_pins TRX_clock/TRX_PLL_clk_25MHz_N]
  connect_bd_net -net TRX_PLL_clk_25MHz_p_0 [get_bd_ports TRX_PLL_clk_25MHz_p] [get_bd_pins TRX_clock/TRX_PLL_clk_25MHz_P]
  connect_bd_net -net TRX_PUSHDATA_ch00_req_1 [get_bd_ports TRX_PUSHDATA_ch00_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch00_req]
  connect_bd_net -net TRX_PUSHDATA_ch01_din_1 [get_bd_ports TRX_PUSHDATA_ch01_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch01_din]
  connect_bd_net -net TRX_PUSHDATA_ch01_req_1 [get_bd_ports TRX_PUSHDATA_ch01_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch01_req]
  connect_bd_net -net TRX_PUSHDATA_ch01_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch01_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch01_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch02_din_1 [get_bd_ports TRX_PUSHDATA_ch02_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch02_din]
  connect_bd_net -net TRX_PUSHDATA_ch02_req_1 [get_bd_ports TRX_PUSHDATA_ch02_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch02_req]
  connect_bd_net -net TRX_PUSHDATA_ch02_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch02_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch02_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch03_din_1 [get_bd_ports TRX_PUSHDATA_ch03_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch03_din]
  connect_bd_net -net TRX_PUSHDATA_ch03_req_1 [get_bd_ports TRX_PUSHDATA_ch03_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch03_req]
  connect_bd_net -net TRX_PUSHDATA_ch03_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch03_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch03_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch04_din_1 [get_bd_ports TRX_PUSHDATA_ch04_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch04_din]
  connect_bd_net -net TRX_PUSHDATA_ch04_req_1 [get_bd_ports TRX_PUSHDATA_ch04_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch04_req]
  connect_bd_net -net TRX_PUSHDATA_ch04_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch04_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch04_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch05_din_1 [get_bd_ports TRX_PUSHDATA_ch05_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch05_din]
  connect_bd_net -net TRX_PUSHDATA_ch05_req_1 [get_bd_ports TRX_PUSHDATA_ch05_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch05_req]
  connect_bd_net -net TRX_PUSHDATA_ch05_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch05_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch05_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch06_din_1 [get_bd_ports TRX_PUSHDATA_ch06_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch06_din]
  connect_bd_net -net TRX_PUSHDATA_ch06_req_1 [get_bd_ports TRX_PUSHDATA_ch06_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch06_req]
  connect_bd_net -net TRX_PUSHDATA_ch06_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch06_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch06_wr_en]
  connect_bd_net -net TRX_PUSHDATA_ch07_din_1 [get_bd_ports TRX_PUSHDATA_ch07_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch07_din]
  connect_bd_net -net TRX_PUSHDATA_ch07_req_1 [get_bd_ports TRX_PUSHDATA_ch07_req] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch07_req]
  connect_bd_net -net TRX_PUSHDATA_ch07_wr_en_1 [get_bd_ports TRX_PUSHDATA_ch07_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch07_wr_en]
  connect_bd_net -net TRX_RX_PUSHDATA_GPIO2_o_1 [get_bd_ports TRX_RX_PUSHDATA_GPIO2_o] [get_bd_pins TRX_rx_FFT_unit/TRX_RX_PUSHDATA_GPIO2_o]
  connect_bd_net -net TRX_TX_DDSAMPL_GPIO1_o_1 [get_bd_ports TRX_TX_DDSAMPL_GPIO1_o] [get_bd_pins TRX_tx_DDS_unit/TRX_TX_DDSAMPL_GPIO1_o]
  connect_bd_net -net TRX_TX_DDSAMPL_GPIO2_o_1 [get_bd_ports TRX_TX_DDSAMPL_GPIO2_o] [get_bd_pins TRX_tx_DDS_unit/TRX_TX_DDSAMPL_GPIO2_o]
  connect_bd_net -net TRX_TX_DDS_GPIO1_o_1 [get_bd_ports TRX_TX_DDS_GPIO1_o] [get_bd_pins TRX_tx_DDS_unit/TRX_TX_DDS_GPIO1_o]
  connect_bd_net -net TRX_TX_DDS_GPIO2_o_1 [get_bd_ports TRX_TX_DDS_GPIO2_o] [get_bd_pins TRX_tx_DDS_unit/TRX_TX_DDS_GPIO2_o]
  connect_bd_net -net TRX_clk_26MHz_0 [get_bd_ports TRX_clk_26MHz] [get_bd_pins TRX_clock/TRX_clk_26MHz]
  connect_bd_net -net TRX_clk_26MHz_vio_0 [get_bd_ports TRX_clk_trx_26MHz_vio] [get_bd_pins TRX_clock/clk_trx_26MHz_vio]
  connect_bd_net -net TRX_clk_PLL_25MHz_vio_0 [get_bd_ports TRX_clk_trx_pll_25MHz_vio] [get_bd_pins TRX_clock/clk_trx_pll_25MHz_vio]
  connect_bd_net -net TRX_clock_locked_0 [get_bd_pins TRX_clock/locked] [get_bd_pins TRX_config/locked]
  connect_bd_net -net TRX_config_LVDS_tx_blank_0 [get_bd_pins TRX_LVDS/TRX_config_LVDS_tx_blank_in] [get_bd_pins TRX_config/LVDS_tx_blank]
  connect_bd_net -net TRX_config_TRX_CONFIG_GPIO2_i [get_bd_ports TRX_CONFIG_GPIO2_i] [get_bd_pins TRX_config/TRX_CONFIG_GPIO2_i]
  connect_bd_net -net TRX_dcm_locked_0 [get_bd_ports mig_7series_0_mmcm_locked] [get_bd_pins TRX_proc_sys_reset_0/dcm_locked]
  connect_bd_net -net TRX_io_reset_0 [get_bd_pins TRX_LVDS/TRX_io_reset_i] [get_bd_pins TRX_io_reset_counter_binary_0/CE] [get_bd_pins TRX_reset_util_vector_logic_0/Res]
  connect_bd_net -net TRX_io_reset_counter_binary_0_THRESH0_0 [get_bd_pins TRX_io_reset_counter_binary_0/THRESH0] [get_bd_pins TRX_reset_util_vector_logic_0/Op1]
  connect_bd_net -net TRX_peripheral_aresetn_0 [get_bd_pins TRX_proc_sys_reset_0/peripheral_aresetn] [get_bd_pins TRX_tx_DDS_unit/aresetn]
  connect_bd_net -net TRX_ref_clock_200MHz_0 [get_bd_ports mig_7series_0_ui_addn_clk_0_200MHz] [get_bd_pins TRX_LVDS/ref_clock_i]
  connect_bd_net -net TRX_reset_CD100_0 [get_bd_ports rst_mig_7series_0_100M_peripheral_reset] [get_bd_pins TRX_LVDS/reset_CD100_i] [get_bd_pins TRX_proc_sys_reset_0/ext_reset_in] [get_bd_pins TRX_rx_FFT_unit/rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins TRX_tx_DDS_unit/ui_clk_sync_rst]
  connect_bd_net -net TRX_resetn_0 [get_bd_ports TRX_resetn] [get_bd_pins TRX_config/TRX_resetn]
  connect_bd_net -net TRX_rfx_mode_0 [get_bd_ports TRX_rfx_mode] [get_bd_pins TRX_config/TRX_rfx_mode]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch00_grant [get_bd_ports TRX_PUSHDATA_ch00_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch00_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch01_grant [get_bd_ports TRX_PUSHDATA_ch01_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch01_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch02_grant [get_bd_ports TRX_PUSHDATA_ch02_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch02_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch03_grant [get_bd_ports TRX_PUSHDATA_ch03_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch03_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch04_grant [get_bd_ports TRX_PUSHDATA_ch04_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch04_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch05_grant [get_bd_ports TRX_PUSHDATA_ch05_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch05_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch06_grant [get_bd_ports TRX_PUSHDATA_ch06_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch06_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_PUSHDATA_ch07_grant [get_bd_ports TRX_PUSHDATA_ch07_grant] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_ch07_grant]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_RX_PUSHDATA_GPIO1_i [get_bd_ports TRX_RX_PUSHDATA_GPIO1_i] [get_bd_pins TRX_rx_FFT_unit/TRX_RX_PUSHDATA_GPIO1_i]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch01_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch01_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch01_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch02_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch02_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch02_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch03_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch03_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch03_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch04_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch04_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch04_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch05_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch05_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch05_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch06_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch06_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch06_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_rx_rf09_ch07_Post_FFT_mem_b_dout [get_bd_ports TRX_rx_rf09_ch07_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch07_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_data_n_0 [get_bd_ports TRX_rx_data_n] [get_bd_pins TRX_LVDS/TRX_rx_data_n]
  connect_bd_net -net TRX_rx_data_p_0 [get_bd_ports TRX_rx_data_p] [get_bd_pins TRX_LVDS/TRX_rx_data_p]
  connect_bd_net -net TRX_rx_rd_data_count_1 [get_bd_ports TRX_rx_rd_data_count] [get_bd_pins TRX_LVDS/TRX_rx_rd_data_count]
  connect_bd_net -net TRX_rx_rf09_32bits_CD100_0 [get_bd_ports TRX_rx09_fifo] [get_bd_pins TRX_LVDS/TRX_rx09_fifo_o]
  connect_bd_net -net TRX_rx_rf09_Decoder_squelch_lvl_0 [get_bd_ports TRX_decoder_rx09_squelch_lvl] [get_bd_pins TRX_rx_FFT_unit/decoder_rx09_squelch_lvl]
  connect_bd_net -net TRX_rx_rf09_FFT_config_tdata_0 [get_bd_ports fft09_config_tdata_in] [get_bd_pins TRX_rx_FFT_unit/fft09_config_tdata_in]
  connect_bd_net -net TRX_rx_rf09_FFT_config_tvalid_0 [get_bd_ports fft09_config_tvalid_in] [get_bd_pins TRX_rx_FFT_unit/fft09_config_tvalid_in]
  connect_bd_net -net TRX_rx_rf09_FFT_data_tlast_0 [get_bd_ports fft09_data_tlast_in] [get_bd_pins TRX_rx_FFT_unit/fft09_data_tlast_in]
  connect_bd_net -net TRX_rx_rf09_FFT_data_tready_0 [get_bd_ports TRX_fft09_data_tready_out] [get_bd_pins TRX_rx_FFT_unit/fft09_data_tready_out]
  connect_bd_net -net TRX_rx_rf09_FFT_data_tvalid_0 [get_bd_ports fft09_data_tvalid_in] [get_bd_pins TRX_rx_FFT_unit/fft09_data_tvalid_in]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_data_in_channel_halt_out [get_bd_ports TRX_xfft_rx09_dly3449_event_data_in_channel_halt] [get_bd_pins TRX_rx_FFT_unit/xfft_rx09_dly3449_event_data_in_channel_halt_out]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_frame_started_out [get_bd_ports TRX_xfft_rx09_dly3449_event_frame_started] [get_bd_pins TRX_rx_FFT_unit/xfft_rx09_dly3449_event_frame_started_out]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_tlast_missing_out [get_bd_ports TRX_xfft_rx09_dly3449_event_tlast_missing] [get_bd_pins TRX_rx_FFT_unit/xfft_rx09_dly3449_event_tlast_missing_out]
  connect_bd_net -net TRX_rx_rf09_FFT_dly3449_event_tlast_unexpected_out [get_bd_ports TRX_xfft_rx09_dly3449_event_tlast_unexpected] [get_bd_pins TRX_rx_FFT_unit/xfft_rx09_dly3449_event_tlast_unexpected_out]
  connect_bd_net -net TRX_rx_rf09_FFT_window_coef_rom_0 [get_bd_ports FFT_window_coef_rom_rx09] [get_bd_pins TRX_rx_FFT_unit/FFT_window_coef_rom_rx09]
  connect_bd_net -net TRX_rx_rf09_FIFO_valid_0 [get_bd_ports TRX_rx09_fifo_valid] [get_bd_pins TRX_LVDS/TRX_rx09_fifo_valid_o]
  connect_bd_net -net TRX_rx_rf09_LVDS_status_synced_0 [get_bd_ports Status_LVDS_rx09_synced] [get_bd_pins TRX_config/Status_LVDS_rx09_synced]
  connect_bd_net -net TRX_rx_rf09_PUSHDATA_din_0 [get_bd_ports TRX_PUSHDATA_ch00_din] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_din]
  connect_bd_net -net TRX_rx_rf09_PUSHDATA_wr_en_0 [get_bd_ports TRX_PUSHDATA_ch00_wr_en] [get_bd_pins TRX_rx_FFT_unit/TRX_PUSHDATA_wr_en]
  connect_bd_net -net TRX_rx_rf09_Pre_FFT_mem_addrb_0 [get_bd_ports TRX_rx_rf09_Pre_FFT_mem_addrb] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_Pre_FFT_mem_addrb]
  connect_bd_net -net TRX_rx_rf09_ch00_Post_FFT_mem_b_addr_0 [get_bd_ports TRX_rx_rf09_ch00_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch00_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch00_Post_FFT_mem_b_dout_0 [get_bd_ports TRX_rx_rf09_ch00_Post_FFT_mem_b_dout] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch00_Post_FFT_mem_b_dout]
  connect_bd_net -net TRX_rx_rf09_ch01_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch01_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch01_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch02_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch02_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch02_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch03_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch03_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch03_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch04_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch04_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch04_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch05_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch05_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch05_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch06_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch06_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch06_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_ch07_Post_FFT_mem_b_addr_1 [get_bd_ports TRX_rx_rf09_ch07_Post_FFT_mem_b_addr] [get_bd_pins TRX_rx_FFT_unit/TRX_rx_rf09_ch07_Post_FFT_mem_b_addr]
  connect_bd_net -net TRX_rx_rf09_clkdiv_16MHz_0 [get_bd_ports TRX_rx_clkdiv_16MHz] [get_bd_pins TRX_LVDS/TRX_rx_clkdiv_16MHz_o] [get_bd_pins TRX_io_reset_counter_binary_0/CLK] [get_bd_pins TRX_proc_sys_reset_0/slowest_sync_clk] [get_bd_pins TRX_tx_DDS_unit/TRX_rx_clkdiv_16MHz_i]
  connect_bd_net -net TRX_rx_rf09_framectr_0 [get_bd_ports RF09_framectr] [get_bd_pins TRX_rx_FFT_unit/RF09_framectr]
  connect_bd_net -net TRX_rx_rf09_post_fft_mem_a_EoT_0 [get_bd_ports TRX_post_fft_mem_a_rx09_EoT] [get_bd_pins TRX_rx_FFT_unit/post_fft_mem_a_rx09_EoT]
  connect_bd_net -net TRX_rx_rf09_post_fft_mem_a_addr_0 [get_bd_ports TRX_post_fft_rx09_mem_a_addr] [get_bd_pins TRX_rx_FFT_unit/post_fft_rx09_mem_a_addr_out]
  connect_bd_net -net TRX_rx_rf09_premem_addra_0 [get_bd_ports premem_rx09_addra_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx09_addra_in]
  connect_bd_net -net TRX_rx_rf09_premem_rx09_dina_0 [get_bd_ports premem_rx09_dina_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx09_dina_in]
  connect_bd_net -net TRX_rx_rf09_premem_rx09_wea_in_0 [get_bd_ports premem_rx09_wea_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx09_wea_in]
  connect_bd_net -net TRX_rx_rf09_quarterfrm_0 [get_bd_ports RF09_quarterfrm] [get_bd_pins TRX_rx_FFT_unit/RF09_quarterfrm]
  connect_bd_net -net TRX_rx_rf24_FIFO_dout_0 [get_bd_ports TRX_rx24_fifo] [get_bd_pins TRX_LVDS/TRX_rx24_fifo_o]
  connect_bd_net -net TRX_rx_rf24_FIFO_valid_0 [get_bd_ports TRX_rx24_fifo_valid] [get_bd_pins TRX_LVDS/TRX_rx24_fifo_valid_o]
  connect_bd_net -net TRX_rx_rf24_LVDS_status_synced_0 [get_bd_ports Status_LVDS_rx24_synced] [get_bd_pins TRX_config/Status_LVDS_rx24_synced]
  connect_bd_net -net TRX_tx_DDS_unit_TRX_TX_DDS_GPIO1_i [get_bd_ports TRX_TX_DDS_GPIO1_i] [get_bd_pins TRX_tx_DDS_unit/TRX_TX_DDS_GPIO1_i]
  connect_bd_net -net TRX_tx_rf09_DDS0_gpio_ampt_0 [get_bd_ports TRX_tx_DDS0_gpio_ampt] [get_bd_pins TRX_tx_DDS_unit/TRX_tx_DDS0_gpio_ampt]
  connect_bd_net -net TRX_tx_rf09_DDS1_gpio_ampt_0 [get_bd_ports TRX_tx_DDS1_gpio_ampt] [get_bd_pins TRX_tx_DDS_unit/TRX_tx_DDS1_gpio_ampt]
  connect_bd_net -net TRX_tx_rf09_DDS_LVDS_4to1_c_counter_binary_0_THRESH0_0 [get_bd_pins TRX_LVDS/TRX_tx_4to1_c_counter_binary_0_THRESH0_4MHz] [get_bd_pins TRX_tx_DDS_unit/TRX_tx_4to1_c_counter_binary_0_THRESH0]
  connect_bd_net -net TRX_tx_rf09_DDS_data_count_0 [get_bd_ports TRX_tx_data_count] [get_bd_pins TRX_tx_DDS_unit/TRX_tx_data_count]
  connect_bd_net -net TRX_tx_rf09_DDS_im_0 [get_bd_ports TRX_tx_im_out] [get_bd_pins TRX_LVDS/TRX_tx_im_out] [get_bd_pins TRX_tx_DDS_unit/TRX_tx_im_out]
  connect_bd_net -net TRX_tx_rf09_DDS_ptt_0 [get_bd_ports TRX_dds_tx_rf09_ptt] [get_bd_pins TRX_LVDS/TRX_dds_tx_rf09_ptt]
  connect_bd_net -net TRX_tx_rf09_DDS_re_0 [get_bd_ports TRX_tx_re_out] [get_bd_pins TRX_LVDS/TRX_tx_re_out] [get_bd_pins TRX_tx_DDS_unit/TRX_tx_re_out]
  connect_bd_net -net TRX_tx_rf09_Encoder_pull_FIFO_dump_0 [get_bd_ports TRX_encoder_tx09_pull_FIFO_dump] [get_bd_pins TRX_tx_DDS_unit/encoder_pull_FIFO_dump]
  connect_bd_net -net TRX_tx_rf09_Encoder_pull_data_len_0 [get_bd_ports TRX_encoder_tx09_pull_data_len] [get_bd_pins TRX_tx_DDS_unit/encoder_pull_data_len]
  connect_bd_net -net TRX_tx_rf09_Encoder_pull_do_start_0 [get_bd_ports TRX_encoder_tx09_pull_do_start] [get_bd_pins TRX_tx_DDS_unit/encoder_pull_do_start]
  connect_bd_net -net TRX_tx_rf09_LVDS_data_n_0 [get_bd_ports TRX_tx_data_n] [get_bd_pins TRX_LVDS/TRX_tx_data_n]
  connect_bd_net -net TRX_tx_rf09_LVDS_data_p_0 [get_bd_ports TRX_tx_data_p] [get_bd_pins TRX_LVDS/TRX_tx_data_p]
  connect_bd_net -net TRX_tx_rf09_PULLDATA_FIFO_empty_0 [get_bd_ports TRX_TX_RF09_PULLDATA_FIFO_empty] [get_bd_pins TRX_tx_DDS_unit/TRX_TX_RF09_PULLDATA_FIFO_empty]
  connect_bd_net -net TRX_tx_rf09_PULLDATA_byteData_0 [get_bd_ports TRX_pulldata_tx09_byteData] [get_bd_pins TRX_tx_DDS_unit/pulldata_tx09_byteData]
  connect_bd_net -net TRX_tx_rf09_PULLDATA_dds_inc_0 [get_bd_ports TRX_dds_tx_rf09_inc] [get_bd_pins TRX_tx_DDS_unit/pulldata_dds_inc]
  connect_bd_net -net TRX_tx_rf09_PULLDATA_en_0 [get_bd_ports pulldata_tx09_en] [get_bd_pins TRX_tx_DDS_unit/pulldata_tx09_en]
  connect_bd_net -net proc_sys_reset_aux_1 [get_bd_pins TRX_config/proc_sys_reset_aux] [get_bd_pins TRX_proc_sys_reset_0/aux_reset_in]
  connect_bd_net -net s_axi_aclk_0 [get_bd_ports microblaze_0_Clk_100MHz] [get_bd_pins TRX_LVDS/s_axi_aclk] [get_bd_pins TRX_rx_FFT_unit/s_axi_aclk_CD100_in] [get_bd_pins TRX_tx_DDS_unit/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_0 [get_bd_ports rst_mig_7series_0_100M_peripheral_aresetn] [get_bd_pins TRX_rx_FFT_unit/aresetn_CD100_in] [get_bd_pins TRX_tx_DDS_unit/s_axi_aresetn]

  # Create address segments


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


