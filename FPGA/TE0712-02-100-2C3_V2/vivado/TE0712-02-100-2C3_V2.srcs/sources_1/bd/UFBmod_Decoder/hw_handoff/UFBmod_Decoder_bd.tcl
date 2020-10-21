
################################################################
# This is a generated script based on design: UFBmod_Decoder
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
# source UFBmod_Decoder_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Decoder_rx09_to_FIFO_FSM, FFT_rx09_to_Decoder_FSM, UFBmod_rx09_Decoder_FSM

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
set design_name UFBmod_Decoder

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


# Hierarchical cell: UFBmod_rx09_Decoders
proc create_hier_cell_UFBmod_rx09_Decoders { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_UFBmod_rx09_Decoders() - Empty argument(s)!"}
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
  create_bd_pin -dir I -type clk clk_100MHz
  create_bd_pin -dir I dds_tx09_ptt
  create_bd_pin -dir I -from 31 -to 0 decoder_fft_frame_avail_ctr
  create_bd_pin -dir I decoder_rx09_ch00_FIFO_accepted
  create_bd_pin -dir O decoder_rx09_ch00_FIFO_handshake
  create_bd_pin -dir O -from 31 -to 0 decoder_rx09_ch00_SoM_frameCtr
  create_bd_pin -dir O decoder_rx09_ch00_active
  create_bd_pin -dir O -from 7 -to 0 decoder_rx09_ch00_center_pos
  create_bd_pin -dir O decoder_rx09_ch00_sql_open
  create_bd_pin -dir O -from 18 -to 0 decoder_rx09_ch00_strength
  create_bd_pin -dir I -from 15 -to 0 decoder_rx09_squelch_lvl
  create_bd_pin -dir I -type rst reset_100MHz
  create_bd_pin -dir O -from 10 -to 0 signal_bins_rx09_ch00_blk_mem_gen_0_addrb
  create_bd_pin -dir I -from 15 -to 0 signal_bins_rx09_ch00_blk_mem_gen_0_doutb

  # Create instance: UFBmod_rx09_Decoder_0, and set properties
  set block_name UFBmod_rx09_Decoder_FSM
  set block_cell_name UFBmod_rx09_Decoder_0
  if { [catch {set UFBmod_rx09_Decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UFBmod_rx09_Decoder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder_artemis_blk_mem_gen_2clks, and set properties
  set decoder_artemis_blk_mem_gen_2clks [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 decoder_artemis_blk_mem_gen_2clks ]
  set_property -dict [ list \
   CONFIG.Algorithm {Minimum_Area} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {128} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $decoder_artemis_blk_mem_gen_2clks

  # Create instance: decoder_artemis_mult_gen_4clks, and set properties
  set decoder_artemis_mult_gen_4clks [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 decoder_artemis_mult_gen_4clks ]
  set_property -dict [ list \
   CONFIG.ClockEnable {true} \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {39} \
   CONFIG.OutputWidthLow {8} \
   CONFIG.PortAType {Unsigned} \
   CONFIG.PortAWidth {16} \
   CONFIG.PortBType {Unsigned} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $decoder_artemis_mult_gen_4clks

  # Create port connections
  connect_bd_net -net UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_addra [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mem_addra] [get_bd_pins decoder_artemis_blk_mem_gen_2clks/addra]
  connect_bd_net -net UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_dina [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mem_dina] [get_bd_pins decoder_artemis_blk_mem_gen_2clks/dina]
  connect_bd_net -net UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mem_wea [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mem_wea] [get_bd_pins decoder_artemis_blk_mem_gen_2clks/wea]
  connect_bd_net -net UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ce [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mult_ce] [get_bd_pins decoder_artemis_mult_gen_4clks/CE]
  connect_bd_net -net UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_ina [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mult_ina] [get_bd_pins decoder_artemis_mult_gen_4clks/A]
  connect_bd_net -net UFBmod_rx09_Decoder_0_decoder_artemis_rx09_ch00_mult_inb [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mult_inb] [get_bd_pins decoder_artemis_mult_gen_4clks/B]
  connect_bd_net -net clk_100MHz [get_bd_pins clk_100MHz] [get_bd_pins UFBmod_rx09_Decoder_0/clk] [get_bd_pins decoder_artemis_blk_mem_gen_2clks/clka] [get_bd_pins decoder_artemis_mult_gen_4clks/CLK]
  connect_bd_net -net dds_tx09_ptt [get_bd_pins dds_tx09_ptt] [get_bd_pins UFBmod_rx09_Decoder_0/dds_tx09_ptt]
  connect_bd_net -net decoder_artemis_blk_mem_gen_0_douta [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mem_douta] [get_bd_pins decoder_artemis_blk_mem_gen_2clks/douta]
  connect_bd_net -net decoder_artemis_mult_gen_4clks_P [get_bd_pins UFBmod_rx09_Decoder_0/decoder_artemis_rx09_ch00_mult_outp] [get_bd_pins decoder_artemis_mult_gen_4clks/P]
  connect_bd_net -net decoder_fft_frame_avail_ctr [get_bd_pins decoder_fft_frame_avail_ctr] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_fft_frame_avail_ctr]
  connect_bd_net -net decoder_rx09_ch00_FIFO_accepted [get_bd_pins decoder_rx09_ch00_FIFO_accepted] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_FIFO_accepted]
  connect_bd_net -net decoder_rx09_ch00_FIFO_handshake [get_bd_pins decoder_rx09_ch00_FIFO_handshake] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_FIFO_handshake]
  connect_bd_net -net decoder_rx09_ch00_SoM_frameCtr [get_bd_pins decoder_rx09_ch00_SoM_frameCtr] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_SoM_frameCtr]
  connect_bd_net -net decoder_rx09_ch00_active [get_bd_pins decoder_rx09_ch00_active] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_active]
  connect_bd_net -net decoder_rx09_ch00_center_pos [get_bd_pins decoder_rx09_ch00_center_pos] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_center_pos]
  connect_bd_net -net decoder_rx09_ch00_sql_open [get_bd_pins decoder_rx09_ch00_sql_open] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_sql_open]
  connect_bd_net -net decoder_rx09_ch00_strength [get_bd_pins decoder_rx09_ch00_strength] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_strength]
  connect_bd_net -net decoder_rx09_squelch_lvl [get_bd_pins decoder_rx09_squelch_lvl] [get_bd_pins UFBmod_rx09_Decoder_0/decoder_rx09_ch00_squelch_lvl]
  connect_bd_net -net reset_100MHz [get_bd_pins reset_100MHz] [get_bd_pins UFBmod_rx09_Decoder_0/reset]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_addrb [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_0_addrb] [get_bd_pins UFBmod_rx09_Decoder_0/signal_bins_rx09_ch00_mem_addrb]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_doutb [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_0_doutb] [get_bd_pins UFBmod_rx09_Decoder_0/signal_bins_rx09_ch00_mem_datab]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: FFT_rx09_to_Decoder
