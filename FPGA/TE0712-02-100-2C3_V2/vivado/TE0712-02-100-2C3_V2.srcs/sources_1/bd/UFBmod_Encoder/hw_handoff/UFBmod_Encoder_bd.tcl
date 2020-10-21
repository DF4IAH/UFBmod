
################################################################
# This is a generated script based on design: UFBmod_Encoder
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
# source UFBmod_Encoder_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# UFBmod_tx09_Encoder_FSM

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
set design_name UFBmod_Encoder

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
  set dds_tx09_inc [ create_bd_port -dir O -from 25 -to 0 -type data dds_tx09_inc ]
  set dds_tx09_ptt [ create_bd_port -dir O dds_tx09_ptt ]
  set decoder_rx09_active [ create_bd_port -dir I decoder_rx09_active ]
  set decoder_rx09_sql_open [ create_bd_port -dir I decoder_rx09_sql_open ]
  set encoder_pull_FIFO_dump [ create_bd_port -dir I encoder_pull_FIFO_dump ]
  set encoder_pull_data_len [ create_bd_port -dir I -from 6 -to 0 -type data encoder_pull_data_len ]
  set encoder_pull_do_start [ create_bd_port -dir I encoder_pull_do_start ]
  set pulldata_tx09_byteData [ create_bd_port -dir I -from 7 -to 0 -type data pulldata_tx09_byteData ]
  set pulldata_tx09_en [ create_bd_port -dir O pulldata_tx09_en ]
  set reset_100MHz [ create_bd_port -dir I -type rst reset_100MHz ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_100MHz

  # Create instance: UFBmod_tx09_Encoder_0, and set properties
  set block_name UFBmod_tx09_Encoder_FSM
  set block_cell_name UFBmod_tx09_Encoder_0
  if { [catch {set UFBmod_tx09_Encoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UFBmod_tx09_Encoder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net UFBmod_tx09_Encoder_0_dds_tx09_inc [get_bd_ports dds_tx09_inc] [get_bd_pins UFBmod_tx09_Encoder_0/dds_tx09_inc]
  connect_bd_net -net UFBmod_tx09_Encoder_0_dds_tx09_ptt [get_bd_ports dds_tx09_ptt] [get_bd_pins UFBmod_tx09_Encoder_0/dds_tx09_ptt]
  connect_bd_net -net UFBmod_tx09_Encoder_0_pulldata_tx09_en [get_bd_ports pulldata_tx09_en] [get_bd_pins UFBmod_tx09_Encoder_0/pulldata_tx09_en]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports clk_100MHz] [get_bd_pins UFBmod_tx09_Encoder_0/clk]
  connect_bd_net -net decoder_rx09_active_1 [get_bd_ports decoder_rx09_active] [get_bd_pins UFBmod_tx09_Encoder_0/decoder_rx09_active]
  connect_bd_net -net decoder_rx09_sql_open_1 [get_bd_ports decoder_rx09_sql_open] [get_bd_pins UFBmod_tx09_Encoder_0/decoder_rx09_sql_open]
  connect_bd_net -net encoder_pull_FIFO_dump_1 [get_bd_ports encoder_pull_FIFO_dump] [get_bd_pins UFBmod_tx09_Encoder_0/encoder_pull_FIFO_dump]
  connect_bd_net -net encoder_pull_data_len_1 [get_bd_ports encoder_pull_data_len] [get_bd_pins UFBmod_tx09_Encoder_0/encoder_pull_data_len]
  connect_bd_net -net encoder_pull_do_start_1 [get_bd_ports encoder_pull_do_start] [get_bd_pins UFBmod_tx09_Encoder_0/encoder_pull_do_start]
  connect_bd_net -net pulldata_tx09_byteData_1 [get_bd_ports pulldata_tx09_byteData] [get_bd_pins UFBmod_tx09_Encoder_0/pulldata_tx09_byteData]
  connect_bd_net -net reset_100MHz_1 [get_bd_ports reset_100MHz] [get_bd_pins UFBmod_tx09_Encoder_0/reset]

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


