
################################################################
# This is a generated script based on design: mcu
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
set scripts_vivado_version 2019.1
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
# source mcu_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name mcu

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

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:dist_mem_gen:8.0\
xilinx.com:ip:axi_ethernetlite:3.0\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:axi_iic:2.0\
xilinx.com:ip:axi_quad_spi:3.2\
xilinx.com:ip:axi_timer:2.0\
xilinx.com:ip:axi_uart16550:2.0\
xilinx.com:ip:c_accum:12.0\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:c_addsub:12.0\
xilinx.com:ip:c_shift_ram:12.0\
xilinx.com:ip:microblaze:11.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:mig_7series:4.2\
xilinx.com:ip:mii_to_rmii:2.0\
xilinx.com:ip:selectio_wiz:5.1\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
xilinx.com:ip:blk_mem_gen:8.4\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_mcu_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  <!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>mcu_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a100t-fgg484/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE HIGH</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>0</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41J256m16XX-125</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>3000</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>177.777</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>666</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 3.375</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>32</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName></NewPartName>}
   puts $mig_prj_file {    <RowAddress>15</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="J1" SLEW="" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="L4" SLEW="" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="P5" SLEW="" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="K2" SLEW="" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="M1" SLEW="" VCCAUX_IO="" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="M5" SLEW="" VCCAUX_IO="" name="ddr3_addr[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="P6" SLEW="" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="N5" SLEW="" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="N3" SLEW="" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="G1" SLEW="" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="M3" SLEW="" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="N2" SLEW="" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="J5" SLEW="" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="L1" SLEW="" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="P2" SLEW="" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="P4" SLEW="" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="H5" SLEW="" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="H2" SLEW="" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="M2" SLEW="" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="P1" SLEW="" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="R1" SLEW="" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="L3" SLEW="" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="K1" SLEW="" VCCAUX_IO="" name="ddr3_cs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="W2" SLEW="" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y7" SLEW="" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="V4" SLEW="" VCCAUX_IO="" name="ddr3_dm[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="V5" SLEW="" VCCAUX_IO="" name="ddr3_dm[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="T1" SLEW="" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB7" SLEW="" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AA8" SLEW="" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB8" SLEW="" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB6" SLEW="" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y8" SLEW="" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y9" SLEW="" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB1" SLEW="" VCCAUX_IO="" name="ddr3_dq[16]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB5" SLEW="" VCCAUX_IO="" name="ddr3_dq[17]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB3" SLEW="" VCCAUX_IO="" name="ddr3_dq[18]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AA1" SLEW="" VCCAUX_IO="" name="ddr3_dq[19]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="U3" SLEW="" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y4" SLEW="" VCCAUX_IO="" name="ddr3_dq[20]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AA5" SLEW="" VCCAUX_IO="" name="ddr3_dq[21]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AB2" SLEW="" VCCAUX_IO="" name="ddr3_dq[22]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="W4" SLEW="" VCCAUX_IO="" name="ddr3_dq[23]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="T4" SLEW="" VCCAUX_IO="" name="ddr3_dq[24]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="U6" SLEW="" VCCAUX_IO="" name="ddr3_dq[25]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="T6" SLEW="" VCCAUX_IO="" name="ddr3_dq[26]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AA6" SLEW="" VCCAUX_IO="" name="ddr3_dq[27]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y6" SLEW="" VCCAUX_IO="" name="ddr3_dq[28]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="T5" SLEW="" VCCAUX_IO="" name="ddr3_dq[29]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="U2" SLEW="" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="U5" SLEW="" VCCAUX_IO="" name="ddr3_dq[30]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="R6" SLEW="" VCCAUX_IO="" name="ddr3_dq[31]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="U1" SLEW="" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y2" SLEW="" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="W1" SLEW="" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y1" SLEW="" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="V2" SLEW="" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="V7" SLEW="" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="W9" SLEW="" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="R2" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="V8" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="AA3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="W5" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="R3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="V9" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="Y3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="W6" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="K3" SLEW="" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="M6" SLEW="" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="H3" SLEW="" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="" PADName="J2" SLEW="" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="13" PADName="Y16" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="14" PADName="AA21" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="14" PADName="Y21" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="260" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">5</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/7</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Enable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/4</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>30</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>256</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>3</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>1</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_mcu_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: mb_0_local_memory
proc create_hier_cell_mb_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mb_0_local_memory() - Empty argument(s)!"}
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

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 LMB_M


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
   CONFIG.C_NUM_LMB {2} \
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
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create instance: lmb_v10, and set properties
  set lmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 lmb_v10 ]

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net microblaze_0_lmb [get_bd_intf_pins LMB_M] [get_bd_intf_pins lmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_lmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB1] [get_bd_intf_pins lmb_v10/LMB_Sl_0]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst] [get_bd_pins lmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk] [get_bd_pins lmb_v10/LMB_Clk]

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
  set ddr3_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3_sdram ]

  set gpio_rtl_0_multi [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_rtl_0_multi ]

  set gpio_rtl_1_onewire_gpio_in [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_rtl_1_onewire_gpio_in ]

  set gpio_rtl_1_onewire_gpio_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_rtl_1_onewire_gpio_out ]

  set iic_rtl_0_pll [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_0_pll ]

  set iic_rtl_1_board [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_rtl_1_board ]

  set mdio_rtl_0_ethernet [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_rtl_0_ethernet ]

  set rmii_rtl_0_ethernet [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rmii_rtl:1.0 rmii_rtl_0_ethernet ]

  set spi_rtl_0_config [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 spi_rtl_0_config ]

  set spi_rtl_1_trx [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 spi_rtl_1_trx ]

  set uart_rtl_0_ftdi [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 uart_rtl_0_ftdi ]


  # Create ports
  set board_rotenc_pulse [ create_bd_port -dir I -type ce board_rotenc_pulse ]
  set board_rotenc_push [ create_bd_port -dir I -from 0 -to 0 board_rotenc_push ]
  set board_rotenc_up [ create_bd_port -dir I -type data board_rotenc_up ]
  set clk_012mhz [ create_bd_port -dir I -type clk clk_012mhz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {12000000} \
 ] $clk_012mhz
  set clk_025mhz [ create_bd_port -dir I -type clk clk_025mhz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {25000000} \
 ] $clk_025mhz
  set clk_050mhz [ create_bd_port -dir I -type clk clk_050mhz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $clk_050mhz
  set clk_177mhz778 [ create_bd_port -dir I -type clk clk_177mhz778 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {177777778} \
 ] $clk_177mhz778
  set ddr3_init_calib_complete_obuf [ create_bd_port -dir O ddr3_init_calib_complete_obuf ]
  set dmr_1_onewire_a_in [ create_bd_port -dir I -from 3 -to 0 dmr_1_onewire_a_in ]
  set dmr_1_onewire_d_in [ create_bd_port -dir I -from 31 -to 0 dmr_1_onewire_d_in ]
  set dmr_1_onewire_we_in [ create_bd_port -dir I dmr_1_onewire_we_in ]
  set mb_axi_clk_83mhz333 [ create_bd_port -dir O -type clk mb_axi_clk_83mhz333 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {gpio_rtl_1_onewire_gpio_in} \
   CONFIG.ASSOCIATED_RESET {peripheral_reset} \
 ] $mb_axi_clk_83mhz333
  set peripheral_reset [ create_bd_port -dir O -from 0 -to 0 -type rst peripheral_reset ]
  set pll_int [ create_bd_port -dir I -from 0 -to 0 pll_int ]
  set pwm0_lcd_bl_obuf [ create_bd_port -dir O pwm0_lcd_bl_obuf ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sys_rst [ create_bd_port -dir I -type rst sys_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $sys_rst
  set trx_int [ create_bd_port -dir I -from 0 -to 0 trx_int ]
  set ufb_fpga_ft_12mhz_obuf [ create_bd_port -dir O -type clk ufb_fpga_ft_12mhz_obuf ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {12000000} \
 ] $ufb_fpga_ft_12mhz_obuf
  set ufb_fpga_ft_resetn_obuf [ create_bd_port -dir O -from 0 -to 0 ufb_fpga_ft_resetn_obuf ]
  set ufb_trx_rxclk_n [ create_bd_port -dir I -type clk ufb_trx_rxclk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {32000000} \
 ] $ufb_trx_rxclk_n
  set ufb_trx_rxclk_p [ create_bd_port -dir I -type clk ufb_trx_rxclk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {32000000} \
 ] $ufb_trx_rxclk_p
  set ufb_trx_rxd09_n [ create_bd_port -dir I -from 0 -to 0 ufb_trx_rxd09_n ]
  set ufb_trx_rxd09_p [ create_bd_port -dir I -from 0 -to 0 ufb_trx_rxd09_p ]
  set ufb_trx_txclk_n [ create_bd_port -dir O -type clk ufb_trx_txclk_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {32000000} \
 ] $ufb_trx_txclk_n
  set ufb_trx_txclk_p [ create_bd_port -dir O -type clk ufb_trx_txclk_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {32000000} \
 ] $ufb_trx_txclk_p
  set ufb_trx_txd_n [ create_bd_port -dir O -from 0 -to 0 ufb_trx_txd_n ]
  set ufb_trx_txd_p [ create_bd_port -dir O -from 0 -to 0 ufb_trx_txd_p ]

  # Create instance: CDC_LVDS_in, and set properties
  set CDC_LVDS_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 CDC_LVDS_in ]
  set_property -dict [ list \
   CONFIG.Pipeline_Stages {1} \
   CONFIG.data_width {8} \
   CONFIG.depth {16} \
   CONFIG.dual_port_address {non_registered} \
   CONFIG.input_clock_enable {false} \
   CONFIG.input_options {registered} \
   CONFIG.memory_type {simple_dual_port_ram} \
   CONFIG.output_options {registered} \
   CONFIG.simple_dual_port_output_clock_enable {false} \
 ] $CDC_LVDS_in

  # Create instance: CDC_LVDS_out, and set properties
  set CDC_LVDS_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 CDC_LVDS_out ]
  set_property -dict [ list \
   CONFIG.Pipeline_Stages {1} \
   CONFIG.data_width {8} \
   CONFIG.depth {16} \
   CONFIG.dual_port_address {non_registered} \
   CONFIG.input_clock_enable {false} \
   CONFIG.input_options {registered} \
   CONFIG.memory_type {simple_dual_port_ram} \
   CONFIG.output_options {registered} \
   CONFIG.simple_dual_port_output_clock_enable {false} \
 ] $CDC_LVDS_out

  # Create instance: axi_ethernetlite_ETHERNET, and set properties
  set axi_ethernetlite_ETHERNET [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 axi_ethernetlite_ETHERNET ]
  set_property -dict [ list \
   CONFIG.C_DUPLEX {1} \
   CONFIG.C_INCLUDE_GLOBAL_BUFFERS {0} \
   CONFIG.C_INCLUDE_INTERNAL_LOOPBACK {1} \
   CONFIG.C_S_AXI_PROTOCOL {AXI4LITE} \
 ] $axi_ethernetlite_ETHERNET

  # Create instance: axi_gpio_0_MULTI, and set properties
  set axi_gpio_0_MULTI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0_MULTI ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $axi_gpio_0_MULTI

  # Create instance: axi_gpio_1_ONEWIRE_out, and set properties
  set axi_gpio_1_ONEWIRE_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1_ONEWIRE_out ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_1_ONEWIRE_out

  # Create instance: axi_gpio_2_ONEWIRE_in, and set properties
  set axi_gpio_2_ONEWIRE_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2_ONEWIRE_in ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT_2 {0xFFFF0000} \
 ] $axi_gpio_2_ONEWIRE_in

  # Create instance: axi_gpio_3_ROTENC, and set properties
  set axi_gpio_3_ROTENC [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_3_ROTENC ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_3_ROTENC

  # Create instance: axi_gpio_7_LVDS, and set properties
  set axi_gpio_7_LVDS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_7_LVDS ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {8} \
   CONFIG.C_GPIO_WIDTH {8} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_7_LVDS

  # Create instance: axi_iic_0_PLL, and set properties
  set axi_iic_0_PLL [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0_PLL ]
  set_property -dict [ list \
   CONFIG.C_SDA_LEVEL {1} \
   CONFIG.IIC_FREQ_KHZ {400} \
 ] $axi_iic_0_PLL

  # Create instance: axi_iic_1_BOARD, and set properties
  set axi_iic_1_BOARD [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_1_BOARD ]
  set_property -dict [ list \
   CONFIG.IIC_FREQ_KHZ {400} \
 ] $axi_iic_1_BOARD

  # Create instance: axi_quad_spi_0_CONFIG, and set properties
  set axi_quad_spi_0_CONFIG [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0_CONFIG ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SHARED_STARTUP {0} \
   CONFIG.C_SPI_MEMORY {3} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {0} \
   CONFIG.C_USE_STARTUP {1} \
   CONFIG.C_USE_STARTUP_INT {1} \
 ] $axi_quad_spi_0_CONFIG

  # Create instance: axi_quad_spi_1_TRX, and set properties
  set axi_quad_spi_1_TRX [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_1_TRX ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {8} \
   CONFIG.C_SPI_MODE {0} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
   CONFIG.Multiples16 {1} \
 ] $axi_quad_spi_1_TRX

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uart16550_0_FTDI, and set properties
  set axi_uart16550_0_FTDI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0_FTDI ]

  # Create instance: c_accum_0_ROTENC, and set properties
  set c_accum_0_ROTENC [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_accum:12.0 c_accum_0_ROTENC ]
  set_property -dict [ list \
   CONFIG.Accum_Mode {Add_Subtract} \
   CONFIG.Bypass {false} \
   CONFIG.CE {false} \
   CONFIG.C_In {false} \
   CONFIG.Implementation {DSP48} \
   CONFIG.Input_Type {Signed} \
   CONFIG.Input_Width {32} \
   CONFIG.Latency {2} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Output_Width {32} \
   CONFIG.SCLR {true} \
 ] $c_accum_0_ROTENC

  # Create instance: clk_32mhz_LVDS, and set properties
  set clk_32mhz_LVDS [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_32mhz_LVDS ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {312.5} \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {287.722} \
   CONFIG.CLKOUT1_PHASE_ERROR {201.345} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {32} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_JITTER {427.738} \
   CONFIG.CLKOUT2_PHASE_ERROR {201.345} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {8} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_JITTER {291.105} \
   CONFIG.CLKOUT3_PHASE_ERROR {203.212} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT4_JITTER {429.931} \
   CONFIG.CLKOUT4_PHASE_ERROR {203.212} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_OUT1_PORT {clk_32_lvds} \
   CONFIG.CLK_OUT2_PORT {clk_div_8_lvds} \
   CONFIG.CLK_OUT3_PORT {clk_out3} \
   CONFIG.CLK_OUT4_PORT {clk_out4} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {31.250} \
   CONFIG.MMCM_CLKIN1_PERIOD {31.250} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {31.250} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {125} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {32} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_32mhz_LVDS

  # Create instance: clk_32mhz_LVDS_locked_inv, and set properties
  set clk_32mhz_LVDS_locked_inv [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 clk_32mhz_LVDS_locked_inv ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {1} \
   CONFIG.Add_Mode {Add} \
   CONFIG.B_Constant {true} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {1} \
   CONFIG.B_Width {1} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Out_Width {1} \
   CONFIG.SCLR {false} \
   CONFIG.SSET {false} \
 ] $clk_32mhz_LVDS_locked_inv

  # Create instance: clk_32mhz_LVDS_locked_inv_sr_clkReset, and set properties
  set clk_32mhz_LVDS_locked_inv_sr_clkReset [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 clk_32mhz_LVDS_locked_inv_sr_clkReset ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {1} \
   CONFIG.DefaultData {1} \
   CONFIG.Depth {6} \
   CONFIG.SSET {true} \
   CONFIG.SyncInitVal {0} \
 ] $clk_32mhz_LVDS_locked_inv_sr_clkReset

  # Create instance: clk_32mhz_LVDS_locked_inv_sr_ioReset, and set properties
  set clk_32mhz_LVDS_locked_inv_sr_ioReset [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 clk_32mhz_LVDS_locked_inv_sr_ioReset ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {1} \
   CONFIG.DefaultData {1} \
   CONFIG.Depth {24} \
   CONFIG.SSET {true} \
   CONFIG.SyncInitVal {0} \
 ] $clk_32mhz_LVDS_locked_inv_sr_ioReset

  # Create instance: dmr_1_ONEWIRE, and set properties
  set dmr_1_ONEWIRE [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dmr_1_ONEWIRE ]
  set_property -dict [ list \
   CONFIG.Pipeline_Stages {0} \
   CONFIG.common_output_clk {true} \
   CONFIG.data_width {32} \
   CONFIG.depth {16} \
   CONFIG.dual_port_address {registered} \
   CONFIG.input_clock_enable {false} \
   CONFIG.input_options {registered} \
   CONFIG.memory_type {dual_port_ram} \
   CONFIG.output_options {registered} \
   CONFIG.simple_dual_port_output_clock_enable {false} \
   CONFIG.sync_reset_qdpo {true} \
   CONFIG.sync_reset_qspo {true} \
 ] $dmr_1_ONEWIRE

  # Create instance: mb_0, and set properties
  set mb_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 mb_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {17} \
   CONFIG.C_AREA_OPTIMIZED {0} \
   CONFIG.C_CACHE_BYTE_SIZE {8192} \
   CONFIG.C_DATA_SIZE {32} \
   CONFIG.C_DCACHE_ADDR_TAG {17} \
   CONFIG.C_DCACHE_BYTE_SIZE {8192} \
   CONFIG.C_DCACHE_LINE_LEN {4} \
   CONFIG.C_DCACHE_USE_WRITEBACK {0} \
   CONFIG.C_DCACHE_VICTIMS {0} \
   CONFIG.C_DEBUG_ENABLED {2} \
   CONFIG.C_DIV_ZERO_EXCEPTION {0} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_FPU_EXCEPTION {0} \
   CONFIG.C_ICACHE_LINE_LEN {8} \
   CONFIG.C_ICACHE_STREAMS {0} \
   CONFIG.C_ICACHE_VICTIMS {0} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {0} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_DTLB_SIZE {4} \
   CONFIG.C_MMU_ITLB_SIZE {2} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {0} \
   CONFIG.C_NUMBER_OF_PC_BRK {5} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {0} \
   CONFIG.C_PVR {0} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {0} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_BRANCH_TARGET_CACHE {0} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_FPU {0} \
   CONFIG.C_USE_HW_MUL {1} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MMU {0} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.C_USE_REORDER_INSTR {1} \
   CONFIG.G_TEMPLATE_LIST {6} \
   CONFIG.G_USE_EXCEPTIONS {1} \
 ] $mb_0

  # Create instance: mb_0_axi_intc, and set properties
  set mb_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 mb_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
   CONFIG.C_IRQ_IS_LEVEL {0} \
 ] $mb_0_axi_intc

  # Create instance: mb_0_axi_intc_concat, and set properties
  set mb_0_axi_intc_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 mb_0_axi_intc_concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {12} \
 ] $mb_0_axi_intc_concat

  # Create instance: mb_0_axi_interconnect_bottom, and set properties
  set mb_0_axi_interconnect_bottom [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mb_0_axi_interconnect_bottom ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $mb_0_axi_interconnect_bottom

  # Create instance: mb_0_axi_interconnect_top, and set properties
  set mb_0_axi_interconnect_top [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mb_0_axi_interconnect_top ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {15} \
   CONFIG.NUM_SI {6} \
 ] $mb_0_axi_interconnect_top

  # Create instance: mb_0_local_memory
  create_hier_cell_mb_0_local_memory [current_bd_instance .] mb_0_local_memory

  # Create instance: mb_0_mdm, and set properties
  set mb_0_mdm [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mb_0_mdm ]
  set_property -dict [ list \
   CONFIG.C_ADDR_SIZE {32} \
   CONFIG.C_DBG_MEM_ACCESS {1} \
   CONFIG.C_DBG_REG_ACCESS {0} \
   CONFIG.C_M_AXI_ADDR_WIDTH {32} \
   CONFIG.C_S_AXI_ADDR_WIDTH {4} \
   CONFIG.C_TRACE_OUTPUT {0} \
   CONFIG.C_USE_CROSS_TRIGGER {1} \
   CONFIG.C_USE_UART {1} \
 ] $mb_0_mdm

  # Create instance: mb_0_reset, and set properties
  set mb_0_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 mb_0_reset ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
 ] $mb_0_reset

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_b.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_mcu_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_b.prj} \
 ] $mig_7series_0

  # Create instance: mii_to_rmii_ETHERNET, and set properties
  set mii_to_rmii_ETHERNET [ create_bd_cell -type ip -vlnv xilinx.com:ip:mii_to_rmii:2.0 mii_to_rmii_ETHERNET ]
  set_property -dict [ list \
   CONFIG.C_FIXED_SPEED {0} \
 ] $mii_to_rmii_ETHERNET

  # Create instance: selectio_LVDS_in, and set properties
  set selectio_LVDS_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 selectio_LVDS_in ]
  set_property -dict [ list \
   CONFIG.BUS_IO_STD {LVDS_25} \
   CONFIG.BUS_SIG_TYPE {DIFF} \
   CONFIG.CLK_FWD_IO_STD {DIFF_HSTL_I} \
   CONFIG.CLK_FWD_SIG_TYPE {DIFF} \
   CONFIG.SELIO_ACTIVE_EDGE {DDR} \
   CONFIG.SELIO_CLK_BUF {MMCM} \
   CONFIG.SELIO_CLK_IO_STD {LVDS_25} \
   CONFIG.SELIO_CLK_SIG_TYPE {DIFF} \
   CONFIG.SELIO_INTERFACE_TYPE {NETWORKING} \
   CONFIG.SERIALIZATION_FACTOR {8} \
   CONFIG.SYSTEM_DATA_WIDTH {1} \
   CONFIG.USE_SERIALIZATION {true} \
 ] $selectio_LVDS_in

  # Create instance: selectio_LVDS_out, and set properties
  set selectio_LVDS_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 selectio_LVDS_out ]
  set_property -dict [ list \
   CONFIG.BUS_DIR {OUTPUTS} \
   CONFIG.BUS_IO_STD {LVDS_25} \
   CONFIG.BUS_SIG_TYPE {DIFF} \
   CONFIG.CLK_FWD {true} \
   CONFIG.CLK_FWD_IO_STD {DIFF_HSTL_I} \
   CONFIG.CLK_FWD_SIG_TYPE {DIFF} \
   CONFIG.SELIO_ACTIVE_EDGE {DDR} \
   CONFIG.SELIO_BUS_IN_DELAY {NONE} \
   CONFIG.SELIO_CLK_BUF {MMCM} \
   CONFIG.SELIO_CLK_IO_STD {LVDS_25} \
   CONFIG.SELIO_CLK_SIG_TYPE {DIFF} \
   CONFIG.SELIO_INTERFACE_TYPE {NETWORKING} \
   CONFIG.SERIALIZATION_FACTOR {8} \
   CONFIG.SYSTEM_DATA_WIDTH {1} \
   CONFIG.USE_SERIALIZATION {true} \
   CONFIG.USE_TEMPLATE {Custom} \
 ] $selectio_LVDS_out

  # Create instance: xlconcat_ROTENC, and set properties
  set xlconcat_ROTENC [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_ROTENC ]

  # Create instance: xlconstant_LVDS_val0, and set properties
  set xlconstant_LVDS_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_LVDS_val0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_LVDS_val0

  # Create instance: xlconstant_LVDS_val0000, and set properties
  set xlconstant_LVDS_val0000 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_LVDS_val0000 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_LVDS_val0000

  # Create instance: xlconstant_LVDS_val1, and set properties
  set xlconstant_LVDS_val1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_LVDS_val1 ]

  # Create instance: xlconstant_ROTENC_31bit_val0, and set properties
  set xlconstant_ROTENC_31bit_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_ROTENC_31bit_val0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {31} \
 ] $xlconstant_ROTENC_31bit_val0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins mb_0_axi_interconnect_bottom/S00_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M02_AXI]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MII [get_bd_intf_pins axi_ethernetlite_ETHERNET/MII] [get_bd_intf_pins mii_to_rmii_ETHERNET/MII]
  connect_bd_intf_net -intf_net axi_ethernetlite_ETHERNET_MDIO [get_bd_intf_ports mdio_rtl_0_ethernet] [get_bd_intf_pins axi_ethernetlite_ETHERNET/MDIO]
  connect_bd_intf_net -intf_net axi_gpio_0_gpio [get_bd_intf_ports gpio_rtl_0_multi] [get_bd_intf_pins axi_gpio_0_MULTI/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_2_ONEWIRE_in_GPIO2 [get_bd_intf_ports gpio_rtl_1_onewire_gpio_in] [get_bd_intf_pins axi_gpio_2_ONEWIRE_in/GPIO2]
  connect_bd_intf_net -intf_net axi_iic_0_iic [get_bd_intf_ports iic_rtl_0_pll] [get_bd_intf_pins axi_iic_0_PLL/IIC]
  connect_bd_intf_net -intf_net axi_iic_0_iic1 [get_bd_intf_ports iic_rtl_1_board] [get_bd_intf_pins axi_iic_1_BOARD/IIC]
  connect_bd_intf_net -intf_net axi_quad_spi_0_spi [get_bd_intf_ports spi_rtl_0_config] [get_bd_intf_pins axi_quad_spi_0_CONFIG/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_1_spi [get_bd_intf_ports spi_rtl_1_trx] [get_bd_intf_pins axi_quad_spi_1_TRX/SPI_0]
  connect_bd_intf_net -intf_net axi_uart16550_0_uart [get_bd_intf_ports uart_rtl_0_ftdi] [get_bd_intf_pins axi_uart16550_0_FTDI/UART]
  connect_bd_intf_net -intf_net gpio_rtl_1_onewire_gpio_out [get_bd_intf_ports gpio_rtl_1_onewire_gpio_out] [get_bd_intf_pins axi_gpio_1_ONEWIRE_out/GPIO2]
  connect_bd_intf_net -intf_net mb_0_DLMB [get_bd_intf_pins mb_0/DLMB] [get_bd_intf_pins mb_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net mb_0_ILMB [get_bd_intf_pins mb_0/ILMB] [get_bd_intf_pins mb_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net mb_0_INTERRUPT [get_bd_intf_pins mb_0/INTERRUPT] [get_bd_intf_pins mb_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net mb_0_M_AXI_DC [get_bd_intf_pins mb_0/M_AXI_DC] [get_bd_intf_pins mb_0_axi_interconnect_top/S02_AXI]
  connect_bd_intf_net -intf_net mb_0_M_AXI_DP [get_bd_intf_pins mb_0/M_AXI_DP] [get_bd_intf_pins mb_0_axi_interconnect_top/S00_AXI]
  connect_bd_intf_net -intf_net mb_0_M_AXI_IC [get_bd_intf_pins mb_0/M_AXI_IC] [get_bd_intf_pins mb_0_axi_interconnect_top/S03_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect1_M00_AXI [get_bd_intf_pins axi_uart16550_0_FTDI/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bottom/M00_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M00_AXI [get_bd_intf_pins mb_0_axi_intc/s_axi] [get_bd_intf_pins mb_0_axi_interconnect_top/M00_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M01_AXI [get_bd_intf_pins mb_0_axi_interconnect_top/M01_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M03_AXI [get_bd_intf_pins axi_gpio_0_MULTI/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M03_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M04_AXI [get_bd_intf_pins axi_quad_spi_0_CONFIG/AXI_LITE] [get_bd_intf_pins mb_0_axi_interconnect_top/M04_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M05_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M05_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M06_AXI [get_bd_intf_pins axi_iic_0_PLL/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M06_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M07_AXI [get_bd_intf_pins mb_0_axi_interconnect_top/M07_AXI] [get_bd_intf_pins mb_0_mdm/S_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M08_AXI [get_bd_intf_pins axi_gpio_7_LVDS/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M08_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M09_AXI [get_bd_intf_pins axi_quad_spi_1_TRX/AXI_LITE] [get_bd_intf_pins mb_0_axi_interconnect_top/M09_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M10_AXI [get_bd_intf_pins axi_iic_1_BOARD/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M10_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M11_AXI [get_bd_intf_pins axi_gpio_3_ROTENC/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M11_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M12_AXI [get_bd_intf_pins axi_gpio_2_ONEWIRE_in/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M12_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M13_AXI [get_bd_intf_pins axi_gpio_1_ONEWIRE_out/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M13_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_M14_AXI [get_bd_intf_pins axi_ethernetlite_ETHERNET/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M14_AXI]
  connect_bd_intf_net -intf_net mb_0_mdm_LMB_0 [get_bd_intf_pins mb_0_local_memory/LMB_M] [get_bd_intf_pins mb_0_mdm/LMB_0]
  connect_bd_intf_net -intf_net mb_0_mdm_MDEBUG_0 [get_bd_intf_pins mb_0/DEBUG] [get_bd_intf_pins mb_0_mdm/MBDEBUG_0]
  connect_bd_intf_net -intf_net mb_0_mdm_M_AXI [get_bd_intf_pins mb_0_axi_interconnect_top/S01_AXI] [get_bd_intf_pins mb_0_mdm/M_AXI]
  connect_bd_intf_net -intf_net mig_7series_0_ddr3 [get_bd_intf_ports ddr3_sdram] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net mii_to_rmii_ETHERNET_RMII_PHY_M [get_bd_intf_ports rmii_rtl_0_ethernet] [get_bd_intf_pins mii_to_rmii_ETHERNET/RMII_PHY_M]

  # Create port connections
  connect_bd_net -net axi_ethernetlite_ETHERNET_ip2intc_irpt [get_bd_pins axi_ethernetlite_ETHERNET/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In11]
  connect_bd_net -net axi_gpio_1_ONEWIRE_out_gpio_io_o [get_bd_pins axi_gpio_1_ONEWIRE_out/gpio_io_o] [get_bd_pins dmr_1_ONEWIRE/dpra]
  connect_bd_net -net axi_gpio_2_onewire_ip2intc_irpt [get_bd_pins axi_gpio_2_ONEWIRE_in/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In10]
  connect_bd_net -net axi_gpio_3_rotenc_ip2intc_irpt [get_bd_pins axi_gpio_3_ROTENC/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In9]
  connect_bd_net -net axi_gpio_3_rotenc_push [get_bd_ports board_rotenc_push] [get_bd_pins axi_gpio_3_ROTENC/gpio2_io_i]
  connect_bd_net -net axi_iic_0_pll_iic2intc_irpt [get_bd_pins axi_iic_0_PLL/iic2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In4]
  connect_bd_net -net axi_iic_1_board_iic2intc_irpt [get_bd_pins axi_iic_1_BOARD/iic2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In7]
  connect_bd_net -net axi_quad_spi_0_config_ip2intc_irpt [get_bd_pins axi_quad_spi_0_CONFIG/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In3]
  connect_bd_net -net axi_quad_spi_1_trx_ip2intc_irpt [get_bd_pins axi_quad_spi_1_TRX/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In5]
  connect_bd_net -net axi_timer_0_irpt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins mb_0_axi_intc_concat/In1]
  connect_bd_net -net axi_timer_0_lcd_pwm0 [get_bd_ports pwm0_lcd_bl_obuf] [get_bd_pins axi_timer_0/pwm0]
  connect_bd_net -net axi_uart16550_0_ftdi_ip2intc_irpt [get_bd_pins axi_uart16550_0_FTDI/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In2]
  connect_bd_net -net c_accum_0_rotenc_add [get_bd_ports board_rotenc_up] [get_bd_pins c_accum_0_ROTENC/ADD]
  connect_bd_net -net c_accum_0_rotenc_q [get_bd_pins axi_gpio_3_ROTENC/gpio_io_i] [get_bd_pins c_accum_0_ROTENC/Q]
  connect_bd_net -net c_counter_binary_0_lvds_reset_q [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_ioReset/Q] [get_bd_pins selectio_LVDS_in/io_reset] [get_bd_pins selectio_LVDS_out/io_reset]
  connect_bd_net -net cdc_lvds_in_data [get_bd_pins CDC_LVDS_in/d] [get_bd_pins selectio_LVDS_in/data_in_to_device]
  connect_bd_net -net cdc_lvds_in_qdpo [get_bd_pins CDC_LVDS_in/qdpo] [get_bd_pins axi_gpio_7_LVDS/gpio2_io_i]
  connect_bd_net -net cdc_lvds_out_data [get_bd_pins CDC_LVDS_out/d] [get_bd_pins axi_gpio_7_LVDS/gpio_io_o]
  connect_bd_net -net cdc_lvds_out_qdpo [get_bd_pins CDC_LVDS_out/qdpo] [get_bd_pins selectio_LVDS_out/data_out_from_device]
  connect_bd_net -net clk_025mhz_1 [get_bd_ports clk_025mhz] [get_bd_pins axi_quad_spi_0_CONFIG/ext_spi_clk]
  connect_bd_net -net clk_050mhz_1 [get_bd_ports clk_050mhz] [get_bd_pins mii_to_rmii_ETHERNET/ref_clk]
  connect_bd_net -net clk_12mhz_ftdi_clk [get_bd_ports clk_012mhz] [get_bd_ports ufb_fpga_ft_12mhz_obuf] [get_bd_pins axi_quad_spi_1_TRX/ext_spi_clk]
  connect_bd_net -net clk_177mhz778_1 [get_bd_ports clk_177mhz778] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_32mhz_lvds_clk [get_bd_pins CDC_LVDS_in/clk] [get_bd_pins CDC_LVDS_out/qdpo_clk] [get_bd_pins clk_32mhz_LVDS/clk_32_lvds] [get_bd_pins clk_32mhz_LVDS_locked_inv/CLK] [get_bd_pins selectio_LVDS_in/clk_in] [get_bd_pins selectio_LVDS_out/clk_in]
  connect_bd_net -net clk_32mhz_lvds_clk_div_8 [get_bd_pins clk_32mhz_LVDS/clk_div_8_lvds] [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_clkReset/CLK] [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_ioReset/CLK] [get_bd_pins selectio_LVDS_in/clk_div_in] [get_bd_pins selectio_LVDS_out/clk_div_in]
  connect_bd_net -net clk_32mhz_lvds_locked [get_bd_pins clk_32mhz_LVDS/locked] [get_bd_pins clk_32mhz_LVDS_locked_inv/A]
  connect_bd_net -net clk_32mhz_lvds_locked_inv [get_bd_pins clk_32mhz_LVDS_locked_inv/S] [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_clkReset/D] [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_clkReset/SSET] [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_ioReset/D] [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_ioReset/SSET]
  connect_bd_net -net clk_32mhz_lvds_locked_inv_sr_q [get_bd_pins clk_32mhz_LVDS_locked_inv_sr_clkReset/Q] [get_bd_pins selectio_LVDS_out/clk_reset]
  connect_bd_net -net dmr_1_ONEWIRE_qdpo [get_bd_pins axi_gpio_2_ONEWIRE_in/gpio_io_i] [get_bd_pins dmr_1_ONEWIRE/qdpo]
  connect_bd_net -net dmr_1_onewire_a_in [get_bd_ports dmr_1_onewire_a_in] [get_bd_pins dmr_1_ONEWIRE/a]
  connect_bd_net -net dmr_1_onewire_d_in [get_bd_ports dmr_1_onewire_d_in] [get_bd_pins dmr_1_ONEWIRE/d]
  connect_bd_net -net mb_0_clk [get_bd_ports mb_axi_clk_83mhz333] [get_bd_pins CDC_LVDS_in/qdpo_clk] [get_bd_pins CDC_LVDS_out/clk] [get_bd_pins axi_ethernetlite_ETHERNET/s_axi_aclk] [get_bd_pins axi_gpio_0_MULTI/s_axi_aclk] [get_bd_pins axi_gpio_1_ONEWIRE_out/s_axi_aclk] [get_bd_pins axi_gpio_2_ONEWIRE_in/s_axi_aclk] [get_bd_pins axi_gpio_3_ROTENC/s_axi_aclk] [get_bd_pins axi_gpio_7_LVDS/s_axi_aclk] [get_bd_pins axi_iic_0_PLL/s_axi_aclk] [get_bd_pins axi_iic_1_BOARD/s_axi_aclk] [get_bd_pins axi_quad_spi_0_CONFIG/s_axi_aclk] [get_bd_pins axi_quad_spi_1_TRX/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uart16550_0_FTDI/s_axi_aclk] [get_bd_pins c_accum_0_ROTENC/CLK] [get_bd_pins dmr_1_ONEWIRE/clk] [get_bd_pins mb_0/Clk] [get_bd_pins mb_0_axi_intc/processor_clk] [get_bd_pins mb_0_axi_intc/s_axi_aclk] [get_bd_pins mb_0_axi_interconnect_bottom/ACLK] [get_bd_pins mb_0_axi_interconnect_bottom/M00_ACLK] [get_bd_pins mb_0_axi_interconnect_bottom/M01_ACLK] [get_bd_pins mb_0_axi_interconnect_bottom/S00_ACLK] [get_bd_pins mb_0_axi_interconnect_top/ACLK] [get_bd_pins mb_0_axi_interconnect_top/M00_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M01_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M02_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M03_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M04_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M05_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M06_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M07_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M08_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M09_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M10_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M11_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M12_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M13_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M14_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S00_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S01_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S02_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S03_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S04_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S05_ACLK] [get_bd_pins mb_0_local_memory/LMB_Clk] [get_bd_pins mb_0_mdm/M_AXI_ACLK] [get_bd_pins mb_0_mdm/S_AXI_ACLK] [get_bd_pins mb_0_reset/slowest_sync_clk] [get_bd_pins mig_7series_0/ui_clk]
  connect_bd_net -net mb_0_intr_in [get_bd_pins mb_0_axi_intc/intr] [get_bd_pins mb_0_axi_intc_concat/dout]
  connect_bd_net -net mb_0_mdm_Interrupt [get_bd_pins mb_0_axi_intc_concat/In0] [get_bd_pins mb_0_mdm/Interrupt]
  connect_bd_net -net mb_0_mdm_debug_sys_rst [get_bd_pins mb_0_mdm/Debug_SYS_Rst] [get_bd_pins mb_0_reset/mb_debug_sys_rst]
  connect_bd_net -net mb_0_reset_aux_reset_in [get_bd_ports reset] [get_bd_pins mb_0_reset/aux_reset_in]
  connect_bd_net -net mb_0_reset_bus_struct_reset [get_bd_pins clk_32mhz_LVDS/reset] [get_bd_pins mb_0_local_memory/SYS_Rst] [get_bd_pins mb_0_reset/bus_struct_reset]
  connect_bd_net -net mb_0_reset_interconnect_aresetn [get_bd_pins mb_0_axi_interconnect_bottom/ARESETN] [get_bd_pins mb_0_axi_interconnect_top/ARESETN] [get_bd_pins mb_0_reset/interconnect_aresetn]
  connect_bd_net -net mb_0_reset_mb_reset [get_bd_pins mb_0/Reset] [get_bd_pins mb_0_axi_intc/processor_rst] [get_bd_pins mb_0_reset/mb_reset]
  connect_bd_net -net mb_0_reset_peripheral_aresetn [get_bd_ports ufb_fpga_ft_resetn_obuf] [get_bd_pins axi_ethernetlite_ETHERNET/s_axi_aresetn] [get_bd_pins axi_gpio_0_MULTI/s_axi_aresetn] [get_bd_pins axi_gpio_1_ONEWIRE_out/s_axi_aresetn] [get_bd_pins axi_gpio_2_ONEWIRE_in/s_axi_aresetn] [get_bd_pins axi_gpio_3_ROTENC/s_axi_aresetn] [get_bd_pins axi_gpio_7_LVDS/s_axi_aresetn] [get_bd_pins axi_iic_0_PLL/s_axi_aresetn] [get_bd_pins axi_iic_1_BOARD/s_axi_aresetn] [get_bd_pins axi_quad_spi_0_CONFIG/s_axi_aresetn] [get_bd_pins axi_quad_spi_1_TRX/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uart16550_0_FTDI/s_axi_aresetn] [get_bd_pins dmr_1_ONEWIRE/qdpo_srst] [get_bd_pins dmr_1_ONEWIRE/qspo_srst] [get_bd_pins mb_0_axi_intc/s_axi_aresetn] [get_bd_pins mb_0_axi_interconnect_bottom/M00_ARESETN] [get_bd_pins mb_0_axi_interconnect_bottom/M01_ARESETN] [get_bd_pins mb_0_axi_interconnect_bottom/S00_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M00_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M01_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M02_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M03_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M04_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M05_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M06_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M07_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M08_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M09_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M10_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M11_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M12_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M13_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M14_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S00_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S01_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S02_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S03_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S04_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S05_ARESETN] [get_bd_pins mb_0_mdm/M_AXI_ARESETN] [get_bd_pins mb_0_mdm/S_AXI_ARESETN] [get_bd_pins mb_0_reset/peripheral_aresetn] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins mii_to_rmii_ETHERNET/rst_n]
  connect_bd_net -net mb_0_reset_peripheral_reset [get_bd_ports peripheral_reset] [get_bd_pins c_accum_0_ROTENC/SCLR] [get_bd_pins mb_0_reset/peripheral_reset]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_ports ddr3_init_calib_complete_obuf] [get_bd_pins mig_7series_0/init_calib_complete]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins mb_0_reset/dcm_locked] [get_bd_pins mig_7series_0/mmcm_locked]
  connect_bd_net -net mig_7series_0_sys_rst [get_bd_ports sys_rst] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net mig_7series_0_ui_addn_clk_0 [get_bd_pins mig_7series_0/clk_ref_i] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins mb_0_reset/ext_reset_in] [get_bd_pins mig_7series_0/ui_clk_sync_rst]
  connect_bd_net -net pll_iic2intc_irpt [get_bd_ports pll_int] [get_bd_pins mb_0_axi_intc_concat/In8]
  connect_bd_net -net selectio_wiz_lvds_out_clk_to_pins_n [get_bd_ports ufb_trx_txclk_n] [get_bd_pins selectio_LVDS_out/clk_to_pins_n]
  connect_bd_net -net selectio_wiz_lvds_out_clk_to_pins_p [get_bd_ports ufb_trx_txclk_p] [get_bd_pins selectio_LVDS_out/clk_to_pins_p]
  connect_bd_net -net selectio_wiz_lvds_out_data_out_to_pins_n [get_bd_ports ufb_trx_txd_n] [get_bd_pins selectio_LVDS_out/data_out_to_pins_n]
  connect_bd_net -net selectio_wiz_lvds_out_data_out_to_pins_p [get_bd_ports ufb_trx_txd_p] [get_bd_pins selectio_LVDS_out/data_out_to_pins_p]
  connect_bd_net -net trx_iic2intc_irpt [get_bd_ports trx_int] [get_bd_pins mb_0_axi_intc_concat/In6]
  connect_bd_net -net ufb_trx_rxclk_n [get_bd_ports ufb_trx_rxclk_n] [get_bd_pins clk_32mhz_LVDS/clk_in1_n]
  connect_bd_net -net ufb_trx_rxclk_p [get_bd_ports ufb_trx_rxclk_p] [get_bd_pins clk_32mhz_LVDS/clk_in1_p]
  connect_bd_net -net ufb_trx_rxd09_n [get_bd_ports ufb_trx_rxd09_n] [get_bd_pins selectio_LVDS_in/data_in_from_pins_n]
  connect_bd_net -net ufb_trx_rxd09_p [get_bd_ports ufb_trx_rxd09_p] [get_bd_pins selectio_LVDS_in/data_in_from_pins_p]
  connect_bd_net -net we_0_1 [get_bd_ports dmr_1_onewire_we_in] [get_bd_pins dmr_1_ONEWIRE/we]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins c_accum_0_ROTENC/B] [get_bd_pins xlconcat_ROTENC/dout]
  connect_bd_net -net xlconcat_rotenc_pulse [get_bd_ports board_rotenc_pulse] [get_bd_pins xlconcat_ROTENC/In0]
  connect_bd_net -net xlconstant_31bit_val0_dout [get_bd_pins xlconcat_ROTENC/In1] [get_bd_pins xlconstant_ROTENC_31bit_val0/dout]
  connect_bd_net -net xlconstant_val000_dout [get_bd_pins CDC_LVDS_in/a] [get_bd_pins CDC_LVDS_in/dpra] [get_bd_pins CDC_LVDS_out/a] [get_bd_pins CDC_LVDS_out/dpra] [get_bd_pins xlconstant_LVDS_val0000/dout]
  connect_bd_net -net xlconstant_val0_dout [get_bd_pins selectio_LVDS_in/bitslip] [get_bd_pins xlconstant_LVDS_val0/dout]
  connect_bd_net -net xlconstant_val1_dout [get_bd_pins CDC_LVDS_in/we] [get_bd_pins CDC_LVDS_out/we] [get_bd_pins xlconstant_LVDS_val1/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40E00000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_ethernetlite_ETHERNET/S_AXI/Reg] SEG_axi_ethernetlite_ETHERNET_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40E00000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_ethernetlite_ETHERNET/S_AXI/Reg] SEG_axi_ethernetlite_ETHERNET_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_gpio_0_MULTI/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_gpio_0_MULTI/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_gpio_2_ONEWIRE_in/S_AXI/Reg] SEG_axi_gpio_0_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_gpio_2_ONEWIRE_in/S_AXI/Reg] SEG_axi_gpio_0_Reg3
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_gpio_1_ONEWIRE_out/S_AXI/Reg] SEG_axi_gpio_1_ONEWIRE_addr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_gpio_1_ONEWIRE_out/S_AXI/Reg] SEG_axi_gpio_1_ONEWIRE_addr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_gpio_3_ROTENC/S_AXI/Reg] SEG_axi_gpio_1_ROTENC_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_gpio_3_ROTENC/S_AXI/Reg] SEG_axi_gpio_1_ROTENC_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40070000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_gpio_7_LVDS/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40070000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_gpio_7_LVDS/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_iic_0_PLL/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_iic_0_PLL/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40810000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_iic_1_BOARD/S_AXI/Reg] SEG_axi_iic_0_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x40810000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_iic_1_BOARD/S_AXI/Reg] SEG_axi_iic_0_Reg3
  create_bd_addr_seg -range 0x00010000 -offset 0x44B00000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_quad_spi_0_CONFIG/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44B00000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_quad_spi_0_CONFIG/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44B10000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_quad_spi_1_TRX/AXI_LITE/Reg] SEG_axi_quad_spi_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44B10000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_quad_spi_1_TRX/AXI_LITE/Reg] SEG_axi_quad_spi_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_uart16550_0_FTDI/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_uart16550_0_FTDI/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00040000 -offset 0x00000000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs mb_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00040000 -offset 0x00000000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs mb_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs mb_0_mdm/S_AXI/Reg] SEG_mb_0_mdm_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs mb_0_mdm/S_AXI/Reg] SEG_mb_0_mdm_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs mb_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs mb_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x40E00000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_ethernetlite_ETHERNET/S_AXI/Reg] SEG_axi_ethernetlite_ETHERNET_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_gpio_0_MULTI/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_gpio_2_ONEWIRE_in/S_AXI/Reg] SEG_axi_gpio_0_Reg5
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_gpio_1_ONEWIRE_out/S_AXI/Reg] SEG_axi_gpio_1_ONEWIRE_addr_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_gpio_3_ROTENC/S_AXI/Reg] SEG_axi_gpio_1_ROTENC_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40070000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_gpio_7_LVDS/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_iic_0_PLL/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40810000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_iic_1_BOARD/S_AXI/Reg] SEG_axi_iic_0_Reg5
  create_bd_addr_seg -range 0x00010000 -offset 0x44B00000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_quad_spi_0_CONFIG/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44B10000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_quad_spi_1_TRX/AXI_LITE/Reg] SEG_axi_quad_spi_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_uart16550_0_FTDI/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00040000 -offset 0x00000000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs mb_0_local_memory/dlmb_bram_if_cntlr/SLMB1/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs mb_0_mdm/S_AXI/Reg] SEG_mb_0_mdm_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs mb_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


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