proc create_hier_cell_FFT_rx09_to_Decoder { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_FFT_rx09_to_Decoder() - Empty argument(s)!"}
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
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 decoder_fft_frame_avail_ctr
  create_bd_pin -dir O -from 18 -to 0 decoder_rx09_ch00_noise
  create_bd_pin -dir O -from 9 -to 0 post_fft_rx09_ch00_mem_b_addr
  create_bd_pin -dir I post_fft_rx09_mem_a_EoT
  create_bd_pin -dir I -from 41 -to 0 post_fft_rx09_mem_a_addr
  create_bd_pin -dir I -from 15 -to 0 -type data post_fft_rx09_mem_b_dout
  create_bd_pin -dir I -type rst reset
  create_bd_pin -dir I -from 10 -to 0 signal_bins_rx09_ch00_blk_mem_gen_0_addrb
  create_bd_pin -dir O -from 15 -to 0 signal_bins_rx09_ch00_blk_mem_gen_0_doutb

  # Create instance: FFT_rx09_to_Decoder_FSM, and set properties
  set block_name FFT_rx09_to_Decoder_FSM
  set block_cell_name FFT_rx09_to_Decoder_FSM
  if { [catch {set FFT_rx09_to_Decoder_FSM [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FFT_rx09_to_Decoder_FSM eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: averaging_factor_rx09_ch00_div_gen_35clks, and set properties
  set averaging_factor_rx09_ch00_div_gen_35clks [ create_bd_cell -type ip -vlnv xilinx.com:ip:div_gen:5.1 averaging_factor_rx09_ch00_div_gen_35clks ]
  set_property -dict [ list \
   CONFIG.ACLKEN {true} \
   CONFIG.FlowControl {Blocking} \
   CONFIG.OptimizeGoal {Resources} \
   CONFIG.algorithm_type {Radix2} \
   CONFIG.clocks_per_division {1} \
   CONFIG.divide_by_zero_detect {true} \
   CONFIG.dividend_and_quotient_width {16} \
   CONFIG.divisor_width {32} \
   CONFIG.fractional_width {16} \
   CONFIG.latency {35} \
   CONFIG.latency_configuration {Automatic} \
   CONFIG.operand_sign {Unsigned} \
   CONFIG.remainder_type {Fractional} \
 ] $averaging_factor_rx09_ch00_div_gen_35clks

  # Create instance: noise_rx09_ch00_c_shift_ram_0, and set properties
  set noise_rx09_ch00_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 noise_rx09_ch00_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000000000000000000} \
   CONFIG.CE {true} \
   CONFIG.DefaultData {0000000000000000000} \
   CONFIG.Depth {1} \
   CONFIG.SyncInitVal {0000000000000000000} \
   CONFIG.Width {19} \
 ] $noise_rx09_ch00_c_shift_ram_0

  # Create instance: noise_rx09_ch00_xlslice_18to0, and set properties
  set noise_rx09_ch00_xlslice_18to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 noise_rx09_ch00_xlslice_18to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {18} \
   CONFIG.DOUT_WIDTH {19} \
 ] $noise_rx09_ch00_xlslice_18to0

  # Create instance: rowsum_rx09_ch00_c_accum_1clk, and set properties
  set rowsum_rx09_ch00_c_accum_1clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_accum:12.0 rowsum_rx09_ch00_c_accum_1clk ]
  set_property -dict [ list \
   CONFIG.Bypass {false} \
   CONFIG.CE {true} \
   CONFIG.Implementation {DSP48} \
   CONFIG.Input_Type {Unsigned} \
   CONFIG.Input_Width {16} \
   CONFIG.Output_Width {32} \
   CONFIG.SCLR {true} \
 ] $rowsum_rx09_ch00_c_accum_1clk

  # Create instance: signal_bins_rx09_ch00_blk_mem_gen_2clks, and set properties
  set signal_bins_rx09_ch00_blk_mem_gen_2clks [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 signal_bins_rx09_ch00_blk_mem_gen_2clks ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.Disable_Collision_Warnings {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {NO_CHANGE} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_A {16} \
   CONFIG.Read_Width_B {16} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.Write_Width_A {16} \
   CONFIG.Write_Width_B {16} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $signal_bins_rx09_ch00_blk_mem_gen_2clks

  # Create instance: signal_correction_rx09_ch00_mult_gen_4clks, and set properties
  set signal_correction_rx09_ch00_mult_gen_4clks [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 signal_correction_rx09_ch00_mult_gen_4clks ]
  set_property -dict [ list \
   CONFIG.ClockEnable {true} \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OptGoal {Speed} \
   CONFIG.OutputWidthHigh {31} \
   CONFIG.OutputWidthLow {16} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Unsigned} \
   CONFIG.PortAWidth {16} \
   CONFIG.PortBType {Unsigned} \
   CONFIG.PortBWidth {32} \
   CONFIG.Use_Custom_Output_Width {true} \
 ] $signal_correction_rx09_ch00_mult_gen_4clks

  # Create instance: xlconstant_val0_len1, and set properties
  set xlconstant_val0_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val0_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_val0_len1

  # Create instance: xlconstant_val0_len16, and set properties
  set xlconstant_val0_len16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val0_len16 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_val0_len16

  # Create instance: xlconstant_val1_len1, and set properties
  set xlconstant_val1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val1_len1 ]

  # Create instance: xlconstant_val256x32_len16, and set properties
  set xlconstant_val256x32_len16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_val256x32_len16 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {8192} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_val256x32_len16

  # Create port connections
  connect_bd_net -net FFT_rx09_to_Decoder_FSM_signal_correction_rx09_ch00_mult_ina [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_correction_rx09_ch00_mult_ina] [get_bd_pins signal_correction_rx09_ch00_mult_gen_4clks/A]
  connect_bd_net -net averaging_factor_div_dividend_tdata [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/s_axis_dividend_tdata] [get_bd_pins xlconstant_val256x32_len16/dout]
  connect_bd_net -net averaging_factor_div_dividend_tvalid [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/s_axis_dividend_tvalid] [get_bd_pins xlconstant_val1_len1/dout]
  connect_bd_net -net averaging_factor_div_divisor_tdata [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/s_axis_divisor_tdata] [get_bd_pins noise_rx09_ch00_xlslice_18to0/Din] [get_bd_pins rowsum_rx09_ch00_c_accum_1clk/Q]
  connect_bd_net -net averaging_factor_div_divisor_tvalid [get_bd_pins FFT_rx09_to_Decoder_FSM/averaging_factor_div_divisor_tvalid] [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/s_axis_divisor_tvalid] [get_bd_pins noise_rx09_ch00_c_shift_ram_0/CE]
  connect_bd_net -net averaging_factor_div_dout_tdata [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/m_axis_dout_tdata] [get_bd_pins signal_correction_rx09_ch00_mult_gen_4clks/B]
  connect_bd_net -net averaging_factor_div_dout_tvalid [get_bd_pins FFT_rx09_to_Decoder_FSM/averaging_factor_div_dout_tvalid] [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/m_axis_dout_tvalid]
  connect_bd_net -net averaging_factor_divider_aclken [get_bd_pins FFT_rx09_to_Decoder_FSM/averaging_factor_div_aclken] [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/aclken]
  connect_bd_net -net clk_100MHz [get_bd_pins clk] [get_bd_pins FFT_rx09_to_Decoder_FSM/clk] [get_bd_pins averaging_factor_rx09_ch00_div_gen_35clks/aclk] [get_bd_pins noise_rx09_ch00_c_shift_ram_0/CLK] [get_bd_pins rowsum_rx09_ch00_c_accum_1clk/CLK] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/clka] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/clkb] [get_bd_pins signal_correction_rx09_ch00_mult_gen_4clks/CLK]
  connect_bd_net -net decoder_fft_frame_avail_ctr [get_bd_pins decoder_fft_frame_avail_ctr] [get_bd_pins FFT_rx09_to_Decoder_FSM/decoder_fft_frame_avail_ctr]
  connect_bd_net -net noise_rx09_ch00_c_shift_ram_0_Q [get_bd_pins decoder_rx09_ch00_noise] [get_bd_pins noise_rx09_ch00_c_shift_ram_0/Q]
  connect_bd_net -net noise_rx09_ch00_xlslice_18to0_Dout [get_bd_pins noise_rx09_ch00_c_shift_ram_0/D] [get_bd_pins noise_rx09_ch00_xlslice_18to0/Dout]
  connect_bd_net -net post_fft_rx09_ch00_mem_b_addr [get_bd_pins post_fft_rx09_ch00_mem_b_addr] [get_bd_pins FFT_rx09_to_Decoder_FSM/post_fft_rx09_mem_addrb]
  connect_bd_net -net post_fft_rx09_mem_a_EoT_1 [get_bd_pins post_fft_rx09_mem_a_EoT] [get_bd_pins FFT_rx09_to_Decoder_FSM/post_fft_rx09_mem_a_EoT]
  connect_bd_net -net post_fft_rx09_mem_a_addr_1 [get_bd_pins post_fft_rx09_mem_a_addr] [get_bd_pins FFT_rx09_to_Decoder_FSM/post_fft_rx09_mem_addra]
  connect_bd_net -net post_fft_rx09_mem_b_dout_1 [get_bd_pins post_fft_rx09_mem_b_dout] [get_bd_pins FFT_rx09_to_Decoder_FSM/post_fft_rx09_mem_doutb]
  connect_bd_net -net reset_100MHz [get_bd_pins reset] [get_bd_pins FFT_rx09_to_Decoder_FSM/reset]
  connect_bd_net -net rowsum_rx09_ch00_accum_ce [get_bd_pins FFT_rx09_to_Decoder_FSM/rowsum_rx09_ch00_accum_ce] [get_bd_pins rowsum_rx09_ch00_c_accum_1clk/CE]
  connect_bd_net -net rowsum_rx09_ch00_accum_sclr [get_bd_pins FFT_rx09_to_Decoder_FSM/rowsum_rx09_ch00_accum_sclr] [get_bd_pins rowsum_rx09_ch00_c_accum_1clk/SCLR]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_addra [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_bins_rx09_ch00_mem_addra] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/addra]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_addrb [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_0_addrb] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/addrb]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_dina [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_bins_rx09_ch00_mem_dina] [get_bd_pins rowsum_rx09_ch00_c_accum_1clk/B] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/dina]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_douta [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_bins_rx09_ch00_mem_douta] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/douta]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_doutb [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_0_doutb] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/doutb]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_wea [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_bins_rx09_ch00_mem_wea] [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/wea]
  connect_bd_net -net signal_correction_rx09_ch00_mult_ce [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_correction_rx09_ch00_mult_ce] [get_bd_pins signal_correction_rx09_ch00_mult_gen_4clks/CE]
  connect_bd_net -net signal_correction_rx09_ch00_mult_prod [get_bd_pins FFT_rx09_to_Decoder_FSM/signal_correction_rx09_ch00_mult_prod] [get_bd_pins signal_correction_rx09_ch00_mult_gen_4clks/P]
  connect_bd_net -net xlconstant_val0_len16_dout [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/dinb] [get_bd_pins xlconstant_val0_len16/dout]
  connect_bd_net -net xlconstant_val0_len1_dout [get_bd_pins signal_bins_rx09_ch00_blk_mem_gen_2clks/web] [get_bd_pins xlconstant_val0_len1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Decoder_rx09_to_FIFO
proc create_hier_cell_Decoder_rx09_to_FIFO { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Decoder_rx09_to_FIFO() - Empty argument(s)!"}
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
  create_bd_pin -dir I -type clk clk_100MHz
  create_bd_pin -dir O decoder_rx09_ch00_FIFO_accepted
  create_bd_pin -dir I decoder_rx09_ch00_FIFO_handshake
  create_bd_pin -dir I -from 31 -to 0 decoder_rx09_ch00_SoM_frameCtr
  create_bd_pin -dir I -from 7 -to 0 decoder_rx09_ch00_center_pos
  create_bd_pin -dir I -from 18 -to 0 decoder_rx09_ch00_noise
  create_bd_pin -dir I -from 18 -to 0 decoder_rx09_ch00_strength
  create_bd_pin -dir O -from 7 -to 0 pushdata_rx09_byteData
  create_bd_pin -dir O pushdata_rx09_en
  create_bd_pin -dir I -type rst reset_100MHz

  # Create instance: Decoder_rx09_to_FIFO_0, and set properties
  set block_name Decoder_rx09_to_FIFO_FSM
  set block_cell_name Decoder_rx09_to_FIFO_0
  if { [catch {set Decoder_rx09_to_FIFO_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Decoder_rx09_to_FIFO_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_rx09_c_counter_binary_0, and set properties
  set data_rx09_c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 data_rx09_c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Fb_Latency_Configuration {Automatic} \
   CONFIG.Implementation {DSP48} \
   CONFIG.Latency {2} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Load {false} \
   CONFIG.Output_Width {10} \
   CONFIG.SCLR {true} \
 ] $data_rx09_c_counter_binary_0

  # Create instance: data_rx09_fifo_generator_0, and set properties
  set data_rx09_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 data_rx09_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {0} \
   CONFIG.Full_Threshold_Assert_Value {1021} \
   CONFIG.Full_Threshold_Negate_Value {1020} \
   CONFIG.Input_Data_Width {1} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Output_Depth {128} \
   CONFIG.Read_Data_Count_Width {8} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Use_Extra_Logic {true} \
   CONFIG.Write_Data_Count_Width {11} \
 ] $data_rx09_fifo_generator_0

  # Create port connections
  connect_bd_net -net Decoder_rx09_to_FIFO_0_decoder_rx09_ch00_FIFO_accepted [get_bd_pins decoder_rx09_ch00_FIFO_accepted] [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_ch00_FIFO_accepted]
  connect_bd_net -net Decoder_rx09_to_FIFO_0_decoder_rx09_lenCtr_ce [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_lenCtr_ce] [get_bd_pins data_rx09_c_counter_binary_0/CE]
  connect_bd_net -net Decoder_rx09_to_FIFO_0_decoder_rx09_lenCtr_sclr [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_lenCtr_sclr] [get_bd_pins data_rx09_c_counter_binary_0/SCLR]
  connect_bd_net -net Decoder_rx09_to_FIFO_0_pushdata_rx09_byteData [get_bd_pins pushdata_rx09_byteData] [get_bd_pins Decoder_rx09_to_FIFO_0/pushdata_rx09_byteData]
  connect_bd_net -net Decoder_rx09_to_FIFO_0_pushdata_rx09_en [get_bd_pins pushdata_rx09_en] [get_bd_pins Decoder_rx09_to_FIFO_0/pushdata_rx09_en]
  connect_bd_net -net clk_100MHz [get_bd_pins clk_100MHz] [get_bd_pins Decoder_rx09_to_FIFO_0/clk] [get_bd_pins data_rx09_c_counter_binary_0/CLK] [get_bd_pins data_rx09_fifo_generator_0/clk]
  connect_bd_net -net data_rx09_c_counter_binary_0_Q [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_lenCtr_out] [get_bd_pins data_rx09_c_counter_binary_0/Q]
  connect_bd_net -net decoder_rx09_ch00_FIFO_handshake_1 [get_bd_pins decoder_rx09_ch00_FIFO_handshake] [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_ch00_FIFO_handshake]
  connect_bd_net -net decoder_rx09_ch00_SoM_frameCtr_1 [get_bd_pins decoder_rx09_ch00_SoM_frameCtr] [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_ch00_SoM_frameCtr]
  connect_bd_net -net decoder_rx09_ch00_center_pos_1 [get_bd_pins decoder_rx09_ch00_center_pos] [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_ch00_center_pos]
  connect_bd_net -net decoder_rx09_ch00_noise_1 [get_bd_pins decoder_rx09_ch00_noise] [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_ch00_noise]
  connect_bd_net -net decoder_rx09_ch00_strength_1 [get_bd_pins decoder_rx09_ch00_strength] [get_bd_pins Decoder_rx09_to_FIFO_0/decoder_rx09_ch00_strength]
  connect_bd_net -net reset_100MHz [get_bd_pins reset_100MHz] [get_bd_pins Decoder_rx09_to_FIFO_0/reset] [get_bd_pins data_rx09_fifo_generator_0/rst]

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

  # Create ports
  set clk_100MHz [ create_bd_port -dir I -type clk -freq_hz 100000000 clk_100MHz ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {reset_100MHz} \
 ] $clk_100MHz
  set dds_tx09_ptt [ create_bd_port -dir I dds_tx09_ptt ]
  set decoder_rx09_ch00_active [ create_bd_port -dir O decoder_rx09_ch00_active ]
  set decoder_rx09_ch00_center_pos [ create_bd_port -dir O -from 7 -to 0 decoder_rx09_ch00_center_pos ]
  set decoder_rx09_ch00_noise [ create_bd_port -dir O -from 18 -to 0 decoder_rx09_ch00_noise ]
  set decoder_rx09_ch00_sql_open [ create_bd_port -dir O decoder_rx09_ch00_sql_open ]
  set decoder_rx09_ch00_squelch_lvl [ create_bd_port -dir I -from 15 -to 0 -type data decoder_rx09_ch00_squelch_lvl ]
  set decoder_rx09_ch00_strength [ create_bd_port -dir O -from 18 -to 0 decoder_rx09_ch00_strength ]
  set post_fft_rx09_mem_a_EoT [ create_bd_port -dir I post_fft_rx09_mem_a_EoT ]
  set post_fft_rx09_mem_a_addr [ create_bd_port -dir I -from 41 -to 0 post_fft_rx09_mem_a_addr ]
  set post_fft_rx09_mem_b_addr [ create_bd_port -dir O -from 9 -to 0 post_fft_rx09_mem_b_addr ]
  set post_fft_rx09_mem_b_dout [ create_bd_port -dir I -from 15 -to 0 -type data post_fft_rx09_mem_b_dout ]
  set pushdata_rx09_byteData [ create_bd_port -dir O -from 7 -to 0 -type data pushdata_rx09_byteData ]
  set pushdata_rx09_en [ create_bd_port -dir O pushdata_rx09_en ]
  set reset_100MHz [ create_bd_port -dir I -type rst reset_100MHz ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_100MHz

  # Create instance: Decoder_rx09_to_FIFO
  create_hier_cell_Decoder_rx09_to_FIFO [current_bd_instance .] Decoder_rx09_to_FIFO

  # Create instance: FFT_rx09_to_Decoder
  create_hier_cell_FFT_rx09_to_Decoder [current_bd_instance .] FFT_rx09_to_Decoder

  # Create instance: UFBmod_rx09_Decoders
  create_hier_cell_UFBmod_rx09_Decoders [current_bd_instance .] UFBmod_rx09_Decoders

  # Create port connections
  connect_bd_net -net FFT_rx09_to_Decoder_decoder_rx09_ch00_noise [get_bd_ports decoder_rx09_ch00_noise] [get_bd_pins Decoder_rx09_to_FIFO/decoder_rx09_ch00_noise] [get_bd_pins FFT_rx09_to_Decoder/decoder_rx09_ch00_noise]
  connect_bd_net -net clk_100MHz [get_bd_ports clk_100MHz] [get_bd_pins Decoder_rx09_to_FIFO/clk_100MHz] [get_bd_pins FFT_rx09_to_Decoder/clk] [get_bd_pins UFBmod_rx09_Decoders/clk_100MHz]
  connect_bd_net -net dds_tx09_ptt_1 [get_bd_ports dds_tx09_ptt] [get_bd_pins UFBmod_rx09_Decoders/dds_tx09_ptt]
  connect_bd_net -net decoder_fft_frame_avail_ctr [get_bd_pins FFT_rx09_to_Decoder/decoder_fft_frame_avail_ctr] [get_bd_pins UFBmod_rx09_Decoders/decoder_fft_frame_avail_ctr]
  connect_bd_net -net decoder_rx09_ch00_FIFO_accepted [get_bd_pins Decoder_rx09_to_FIFO/decoder_rx09_ch00_FIFO_accepted] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_FIFO_accepted]
  connect_bd_net -net decoder_rx09_ch00_FIFO_handshake [get_bd_pins Decoder_rx09_to_FIFO/decoder_rx09_ch00_FIFO_handshake] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_FIFO_handshake]
  connect_bd_net -net decoder_rx09_ch00_SoM_frameCtr [get_bd_pins Decoder_rx09_to_FIFO/decoder_rx09_ch00_SoM_frameCtr] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_SoM_frameCtr]
  connect_bd_net -net decoder_rx09_ch00_active [get_bd_ports decoder_rx09_ch00_active] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_active]
  connect_bd_net -net decoder_rx09_ch00_center_pos [get_bd_ports decoder_rx09_ch00_center_pos] [get_bd_pins Decoder_rx09_to_FIFO/decoder_rx09_ch00_center_pos] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_center_pos]
  connect_bd_net -net decoder_rx09_ch00_sql_open [get_bd_ports decoder_rx09_ch00_sql_open] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_sql_open]
  connect_bd_net -net decoder_rx09_ch00_squelch_lvl [get_bd_ports decoder_rx09_ch00_squelch_lvl] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_squelch_lvl]
  connect_bd_net -net decoder_rx09_ch00_strength [get_bd_ports decoder_rx09_ch00_strength] [get_bd_pins Decoder_rx09_to_FIFO/decoder_rx09_ch00_strength] [get_bd_pins UFBmod_rx09_Decoders/decoder_rx09_ch00_strength]
  connect_bd_net -net post_fft_rx09_ch00_mem_b_addr [get_bd_ports post_fft_rx09_mem_b_addr] [get_bd_pins FFT_rx09_to_Decoder/post_fft_rx09_ch00_mem_b_addr]
  connect_bd_net -net post_fft_rx09_mem_a_EoT_1 [get_bd_ports post_fft_rx09_mem_a_EoT] [get_bd_pins FFT_rx09_to_Decoder/post_fft_rx09_mem_a_EoT]
  connect_bd_net -net post_fft_rx09_mem_a_addr_1 [get_bd_ports post_fft_rx09_mem_a_addr] [get_bd_pins FFT_rx09_to_Decoder/post_fft_rx09_mem_a_addr]
  connect_bd_net -net post_fft_rx09_mem_b_dout_1 [get_bd_ports post_fft_rx09_mem_b_dout] [get_bd_pins FFT_rx09_to_Decoder/post_fft_rx09_mem_b_dout]
  connect_bd_net -net pushdata_rx09_byteData [get_bd_ports pushdata_rx09_byteData] [get_bd_pins Decoder_rx09_to_FIFO/pushdata_rx09_byteData]
  connect_bd_net -net pushdata_rx09_en [get_bd_ports pushdata_rx09_en] [get_bd_pins Decoder_rx09_to_FIFO/pushdata_rx09_en]
  connect_bd_net -net reset_100MHz [get_bd_ports reset_100MHz] [get_bd_pins Decoder_rx09_to_FIFO/reset_100MHz] [get_bd_pins FFT_rx09_to_Decoder/reset] [get_bd_pins UFBmod_rx09_Decoders/reset_100MHz]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_addrb [get_bd_pins FFT_rx09_to_Decoder/signal_bins_rx09_ch00_blk_mem_gen_0_addrb] [get_bd_pins UFBmod_rx09_Decoders/signal_bins_rx09_ch00_blk_mem_gen_0_addrb]
  connect_bd_net -net signal_bins_rx09_ch00_blk_mem_gen_0_doutb [get_bd_pins FFT_rx09_to_Decoder/signal_bins_rx09_ch00_blk_mem_gen_0_doutb] [get_bd_pins UFBmod_rx09_Decoders/signal_bins_rx09_ch00_blk_mem_gen_0_doutb]

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


