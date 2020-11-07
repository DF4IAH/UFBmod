
################################################################
# This is a generated script based on design: msys
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
# source msys_script.tcl

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
set design_name msys

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
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_msys_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  }
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>msys_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a100t-fgg484/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>Differential</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>0</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41J256m16XX-125</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>2500</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>50</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>800</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 4.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>8</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>16</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>32</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>15</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.5V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J1" SLEW="" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L4" SLEW="" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P5" SLEW="" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K2" SLEW="" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M1" SLEW="" VCCAUX_IO="" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M5" SLEW="" VCCAUX_IO="" name="ddr3_addr[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P6" SLEW="" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N5" SLEW="" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N3" SLEW="" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="G1" SLEW="" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M3" SLEW="" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="N2" SLEW="" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J5" SLEW="" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L1" SLEW="" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P2" SLEW="" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="P4" SLEW="" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H5" SLEW="" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="H2" SLEW="" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M2" SLEW="" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="P1" SLEW="" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="R1" SLEW="" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="L3" SLEW="" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K1" SLEW="" VCCAUX_IO="" name="ddr3_cs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W2" SLEW="" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y7" SLEW="" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V4" SLEW="" VCCAUX_IO="" name="ddr3_dm[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V5" SLEW="" VCCAUX_IO="" name="ddr3_dm[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T1" SLEW="" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB7" SLEW="" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA8" SLEW="" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB8" SLEW="" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB6" SLEW="" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y8" SLEW="" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y9" SLEW="" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB1" SLEW="" VCCAUX_IO="" name="ddr3_dq[16]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB5" SLEW="" VCCAUX_IO="" name="ddr3_dq[17]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB3" SLEW="" VCCAUX_IO="" name="ddr3_dq[18]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA1" SLEW="" VCCAUX_IO="" name="ddr3_dq[19]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U3" SLEW="" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y4" SLEW="" VCCAUX_IO="" name="ddr3_dq[20]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA5" SLEW="" VCCAUX_IO="" name="ddr3_dq[21]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AB2" SLEW="" VCCAUX_IO="" name="ddr3_dq[22]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W4" SLEW="" VCCAUX_IO="" name="ddr3_dq[23]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T4" SLEW="" VCCAUX_IO="" name="ddr3_dq[24]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U6" SLEW="" VCCAUX_IO="" name="ddr3_dq[25]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T6" SLEW="" VCCAUX_IO="" name="ddr3_dq[26]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="AA6" SLEW="" VCCAUX_IO="" name="ddr3_dq[27]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y6" SLEW="" VCCAUX_IO="" name="ddr3_dq[28]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="T5" SLEW="" VCCAUX_IO="" name="ddr3_dq[29]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U2" SLEW="" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U5" SLEW="" VCCAUX_IO="" name="ddr3_dq[30]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="R6" SLEW="" VCCAUX_IO="" name="ddr3_dq[31]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="U1" SLEW="" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y2" SLEW="" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W1" SLEW="" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="Y1" SLEW="" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V2" SLEW="" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="V7" SLEW="" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="W9" SLEW="" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="R2" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="V8" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="AA3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="W5" SLEW="" VCCAUX_IO="" name="ddr3_dqs_n[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="R3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="V9" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="Y3" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL15" PADName="W6" SLEW="" VCCAUX_IO="" name="ddr3_dqs_p[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="K3" SLEW="" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="M6" SLEW="" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="LVCMOS15" PADName="H3" SLEW="" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL15" PADName="J2" SLEW="" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
   puts $mig_prj_file {    <System_Clock>}
   puts $mig_prj_file {      <Pin Bank="35" PADName="H4/G4(CC_P/N)" name="sys_clk_p/n"/>}
   puts $mig_prj_file {    </System_Clock>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="260" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">6</mrCasLatency>}
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
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>32</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>1</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_msys_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: ETH0_LEDs
proc create_hier_cell_ETH0_LEDs { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ETH0_LEDs() - Empty argument(s)!"}
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
  create_bd_pin -dir O -from 0 -to 0 ETH0_DA_G
  create_bd_pin -dir O -from 0 -to 0 ETH0_DA_Y
  create_bd_pin -dir I -from 0 -to 0 ETH0_LINK_LED_inv
  create_bd_pin -dir I -from 0 -to 0 m_mii_tx_en
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 s_mii_crs

  # Create instance: ETH0_LEDs_c_counter_binary_0, and set properties
  set ETH0_LEDs_c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 ETH0_LEDs_c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Count_Mode {UP} \
   CONFIG.Fb_Latency {2} \
   CONFIG.Fb_Latency_Configuration {Manual} \
   CONFIG.Final_Count_Value {e} \
   CONFIG.Latency {2} \
   CONFIG.Latency_Configuration {Manual} \
   CONFIG.Load {false} \
   CONFIG.Output_Width {24} \
   CONFIG.Restrict_Count {false} \
   CONFIG.SCLR {true} \
   CONFIG.Sync_Threshold_Output {true} \
   CONFIG.Threshold_Value {98967f} \
 ] $ETH0_LEDs_c_counter_binary_0

  # Create instance: ETH0_LEDs_util_reduced_logic_0, and set properties
  set ETH0_LEDs_util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 ETH0_LEDs_util_reduced_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {2} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $ETH0_LEDs_util_reduced_logic_0

  # Create instance: ETH0_LEDs_util_vector_logic_0, and set properties
  set ETH0_LEDs_util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 ETH0_LEDs_util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $ETH0_LEDs_util_vector_logic_0

  # Create instance: ETH0_LEDs_xlconcat_0, and set properties
  set ETH0_LEDs_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ETH0_LEDs_xlconcat_0 ]

  # Create port connections
  connect_bd_net -net ETH0_LEDs_c_counter_binary_0_THRESH0 [get_bd_pins ETH0_LEDs_c_counter_binary_0/THRESH0] [get_bd_pins ETH0_LEDs_util_vector_logic_0/Op1]
  connect_bd_net -net ETH0_LEDs_util_reduced_logic_0_Res [get_bd_pins ETH0_LEDs_c_counter_binary_0/SCLR] [get_bd_pins ETH0_LEDs_util_reduced_logic_0/Res]
  connect_bd_net -net ETH0_LEDs_util_vector_logic_0_Res [get_bd_pins ETH0_DA_Y] [get_bd_pins ETH0_LEDs_c_counter_binary_0/CE] [get_bd_pins ETH0_LEDs_util_vector_logic_0/Res]
  connect_bd_net -net ETH0_LEDs_xlconcat_0_dout [get_bd_pins ETH0_LEDs_util_reduced_logic_0/Op1] [get_bd_pins ETH0_LEDs_xlconcat_0/dout]
  connect_bd_net -net ETH0_LINK_LED_inv_0 [get_bd_pins ETH0_DA_G] [get_bd_pins ETH0_LINK_LED_inv]
  connect_bd_net -net m_mii_tx_en_1 [get_bd_pins m_mii_tx_en] [get_bd_pins ETH0_LEDs_xlconcat_0/In1]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins ETH0_LEDs_c_counter_binary_0/CLK]
  connect_bd_net -net s_mii_crs_1 [get_bd_pins s_mii_crs] [get_bd_pins ETH0_LEDs_xlconcat_0/In0]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: BOOT_PLL_Local_BRAM
proc create_hier_cell_BOOT_PLL_Local_BRAM { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BOOT_PLL_Local_BRAM() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB_M

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB_M

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:lmb_rtl:1.0 mdm_USER2_0_BOOT_LMB_0_in


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create instance: dlmb_bram_if_cntlr_0, and set properties
  set dlmb_bram_if_cntlr_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_LMB {2} \
 ] $dlmb_bram_if_cntlr_0

  # Create instance: dlmb_v10_0, and set properties
  set dlmb_v10_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10_0 ]

  # Create instance: ilmb_bram_if_cntlr_0, and set properties
  set ilmb_bram_if_cntlr_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_LMB {1} \
 ] $ilmb_bram_if_cntlr_0

  # Create instance: ilmb_v10_1, and set properties
  set ilmb_v10_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn [get_bd_intf_pins dlmb_bram_if_cntlr_0/SLMB] [get_bd_intf_pins dlmb_v10_0/LMB_Sl_0]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins ILMB_M] [get_bd_intf_pins ilmb_v10_1/LMB_M]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins DLMB_M] [get_bd_intf_pins dlmb_v10_0/LMB_M]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins ilmb_bram_if_cntlr_0/SLMB] [get_bd_intf_pins ilmb_v10_1/LMB_Sl_0]
  connect_bd_intf_net -intf_net dlmb_bram_if_cntlr_0_BRAM_PORT [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB] [get_bd_intf_pins dlmb_bram_if_cntlr_0/BRAM_PORT]
  connect_bd_intf_net -intf_net ilmb_bram_if_cntlr_0_BRAM_PORT [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins ilmb_bram_if_cntlr_0/BRAM_PORT]
  connect_bd_intf_net -intf_net mdm_USER2_0_BOOT_LMB_0 [get_bd_intf_pins mdm_USER2_0_BOOT_LMB_0_in] [get_bd_intf_pins dlmb_bram_if_cntlr_0/SLMB1]

  # Create port connections
  connect_bd_net -net LMB_Clk_1 [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr_0/LMB_Clk] [get_bd_pins dlmb_v10_0/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr_0/LMB_Clk] [get_bd_pins ilmb_v10_1/LMB_Clk]
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr_0/LMB_Rst] [get_bd_pins dlmb_v10_0/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr_0/LMB_Rst] [get_bd_pins ilmb_v10_1/SYS_Rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:lmb_rtl:1.0 mdm_USER2_0_microblaze_LMB_1_in


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
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net dlmb_bram_if_cntlr_BRAM_PORT [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net ilmb_bram_if_cntlr_BRAM_PORT [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net mdm_USER2_0_microblaze_LMB_1 [get_bd_intf_pins mdm_USER2_0_microblaze_LMB_1_in] [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB1]
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: USER_dbg
proc create_hier_cell_USER_dbg { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_USER_dbg() - Empty argument(s)!"}
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
  create_bd_pin -dir O -from 13 -to 0 USER_dbg_out
  create_bd_pin -dir I -from 0 -to 0 decoder_rx09_active
  create_bd_pin -dir I -from 0 -to 0 decoder_rx09_sql_open

  # Create instance: USER_dbg_out_xlconcat_0, and set properties
  set USER_dbg_out_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 USER_dbg_out_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN10_WIDTH {1} \
   CONFIG.IN11_WIDTH {1} \
   CONFIG.IN12_WIDTH {2} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {12} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {1} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {1} \
   CONFIG.NUM_PORTS {3} \
 ] $USER_dbg_out_xlconcat_0

  # Create port connections
  connect_bd_net -net USER_dbg_out_xlconcat_0_dout [get_bd_pins USER_dbg_out] [get_bd_pins USER_dbg_out_xlconcat_0/dout]
  connect_bd_net -net decoder_rx09_active_1 [get_bd_pins decoder_rx09_active] [get_bd_pins USER_dbg_out_xlconcat_0/In1]
  connect_bd_net -net decoder_rx09_sql_open_1 [get_bd_pins decoder_rx09_sql_open] [get_bd_pins USER_dbg_out_xlconcat_0/In0]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: UART0
proc create_hier_cell_UART0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_UART0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART0


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 UART0EXT_CTSn
  create_bd_pin -dir O -from 0 -to 0 UART0EXT_DCDn
  create_bd_pin -dir O -from 0 -to 0 UART0EXT_DSRn
  create_bd_pin -dir I -from 0 -to 0 UART0EXT_DTRn
  create_bd_pin -dir O -from 0 -to 0 UART0EXT_RIn
  create_bd_pin -dir I -from 0 -to 0 UART0EXT_RTSn
  create_bd_pin -dir O -from 0 -to 0 -type rst UART0_rst_n
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -type intr interrupt
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I -type clk slowest_sync_clk

  # Create instance: UART0_xlconcat_1, and set properties
  set UART0_xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 UART0_xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {2} \
 ] $UART0_xlconcat_1

  # Create instance: UART0_xlslice_0, and set properties
  set UART0_xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 UART0_xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {4} \
 ] $UART0_xlslice_0

  # Create instance: UART0_xlslice_1, and set properties
  set UART0_xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 UART0_xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $UART0_xlslice_1

  # Create instance: UART0_xlslice_2, and set properties
  set UART0_xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 UART0_xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $UART0_xlslice_2

  # Create instance: UART0_xlslice_3, and set properties
  set UART0_xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 UART0_xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $UART0_xlslice_3

  # Create instance: axi_UART0_gpio_0, and set properties
  set axi_UART0_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_UART0_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x0000000f} \
   CONFIG.C_GPIO2_WIDTH {2} \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_UART0_gpio_0

  # Create instance: axi_UART0_uartlite_0, and set properties
  set axi_UART0_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_UART0_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.UARTLITE_BOARD_INTERFACE {UART0} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_UART0_uartlite_0

  # Create instance: rst_mig_7series_0_12M, and set properties
  set rst_mig_7series_0_12M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_12M ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_UART0_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins axi_UART0_uartlite_0/S_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins UART0] [get_bd_intf_pins axi_UART0_uartlite_0/UART]

  # Create port connections
  connect_bd_net -net Din_1 [get_bd_pins UART0_xlslice_0/Din] [get_bd_pins UART0_xlslice_1/Din] [get_bd_pins UART0_xlslice_2/Din] [get_bd_pins UART0_xlslice_3/Din] [get_bd_pins axi_UART0_gpio_0/gpio_io_o]
  connect_bd_net -net UART0EXT_DTRn_1 [get_bd_pins UART0EXT_DTRn] [get_bd_pins UART0_xlconcat_1/In1]
  connect_bd_net -net UART0EXT_RTSn_1 [get_bd_pins UART0EXT_RTSn] [get_bd_pins UART0_xlconcat_1/In0]
  connect_bd_net -net UART0_xlconcat_1_dout [get_bd_pins UART0_xlconcat_1/dout] [get_bd_pins axi_UART0_gpio_0/gpio2_io_i]
  connect_bd_net -net UART0_xlslice_0_Dout [get_bd_pins UART0EXT_CTSn] [get_bd_pins UART0_xlslice_0/Dout]
  connect_bd_net -net UART0_xlslice_1_Dout [get_bd_pins UART0EXT_DSRn] [get_bd_pins UART0_xlslice_1/Dout]
  connect_bd_net -net UART0_xlslice_2_Dout [get_bd_pins UART0EXT_DCDn] [get_bd_pins UART0_xlslice_2/Dout]
  connect_bd_net -net UART0_xlslice_3_Dout [get_bd_pins UART0EXT_RIn] [get_bd_pins UART0_xlslice_3/Dout]
  connect_bd_net -net axi_UART0_gpio_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_UART0_gpio_0/ip2intc_irpt]
  connect_bd_net -net axi_UART0_uartlite_0_interrupt [get_bd_pins interrupt] [get_bd_pins axi_UART0_uartlite_0/interrupt]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins rst_mig_7series_0_12M/ext_reset_in]
  connect_bd_net -net rst_mig_7series_0_12M_peripheral_aresetn [get_bd_pins UART0_rst_n] [get_bd_pins rst_mig_7series_0_12M/peripheral_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_UART0_gpio_0/s_axi_aclk] [get_bd_pins axi_UART0_uartlite_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_UART0_gpio_0/s_axi_aresetn] [get_bd_pins axi_UART0_uartlite_0/s_axi_aresetn]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins slowest_sync_clk] [get_bd_pins rst_mig_7series_0_12M/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SCOPE
proc create_hier_cell_SCOPE { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_SCOPE() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1


  # Create pins
  create_bd_pin -dir I -type clk CLK1B_CW_0_clk_out3_Scope_RefClk
  create_bd_pin -dir I -from 0 -to 0 Dbg_RMII_PHY_M_0_crs_dv
  create_bd_pin -dir I -from 1 -to 0 Dbg_RMII_PHY_M_0_rxd
  create_bd_pin -dir I ETH0_m_mii_tx_en
  create_bd_pin -dir I ETH0_m_mii_tx_er
  create_bd_pin -dir I -from 3 -to 0 ETH0_m_mii_txd
  create_bd_pin -dir I ETH0_s_mii_col
  create_bd_pin -dir I ETH0_s_mii_crs
  create_bd_pin -dir I -from 0 -to 0 ETH0_s_mii_rx_clk
  create_bd_pin -dir I ETH0_s_mii_rx_dv
  create_bd_pin -dir I ETH0_s_mii_rx_er
  create_bd_pin -dir I -from 3 -to 0 ETH0_s_mii_rxd
  create_bd_pin -dir I -from 0 -to 0 ETH0_s_mii_tx_clk
  create_bd_pin -dir I -type rst SCLR
  create_bd_pin -dir O SCOPE_FSM_FIFO_RdEmpty
  create_bd_pin -dir I SCOPE_FSM_FIFO_RdEn
  create_bd_pin -dir O SCOPE_FSM_FIFO_RdValid
  create_bd_pin -dir I SCOPE_FSM_FIFO_Rst
  create_bd_pin -dir I SCOPE_FSM_FIFO_WrEn
  create_bd_pin -dir O SCOPE_FSM_FIFO_WrFull
  create_bd_pin -dir O SCOPE_FSM_FIFO_rd_rst_busy
  create_bd_pin -dir O SCOPE_FSM_FIFO_wr_rst_busy
  create_bd_pin -dir O -from 31 -to 0 SCOPE_FSM_GPIO0_Out
  create_bd_pin -dir I -from 31 -to 0 SCOPE_FSM_GPIO1_In
  create_bd_pin -dir I -type ce SCOPE_FSM_Timebase_CE
  create_bd_pin -dir O -from 47 -to 0 -type data SCOPE_FSM_TrigSrc
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: SCOPE_GPIO3_Out_xlslice_63downto32, and set properties
  set SCOPE_GPIO3_Out_xlslice_63downto32 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SCOPE_GPIO3_Out_xlslice_63downto32 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {63} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $SCOPE_GPIO3_Out_xlslice_63downto32

  # Create instance: SCOPE_GPIO4_Out_xlslice_31downto0, and set properties
  set SCOPE_GPIO4_Out_xlslice_31downto0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SCOPE_GPIO4_Out_xlslice_31downto0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $SCOPE_GPIO4_Out_xlslice_31downto0

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_0, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_0

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_1, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_1 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_1

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_2, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_2 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00} \
   CONFIG.DefaultData {00} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {00} \
   CONFIG.Width {2} \
 ] $SCOPE_Signals_CDC_c_shift_ram_2

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_7, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_7 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_7

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_8, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_8 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_8

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_9, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_9 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_9

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_10, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_10 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000} \
   CONFIG.DefaultData {0000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0000} \
   CONFIG.Width {4} \
 ] $SCOPE_Signals_CDC_c_shift_ram_10

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_11, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_11 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_11

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_12, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_12 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_12

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_13, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_13 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_13

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_14, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_14 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000} \
   CONFIG.DefaultData {0000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0000} \
   CONFIG.Width {4} \
 ] $SCOPE_Signals_CDC_c_shift_ram_14

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_15, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_15 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_15

  # Create instance: SCOPE_Signals_CDC_c_shift_ram_16, and set properties
  set SCOPE_Signals_CDC_c_shift_ram_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 SCOPE_Signals_CDC_c_shift_ram_16 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $SCOPE_Signals_CDC_c_shift_ram_16

  # Create instance: SCOPE_Signals_xlconcat_0, and set properties
  set SCOPE_Signals_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 SCOPE_Signals_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {48} \
   CONFIG.IN1_WIDTH {16} \
   CONFIG.IN2_WIDTH {16} \
   CONFIG.NUM_PORTS {2} \
 ] $SCOPE_Signals_xlconcat_0

  # Create instance: SCOPE_Signals_xlconcat_1, and set properties
  set SCOPE_Signals_xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 SCOPE_Signals_xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN10_WIDTH {4} \
   CONFIG.IN11_WIDTH {1} \
   CONFIG.IN12_WIDTH {1} \
   CONFIG.IN13_WIDTH {1} \
   CONFIG.IN14_WIDTH {4} \
   CONFIG.IN15_WIDTH {1} \
   CONFIG.IN16_WIDTH {1} \
   CONFIG.IN17_WIDTH {23} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {2} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {2} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {1} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {1} \
   CONFIG.NUM_PORTS {18} \
 ] $SCOPE_Signals_xlconcat_1

  # Create instance: SCOPE_Timebase_c_counter_binary_0, and set properties
  set SCOPE_Timebase_c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 SCOPE_Timebase_c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Output_Width {16} \
   CONFIG.SCLR {true} \
 ] $SCOPE_Timebase_c_counter_binary_0

  # Create instance: SCOPE_axi_gpio_0, and set properties
  set SCOPE_axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SCOPE_axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT {0xFFFF0000} \
 ] $SCOPE_axi_gpio_0

  # Create instance: SCOPE_axi_gpio_1, and set properties
  set SCOPE_axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SCOPE_axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $SCOPE_axi_gpio_1

  # Create instance: SCOPE_fifo_generator_0, and set properties
  set SCOPE_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 SCOPE_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Full_Flag {true} \
   CONFIG.Data_Count_Width {10} \
   CONFIG.Empty_Threshold_Assert_Value_rach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {1022} \
   CONFIG.Enable_Reset_Synchronization {true} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {1021} \
   CONFIG.Full_Threshold_Assert_Value_rach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wrch {1023} \
   CONFIG.Full_Threshold_Negate_Value {1020} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {64} \
   CONFIG.Input_Depth {1024} \
   CONFIG.Output_Data_Width {64} \
   CONFIG.Output_Depth {1024} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_ONLY} \
   CONFIG.Read_Data_Count_Width {10} \
   CONFIG.Reset_Pin {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {false} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Data_Count_Width {10} \
 ] $SCOPE_fifo_generator_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins SCOPE_axi_gpio_1/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M15_AXI_0 [get_bd_intf_pins S_AXI] [get_bd_intf_pins SCOPE_axi_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net CLK1B_CW_0_clk_out3_Scope_RefClk_0 [get_bd_pins CLK1B_CW_0_clk_out3_Scope_RefClk] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_0/D]
  connect_bd_net -net Dbg_RMII_PHY_M_0_crs_dv_1 [get_bd_pins Dbg_RMII_PHY_M_0_crs_dv] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_1/D]
  connect_bd_net -net Dbg_RMII_PHY_M_0_rxd_1 [get_bd_pins Dbg_RMII_PHY_M_0_rxd] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_2/D]
  connect_bd_net -net ETH0_m_mii_tx_en_0 [get_bd_pins ETH0_m_mii_tx_en] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_13/D]
  connect_bd_net -net ETH0_m_mii_tx_er_0 [get_bd_pins ETH0_m_mii_tx_er] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_15/D]
  connect_bd_net -net ETH0_m_mii_txd_1 [get_bd_pins ETH0_m_mii_txd] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_14/D]
  connect_bd_net -net ETH0_s_mii_col_0 [get_bd_pins ETH0_s_mii_col] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_7/D]
  connect_bd_net -net ETH0_s_mii_crs_0 [get_bd_pins ETH0_s_mii_crs] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_8/D]
  connect_bd_net -net ETH0_s_mii_rx_clk_0 [get_bd_pins ETH0_s_mii_rx_clk] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_12/D]
  connect_bd_net -net ETH0_s_mii_rx_dv_0 [get_bd_pins ETH0_s_mii_rx_dv] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_9/D]
  connect_bd_net -net ETH0_s_mii_rx_er_0 [get_bd_pins ETH0_s_mii_rx_er] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_11/D]
  connect_bd_net -net ETH0_s_mii_rxd_1 [get_bd_pins ETH0_s_mii_rxd] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_10/D]
  connect_bd_net -net ETH0_s_mii_tx_clk_0 [get_bd_pins ETH0_s_mii_tx_clk] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_16/D]
  connect_bd_net -net SCLR_1 [get_bd_pins SCLR] [get_bd_pins SCOPE_Timebase_c_counter_binary_0/SCLR]
  connect_bd_net -net SCOPE_FSM_FIFO_RdEn_1 [get_bd_pins SCOPE_FSM_FIFO_RdEn] [get_bd_pins SCOPE_fifo_generator_0/rd_en]
  connect_bd_net -net SCOPE_FSM_FIFO_Rst_1 [get_bd_pins SCOPE_FSM_FIFO_Rst] [get_bd_pins SCOPE_fifo_generator_0/rst]
  connect_bd_net -net SCOPE_FSM_FIFO_WrEn_0 [get_bd_pins SCOPE_FSM_FIFO_WrEn] [get_bd_pins SCOPE_fifo_generator_0/wr_en]
  connect_bd_net -net SCOPE_FSM_GPIO1_In_1 [get_bd_pins SCOPE_FSM_GPIO1_In] [get_bd_pins SCOPE_axi_gpio_0/gpio2_io_i]
  connect_bd_net -net SCOPE_FSM_Timebase_CE_1 [get_bd_pins SCOPE_FSM_Timebase_CE] [get_bd_pins SCOPE_Timebase_c_counter_binary_0/CE]
  connect_bd_net -net SCOPE_GPIO3_Out_xlslice_63downto32_Dout [get_bd_pins SCOPE_GPIO3_Out_xlslice_63downto32/Dout] [get_bd_pins SCOPE_axi_gpio_1/gpio_io_i]
  connect_bd_net -net SCOPE_GPIO4_Out_xlslice_31downto0_Dout [get_bd_pins SCOPE_GPIO4_Out_xlslice_31downto0/Dout] [get_bd_pins SCOPE_axi_gpio_1/gpio2_io_i]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_0_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_0/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In0]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_10_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_10/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In10]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_11_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_11/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In11]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_12_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_12/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In12]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_13_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_13/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In13]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_14_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_14/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In14]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_15_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_15/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In15]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_16_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_16/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In16]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_1_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_1/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In1]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_2_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_2/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In2]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_7_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_7/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In7]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_8_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_8/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In8]
  connect_bd_net -net SCOPE_Signals_CDC_c_shift_ram_9_Q [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_9/Q] [get_bd_pins SCOPE_Signals_xlconcat_1/In9]
  connect_bd_net -net SCOPE_Signals_xlconcat_0_dout [get_bd_pins SCOPE_Signals_xlconcat_0/dout] [get_bd_pins SCOPE_fifo_generator_0/din]
  connect_bd_net -net SCOPE_Signals_xlconcat_1_dout [get_bd_pins SCOPE_FSM_TrigSrc] [get_bd_pins SCOPE_Signals_xlconcat_0/In0] [get_bd_pins SCOPE_Signals_xlconcat_1/dout]
  connect_bd_net -net SCOPE_Timebase_c_counter_binary_0_Q [get_bd_pins SCOPE_Signals_xlconcat_0/In1] [get_bd_pins SCOPE_Timebase_c_counter_binary_0/Q]
  connect_bd_net -net SCOPE_axi_gpio_0_gpio_io_o [get_bd_pins SCOPE_FSM_GPIO0_Out] [get_bd_pins SCOPE_axi_gpio_0/gpio_io_o]
  connect_bd_net -net SCOPE_fifo_generator_0_almost_full [get_bd_pins SCOPE_FSM_FIFO_WrFull] [get_bd_pins SCOPE_fifo_generator_0/almost_full]
  connect_bd_net -net SCOPE_fifo_generator_0_dout [get_bd_pins SCOPE_GPIO3_Out_xlslice_63downto32/Din] [get_bd_pins SCOPE_GPIO4_Out_xlslice_31downto0/Din] [get_bd_pins SCOPE_fifo_generator_0/dout]
  connect_bd_net -net SCOPE_fifo_generator_0_empty [get_bd_pins SCOPE_FSM_FIFO_RdEmpty] [get_bd_pins SCOPE_fifo_generator_0/empty]
  connect_bd_net -net SCOPE_fifo_generator_0_rd_rst_busy [get_bd_pins SCOPE_FSM_FIFO_rd_rst_busy] [get_bd_pins SCOPE_fifo_generator_0/rd_rst_busy]
  connect_bd_net -net SCOPE_fifo_generator_0_valid [get_bd_pins SCOPE_FSM_FIFO_RdValid] [get_bd_pins SCOPE_fifo_generator_0/valid]
  connect_bd_net -net SCOPE_fifo_generator_0_wr_rst_busy [get_bd_pins SCOPE_FSM_FIFO_wr_rst_busy] [get_bd_pins SCOPE_fifo_generator_0/wr_rst_busy]
  connect_bd_net -net microblaze_0_Clk_100MHz_0 [get_bd_pins s_axi_aclk] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_0/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_1/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_10/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_11/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_12/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_13/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_14/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_15/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_16/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_2/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_7/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_8/CLK] [get_bd_pins SCOPE_Signals_CDC_c_shift_ram_9/CLK] [get_bd_pins SCOPE_Timebase_c_counter_binary_0/CLK] [get_bd_pins SCOPE_axi_gpio_0/s_axi_aclk] [get_bd_pins SCOPE_axi_gpio_1/s_axi_aclk] [get_bd_pins SCOPE_fifo_generator_0/rd_clk] [get_bd_pins SCOPE_fifo_generator_0/wr_clk]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn_0 [get_bd_pins s_axi_aresetn] [get_bd_pins SCOPE_axi_gpio_0/s_axi_aresetn] [get_bd_pins SCOPE_axi_gpio_1/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ROTENC_decoder
proc create_hier_cell_ROTENC_decoder { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ROTENC_decoder() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -from 0 -to 0 BOARD_ROTENC_PUSH
  create_bd_pin -dir I -type clk CLK
  create_bd_pin -dir O -from 31 -to 0 -type data Q
  create_bd_pin -dir I -type data SINIT
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type ce rotenc_dec_cnt_en
  create_bd_pin -dir I -type data rotenc_dec_cnt_up_dwn
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: ROTENC_counter_32bit_0, and set properties
  set ROTENC_counter_32bit_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 ROTENC_counter_32bit_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Count_Mode {UPDOWN} \
   CONFIG.Load {false} \
   CONFIG.Output_Width {32} \
   CONFIG.SINIT {true} \
   CONFIG.SINIT_Value {40000000} \
 ] $ROTENC_counter_32bit_0

  # Create instance: axi_ROTENC_gpio_0, and set properties
  set axi_ROTENC_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_ROTENC_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT_2 {0xFFFFFFFF} \
 ] $axi_ROTENC_gpio_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_ROTENC_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net BOARD_ROTENC_PUSH_1 [get_bd_pins BOARD_ROTENC_PUSH] [get_bd_pins axi_ROTENC_gpio_0/gpio2_io_i]
  connect_bd_net -net CLK_1 [get_bd_pins CLK] [get_bd_pins ROTENC_counter_32bit_0/CLK] [get_bd_pins axi_ROTENC_gpio_0/s_axi_aclk]
  connect_bd_net -net ROTENC_counter_32bit_0_Q [get_bd_pins Q] [get_bd_pins ROTENC_counter_32bit_0/Q] [get_bd_pins axi_ROTENC_gpio_0/gpio_io_i]
  connect_bd_net -net SINIT_1 [get_bd_pins SINIT] [get_bd_pins ROTENC_counter_32bit_0/SINIT]
  connect_bd_net -net axi_ROTENC_gpio_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_ROTENC_gpio_0/ip2intc_irpt]
  connect_bd_net -net rotenc_dec_cnt_en_1 [get_bd_pins rotenc_dec_cnt_en] [get_bd_pins ROTENC_counter_32bit_0/CE]
  connect_bd_net -net rotenc_dec_cnt_up_dwn_1 [get_bd_pins rotenc_dec_cnt_up_dwn] [get_bd_pins ROTENC_counter_32bit_0/UP]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_ROTENC_gpio_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PWM_lights
proc create_hier_cell_PWM_lights { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PWM_lights() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 LCD_BL
  create_bd_pin -dir O -from 0 -to 0 LCD_rstn
  create_bd_pin -dir O -from 0 -to 0 LED_RGB_blue
  create_bd_pin -dir O -from 0 -to 0 LED_RGB_green
  create_bd_pin -dir O -from 0 -to 0 LED_RGB_red
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: LCD_BL_compare_0, and set properties
  set LCD_BL_compare_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 LCD_BL_compare_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $LCD_BL_compare_0

  # Create instance: LCD_BL_xlslice_8to8_0, and set properties
  set LCD_BL_xlslice_8to8_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LCD_BL_xlslice_8to8_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $LCD_BL_xlslice_8to8_0

  # Create instance: PWM_GPIO2_xlconcat_0, and set properties
  set PWM_GPIO2_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 PWM_GPIO2_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {16} \
   CONFIG.IN1_WIDTH {16} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {12} \
   CONFIG.NUM_PORTS {2} \
 ] $PWM_GPIO2_xlconcat_0

  # Create instance: PWM_GPIO2_xlslice_15to0_0, and set properties
  set PWM_GPIO2_xlslice_15to0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_GPIO2_xlslice_15to0_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {16} \
 ] $PWM_GPIO2_xlslice_15to0_0

  # Create instance: PWM_GPIO_xlslice_0to0_0, and set properties
  set PWM_GPIO_xlslice_0to0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_GPIO_xlslice_0to0_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $PWM_GPIO_xlslice_0to0_0

  # Create instance: PWM_counter_binary_0, and set properties
  set PWM_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 PWM_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Implementation {DSP48} \
   CONFIG.Output_Width {18} \
 ] $PWM_counter_binary_0

  # Create instance: PWM_ctr_xlslice_17to10_0, and set properties
  set PWM_ctr_xlslice_17to10_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_ctr_xlslice_17to10_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {17} \
   CONFIG.DIN_TO {10} \
   CONFIG.DIN_WIDTH {18} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_ctr_xlslice_17to10_0

  # Create instance: PWM_gpio_xlslice_15to8_0, and set properties
  set PWM_gpio_xlslice_15to8_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_gpio_xlslice_15to8_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_gpio_xlslice_15to8_0

  # Create instance: PWM_gpio_xlslice_23to16_0, and set properties
  set PWM_gpio_xlslice_23to16_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_gpio_xlslice_23to16_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {23} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_gpio_xlslice_23to16_0

  # Create instance: PWM_gpio_xlslice_31to24_0, and set properties
  set PWM_gpio_xlslice_31to24_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_gpio_xlslice_31to24_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_gpio_xlslice_31to24_0

  # Create instance: PWM_gpio_xlslice_7to0_0, and set properties
  set PWM_gpio_xlslice_7to0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_gpio_xlslice_7to0_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_gpio_xlslice_7to0_0

  # Create instance: RGB_blue_compare_0, and set properties
  set RGB_blue_compare_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 RGB_blue_compare_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $RGB_blue_compare_0

  # Create instance: RGB_blue_xlslice_8to8_0, and set properties
  set RGB_blue_xlslice_8to8_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RGB_blue_xlslice_8to8_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $RGB_blue_xlslice_8to8_0

  # Create instance: RGB_green_compare_0, and set properties
  set RGB_green_compare_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 RGB_green_compare_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $RGB_green_compare_0

  # Create instance: RGB_green_xlslice_8to8_0, and set properties
  set RGB_green_xlslice_8to8_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RGB_green_xlslice_8to8_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $RGB_green_xlslice_8to8_0

  # Create instance: RGB_red_compare_0, and set properties
  set RGB_red_compare_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 RGB_red_compare_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $RGB_red_compare_0

  # Create instance: RGB_red_xlslice_8to8_0, and set properties
  set RGB_red_xlslice_8to8_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RGB_red_xlslice_8to8_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $RGB_red_xlslice_8to8_0

  # Create instance: axi_PWM_gpio_0, and set properties
  set axi_PWM_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_PWM_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x20010101} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT_2 {0x0000FFFF} \
 ] $axi_PWM_gpio_0

  # Create instance: xlconstant_0_len16, and set properties
  set xlconstant_0_len16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0_len16 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_0_len16

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_PWM_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net LCD_BL_compare_0_S [get_bd_pins LCD_BL_compare_0/S] [get_bd_pins LCD_BL_xlslice_8to8_0/Din]
  connect_bd_net -net LCD_BL_xlslice_0_Dout [get_bd_pins LCD_BL] [get_bd_pins LCD_BL_xlslice_8to8_0/Dout]
  connect_bd_net -net PWM_GPIO2_xlconcat_0_dout [get_bd_pins PWM_GPIO2_xlconcat_0/dout] [get_bd_pins axi_PWM_gpio_0/gpio2_io_i]
  connect_bd_net -net PWM_GPIO2_xlslice_15to0_0_Dout [get_bd_pins PWM_GPIO2_xlconcat_0/In0] [get_bd_pins PWM_GPIO2_xlslice_15to0_0/Dout]
  connect_bd_net -net PWM_GPIO_xlslice_1_Dout [get_bd_pins LCD_rstn] [get_bd_pins PWM_GPIO_xlslice_0to0_0/Dout]
  connect_bd_net -net PWM_counter_binary_0_Q [get_bd_pins PWM_counter_binary_0/Q] [get_bd_pins PWM_ctr_xlslice_17to10_0/Din]
  connect_bd_net -net PWM_ctr_xlslice_0_Dout [get_bd_pins LCD_BL_compare_0/A] [get_bd_pins PWM_ctr_xlslice_17to10_0/Dout] [get_bd_pins RGB_blue_compare_0/A] [get_bd_pins RGB_green_compare_0/A] [get_bd_pins RGB_red_compare_0/A]
  connect_bd_net -net PWM_gpio_xlslice_15to8_0_Dout [get_bd_pins PWM_gpio_xlslice_15to8_0/Dout] [get_bd_pins RGB_green_compare_0/B]
  connect_bd_net -net PWM_gpio_xlslice_21to16_0_Dout [get_bd_pins PWM_gpio_xlslice_23to16_0/Dout] [get_bd_pins RGB_blue_compare_0/B]
  connect_bd_net -net PWM_gpio_xlslice_31to24_0_Dout [get_bd_pins LCD_BL_compare_0/B] [get_bd_pins PWM_gpio_xlslice_31to24_0/Dout]
  connect_bd_net -net PWM_gpio_xlslice_7to0_0_Dout [get_bd_pins PWM_gpio_xlslice_7to0_0/Dout] [get_bd_pins RGB_red_compare_0/B]
  connect_bd_net -net RGB_blue_compare_0_S [get_bd_pins RGB_blue_compare_0/S] [get_bd_pins RGB_blue_xlslice_8to8_0/Din]
  connect_bd_net -net RGB_blue_xlslice_0_Dout [get_bd_pins LED_RGB_blue] [get_bd_pins RGB_blue_xlslice_8to8_0/Dout]
  connect_bd_net -net RGB_green_compare_0_S [get_bd_pins RGB_green_compare_0/S] [get_bd_pins RGB_green_xlslice_8to8_0/Din]
  connect_bd_net -net RGB_green_xlslice_0_Dout [get_bd_pins LED_RGB_green] [get_bd_pins RGB_green_xlslice_8to8_0/Dout]
  connect_bd_net -net RGB_red_compare_0_S [get_bd_pins RGB_red_compare_0/S] [get_bd_pins RGB_red_xlslice_8to8_0/Din]
  connect_bd_net -net RGB_red_xlslice_8to8_0_Dout [get_bd_pins LED_RGB_red] [get_bd_pins RGB_red_xlslice_8to8_0/Dout]
  connect_bd_net -net axi_PWM_gpio_0_gpio2_io_o [get_bd_pins PWM_GPIO2_xlslice_15to0_0/Din] [get_bd_pins PWM_GPIO_xlslice_0to0_0/Din] [get_bd_pins axi_PWM_gpio_0/gpio2_io_o]
  connect_bd_net -net axi_PWM_gpio_0_gpio_io_o [get_bd_pins PWM_gpio_xlslice_15to8_0/Din] [get_bd_pins PWM_gpio_xlslice_23to16_0/Din] [get_bd_pins PWM_gpio_xlslice_31to24_0/Din] [get_bd_pins PWM_gpio_xlslice_7to0_0/Din] [get_bd_pins axi_PWM_gpio_0/gpio_io_o]
  connect_bd_net -net axi_PWM_gpio_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_PWM_gpio_0/ip2intc_irpt]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins LCD_BL_compare_0/CLK] [get_bd_pins PWM_counter_binary_0/CLK] [get_bd_pins RGB_blue_compare_0/CLK] [get_bd_pins RGB_green_compare_0/CLK] [get_bd_pins RGB_red_compare_0/CLK] [get_bd_pins axi_PWM_gpio_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_PWM_gpio_0/s_axi_aresetn]
  connect_bd_net -net xlconstant_0_len15_dout [get_bd_pins PWM_GPIO2_xlconcat_0/In1] [get_bd_pins xlconstant_0_len16/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: INT_ctrl
proc create_hier_cell_INT_ctrl { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_INT_ctrl() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:mbinterrupt_rtl:1.0 interrupt

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir I -from 0 -to 0 In1
  create_bd_pin -dir I -from 0 -to 0 In2
  create_bd_pin -dir I -from 0 -to 0 In3
  create_bd_pin -dir I -from 0 -to 0 In4
  create_bd_pin -dir I -from 0 -to 0 In5
  create_bd_pin -dir I -from 0 -to 0 In6
  create_bd_pin -dir I -from 0 -to 0 In7
  create_bd_pin -dir I -from 0 -to 0 In8
  create_bd_pin -dir I -from 0 -to 0 In10
  create_bd_pin -dir I -from 0 -to 0 -type intr In11
  create_bd_pin -dir I -from 0 -to 0 PLL_int
  create_bd_pin -dir I -type clk processor_clk
  create_bd_pin -dir I -type rst processor_rst
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {12} \
 ] $microblaze_0_xlconcat

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axi] [get_bd_intf_pins microblaze_0_axi_intc/s_axi]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins interrupt] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net In0_1 [get_bd_pins In0] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net In10_1 [get_bd_pins In10] [get_bd_pins microblaze_0_xlconcat/In10]
  connect_bd_net -net In11_1 [get_bd_pins In11] [get_bd_pins microblaze_0_xlconcat/In11]
  connect_bd_net -net In1_1 [get_bd_pins In1] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net In2_1 [get_bd_pins In2] [get_bd_pins microblaze_0_xlconcat/In2]
  connect_bd_net -net In3_1 [get_bd_pins In3] [get_bd_pins microblaze_0_xlconcat/In3]
  connect_bd_net -net In4_1 [get_bd_pins In4] [get_bd_pins microblaze_0_xlconcat/In4]
  connect_bd_net -net In5_1 [get_bd_pins In5] [get_bd_pins microblaze_0_xlconcat/In5]
  connect_bd_net -net In6_1 [get_bd_pins In6] [get_bd_pins microblaze_0_xlconcat/In6]
  connect_bd_net -net In7_1 [get_bd_pins In7] [get_bd_pins microblaze_0_xlconcat/In7]
  connect_bd_net -net In8_1 [get_bd_pins In8] [get_bd_pins microblaze_0_xlconcat/In8]
  connect_bd_net -net PLL_int_1 [get_bd_pins PLL_int] [get_bd_pins microblaze_0_xlconcat/In9]
  connect_bd_net -net microblaze_0_xlconcat_dout [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net processor_clk_1 [get_bd_pins processor_clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk]
  connect_bd_net -net processor_rst_1 [get_bd_pins processor_rst] [get_bd_pins microblaze_0_axi_intc/processor_rst]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: EUI48
proc create_hier_cell_EUI48 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_EUI48() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -from 0 -to 0 EUI48_FSM_run
  create_bd_pin -dir O -from 0 -to 0 EUI48_FSM_start
  create_bd_pin -dir I -from 47 -to 0 EUI48_data
  create_bd_pin -dir I -type clk microblaze_0_Clk_100MHz_o
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: EUI48_xlconcat_0, and set properties
  set EUI48_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 EUI48_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {16} \
   CONFIG.IN1_WIDTH {14} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.NUM_PORTS {4} \
 ] $EUI48_xlconcat_0

  # Create instance: EUI48_xlconstant_len14_val0, and set properties
  set EUI48_xlconstant_len14_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 EUI48_xlconstant_len14_val0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {14} \
 ] $EUI48_xlconstant_len14_val0

  # Create instance: EUI48_xlconstant_len1_val0, and set properties
  set EUI48_xlconstant_len1_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 EUI48_xlconstant_len1_val0 ]

  # Create instance: EUI48_xlslice_31to0_0, and set properties
  set EUI48_xlslice_31to0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 EUI48_xlslice_31to0_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {32} \
 ] $EUI48_xlslice_31to0_0

  # Create instance: EUI48_xlslice_31to31_0, and set properties
  set EUI48_xlslice_31to31_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 EUI48_xlslice_31to31_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {31} \
   CONFIG.DOUT_WIDTH {1} \
 ] $EUI48_xlslice_31to31_0

  # Create instance: EUI48_xlslice_47to32_0, and set properties
  set EUI48_xlslice_47to32_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 EUI48_xlslice_47to32_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {47} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {16} \
 ] $EUI48_xlslice_47to32_0

  # Create instance: axi_EUI48_gpio_0, and set properties
  set axi_EUI48_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_EUI48_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {0} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT {0x0000FFFF} \
   CONFIG.C_TRI_DEFAULT_2 {0xFFFFFFFF} \
 ] $axi_EUI48_gpio_0

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_EUI48_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net EUI48_FSM_run_1 [get_bd_pins EUI48_FSM_run] [get_bd_pins EUI48_xlconcat_0/In2]
  connect_bd_net -net EUI48_data_1 [get_bd_pins EUI48_data] [get_bd_pins EUI48_xlslice_31to0_0/Din] [get_bd_pins EUI48_xlslice_47to32_0/Din]
  connect_bd_net -net EUI48_xlconcat_0_dout [get_bd_pins EUI48_xlconcat_0/dout] [get_bd_pins axi_EUI48_gpio_0/gpio_io_i]
  connect_bd_net -net EUI48_xlconstant_0_len16_dout [get_bd_pins EUI48_xlconcat_0/In1] [get_bd_pins EUI48_xlconstant_len14_val0/dout]
  connect_bd_net -net EUI48_xlconstant_len1_val0_dout [get_bd_pins EUI48_xlconcat_0/In3] [get_bd_pins EUI48_xlconstant_len1_val0/dout]
  connect_bd_net -net EUI48_xlslice_0_Dout [get_bd_pins EUI48_xlconcat_0/In0] [get_bd_pins EUI48_xlslice_47to32_0/Dout]
  connect_bd_net -net EUI48_xlslice_1_Dout [get_bd_pins EUI48_xlslice_31to0_0/Dout] [get_bd_pins axi_EUI48_gpio_0/gpio2_io_i]
  connect_bd_net -net EUI48_xlslice_31to31_0_Dout [get_bd_pins EUI48_FSM_start] [get_bd_pins EUI48_xlslice_31to31_0/Dout]
  connect_bd_net -net axi_EUI48_gpio_0_gpio_io_o [get_bd_pins EUI48_xlslice_31to31_0/Din] [get_bd_pins axi_EUI48_gpio_0/gpio_io_o]
  connect_bd_net -net microblaze_0_Clk_100MHz [get_bd_pins microblaze_0_Clk_100MHz_o] [get_bd_pins axi_EUI48_gpio_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_EUI48_gpio_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ETH0
proc create_hier_cell_ETH0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ETH0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 ETH0_MDIO_MDC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:rmii_rtl:1.0 RMII_PHY_M_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk CLK1B_50MHz_phy_clk_in
  create_bd_pin -dir O -from 0 -to 0 ETH0_DA_G_out
  create_bd_pin -dir O -from 0 -to 0 ETH0_DA_Y_out
  create_bd_pin -dir I -from 0 -to 0 ETH0_LINK_LED_in
  create_bd_pin -dir O -from 4 -to 0 -type data ETH0_MIIstatus_out
  create_bd_pin -dir O -from 3 -to 0 -type data ETH0_status_out
  create_bd_pin -dir I -type clk cfgmclk_pll_50MHz_in
  create_bd_pin -dir I dcm_locked_in
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -type intr ip2intc_irpt_out
  create_bd_pin -dir O m_mii_tx_en_out
  create_bd_pin -dir O -from 0 -to 0 m_mii_tx_er_out
  create_bd_pin -dir O -from 3 -to 0 m_mii_txd1_out
  create_bd_pin -dir O -from 3 -to 0 m_mii_txd_out
  create_bd_pin -dir I -type rst mb_debug_sys_rst_in
  create_bd_pin -dir O phy_rst_n_out
  create_bd_pin -dir I -type clk s_axi_aclk_in
  create_bd_pin -dir I -type rst s_axi_aresetn_in
  create_bd_pin -dir O s_mii_col_out
  create_bd_pin -dir O s_mii_crs_out
  create_bd_pin -dir O -type clk s_mii_rx_clk_out
  create_bd_pin -dir O s_mii_rx_dv_out
  create_bd_pin -dir O s_mii_rx_er_out
  create_bd_pin -dir O -from 3 -to 0 s_mii_rxd1_out
  create_bd_pin -dir O -from 3 -to 0 s_mii_rxd_out
  create_bd_pin -dir O -type clk s_mii_tx_clk_out

  # Create instance: ETH0_LEDs
  create_hier_cell_ETH0_LEDs $hier_obj ETH0_LEDs

  # Create instance: ETH0_LEDs_proc_sys_reset_0, and set properties
  set ETH0_LEDs_proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ETH0_LEDs_proc_sys_reset_0 ]

  # Create instance: ETH0_LEDs_xlconcat_0, and set properties
  set ETH0_LEDs_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ETH0_LEDs_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.NUM_PORTS {4} \
 ] $ETH0_LEDs_xlconcat_0

  # Create instance: ETH0_LEDstatus_CDC_c_shift_ram_0, and set properties
  set ETH0_LEDstatus_CDC_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 ETH0_LEDstatus_CDC_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000} \
   CONFIG.DefaultData {0000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0000} \
   CONFIG.Width {4} \
 ] $ETH0_LEDstatus_CDC_c_shift_ram_0

  # Create instance: ETH0_MIIstatus_CDC_c_shift_ram_0, and set properties
  set ETH0_MIIstatus_CDC_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 ETH0_MIIstatus_CDC_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00000} \
   CONFIG.DefaultData {00000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {00000} \
   CONFIG.Width {5} \
 ] $ETH0_MIIstatus_CDC_c_shift_ram_0

  # Create instance: ETH0_MIIstatus_xlconcat_0, and set properties
  set ETH0_MIIstatus_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ETH0_MIIstatus_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.NUM_PORTS {5} \
 ] $ETH0_MIIstatus_xlconcat_0

  # Create instance: ETH0_axi_ethernetlite_0, and set properties
  set ETH0_axi_ethernetlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 ETH0_axi_ethernetlite_0 ]
  set_property -dict [ list \
   CONFIG.C_S_AXI_PROTOCOL {AXI4} \
   CONFIG.MDIO_BOARD_INTERFACE {ETH0_MDIO_MDC} \
 ] $ETH0_axi_ethernetlite_0

  # Create instance: ETH0_mii_to_rmii_0, and set properties
  set ETH0_mii_to_rmii_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mii_to_rmii:2.0 ETH0_mii_to_rmii_0 ]
  set_property -dict [ list \
   CONFIG.C_FIXED_SPEED {1} \
   CONFIG.C_INCLUDE_BUF {0} \
   CONFIG.C_SPEED_100 {1} \
   CONFIG.RMII_BOARD_INTERFACE {ETH0_RMII} \
 ] $ETH0_mii_to_rmii_0

  # Create instance: ETH0_rxd_CDC_c_shift_ram_0, and set properties
  set ETH0_rxd_CDC_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 ETH0_rxd_CDC_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000} \
   CONFIG.DefaultData {0000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0000} \
   CONFIG.Width {4} \
 ] $ETH0_rxd_CDC_c_shift_ram_0

  # Create instance: ETH0_txd_CDC_c_shift_ram_0, and set properties
  set ETH0_txd_CDC_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 ETH0_txd_CDC_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000} \
   CONFIG.DefaultData {0000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0000} \
   CONFIG.Width {4} \
 ] $ETH0_txd_CDC_c_shift_ram_0

  # Create instance: ETH0_util_vector_logic_0, and set properties
  set ETH0_util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 ETH0_util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $ETH0_util_vector_logic_0

  # Create instance: ETH0_xlconstant_val0_len1, and set properties
  set ETH0_xlconstant_val0_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ETH0_xlconstant_val0_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $ETH0_xlconstant_val0_len1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins RMII_PHY_M_0] [get_bd_intf_pins ETH0_mii_to_rmii_0/RMII_PHY_M]
  connect_bd_intf_net -intf_net ETH0_axi_ethernetlite_0_MDIO [get_bd_intf_pins ETH0_MDIO_MDC] [get_bd_intf_pins ETH0_axi_ethernetlite_0/MDIO]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins ETH0_axi_ethernetlite_0/S_AXI]

  # Create port connections
  connect_bd_net -net CLK1B_50MHz_phy_clk_0 [get_bd_pins CLK1B_50MHz_phy_clk_in] [get_bd_pins ETH0_LEDs_proc_sys_reset_0/slowest_sync_clk] [get_bd_pins ETH0_mii_to_rmii_0/ref_clk]
  connect_bd_net -net ETH0_LEDs_ETH0_DA_G [get_bd_pins ETH0_DA_G_out] [get_bd_pins ETH0_LEDs/ETH0_DA_G]
  connect_bd_net -net ETH0_LEDs_ETH0_DA_Y [get_bd_pins ETH0_DA_Y_out] [get_bd_pins ETH0_LEDs/ETH0_DA_Y]
  connect_bd_net -net ETH0_LEDs_xlconcat_0_dout [get_bd_pins ETH0_LEDs_xlconcat_0/dout] [get_bd_pins ETH0_LEDstatus_CDC_c_shift_ram_0/D]
  connect_bd_net -net ETH0_LEDstatus_CDC_c_shift_ram_0_Q [get_bd_pins ETH0_status_out] [get_bd_pins ETH0_LEDstatus_CDC_c_shift_ram_0/Q]
  connect_bd_net -net ETH0_LINK_LED_0 [get_bd_pins ETH0_LINK_LED_in] [get_bd_pins ETH0_util_vector_logic_0/Op1]
  connect_bd_net -net ETH0_LINK_LED_inv_0 [get_bd_pins ETH0_LEDs/ETH0_LINK_LED_inv] [get_bd_pins ETH0_LEDs_xlconcat_0/In0] [get_bd_pins ETH0_util_vector_logic_0/Res]
  connect_bd_net -net ETH0_MIIstatus_CDC_c_shift_ram_0_Q [get_bd_pins ETH0_MIIstatus_out] [get_bd_pins ETH0_MIIstatus_CDC_c_shift_ram_0/Q]
  connect_bd_net -net ETH0_MIIstatus_xlconcat_0_dout [get_bd_pins ETH0_MIIstatus_CDC_c_shift_ram_0/D] [get_bd_pins ETH0_MIIstatus_xlconcat_0/dout]
  connect_bd_net -net ETH0_axi_ethernetlite_0_ip2intc_irpt [get_bd_pins ip2intc_irpt_out] [get_bd_pins ETH0_axi_ethernetlite_0/ip2intc_irpt]
  connect_bd_net -net ETH0_axi_ethernetlite_0_phy_rst_n [get_bd_pins phy_rst_n_out] [get_bd_pins ETH0_LEDs_xlconcat_0/In3] [get_bd_pins ETH0_axi_ethernetlite_0/phy_rst_n]
  connect_bd_net -net ETH0_mii_y_adapater_0_m_mii_tx_er [get_bd_pins m_mii_tx_er_out] [get_bd_pins ETH0_MIIstatus_xlconcat_0/In4] [get_bd_pins ETH0_mii_to_rmii_0/mac2rmii_tx_er] [get_bd_pins ETH0_xlconstant_val0_len1/dout]
  connect_bd_net -net ETH0_mii_y_adapater_0_m_mii_txd [get_bd_pins m_mii_txd1_out] [get_bd_pins ETH0_axi_ethernetlite_0/phy_tx_data] [get_bd_pins ETH0_mii_to_rmii_0/mac2rmii_txd] [get_bd_pins ETH0_txd_CDC_c_shift_ram_0/D]
  connect_bd_net -net ETH0_mii_y_adapater_0_s_mii_col [get_bd_pins s_mii_col_out] [get_bd_pins ETH0_MIIstatus_xlconcat_0/In2] [get_bd_pins ETH0_axi_ethernetlite_0/phy_col] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_col]
  connect_bd_net -net ETH0_mii_y_adapater_0_s_mii_crs [get_bd_pins s_mii_crs_out] [get_bd_pins ETH0_LEDs/s_mii_crs] [get_bd_pins ETH0_MIIstatus_xlconcat_0/In1] [get_bd_pins ETH0_axi_ethernetlite_0/phy_crs] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_crs]
  connect_bd_net -net ETH0_mii_y_adapater_0_s_mii_rx_er [get_bd_pins s_mii_rx_er_out] [get_bd_pins ETH0_MIIstatus_xlconcat_0/In3] [get_bd_pins ETH0_axi_ethernetlite_0/phy_rx_er] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_rx_er]
  connect_bd_net -net ETH0_mii_y_adapater_0_s_mii_rxd [get_bd_pins s_mii_rxd1_out] [get_bd_pins ETH0_axi_ethernetlite_0/phy_rx_data] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_rxd] [get_bd_pins ETH0_rxd_CDC_c_shift_ram_0/D]
  connect_bd_net -net ETH0_rxd_CDC_c_shift_ram_0_Q [get_bd_pins s_mii_rxd_out] [get_bd_pins ETH0_rxd_CDC_c_shift_ram_0/Q]
  connect_bd_net -net ETH0_txd_CDC_c_shift_ram_0_Q [get_bd_pins m_mii_txd_out] [get_bd_pins ETH0_txd_CDC_c_shift_ram_0/Q]
  connect_bd_net -net axi_ethernetlite_0_phy_tx_en [get_bd_pins m_mii_tx_en_out] [get_bd_pins ETH0_LEDs/m_mii_tx_en] [get_bd_pins ETH0_LEDs_xlconcat_0/In2] [get_bd_pins ETH0_axi_ethernetlite_0/phy_tx_en] [get_bd_pins ETH0_mii_to_rmii_0/mac2rmii_tx_en]
  connect_bd_net -net cfgmclk_pll_50MHz [get_bd_pins cfgmclk_pll_50MHz_in] [get_bd_pins ETH0_LEDstatus_CDC_c_shift_ram_0/CLK] [get_bd_pins ETH0_MIIstatus_CDC_c_shift_ram_0/CLK] [get_bd_pins ETH0_rxd_CDC_c_shift_ram_0/CLK] [get_bd_pins ETH0_txd_CDC_c_shift_ram_0/CLK]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked_in] [get_bd_pins ETH0_LEDs_proc_sys_reset_0/dcm_locked]
  connect_bd_net -net ext_reset_in_0 [get_bd_pins ext_reset_in] [get_bd_pins ETH0_LEDs_proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins mb_debug_sys_rst_in] [get_bd_pins ETH0_LEDs_proc_sys_reset_0/mb_debug_sys_rst]
  connect_bd_net -net mii_y_adapater_0_s_mii_rx_clk [get_bd_pins s_mii_rx_clk_out] [get_bd_pins ETH0_axi_ethernetlite_0/phy_rx_clk] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_rx_clk]
  connect_bd_net -net mii_y_adapater_0_s_mii_rx_dv [get_bd_pins s_mii_rx_dv_out] [get_bd_pins ETH0_LEDs_xlconcat_0/In1] [get_bd_pins ETH0_MIIstatus_xlconcat_0/In0] [get_bd_pins ETH0_axi_ethernetlite_0/phy_dv] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_rx_dv]
  connect_bd_net -net mii_y_adapater_0_s_mii_tx_clk [get_bd_pins s_mii_tx_clk_out] [get_bd_pins ETH0_axi_ethernetlite_0/phy_tx_clk] [get_bd_pins ETH0_mii_to_rmii_0/rmii2mac_tx_clk]
  connect_bd_net -net rst_n_0 [get_bd_pins ETH0_LEDs_proc_sys_reset_0/peripheral_aresetn] [get_bd_pins ETH0_mii_to_rmii_0/rst_n]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk_in] [get_bd_pins ETH0_LEDs/s_axi_aclk] [get_bd_pins ETH0_axi_ethernetlite_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn_in] [get_bd_pins ETH0_axi_ethernetlite_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CLOCK
proc create_hier_cell_CLOCK { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CLOCK() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -type clk CLK
  create_bd_pin -dir I -from 0 -to 0 -type data reset
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: CLOCK_CDC_c_shift_ram_0, and set properties
  set CLOCK_CDC_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 CLOCK_CDC_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $CLOCK_CDC_c_shift_ram_0

  # Create instance: CLOCK_CDC_c_shift_ram_1, and set properties
  set CLOCK_CDC_c_shift_ram_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 CLOCK_CDC_c_shift_ram_1 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0000000000000000000000000000000000000000000000000000000000000000} \
   CONFIG.DefaultData {0000000000000000000000000000000000000000000000000000000000000000} \
   CONFIG.Depth {2} \
   CONFIG.SyncInitVal {0000000000000000000000000000000000000000000000000000000000000000} \
   CONFIG.Width {64} \
 ] $CLOCK_CDC_c_shift_ram_1

  # Create instance: CLOCK_c_counter_binary_0, and set properties
  set CLOCK_c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 CLOCK_c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Output_Width {64} \
   CONFIG.SCLR {true} \
 ] $CLOCK_c_counter_binary_0

  # Create instance: CLOCK_xlslice_31to0, and set properties
  set CLOCK_xlslice_31to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CLOCK_xlslice_31to0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $CLOCK_xlslice_31to0

  # Create instance: CLOCK_xlslice_63to32, and set properties
  set CLOCK_xlslice_63to32 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CLOCK_xlslice_63to32 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {63} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $CLOCK_xlslice_63to32

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net CLK_1 [get_bd_pins CLK] [get_bd_pins CLOCK_CDC_c_shift_ram_0/CLK] [get_bd_pins CLOCK_c_counter_binary_0/CLK]
  connect_bd_net -net CLOCK_CDC_c_shift_ram_1_Q [get_bd_pins CLOCK_CDC_c_shift_ram_1/Q] [get_bd_pins CLOCK_xlslice_31to0/Din] [get_bd_pins CLOCK_xlslice_63to32/Din]
  connect_bd_net -net CLOCK_c_counter_binary_0_Q [get_bd_pins CLOCK_CDC_c_shift_ram_1/D] [get_bd_pins CLOCK_c_counter_binary_0/Q]
  connect_bd_net -net CLOCK_c_shift_ram_0_Q [get_bd_pins CLOCK_CDC_c_shift_ram_0/Q] [get_bd_pins CLOCK_c_counter_binary_0/SCLR]
  connect_bd_net -net CLOCK_xlslice_31to0_Dout [get_bd_pins CLOCK_xlslice_31to0/Dout] [get_bd_pins axi_gpio_0/gpio2_io_i]
  connect_bd_net -net CLOCK_xlslice_63to32_Dout [get_bd_pins CLOCK_xlslice_63to32/Dout] [get_bd_pins axi_gpio_0/gpio_io_i]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins CLOCK_CDC_c_shift_ram_0/D]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins CLOCK_CDC_c_shift_ram_1/CLK] [get_bd_pins axi_gpio_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CLK1B_CW_0
proc create_hier_cell_CLK1B_CW_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CLK1B_CW_0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_lite


  # Create pins
  create_bd_pin -dir I -type clk CLK1B_clk
  create_bd_pin -dir O -type clk clk_out1_RMII
  create_bd_pin -dir O -type clk clk_out2_fMeter
  create_bd_pin -dir O -type clk clk_out3_Scope
  create_bd_pin -dir O -type clk clk_out4_000deg
  create_bd_pin -dir O locked
  create_bd_pin -dir O psdone
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: CLK1B_axi_gpio_0, and set properties
  set CLK1B_axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 CLK1B_axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_IS_DUAL {1} \
 ] $CLK1B_axi_gpio_0

  # Create instance: CLK1B_c_shift_ram_0, and set properties
  set CLK1B_c_shift_ram_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 CLK1B_c_shift_ram_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {0} \
   CONFIG.DefaultData {0} \
   CONFIG.Depth {1} \
   CONFIG.SyncInitVal {0} \
   CONFIG.Width {1} \
 ] $CLK1B_c_shift_ram_0

  # Create instance: CLK1B_clk_wiz_0, and set properties
  set CLK1B_clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 CLK1B_clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {true} \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {243.865} \
   CONFIG.CLKOUT1_PHASE_ERROR {148.661} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT1_REQUESTED_PHASE {0.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {243.865} \
   CONFIG.CLKOUT2_PHASE_ERROR {148.661} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {243.865} \
   CONFIG.CLKOUT3_PHASE_ERROR {148.661} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {243.865} \
   CONFIG.CLKOUT4_PHASE_ERROR {148.661} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLKOUT7_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLK_OUT1_PORT {clk_out1_RMII} \
   CONFIG.CLK_OUT1_USE_FINE_PS_GUI {true} \
   CONFIG.CLK_OUT2_PORT {clk_out2_fMeter} \
   CONFIG.CLK_OUT3_PORT {clk_out3_Scope} \
   CONFIG.CLK_OUT3_USE_FINE_PS_GUI {true} \
   CONFIG.CLK_OUT4_PORT {clk_out4_000deg} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {13.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {13.000} \
   CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_CLKOUT0_PHASE {0.000} \
   CONFIG.MMCM_CLKOUT0_USE_FINE_PS {true} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {13} \
   CONFIG.MMCM_CLKOUT1_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {13} \
   CONFIG.MMCM_CLKOUT2_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_CLKOUT2_USE_FINE_PS {true} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {13} \
   CONFIG.MMCM_CLKOUT3_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_IN_FREQ {50.000} \
   CONFIG.USE_DYN_PHASE_SHIFT {true} \
   CONFIG.USE_DYN_RECONFIG {true} \
   CONFIG.USE_FREQ_SYNTH {false} \
   CONFIG.USE_MIN_POWER {true} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {false} \
 ] $CLK1B_clk_wiz_0

  # Create instance: CLK1B_util_reduced_logic_1, and set properties
  set CLK1B_util_reduced_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 CLK1B_util_reduced_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {2} \
 ] $CLK1B_util_reduced_logic_1

  # Create instance: CLK1B_util_vector_logic_0, and set properties
  set CLK1B_util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 CLK1B_util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $CLK1B_util_vector_logic_0

  # Create instance: CLK1B_xlconcat_0, and set properties
  set CLK1B_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 CLK1B_xlconcat_0 ]

  # Create instance: CLK1B_xlslice_0to0, and set properties
  set CLK1B_xlslice_0to0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CLK1B_xlslice_0to0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {2} \
 ] $CLK1B_xlslice_0to0

  # Create instance: CLK1B_xlslice_1to1, and set properties
  set CLK1B_xlslice_1to1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 CLK1B_xlslice_1to1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $CLK1B_xlslice_1to1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins CLK1B_axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_axi_lite] [get_bd_intf_pins CLK1B_clk_wiz_0/s_axi_lite]

  # Create port connections
  connect_bd_net -net CLK1B_50MHz_phy_clk_0 [get_bd_pins CLK1B_clk] [get_bd_pins CLK1B_clk_wiz_0/clk_in1]
  connect_bd_net -net CLK1B_axi_gpio_0_gpio_io_o [get_bd_pins CLK1B_axi_gpio_0/gpio_io_o] [get_bd_pins CLK1B_xlslice_0to0/Din] [get_bd_pins CLK1B_xlslice_1to1/Din]
  connect_bd_net -net CLK1B_c_shift_ram_0_Q [get_bd_pins CLK1B_c_shift_ram_0/Q] [get_bd_pins CLK1B_util_vector_logic_0/Op1]
  connect_bd_net -net CLK1B_clk_wiz_0_clk_out1_RMII [get_bd_pins clk_out1_RMII] [get_bd_pins CLK1B_clk_wiz_0/clk_out1_RMII]
  connect_bd_net -net CLK1B_clk_wiz_0_clk_out2_fmeter [get_bd_pins clk_out2_fMeter] [get_bd_pins CLK1B_clk_wiz_0/clk_out2_fMeter]
  connect_bd_net -net CLK1B_clk_wiz_0_clk_out3_Scope [get_bd_pins clk_out3_Scope] [get_bd_pins CLK1B_clk_wiz_0/clk_out3_Scope]
  connect_bd_net -net CLK1B_clk_wiz_0_clk_out4_000deg [get_bd_pins clk_out4_000deg] [get_bd_pins CLK1B_clk_wiz_0/clk_out4_000deg]
  connect_bd_net -net CLK1B_clk_wiz_0_psdone [get_bd_pins psdone] [get_bd_pins CLK1B_axi_gpio_0/gpio2_io_i] [get_bd_pins CLK1B_clk_wiz_0/psdone]
  connect_bd_net -net CLK1B_util_reduced_logic_1_Res [get_bd_pins CLK1B_clk_wiz_0/psen] [get_bd_pins CLK1B_util_reduced_logic_1/Res]
  connect_bd_net -net CLK1B_util_vector_logic_0_Res [get_bd_pins CLK1B_util_vector_logic_0/Res] [get_bd_pins CLK1B_xlconcat_0/In1]
  connect_bd_net -net CLK1B_xlconcat_0_dout [get_bd_pins CLK1B_util_reduced_logic_1/Op1] [get_bd_pins CLK1B_xlconcat_0/dout]
  connect_bd_net -net CLK1B_xlslice_0to0_Dout [get_bd_pins CLK1B_c_shift_ram_0/D] [get_bd_pins CLK1B_xlconcat_0/In0] [get_bd_pins CLK1B_xlslice_0to0/Dout]
  connect_bd_net -net CLK1B_xlslice_1to1_Dout [get_bd_pins CLK1B_clk_wiz_0/psincdec] [get_bd_pins CLK1B_xlslice_1to1/Dout]
  connect_bd_net -net dcm_locked_1 [get_bd_pins locked] [get_bd_pins CLK1B_clk_wiz_0/locked]
  connect_bd_net -net s_axi_aclk_0 [get_bd_pins s_axi_aclk] [get_bd_pins CLK1B_axi_gpio_0/s_axi_aclk] [get_bd_pins CLK1B_c_shift_ram_0/CLK] [get_bd_pins CLK1B_clk_wiz_0/psclk] [get_bd_pins CLK1B_clk_wiz_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_0 [get_bd_pins s_axi_aresetn] [get_bd_pins CLK1B_axi_gpio_0/s_axi_aresetn] [get_bd_pins CLK1B_clk_wiz_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CFG
proc create_hier_cell_CFG { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_CFG() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:iic_rtl:1.0 EMIO_I2C

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash


  # Create pins
  create_bd_pin -dir O -from 31 -to 0 GPIO1_I
  create_bd_pin -dir I -from 31 -to 0 GPIO1_O
  create_bd_pin -dir O PLL_I2C_ext_scl_o
  create_bd_pin -dir IO PLL_I2C_ext_sda
  create_bd_pin -dir O -type clk cfgmclk_pll_50MHz_out
  create_bd_pin -dir O -type clk clkmclk_pll_65MHz_vio
  create_bd_pin -dir O eos
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -from 31 -to 0 mon_GPIO1_I
  create_bd_pin -dir O -from 31 -to 0 mon_GPIO1_O
  create_bd_pin -dir O -type rst reset_out
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: CFG_axi_quad_spi_0, and set properties
  set CFG_axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 CFG_axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {3} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $CFG_axi_quad_spi_0

  # Create instance: CFG_clk_wiz_0, and set properties
  set CFG_clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 CFG_clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {153.84} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {134.409} \
   CONFIG.CLKOUT1_PHASE_ERROR {126.425} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {127.964} \
   CONFIG.CLKOUT2_PHASE_ERROR {126.425} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {65} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {cfgmclk_pll_50MHz} \
   CONFIG.CLK_OUT2_PORT {clkmclk_pll_65MHz_vio} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {20} \
   CONFIG.MMCM_CLKIN1_PERIOD {15.385} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {26} \
   CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {20} \
   CONFIG.MMCM_CLKOUT1_DUTY_CYCLE {0.5} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {65.000} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_MIN_POWER {true} \
   CONFIG.USE_PHASE_ALIGNMENT {false} \
   CONFIG.USE_RESET {false} \
 ] $CFG_clk_wiz_0

  # Create instance: SC0712_0, and set properties
  set SC0712_0 [ create_bd_cell -type ip -vlnv trenz.biz:user:SC0712:1.0 SC0712_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins EMIO_I2C] [get_bd_intf_pins SC0712_0/EMIO_I2C]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_pins qspi_flash] [get_bd_intf_pins CFG_axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins AXI_LITE] [get_bd_intf_pins CFG_axi_quad_spi_0/AXI_LITE]

  # Create port connections
  connect_bd_net -net CFG_axi_quad_spi_0_cfgmclk [get_bd_pins CFG_axi_quad_spi_0/cfgmclk] [get_bd_pins CFG_clk_wiz_0/clk_in1]
  connect_bd_net -net CFG_clk_wiz_0_clkmclk_pll_65MHz_vio [get_bd_pins clkmclk_pll_65MHz_vio] [get_bd_pins CFG_clk_wiz_0/clkmclk_pll_65MHz_vio]
  connect_bd_net -net GPIO1_O_1 [get_bd_pins GPIO1_O] [get_bd_pins SC0712_0/GPIO1_O]
  connect_bd_net -net Net [get_bd_pins PLL_I2C_ext_sda] [get_bd_pins SC0712_0/ext_sda]
  connect_bd_net -net SC0712_0_GPIO1_I [get_bd_pins GPIO1_I] [get_bd_pins SC0712_0/GPIO1_I]
  connect_bd_net -net SC0712_0_ext_scl_o [get_bd_pins PLL_I2C_ext_scl_o] [get_bd_pins SC0712_0/ext_scl_o]
  connect_bd_net -net SC0712_0_mon_GPIO1_I [get_bd_pins mon_GPIO1_I] [get_bd_pins SC0712_0/mon_GPIO1_I]
  connect_bd_net -net SC0712_0_mon_GPIO1_O [get_bd_pins mon_GPIO1_O] [get_bd_pins SC0712_0/mon_GPIO1_O]
  connect_bd_net -net SC0712_0_reset_out [get_bd_pins reset_out] [get_bd_pins SC0712_0/reset_out]
  connect_bd_net -net axi_quad_spi_0_eos [get_bd_pins eos] [get_bd_pins CFG_axi_quad_spi_0/eos]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins CFG_axi_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net cfgmclk_pll_50MHz [get_bd_pins cfgmclk_pll_50MHz_out] [get_bd_pins CFG_clk_wiz_0/cfgmclk_pll_50MHz] [get_bd_pins SC0712_0/mcs_clk_in]
  connect_bd_net -net mig_7series_0_ui_addn_clk_2_50MHz [get_bd_pins s_axi_aclk] [get_bd_pins CFG_axi_quad_spi_0/ext_spi_clk] [get_bd_pins CFG_axi_quad_spi_0/s_axi_aclk]
  connect_bd_net -net rst_mig_7series_0_50M_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins CFG_axi_quad_spi_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: BOOT_PLL
proc create_hier_cell_BOOT_PLL { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_BOOT_PLL() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:mbdebug_rtl:3.0 BOOT_microblaze_0_Debug_in

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:lmb_rtl:1.0 mdm_USER2_0_BOOT_LMB_0_in

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 mdm_USER2_0_BOOT_M_AXI_in


  # Create pins
  create_bd_pin -dir I CFG_eos_in
  create_bd_pin -dir I -type clk cfgmclk_pll_50MHz_in
  create_bd_pin -dir I -from 31 -to 0 gpio2_io_i
  create_bd_pin -dir O -from 31 -to 0 gpio_io_o
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -type rst mb_debug_sys_rst_in
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type rst reset_in

  # Create instance: BOOT_PLL_Local_BRAM
  create_hier_cell_BOOT_PLL_Local_BRAM $hier_obj BOOT_PLL_Local_BRAM

  # Create instance: BOOT_PLL_axi_gpio_0, and set properties
  set BOOT_PLL_axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 BOOT_PLL_axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000003} \
   CONFIG.C_IS_DUAL {1} \
 ] $BOOT_PLL_axi_gpio_0

  # Create instance: BOOT_PLL_axi_iic_0, and set properties
  set BOOT_PLL_axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 BOOT_PLL_axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.IIC_FREQ_KHZ {100} \
 ] $BOOT_PLL_axi_iic_0

  # Create instance: BOOT_PLL_axi_interconnect_0, and set properties
  set BOOT_PLL_axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 BOOT_PLL_axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {3} \
 ] $BOOT_PLL_axi_interconnect_0

  # Create instance: BOOT_PLL_microblaze_0, and set properties
  set BOOT_PLL_microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 BOOT_PLL_microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {0} \
   CONFIG.C_AREA_OPTIMIZED {1} \
   CONFIG.C_CACHE_BYTE_SIZE {4096} \
   CONFIG.C_DCACHE_ADDR_TAG {0} \
   CONFIG.C_DCACHE_BYTE_SIZE {4096} \
   CONFIG.C_DEBUG_ENABLED {2} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_AXI {0} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_DTLB_SIZE {2} \
   CONFIG.C_MMU_ITLB_SIZE {1} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_NUMBER_OF_PC_BRK {5} \
   CONFIG.C_NUMBER_OF_RD_ADDR_BRK {1} \
   CONFIG.C_NUMBER_OF_WR_ADDR_BRK {1} \
   CONFIG.C_USE_DCACHE {0} \
   CONFIG.C_USE_ICACHE {0} \
   CONFIG.C_USE_REORDER_INSTR {0} \
   CONFIG.G_TEMPLATE_LIST {1} \
 ] $BOOT_PLL_microblaze_0

  # Create instance: BOOT_PLL_proc_sys_reset_0, and set properties
  set BOOT_PLL_proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 BOOT_PLL_proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $BOOT_PLL_proc_sys_reset_0

  # Create interface connections
  connect_bd_intf_net -intf_net BOOT_PLL_microblaze_0_DLMB [get_bd_intf_pins BOOT_PLL_Local_BRAM/DLMB_M] [get_bd_intf_pins BOOT_PLL_microblaze_0/DLMB]
  connect_bd_intf_net -intf_net BOOT_PLL_microblaze_0_ILMB [get_bd_intf_pins BOOT_PLL_Local_BRAM/ILMB_M] [get_bd_intf_pins BOOT_PLL_microblaze_0/ILMB]
  connect_bd_intf_net -intf_net BOOT_PLL_microblaze_0_M_AXI_DP [get_bd_intf_pins BOOT_PLL_axi_interconnect_0/S00_AXI] [get_bd_intf_pins BOOT_PLL_microblaze_0/M_AXI_DP]
  connect_bd_intf_net -intf_net BOOT_microblaze_0_Debug [get_bd_intf_pins BOOT_microblaze_0_Debug_in] [get_bd_intf_pins BOOT_PLL_microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins IIC] [get_bd_intf_pins BOOT_PLL_axi_iic_0/IIC]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S02_AXI] [get_bd_intf_pins BOOT_PLL_axi_interconnect_0/S02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins BOOT_PLL_axi_gpio_0/S_AXI] [get_bd_intf_pins BOOT_PLL_axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins BOOT_PLL_axi_iic_0/S_AXI] [get_bd_intf_pins BOOT_PLL_axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net mdm_USER2_0_BOOT_LMB_0_in_1 [get_bd_intf_pins mdm_USER2_0_BOOT_LMB_0_in] [get_bd_intf_pins BOOT_PLL_Local_BRAM/mdm_USER2_0_BOOT_LMB_0_in]
  connect_bd_intf_net -intf_net mdm_USER2_0_BOOT_M_AXI_0 [get_bd_intf_pins mdm_USER2_0_BOOT_M_AXI_in] [get_bd_intf_pins BOOT_PLL_axi_interconnect_0/S01_AXI]

  # Create port connections
  connect_bd_net -net BOOT_PLL_axi_gpio_0_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins BOOT_PLL_axi_gpio_0/gpio_io_o]
  connect_bd_net -net BOOT_PLL_proc_sys_reset_0_bus_struct_reset [get_bd_pins BOOT_PLL_Local_BRAM/SYS_Rst] [get_bd_pins BOOT_PLL_proc_sys_reset_0/bus_struct_reset]
  connect_bd_net -net BOOT_PLL_proc_sys_reset_0_mb_reset [get_bd_pins BOOT_PLL_microblaze_0/Reset] [get_bd_pins BOOT_PLL_proc_sys_reset_0/mb_reset]
  connect_bd_net -net BOOT_proc_sys_reset_0_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins BOOT_PLL_axi_interconnect_0/ARESETN] [get_bd_pins BOOT_PLL_proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net CFG_eos [get_bd_pins CFG_eos_in] [get_bd_pins BOOT_PLL_proc_sys_reset_0/dcm_locked]
  connect_bd_net -net cfgmclk_pll_50MHz [get_bd_pins cfgmclk_pll_50MHz_in] [get_bd_pins BOOT_PLL_Local_BRAM/LMB_Clk] [get_bd_pins BOOT_PLL_axi_gpio_0/s_axi_aclk] [get_bd_pins BOOT_PLL_axi_iic_0/s_axi_aclk] [get_bd_pins BOOT_PLL_axi_interconnect_0/ACLK] [get_bd_pins BOOT_PLL_axi_interconnect_0/M00_ACLK] [get_bd_pins BOOT_PLL_axi_interconnect_0/M01_ACLK] [get_bd_pins BOOT_PLL_axi_interconnect_0/S00_ACLK] [get_bd_pins BOOT_PLL_axi_interconnect_0/S01_ACLK] [get_bd_pins BOOT_PLL_axi_interconnect_0/S02_ACLK] [get_bd_pins BOOT_PLL_microblaze_0/Clk] [get_bd_pins BOOT_PLL_proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net gpio2_io_i_1 [get_bd_pins gpio2_io_i] [get_bd_pins BOOT_PLL_axi_gpio_0/gpio2_io_i]
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins mb_debug_sys_rst_in] [get_bd_pins BOOT_PLL_proc_sys_reset_0/mb_debug_sys_rst]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins BOOT_PLL_axi_gpio_0/s_axi_aresetn] [get_bd_pins BOOT_PLL_axi_iic_0/s_axi_aresetn] [get_bd_pins BOOT_PLL_axi_interconnect_0/M00_ARESETN] [get_bd_pins BOOT_PLL_axi_interconnect_0/M01_ARESETN] [get_bd_pins BOOT_PLL_axi_interconnect_0/S00_ARESETN] [get_bd_pins BOOT_PLL_axi_interconnect_0/S01_ARESETN] [get_bd_pins BOOT_PLL_axi_interconnect_0/S02_ARESETN] [get_bd_pins BOOT_PLL_proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net reset_1 [get_bd_pins reset_in] [get_bd_pins BOOT_PLL_proc_sys_reset_0/ext_reset_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: AXI_TRX
proc create_hier_cell_AXI_TRX { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_AXI_TRX() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI2

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI3

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_CONFIG_SPI


  # Create pins
  create_bd_pin -dir O -from 31 -to 0 TRX_CONFIG_GPIO1_o
  create_bd_pin -dir I -from 31 -to 0 TRX_CONFIG_GPIO2_i
  create_bd_pin -dir I -from 31 -to 0 TRX_RX_PUSHDATA_GPIO1_i
  create_bd_pin -dir O -from 31 -to 0 TRX_RX_PUSHDATA_GPIO2_o
  create_bd_pin -dir O -from 15 -to 0 TRX_TX_DDSAMPL_GPIO1_o
  create_bd_pin -dir O -from 15 -to 0 TRX_TX_DDSAMPL_GPIO2_o
  create_bd_pin -dir I -from 31 -to 0 TRX_TX_DDS_GPIO1_i
  create_bd_pin -dir O -from 31 -to 0 TRX_TX_DDS_GPIO1_o
  create_bd_pin -dir O -from 31 -to 0 TRX_TX_DDS_GPIO2_o
  create_bd_pin -dir I -type clk ext_spi_clk
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -from 0 -to 0 -type intr ip2intc_irpt1
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: TRX_CONFIG_TRX_gpio_0, and set properties
  set TRX_CONFIG_TRX_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 TRX_CONFIG_TRX_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {0} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT_2 {0xFFFFFFFF} \
 ] $TRX_CONFIG_TRX_gpio_0

  # Create instance: TRX_CONFIG_quad_spi_0, and set properties
  set TRX_CONFIG_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 TRX_CONFIG_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_NUM_SS_BITS {1} \
   CONFIG.C_SCK_RATIO {16} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
   CONFIG.FIFO_INCLUDED {1} \
 ] $TRX_CONFIG_quad_spi_0

  # Create instance: TRX_RX_PUSHDATA_axi_gpio_0, and set properties
  set TRX_RX_PUSHDATA_axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 TRX_RX_PUSHDATA_axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_DOUT_DEFAULT_2 {0x00000400} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $TRX_RX_PUSHDATA_axi_gpio_0

  # Create instance: TRX_TX_DDS_ampt_axi_gpio_0, and set properties
  set TRX_TX_DDS_ampt_axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 TRX_TX_DDS_ampt_axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {16} \
   CONFIG.C_GPIO_WIDTH {16} \
   CONFIG.C_IS_DUAL {1} \
 ] $TRX_TX_DDS_ampt_axi_gpio_0

  # Create instance: TRX_TX_DDS_inc_axi_gpio_0, and set properties
  set TRX_TX_DDS_inc_axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 TRX_TX_DDS_inc_axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT {0x80000000} \
 ] $TRX_TX_DDS_inc_axi_gpio_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins AXI_LITE] [get_bd_intf_pins TRX_CONFIG_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins TRX_CONFIG_SPI] [get_bd_intf_pins TRX_CONFIG_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S_AXI] [get_bd_intf_pins TRX_CONFIG_TRX_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins S_AXI1] [get_bd_intf_pins TRX_TX_DDS_inc_axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins S_AXI2] [get_bd_intf_pins TRX_TX_DDS_ampt_axi_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins S_AXI3] [get_bd_intf_pins TRX_RX_PUSHDATA_axi_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net TRX_CONFIG_GPIO2_i_1 [get_bd_pins TRX_CONFIG_GPIO2_i] [get_bd_pins TRX_CONFIG_TRX_gpio_0/gpio2_io_i]
  connect_bd_net -net TRX_RX_PUSHDATA_GPIO1_i_1 [get_bd_pins TRX_RX_PUSHDATA_GPIO1_i] [get_bd_pins TRX_RX_PUSHDATA_axi_gpio_0/gpio_io_i]
  connect_bd_net -net TRX_RX_PUSHDATA_axi_gpio_0_gpio2_io_o [get_bd_pins TRX_RX_PUSHDATA_GPIO2_o] [get_bd_pins TRX_RX_PUSHDATA_axi_gpio_0/gpio2_io_o]
  connect_bd_net -net TRX_RX_PUSHDATA_axi_gpio_0_ip2intc_irpt [get_bd_pins ip2intc_irpt1] [get_bd_pins TRX_RX_PUSHDATA_axi_gpio_0/ip2intc_irpt]
  connect_bd_net -net TRX_TX_DDS_GPIO1_i_1 [get_bd_pins TRX_TX_DDS_GPIO1_i] [get_bd_pins TRX_TX_DDS_inc_axi_gpio_0/gpio_io_i]
  connect_bd_net -net TRX_TX_DDS_inc_axi_gpio_0_gpio2_io_o [get_bd_pins TRX_TX_DDS_GPIO2_o] [get_bd_pins TRX_TX_DDS_inc_axi_gpio_0/gpio2_io_o]
  connect_bd_net -net TRX_TX_DDS_inc_axi_gpio_0_gpio_io_o [get_bd_pins TRX_TX_DDS_GPIO1_o] [get_bd_pins TRX_TX_DDS_inc_axi_gpio_0/gpio_io_o]
  connect_bd_net -net TRX_axi_TRX_gpio_0_gpio_io_o [get_bd_pins TRX_CONFIG_GPIO1_o] [get_bd_pins TRX_CONFIG_TRX_gpio_0/gpio_io_o]
  connect_bd_net -net TRX_axi_quad_spi_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins TRX_CONFIG_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net TRX_tx_dds_ampt_axi_gpio_0_gpio2_io_o [get_bd_pins TRX_TX_DDSAMPL_GPIO2_o] [get_bd_pins TRX_TX_DDS_ampt_axi_gpio_0/gpio2_io_o]
  connect_bd_net -net TRX_tx_dds_ampt_axi_gpio_0_gpio_io_o [get_bd_pins TRX_TX_DDSAMPL_GPIO1_o] [get_bd_pins TRX_TX_DDS_ampt_axi_gpio_0/gpio_io_o]
  connect_bd_net -net ext_spi_clk_1 [get_bd_pins ext_spi_clk] [get_bd_pins TRX_CONFIG_TRX_gpio_0/s_axi_aclk] [get_bd_pins TRX_CONFIG_quad_spi_0/ext_spi_clk] [get_bd_pins TRX_CONFIG_quad_spi_0/s_axi_aclk] [get_bd_pins TRX_RX_PUSHDATA_axi_gpio_0/s_axi_aclk] [get_bd_pins TRX_TX_DDS_ampt_axi_gpio_0/s_axi_aclk] [get_bd_pins TRX_TX_DDS_inc_axi_gpio_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins TRX_CONFIG_TRX_gpio_0/s_axi_aresetn] [get_bd_pins TRX_CONFIG_quad_spi_0/s_axi_aresetn] [get_bd_pins TRX_RX_PUSHDATA_axi_gpio_0/s_axi_aresetn] [get_bd_pins TRX_TX_DDS_ampt_axi_gpio_0/s_axi_aresetn] [get_bd_pins TRX_TX_DDS_inc_axi_gpio_0/s_axi_aresetn]

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
  set BOARD_IIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 BOARD_IIC ]

  set CLK0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK0 ]

  set CLK2_mgt_clk0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK2_mgt_clk0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $CLK2_mgt_clk0

  set CLK3_sys_diff [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK3_sys_diff ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   ] $CLK3_sys_diff

  set DDR3_SDRAM [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3_SDRAM ]

  set ETH0_MDIO_MDC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 ETH0_MDIO_MDC ]

  set RMII_PHY_M_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rmii_rtl:1.0 RMII_PHY_M_0 ]

  set TRX_CONFIG_SPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_CONFIG_SPI ]

  set UART0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART0 ]

  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]


  # Create ports
  set BOARD_ROTENC_PUSH [ create_bd_port -dir I BOARD_ROTENC_PUSH ]
  set CLK1B_clk [ create_bd_port -dir I -from 0 -to 0 -type clk -freq_hz 50000000 CLK1B_clk ]
  set DDR3_init_calib_complete [ create_bd_port -dir O DDR3_init_calib_complete ]
  set ETH0_DA_G [ create_bd_port -dir O -from 0 -to 0 ETH0_DA_G ]
  set ETH0_DA_Y [ create_bd_port -dir O -from 0 -to 0 ETH0_DA_Y ]
  set ETH0_LINK_LED_g [ create_bd_port -dir I ETH0_LINK_LED_g ]
  set EUI48_FSM_run [ create_bd_port -dir I EUI48_FSM_run ]
  set EUI48_FSM_start [ create_bd_port -dir O -from 0 -to 0 EUI48_FSM_start ]
  set EUI48_data [ create_bd_port -dir I -from 47 -to 0 -type data EUI48_data ]
  set LCD_BL [ create_bd_port -dir O -from 0 -to 0 LCD_BL ]
  set LCD_rstn [ create_bd_port -dir O -from 0 -to 0 -type rst LCD_rstn ]
  set LED_RGB_blue [ create_bd_port -dir O -from 0 -to 0 LED_RGB_blue ]
  set LED_RGB_green [ create_bd_port -dir O -from 0 -to 0 LED_RGB_green ]
  set LED_RGB_red [ create_bd_port -dir O -from 0 -to 0 LED_RGB_red ]
  set LVDS_rx09_synced [ create_bd_port -dir I LVDS_rx09_synced ]
  set LVDS_rx24_synced [ create_bd_port -dir I LVDS_rx24_synced ]
  set PLL_I2C_ext_scl_o [ create_bd_port -dir O PLL_I2C_ext_scl_o ]
  set PLL_I2C_ext_sda [ create_bd_port -dir IO PLL_I2C_ext_sda ]
  set PLL_int [ create_bd_port -dir I -type intr PLL_int ]
  set SCOPE_FSM_FIFO_RdEmpty [ create_bd_port -dir O SCOPE_FSM_FIFO_RdEmpty ]
  set SCOPE_FSM_FIFO_RdEn [ create_bd_port -dir I SCOPE_FSM_FIFO_RdEn ]
  set SCOPE_FSM_FIFO_RdValid [ create_bd_port -dir O SCOPE_FSM_FIFO_RdValid ]
  set SCOPE_FSM_FIFO_Rst [ create_bd_port -dir I -type rst SCOPE_FSM_FIFO_Rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $SCOPE_FSM_FIFO_Rst
  set SCOPE_FSM_FIFO_WrEn [ create_bd_port -dir I SCOPE_FSM_FIFO_WrEn ]
  set SCOPE_FSM_FIFO_WrFull [ create_bd_port -dir O SCOPE_FSM_FIFO_WrFull ]
  set SCOPE_FSM_FIFO_rd_rst_busy [ create_bd_port -dir O SCOPE_FSM_FIFO_rd_rst_busy ]
  set SCOPE_FSM_FIFO_wr_rst_busy [ create_bd_port -dir O SCOPE_FSM_FIFO_wr_rst_busy ]
  set SCOPE_FSM_GPIO0_Out [ create_bd_port -dir O -from 31 -to 0 SCOPE_FSM_GPIO0_Out ]
  set SCOPE_FSM_GPIO1_In [ create_bd_port -dir I -from 31 -to 0 SCOPE_FSM_GPIO1_In ]
  set SCOPE_FSM_Timebase_CE [ create_bd_port -dir I -type ce SCOPE_FSM_Timebase_CE ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $SCOPE_FSM_Timebase_CE
  set SCOPE_FSM_TrigSrc [ create_bd_port -dir O -from 47 -to 0 SCOPE_FSM_TrigSrc ]
  set TRX_CONFIG_GPIO1_o [ create_bd_port -dir O -from 31 -to 0 TRX_CONFIG_GPIO1_o ]
  set TRX_CONFIG_GPIO2_i [ create_bd_port -dir I -from 31 -to 0 TRX_CONFIG_GPIO2_i ]
  set TRX_LVDS_tx09_fifo_din [ create_bd_port -dir I -from 31 -to 0 -type data TRX_LVDS_tx09_fifo_din ]
  set TRX_RX_PUSHDATA_GPIO1_i [ create_bd_port -dir I -from 31 -to 0 TRX_RX_PUSHDATA_GPIO1_i ]
  set TRX_RX_PUSHDATA_GPIO2_o [ create_bd_port -dir O -from 31 -to 0 TRX_RX_PUSHDATA_GPIO2_o ]
  set TRX_TX_DDSAMPL_GPIO1_o [ create_bd_port -dir O -from 15 -to 0 TRX_TX_DDSAMPL_GPIO1_o ]
  set TRX_TX_DDSAMPL_GPIO2_o [ create_bd_port -dir O -from 15 -to 0 TRX_TX_DDSAMPL_GPIO2_o ]
  set TRX_TX_DDS_GPIO1_i [ create_bd_port -dir I -from 31 -to 0 TRX_TX_DDS_GPIO1_i ]
  set TRX_TX_DDS_GPIO1_o [ create_bd_port -dir O -from 31 -to 0 TRX_TX_DDS_GPIO1_o ]
  set TRX_TX_DDS_GPIO2_o [ create_bd_port -dir O -from 31 -to 0 TRX_TX_DDS_GPIO2_o ]
  set TRX_TX_RF09_PULLDATA_FIFO_empty [ create_bd_port -dir I TRX_TX_RF09_PULLDATA_FIFO_empty ]
  set TRX_clk_trx_26MHz_vio [ create_bd_port -dir I -type clk -freq_hz 26000000 TRX_clk_trx_26MHz_vio ]
  set TRX_clk_trx_pll_25MHz_vio [ create_bd_port -dir I -type clk -freq_hz 25000000 TRX_clk_trx_pll_25MHz_vio ]
  set TRX_data_count [ create_bd_port -dir I -from 11 -to 0 -type data TRX_data_count ]
  set TRX_decoder_rx09_ch00_squelch_lvl [ create_bd_port -dir I -from 15 -to 0 -type data TRX_decoder_rx09_ch00_squelch_lvl ]
  set TRX_int [ create_bd_port -dir I -type intr TRX_int ]
  set TRX_rd_data_count_CD100 [ create_bd_port -dir I -from 8 -to 0 -type data TRX_rd_data_count_CD100 ]
  set TRX_rx09_32bits_CD100 [ create_bd_port -dir I -from 31 -to 0 -type data TRX_rx09_32bits_CD100 ]
  set TRX_rx24_32bits_CD100 [ create_bd_port -dir I -from 31 -to 0 -type data TRX_rx24_32bits_CD100 ]
  set TRX_rx_clkdiv_16MHz_in [ create_bd_port -dir I -type clk -freq_hz 16000000 TRX_rx_clkdiv_16MHz_in ]
  set TRX_tx_DDS0_gpio_ampt [ create_bd_port -dir I -from 15 -to 0 -type data TRX_tx_DDS0_gpio_ampt ]
  set TRX_tx_DDS0_gpio_inc [ create_bd_port -dir I -from 31 -to 0 -type data TRX_tx_DDS0_gpio_inc ]
  set TRX_tx_DDS1_gpio_ampt [ create_bd_port -dir I -from 15 -to 0 -type data TRX_tx_DDS1_gpio_ampt ]
  set TRX_tx_im [ create_bd_port -dir I -from 12 -to 0 -type data TRX_tx_im ]
  set TRX_tx_re [ create_bd_port -dir I -from 12 -to 0 -type data TRX_tx_re ]
  set UART0EXT_CTSn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_CTSn ]
  set UART0EXT_DCDn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_DCDn ]
  set UART0EXT_DSRn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_DSRn ]
  set UART0EXT_DTRn [ create_bd_port -dir I UART0EXT_DTRn ]
  set UART0EXT_RIn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_RIn ]
  set UART0EXT_RTSn [ create_bd_port -dir I UART0EXT_RTSn ]
  set UART0_clk [ create_bd_port -dir O -type clk UART0_clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {UART0_rst_n} \
   CONFIG.FREQ_HZ {12000000} \
 ] $UART0_clk
  set UART0_rst_n [ create_bd_port -dir O -from 0 -to 0 -type rst UART0_rst_n ]
  set USER_dbg_out [ create_bd_port -dir O -from 13 -to 0 USER_dbg_out ]
  set dds_tx09_inc [ create_bd_port -dir I -from 25 -to 0 dds_tx09_inc ]
  set dds_tx09_ptt [ create_bd_port -dir I dds_tx09_ptt ]
  set decoder_rx09_ch00_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch00_center_pos ]
  set decoder_rx09_ch00_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch00_noise ]
  set decoder_rx09_ch00_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch00_strength ]
  set decoder_rx09_ch01_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch01_center_pos ]
  set decoder_rx09_ch01_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch01_noise ]
  set decoder_rx09_ch01_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch01_strength ]
  set decoder_rx09_ch02_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch02_center_pos ]
  set decoder_rx09_ch02_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch02_noise ]
  set decoder_rx09_ch02_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch02_strength ]
  set decoder_rx09_ch03_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch03_center_pos ]
  set decoder_rx09_ch03_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch03_noise ]
  set decoder_rx09_ch03_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch03_strength ]
  set decoder_rx09_ch04_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch04_center_pos ]
  set decoder_rx09_ch04_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch04_noise ]
  set decoder_rx09_ch04_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch04_strength ]
  set decoder_rx09_ch05_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch05_center_pos ]
  set decoder_rx09_ch05_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch05_noise ]
  set decoder_rx09_ch05_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch05_strength ]
  set decoder_rx09_ch06_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch06_center_pos ]
  set decoder_rx09_ch06_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch06_noise ]
  set decoder_rx09_ch06_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch06_strength ]
  set decoder_rx09_ch07_center_pos [ create_bd_port -dir I -from 7 -to 0 -type data decoder_rx09_ch07_center_pos ]
  set decoder_rx09_ch07_noise [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch07_noise ]
  set decoder_rx09_ch07_strength [ create_bd_port -dir I -from 18 -to 0 -type data decoder_rx09_ch07_strength ]
  set decoder_rx09_chXX_active [ create_bd_port -dir I -from 7 -to 0 decoder_rx09_chXX_active ]
  set decoder_rx09_chXX_sql_open [ create_bd_port -dir I -from 7 -to 0 decoder_rx09_chXX_sql_open ]
  set microblaze_0_Clk_100MHz [ create_bd_port -dir O -type clk microblaze_0_Clk_100MHz ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {mig_7series_0_ui_clk_sync_rst} \
 ] $microblaze_0_Clk_100MHz
  set mig_7series_0_mmcm_locked [ create_bd_port -dir O mig_7series_0_mmcm_locked ]
  set mig_7series_0_ui_addn_clk_0_200MHz [ create_bd_port -dir O -type clk mig_7series_0_ui_addn_clk_0_200MHz ]
  set mig_7series_0_ui_clk_sync_rst [ create_bd_port -dir O -type rst mig_7series_0_ui_clk_sync_rst ]
  set phy_rst_n [ create_bd_port -dir O phy_rst_n ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set rotenc_dec_cnt_en [ create_bd_port -dir I rotenc_dec_cnt_en ]
  set rotenc_dec_cnt_up_dwn [ create_bd_port -dir I rotenc_dec_cnt_up_dwn ]
  set rst_mig_7series_0_100M_peripheral_reset [ create_bd_port -dir O -from 0 -to 0 -type rst rst_mig_7series_0_100M_peripheral_reset ]

  # Create instance: AXI_TRX
  create_hier_cell_AXI_TRX [current_bd_instance .] AXI_TRX

  # Create instance: BOARD_clk_wiz_0, and set properties
  set BOARD_clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 BOARD_clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {345.775} \
   CONFIG.CLKOUT1_PHASE_ERROR {293.793} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.000} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {137.681} \
   CONFIG.CLKOUT2_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {49.875} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {83.125} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.USE_LOCKED {false} \
 ] $BOARD_clk_wiz_0

  # Create instance: BOOT_PLL
  create_hier_cell_BOOT_PLL [current_bd_instance .] BOOT_PLL

  # Create instance: CFG
  create_hier_cell_CFG [current_bd_instance .] CFG

  # Create instance: CLK0_util_ds_buf_0, and set properties
  set CLK0_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 CLK0_util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDS} \
 ] $CLK0_util_ds_buf_0

  # Create instance: CLK0_util_ds_buf_1, and set properties
  set CLK0_util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 CLK0_util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $CLK0_util_ds_buf_1

  # Create instance: CLK1B_CW_0
  create_hier_cell_CLK1B_CW_0 [current_bd_instance .] CLK1B_CW_0

  # Create instance: CLOCK
  create_hier_cell_CLOCK [current_bd_instance .] CLOCK

  # Create instance: ETH0
  create_hier_cell_ETH0 [current_bd_instance .] ETH0

  # Create instance: EUI48
  create_hier_cell_EUI48 [current_bd_instance .] EUI48

  # Create instance: INT_ctrl
  create_hier_cell_INT_ctrl [current_bd_instance .] INT_ctrl

  # Create instance: PWM_lights
  create_hier_cell_PWM_lights [current_bd_instance .] PWM_lights

  # Create instance: ROTENC_decoder
  create_hier_cell_ROTENC_decoder [current_bd_instance .] ROTENC_decoder

  # Create instance: SCOPE
  create_hier_cell_SCOPE [current_bd_instance .] SCOPE

  # Create instance: UART0
  create_hier_cell_UART0 [current_bd_instance .] UART0

  # Create instance: USER_dbg
  create_hier_cell_USER_dbg [current_bd_instance .] USER_dbg

  # Create instance: axi_BOARD_iic_0, and set properties
  set axi_BOARD_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_BOARD_iic_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $axi_interconnect_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: labtools_fmeter_0, and set properties
  set labtools_fmeter_0 [ create_bd_cell -type ip -vlnv trenz.biz:user:labtools_fmeter:1.0 labtools_fmeter_0 ]
  set_property -dict [ list \
   CONFIG.C_CHANNELS {10} \
 ] $labtools_fmeter_0

  # Create instance: lt_fmeter_xlconcat_0, and set properties
  set lt_fmeter_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 lt_fmeter_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {10} \
 ] $lt_fmeter_xlconcat_0

  # Create instance: mdm_USER2_0, and set properties
  set mdm_USER2_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_USER2_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_SIZE {32} \
   CONFIG.C_DBG_MEM_ACCESS {1} \
   CONFIG.C_MB_DBG_PORTS {2} \
   CONFIG.C_M_AXI_ADDR_WIDTH {32} \
 ] $mdm_USER2_0

  # Create instance: mgt_clk0_CLK2_util_ds_buf_1, and set properties
  set mgt_clk0_CLK2_util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 mgt_clk0_CLK2_util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
   CONFIG.DIFF_CLK_IN_BOARD_INTERFACE {mgt_clk0} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $mgt_clk0_CLK2_util_ds_buf_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {15} \
   CONFIG.C_AREA_OPTIMIZED {0} \
   CONFIG.C_BASE_VECTORS {0x0000000000010000} \
   CONFIG.C_BRANCH_TARGET_CACHE_SIZE {0} \
   CONFIG.C_CACHE_BYTE_SIZE {32768} \
   CONFIG.C_DCACHE_ADDR_TAG {15} \
   CONFIG.C_DCACHE_BYTE_SIZE {32768} \
   CONFIG.C_DCACHE_FORCE_TAG_LUTRAM {1} \
   CONFIG.C_DCACHE_LINE_LEN {16} \
   CONFIG.C_DCACHE_USE_WRITEBACK {1} \
   CONFIG.C_DCACHE_VICTIMS {4} \
   CONFIG.C_DEBUG_ENABLED {2} \
   CONFIG.C_DIV_ZERO_EXCEPTION {0} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_ENABLE_DISCRETE_PORTS {0} \
   CONFIG.C_FPU_EXCEPTION {0} \
   CONFIG.C_ICACHE_DATA_WIDTH {0} \
   CONFIG.C_ICACHE_FORCE_TAG_LUTRAM {1} \
   CONFIG.C_ICACHE_LINE_LEN {16} \
   CONFIG.C_ICACHE_STREAMS {0} \
   CONFIG.C_ICACHE_VICTIMS {8} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {0} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_DTLB_SIZE {4} \
   CONFIG.C_MMU_ITLB_SIZE {2} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {0} \
   CONFIG.C_NUMBER_OF_PC_BRK {5} \
   CONFIG.C_NUMBER_OF_RD_ADDR_BRK {1} \
   CONFIG.C_NUMBER_OF_WR_ADDR_BRK {1} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {0} \
   CONFIG.C_PVR {0} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {1} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_BRANCH_TARGET_CACHE {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {1} \
   CONFIG.C_USE_FPU {0} \
   CONFIG.C_USE_HW_MUL {1} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MMU {0} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.C_USE_REORDER_INSTR {1} \
   CONFIG.C_USE_STACK_PROTECTION {1} \
   CONFIG.G_TEMPLATE_LIST {6} \
   CONFIG.G_USE_EXCEPTIONS {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {21} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_msys_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {DDR3_SDRAM} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7series_0

  # Create instance: rst_mig_7series_0_100M, and set properties
  set rst_mig_7series_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_100M ]

  # Create instance: rst_mig_7series_0_50M, and set properties
  set rst_mig_7series_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_50M ]

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_PROBE_IN {64} \
   CONFIG.C_NUM_PROBE_OUT {0} \
   CONFIG.C_PROBE_OUT0_INIT_VAL {0x00180} \
   CONFIG.C_PROBE_OUT0_WIDTH {19} \
   CONFIG.C_PROBE_OUT1_INIT_VAL {0x00100} \
   CONFIG.C_PROBE_OUT1_WIDTH {19} \
 ] $vio_0

  # Create interface connections
  connect_bd_intf_net -intf_net AXI_TRX_TRX_CONFIG_SPI [get_bd_intf_ports TRX_CONFIG_SPI] [get_bd_intf_pins AXI_TRX/TRX_CONFIG_SPI]
  connect_bd_intf_net -intf_net BOOT_PLL_IIC [get_bd_intf_pins BOOT_PLL/IIC] [get_bd_intf_pins CFG/EMIO_I2C]
  connect_bd_intf_net -intf_net CLK0_NA_diff_0 [get_bd_intf_ports CLK0] [get_bd_intf_pins CLK0_util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net CLK2_125MHz_mgt_diff_0 [get_bd_intf_ports CLK2_mgt_clk0] [get_bd_intf_pins mgt_clk0_CLK2_util_ds_buf_1/CLK_IN_D]
  connect_bd_intf_net -intf_net CLK3_50MHz_mig_diff_0 [get_bd_intf_ports CLK3_sys_diff] [get_bd_intf_pins mig_7series_0/SYS_CLK]
  connect_bd_intf_net -intf_net ETH0_ETH0_MDIO_MDC [get_bd_intf_ports ETH0_MDIO_MDC] [get_bd_intf_pins ETH0/ETH0_MDIO_MDC]
  connect_bd_intf_net -intf_net ETH0_RMII_PHY_M_0 [get_bd_intf_ports RMII_PHY_M_0] [get_bd_intf_pins ETH0/RMII_PHY_M_0]
  connect_bd_intf_net -intf_net INT_ctrl_interrupt [get_bd_intf_pins INT_ctrl/interrupt] [get_bd_intf_pins microblaze_0/INTERRUPT]
  connect_bd_intf_net -intf_net UART0_UART0 [get_bd_intf_ports UART0] [get_bd_intf_pins UART0/UART0]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports BOARD_IIC] [get_bd_intf_pins axi_BOARD_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins CFG/qspi_flash]
  connect_bd_intf_net -intf_net mdm_USER2_0_BOOT_LMB_0 [get_bd_intf_pins BOOT_PLL/mdm_USER2_0_BOOT_LMB_0_in] [get_bd_intf_pins mdm_USER2_0/LMB_0]
  connect_bd_intf_net -intf_net mdm_USER2_0_BOOT_M_AXI [get_bd_intf_pins BOOT_PLL/mdm_USER2_0_BOOT_M_AXI_in] [get_bd_intf_pins mdm_USER2_0/M_AXI]
  connect_bd_intf_net -intf_net mdm_USER2_0_MBDEBUG_0 [get_bd_intf_pins BOOT_PLL/BOOT_microblaze_0_Debug_in] [get_bd_intf_pins mdm_USER2_0/MBDEBUG_0]
  connect_bd_intf_net -intf_net mdm_USER2_0_MBDEBUG_1 [get_bd_intf_pins mdm_USER2_0/MBDEBUG_1] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net mdm_USER2_0_microblaze_LMB_1 [get_bd_intf_pins mdm_USER2_0/LMB_1] [get_bd_intf_pins microblaze_0_local_memory/mdm_USER2_0_microblaze_LMB_1_in]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins INT_ctrl/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins UART0/S_AXI1] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins CFG/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins SCOPE/S_AXI1] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins ETH0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins UART0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_BOARD_iic_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins PWM_lights/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins ROTENC_decoder/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins EUI48/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins AXI_TRX/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M12_AXI [get_bd_intf_pins AXI_TRX/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M13_AXI [get_bd_intf_pins AXI_TRX/S_AXI1] [get_bd_intf_pins microblaze_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M14_AXI [get_bd_intf_pins CLK1B_CW_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M15_AXI [get_bd_intf_pins SCOPE/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M15_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M16_AXI [get_bd_intf_pins CLK1B_CW_0/s_axi_lite] [get_bd_intf_pins microblaze_0_axi_periph/M16_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M17_AXI [get_bd_intf_pins CLOCK/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M18_AXI [get_bd_intf_pins BOOT_PLL/S02_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M18_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M19_AXI [get_bd_intf_pins AXI_TRX/S_AXI2] [get_bd_intf_pins microblaze_0_axi_periph/M19_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M20_AXI [get_bd_intf_pins AXI_TRX/S_AXI3] [get_bd_intf_pins microblaze_0_axi_periph/M20_AXI]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3_SDRAM] [get_bd_intf_pins mig_7series_0/DDR3]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins rst_mig_7series_0_100M/interconnect_aresetn]
  connect_bd_net -net AXI_TRX_TRX_CONFIG_GPIO1_o [get_bd_ports TRX_CONFIG_GPIO1_o] [get_bd_pins AXI_TRX/TRX_CONFIG_GPIO1_o]
  connect_bd_net -net AXI_TRX_TRX_RX_PUSHDATA_GPIO2_o [get_bd_ports TRX_RX_PUSHDATA_GPIO2_o] [get_bd_pins AXI_TRX/TRX_RX_PUSHDATA_GPIO2_o]
  connect_bd_net -net AXI_TRX_TRX_TX_DDSAMPL_GPIO1_o [get_bd_ports TRX_TX_DDSAMPL_GPIO1_o] [get_bd_pins AXI_TRX/TRX_TX_DDSAMPL_GPIO1_o]
  connect_bd_net -net AXI_TRX_TRX_TX_DDSAMPL_GPIO2_o [get_bd_ports TRX_TX_DDSAMPL_GPIO2_o] [get_bd_pins AXI_TRX/TRX_TX_DDSAMPL_GPIO2_o]
  connect_bd_net -net AXI_TRX_TRX_TX_DDS_GPIO1_o [get_bd_ports TRX_TX_DDS_GPIO1_o] [get_bd_pins AXI_TRX/TRX_TX_DDS_GPIO1_o]
  connect_bd_net -net AXI_TRX_TRX_TX_DDS_GPIO2_o [get_bd_ports TRX_TX_DDS_GPIO2_o] [get_bd_pins AXI_TRX/TRX_TX_DDS_GPIO2_o]
  connect_bd_net -net BOARD_ROTENC_PUSH_1 [get_bd_ports BOARD_ROTENC_PUSH] [get_bd_pins ROTENC_decoder/BOARD_ROTENC_PUSH] [get_bd_pins vio_0/probe_in18]
  connect_bd_net -net BOOT_PLL_gpio_io_o [get_bd_pins BOOT_PLL/gpio_io_o] [get_bd_pins CFG/GPIO1_O]
  connect_bd_net -net BOOT_PLL_interconnect_aresetn [get_bd_pins BOOT_PLL/interconnect_aresetn] [get_bd_pins mig_7series_0/aresetn]
  connect_bd_net -net BOOT_PLL_peripheral_aresetn [get_bd_pins BOOT_PLL/peripheral_aresetn] [get_bd_pins mdm_USER2_0/M_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/M18_ARESETN]
  connect_bd_net -net CFG_PLL_I2C_ext_scl_o [get_bd_ports PLL_I2C_ext_scl_o] [get_bd_pins CFG/PLL_I2C_ext_scl_o]
  connect_bd_net -net CFG_clkmclk_pll_65MHz_vio [get_bd_pins CFG/clkmclk_pll_65MHz_vio] [get_bd_pins lt_fmeter_xlconcat_0/In9]
  connect_bd_net -net CFG_eos [get_bd_pins BOOT_PLL/CFG_eos_in] [get_bd_pins CFG/eos]
  connect_bd_net -net CFG_mon_GPIO1_I [get_bd_pins CFG/mon_GPIO1_I] [get_bd_pins vio_0/probe_in7]
  connect_bd_net -net CFG_mon_GPIO1_O [get_bd_pins CFG/mon_GPIO1_O] [get_bd_pins vio_0/probe_in6]
  connect_bd_net -net CLK0_NA_0 [get_bd_pins CLK0_util_ds_buf_0/IBUF_OUT] [get_bd_pins CLK0_util_ds_buf_1/BUFG_I]
  connect_bd_net -net CLK0_NA_g_0 [get_bd_pins CLK0_util_ds_buf_1/BUFG_O] [get_bd_pins CLOCK/CLK] [get_bd_pins lt_fmeter_xlconcat_0/In3]
  connect_bd_net -net CLK1B_50MHz_phy_clk_0 [get_bd_ports CLK1B_clk] [get_bd_pins CLK1B_CW_0/CLK1B_clk]
  connect_bd_net -net CLK1B_CW_0_clk_out1_RMII [get_bd_pins CLK1B_CW_0/clk_out1_RMII] [get_bd_pins ETH0/CLK1B_50MHz_phy_clk_in]
  connect_bd_net -net CLK1B_CW_0_clk_out3_Scope [get_bd_pins CLK1B_CW_0/clk_out3_Scope] [get_bd_pins SCOPE/CLK1B_CW_0_clk_out3_Scope_RefClk]
  connect_bd_net -net CLK1B_CW_0_psdone [get_bd_pins CLK1B_CW_0/psdone] [get_bd_pins vio_0/probe_in16]
  connect_bd_net -net CLK1B_clk_wiz_0_clk_out2_fmeter [get_bd_pins CLK1B_CW_0/clk_out2_fMeter] [get_bd_pins lt_fmeter_xlconcat_0/In2]
  connect_bd_net -net CLK2_125MHz_mgt_g_0 [get_bd_pins lt_fmeter_xlconcat_0/In1] [get_bd_pins mgt_clk0_CLK2_util_ds_buf_1/IBUF_OUT]
  connect_bd_net -net ETH0_DA_G [get_bd_ports ETH0_DA_G] [get_bd_pins ETH0/ETH0_DA_G_out]
  connect_bd_net -net ETH0_DA_Y [get_bd_ports ETH0_DA_Y] [get_bd_pins ETH0/ETH0_DA_Y_out]
  connect_bd_net -net ETH0_LEDstatus_0 [get_bd_pins ETH0/ETH0_status_out] [get_bd_pins vio_0/probe_in20]
  connect_bd_net -net ETH0_LINK_LED_g_0 [get_bd_ports ETH0_LINK_LED_g] [get_bd_pins ETH0/ETH0_LINK_LED_in]
  connect_bd_net -net ETH0_MIIstatus_0 [get_bd_pins ETH0/ETH0_MIIstatus_out] [get_bd_pins vio_0/probe_in21]
  connect_bd_net -net ETH0_ip2intc_irpt [get_bd_pins ETH0/ip2intc_irpt_out] [get_bd_pins INT_ctrl/In4]
  connect_bd_net -net ETH0_m_mii_tx_en [get_bd_pins ETH0/m_mii_tx_en_out] [get_bd_pins SCOPE/ETH0_m_mii_tx_en]
  connect_bd_net -net ETH0_m_mii_tx_er [get_bd_pins ETH0/m_mii_tx_er_out] [get_bd_pins SCOPE/ETH0_m_mii_tx_er]
  connect_bd_net -net ETH0_m_mii_txd_0 [get_bd_pins ETH0/m_mii_txd_out] [get_bd_pins vio_0/probe_in23]
  connect_bd_net -net ETH0_m_mii_txd_1 [get_bd_pins ETH0/m_mii_txd1_out] [get_bd_pins SCOPE/ETH0_m_mii_txd]
  connect_bd_net -net ETH0_phy_rst_n [get_bd_ports phy_rst_n] [get_bd_pins ETH0/phy_rst_n_out]
  connect_bd_net -net ETH0_s_mii_col [get_bd_pins ETH0/s_mii_col_out] [get_bd_pins SCOPE/ETH0_s_mii_col]
  connect_bd_net -net ETH0_s_mii_crs [get_bd_pins ETH0/s_mii_crs_out] [get_bd_pins SCOPE/ETH0_s_mii_crs]
  connect_bd_net -net ETH0_s_mii_rx_clk [get_bd_pins ETH0/s_mii_rx_clk_out] [get_bd_pins SCOPE/ETH0_s_mii_rx_clk] [get_bd_pins lt_fmeter_xlconcat_0/In6]
  connect_bd_net -net ETH0_s_mii_rx_dv [get_bd_pins ETH0/s_mii_rx_dv_out] [get_bd_pins SCOPE/ETH0_s_mii_rx_dv]
  connect_bd_net -net ETH0_s_mii_rx_er [get_bd_pins ETH0/s_mii_rx_er_out] [get_bd_pins SCOPE/ETH0_s_mii_rx_er]
  connect_bd_net -net ETH0_s_mii_rxd_0 [get_bd_pins ETH0/s_mii_rxd_out] [get_bd_pins vio_0/probe_in22]
  connect_bd_net -net ETH0_s_mii_rxd_1 [get_bd_pins ETH0/s_mii_rxd1_out] [get_bd_pins SCOPE/ETH0_s_mii_rxd]
  connect_bd_net -net ETH0_s_mii_tx_clk [get_bd_pins ETH0/s_mii_tx_clk_out] [get_bd_pins SCOPE/ETH0_s_mii_tx_clk] [get_bd_pins lt_fmeter_xlconcat_0/In5]
  connect_bd_net -net EUI48_EUI48_FSM_start [get_bd_ports EUI48_FSM_start] [get_bd_pins EUI48/EUI48_FSM_start]
  connect_bd_net -net EUI48_FSM_run_1 [get_bd_ports EUI48_FSM_run] [get_bd_pins EUI48/EUI48_FSM_run]
  connect_bd_net -net EUI48_data_1 [get_bd_ports EUI48_data] [get_bd_pins EUI48/EUI48_data] [get_bd_pins vio_0/probe_in17]
  connect_bd_net -net In10_1 [get_bd_pins AXI_TRX/ip2intc_irpt] [get_bd_pins INT_ctrl/In10]
  connect_bd_net -net In11_1 [get_bd_pins AXI_TRX/ip2intc_irpt1] [get_bd_pins INT_ctrl/In11]
  connect_bd_net -net Net [get_bd_ports PLL_I2C_ext_sda] [get_bd_pins CFG/PLL_I2C_ext_sda]
  connect_bd_net -net PLL_int_1 [get_bd_ports PLL_int] [get_bd_pins INT_ctrl/PLL_int]
  connect_bd_net -net PWM_lights_LCD_BL [get_bd_ports LCD_BL] [get_bd_pins PWM_lights/LCD_BL]
  connect_bd_net -net PWM_lights_LCD_rstn [get_bd_ports LCD_rstn] [get_bd_pins PWM_lights/LCD_rstn]
  connect_bd_net -net PWM_lights_LED_RGB_blue [get_bd_ports LED_RGB_blue] [get_bd_pins PWM_lights/LED_RGB_blue]
  connect_bd_net -net PWM_lights_LED_RGB_green [get_bd_ports LED_RGB_green] [get_bd_pins PWM_lights/LED_RGB_green]
  connect_bd_net -net PWM_lights_LED_RGB_red [get_bd_ports LED_RGB_red] [get_bd_pins PWM_lights/LED_RGB_red]
  connect_bd_net -net PWM_lights_ip2intc_irpt [get_bd_pins INT_ctrl/In7] [get_bd_pins PWM_lights/ip2intc_irpt]
  connect_bd_net -net ROTENC_decoder_Q [get_bd_pins ROTENC_decoder/Q] [get_bd_pins vio_0/probe_in19]
  connect_bd_net -net ROTENC_decoder_ip2intc_irpt [get_bd_pins INT_ctrl/In8] [get_bd_pins ROTENC_decoder/ip2intc_irpt]
  connect_bd_net -net SC0712_0_reset_out [get_bd_pins CFG/reset_out] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins vio_0/probe_in5]
  connect_bd_net -net SCOPE_FSM_FIFO_RdEn_1 [get_bd_ports SCOPE_FSM_FIFO_RdEn] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_RdEn]
  connect_bd_net -net SCOPE_FSM_FIFO_Rst_1 [get_bd_ports SCOPE_FSM_FIFO_Rst] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_Rst]
  connect_bd_net -net SCOPE_FSM_FIFO_WrEn_0 [get_bd_ports SCOPE_FSM_FIFO_WrEn] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_WrEn]
  connect_bd_net -net SCOPE_FSM_GPIO1_In_1 [get_bd_ports SCOPE_FSM_GPIO1_In] [get_bd_pins SCOPE/SCOPE_FSM_GPIO1_In]
  connect_bd_net -net SCOPE_FSM_Timebase_CE_1 [get_bd_ports SCOPE_FSM_Timebase_CE] [get_bd_pins SCOPE/SCOPE_FSM_Timebase_CE]
  connect_bd_net -net SCOPE_SCOPE_FSM_FIFO_RdEmpty [get_bd_ports SCOPE_FSM_FIFO_RdEmpty] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_RdEmpty]
  connect_bd_net -net SCOPE_SCOPE_FSM_FIFO_RdValid [get_bd_ports SCOPE_FSM_FIFO_RdValid] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_RdValid]
  connect_bd_net -net SCOPE_SCOPE_FSM_FIFO_WrFull [get_bd_ports SCOPE_FSM_FIFO_WrFull] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_WrFull]
  connect_bd_net -net SCOPE_SCOPE_FSM_FIFO_rd_rst_busy [get_bd_ports SCOPE_FSM_FIFO_rd_rst_busy] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_rd_rst_busy]
  connect_bd_net -net SCOPE_SCOPE_FSM_FIFO_wr_rst_busy [get_bd_ports SCOPE_FSM_FIFO_wr_rst_busy] [get_bd_pins SCOPE/SCOPE_FSM_FIFO_wr_rst_busy]
  connect_bd_net -net SCOPE_SCOPE_FSM_GPIO0_Out [get_bd_ports SCOPE_FSM_GPIO0_Out] [get_bd_pins SCOPE/SCOPE_FSM_GPIO0_Out]
  connect_bd_net -net SCOPE_SCOPE_FSM_TrigSrc [get_bd_ports SCOPE_FSM_TrigSrc] [get_bd_pins SCOPE/SCOPE_FSM_TrigSrc]
  connect_bd_net -net Status_LVDS_rx09_synced_1 [get_bd_ports LVDS_rx09_synced] [get_bd_pins vio_0/probe_in33]
  connect_bd_net -net Status_LVDS_rx24_synced_1 [get_bd_ports LVDS_rx24_synced] [get_bd_pins vio_0/probe_in34]
  connect_bd_net -net TRX_CONFIG_GPIO2_i_1 [get_bd_ports TRX_CONFIG_GPIO2_i] [get_bd_pins AXI_TRX/TRX_CONFIG_GPIO2_i]
  connect_bd_net -net TRX_LVDS_tx09_fifo_din_1 [get_bd_ports TRX_LVDS_tx09_fifo_din] [get_bd_pins vio_0/probe_in63]
  connect_bd_net -net TRX_RX_PUSHDATA_GPIO1_i_1 [get_bd_ports TRX_RX_PUSHDATA_GPIO1_i] [get_bd_pins AXI_TRX/TRX_RX_PUSHDATA_GPIO1_i]
  connect_bd_net -net TRX_TX_DDS_GPIO1_i_1 [get_bd_ports TRX_TX_DDS_GPIO1_i] [get_bd_pins AXI_TRX/TRX_TX_DDS_GPIO1_i]
  connect_bd_net -net TRX_TX_RF09_PULLDATA_FIFO_empty_1 [get_bd_ports TRX_TX_RF09_PULLDATA_FIFO_empty] [get_bd_pins vio_0/probe_in24]
  connect_bd_net -net TRX_clk_trx_26MHz_vio_1 [get_bd_ports TRX_clk_trx_26MHz_vio] [get_bd_pins lt_fmeter_xlconcat_0/In7]
  connect_bd_net -net TRX_clk_trx_pll_25MHz_vio_1 [get_bd_ports TRX_clk_trx_pll_25MHz_vio] [get_bd_pins lt_fmeter_xlconcat_0/In8]
  connect_bd_net -net TRX_data_count_1 [get_bd_ports TRX_data_count] [get_bd_pins vio_0/probe_in25]
  connect_bd_net -net TRX_decoder_rx09_ch00_squelch_lvl_1 [get_bd_ports TRX_decoder_rx09_ch00_squelch_lvl] [get_bd_pins vio_0/probe_in37]
  connect_bd_net -net TRX_rd_data_count_CD100_1 [get_bd_ports TRX_rd_data_count_CD100] [get_bd_pins vio_0/probe_in11]
  connect_bd_net -net TRX_rx09_32bits_CD100_1 [get_bd_ports TRX_rx09_32bits_CD100] [get_bd_pins vio_0/probe_in12]
  connect_bd_net -net TRX_rx24_32bits_CD100_1 [get_bd_ports TRX_rx24_32bits_CD100] [get_bd_pins vio_0/probe_in13]
  connect_bd_net -net TRX_rx_clkdiv_16MHz_in_1 [get_bd_ports TRX_rx_clkdiv_16MHz_in] [get_bd_pins lt_fmeter_xlconcat_0/In4]
  connect_bd_net -net TRX_tx_DDS0_gpio_ampt_1 [get_bd_ports TRX_tx_DDS0_gpio_ampt] [get_bd_pins vio_0/probe_in27]
  connect_bd_net -net TRX_tx_DDS0_gpio_inc_1 [get_bd_ports TRX_tx_DDS0_gpio_inc] [get_bd_pins vio_0/probe_in26]
  connect_bd_net -net TRX_tx_DDS1_gpio_ampt_1 [get_bd_ports TRX_tx_DDS1_gpio_ampt] [get_bd_pins vio_0/probe_in28]
  connect_bd_net -net TRX_tx_im_1 [get_bd_ports TRX_tx_im] [get_bd_pins vio_0/probe_in30]
  connect_bd_net -net TRX_tx_re_1 [get_bd_ports TRX_tx_re] [get_bd_pins vio_0/probe_in29]
  connect_bd_net -net UART0EXT_DTRn_1 [get_bd_ports UART0EXT_DTRn] [get_bd_pins UART0/UART0EXT_DTRn]
  connect_bd_net -net UART0EXT_RTSn_1 [get_bd_ports UART0EXT_RTSn] [get_bd_pins UART0/UART0EXT_RTSn]
  connect_bd_net -net UART0_UART0EXT_CTSn [get_bd_ports UART0EXT_CTSn] [get_bd_pins UART0/UART0EXT_CTSn]
  connect_bd_net -net UART0_UART0EXT_DCDn [get_bd_ports UART0EXT_DCDn] [get_bd_pins UART0/UART0EXT_DCDn]
  connect_bd_net -net UART0_UART0EXT_DSRn [get_bd_ports UART0EXT_DSRn] [get_bd_pins UART0/UART0EXT_DSRn]
  connect_bd_net -net UART0_UART0EXT_RIn [get_bd_ports UART0EXT_RIn] [get_bd_pins UART0/UART0EXT_RIn]
  connect_bd_net -net UART0_UART0_rst_n [get_bd_ports UART0_rst_n] [get_bd_pins UART0/UART0_rst_n]
  connect_bd_net -net UART0_clk_wiz_0_clk_out1 [get_bd_ports UART0_clk] [get_bd_pins BOARD_clk_wiz_0/clk_out1] [get_bd_pins UART0/slowest_sync_clk]
  connect_bd_net -net UART0_interrupt [get_bd_pins INT_ctrl/In1] [get_bd_pins UART0/interrupt]
  connect_bd_net -net UART0_ip2intc_irpt [get_bd_pins INT_ctrl/In5] [get_bd_pins UART0/ip2intc_irpt]
  connect_bd_net -net USER_dbg_USER_dbg_out [get_bd_ports USER_dbg_out] [get_bd_pins USER_dbg/USER_dbg_out]
  connect_bd_net -net axi_BOARD_iic_0_iic2intc_irpt [get_bd_pins INT_ctrl/In6] [get_bd_pins axi_BOARD_iic_0/iic2intc_irpt]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins CFG/ip2intc_irpt] [get_bd_pins INT_ctrl/In2]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins INT_ctrl/In0] [get_bd_pins axi_timer_0/interrupt]
  connect_bd_net -net cfgmclk_pll_50MHz [get_bd_pins BOOT_PLL/cfgmclk_pll_50MHz_in] [get_bd_pins CFG/cfgmclk_pll_50MHz_out] [get_bd_pins ETH0/cfgmclk_pll_50MHz_in] [get_bd_pins mdm_USER2_0/M_AXI_ACLK] [get_bd_pins microblaze_0_axi_periph/M18_ACLK] [get_bd_pins vio_0/clk]
  connect_bd_net -net dcm_locked_1 [get_bd_pins CLK1B_CW_0/locked] [get_bd_pins ETH0/dcm_locked_in]
  connect_bd_net -net dds_tx09_ptt_1 [get_bd_ports dds_tx09_ptt] [get_bd_pins vio_0/probe_in32]
  connect_bd_net -net decoder_rx09_ch00_center_pos_1 [get_bd_ports decoder_rx09_ch00_center_pos] [get_bd_pins vio_0/probe_in40]
  connect_bd_net -net decoder_rx09_ch00_int_0 [get_bd_ports TRX_int] [get_bd_pins INT_ctrl/In3]
  connect_bd_net -net decoder_rx09_ch00_noise_1 [get_bd_ports decoder_rx09_ch00_noise] [get_bd_pins vio_0/probe_in38]
  connect_bd_net -net decoder_rx09_ch00_strength_1 [get_bd_ports decoder_rx09_ch00_strength] [get_bd_pins vio_0/probe_in39]
  connect_bd_net -net decoder_rx09_ch01_center_pos_1 [get_bd_ports decoder_rx09_ch01_center_pos] [get_bd_pins vio_0/probe_in43]
  connect_bd_net -net decoder_rx09_ch01_noise_1 [get_bd_ports decoder_rx09_ch01_noise] [get_bd_pins vio_0/probe_in41]
  connect_bd_net -net decoder_rx09_ch01_strength_1 [get_bd_ports decoder_rx09_ch01_strength] [get_bd_pins vio_0/probe_in42]
  connect_bd_net -net decoder_rx09_ch02_center_pos_1 [get_bd_ports decoder_rx09_ch02_center_pos] [get_bd_pins vio_0/probe_in46]
  connect_bd_net -net decoder_rx09_ch02_noise_1 [get_bd_ports decoder_rx09_ch02_noise] [get_bd_pins vio_0/probe_in44]
  connect_bd_net -net decoder_rx09_ch02_strength_1 [get_bd_ports decoder_rx09_ch02_strength] [get_bd_pins vio_0/probe_in45]
  connect_bd_net -net decoder_rx09_ch03_center_pos_1 [get_bd_ports decoder_rx09_ch03_center_pos] [get_bd_pins vio_0/probe_in49]
  connect_bd_net -net decoder_rx09_ch03_noise_1 [get_bd_ports decoder_rx09_ch03_noise] [get_bd_pins vio_0/probe_in47]
  connect_bd_net -net decoder_rx09_ch03_strength_1 [get_bd_ports decoder_rx09_ch03_strength] [get_bd_pins vio_0/probe_in48]
  connect_bd_net -net decoder_rx09_ch04_center_pos_1 [get_bd_ports decoder_rx09_ch04_center_pos] [get_bd_pins vio_0/probe_in52]
  connect_bd_net -net decoder_rx09_ch04_noise_1 [get_bd_ports decoder_rx09_ch04_noise] [get_bd_pins vio_0/probe_in50]
  connect_bd_net -net decoder_rx09_ch04_strength_1 [get_bd_ports decoder_rx09_ch04_strength] [get_bd_pins vio_0/probe_in51]
  connect_bd_net -net decoder_rx09_ch05_center_pos_1 [get_bd_ports decoder_rx09_ch05_center_pos] [get_bd_pins vio_0/probe_in55]
  connect_bd_net -net decoder_rx09_ch05_noise_1 [get_bd_ports decoder_rx09_ch05_noise] [get_bd_pins vio_0/probe_in53]
  connect_bd_net -net decoder_rx09_ch05_strength_1 [get_bd_ports decoder_rx09_ch05_strength] [get_bd_pins vio_0/probe_in54]
  connect_bd_net -net decoder_rx09_ch06_center_pos_1 [get_bd_ports decoder_rx09_ch06_center_pos] [get_bd_pins vio_0/probe_in58]
  connect_bd_net -net decoder_rx09_ch06_noise_1 [get_bd_ports decoder_rx09_ch06_noise] [get_bd_pins vio_0/probe_in56]
  connect_bd_net -net decoder_rx09_ch06_strength_1 [get_bd_ports decoder_rx09_ch06_strength] [get_bd_pins vio_0/probe_in57]
  connect_bd_net -net decoder_rx09_ch07_center_pos_1 [get_bd_ports decoder_rx09_ch07_center_pos] [get_bd_pins vio_0/probe_in61]
  connect_bd_net -net decoder_rx09_ch07_noise_1 [get_bd_ports decoder_rx09_ch07_noise] [get_bd_pins vio_0/probe_in59]
  connect_bd_net -net decoder_rx09_ch07_strength_1 [get_bd_ports decoder_rx09_ch07_strength] [get_bd_pins vio_0/probe_in60]
  connect_bd_net -net decoder_rx09_chXX_active_1 [get_bd_ports decoder_rx09_chXX_active] [get_bd_pins vio_0/probe_in36]
  connect_bd_net -net decoder_rx09_chXX_sql_open_1 [get_bd_ports decoder_rx09_chXX_sql_open] [get_bd_pins vio_0/probe_in35]
  connect_bd_net -net gpio2_io_i_1 [get_bd_pins BOOT_PLL/gpio2_io_i] [get_bd_pins CFG/GPIO1_I]
  connect_bd_net -net labtools_fmeter_0_F5 [get_bd_pins labtools_fmeter_0/F5] [get_bd_pins vio_0/probe_in9]
  connect_bd_net -net labtools_fmeter_0_F6 [get_bd_pins labtools_fmeter_0/F6] [get_bd_pins vio_0/probe_in10]
  connect_bd_net -net labtools_fmeter_0_F7 [get_bd_pins labtools_fmeter_0/F7] [get_bd_pins vio_0/probe_in14]
  connect_bd_net -net labtools_fmeter_0_F8 [get_bd_pins labtools_fmeter_0/F8] [get_bd_pins vio_0/probe_in15]
  connect_bd_net -net labtools_fmeter_0_F9 [get_bd_pins labtools_fmeter_0/F9] [get_bd_pins vio_0/probe_in62]
  connect_bd_net -net labtools_fmeter_0_update [get_bd_pins labtools_fmeter_0/update] [get_bd_pins vio_0/probe_in4]
  connect_bd_net -net lt_F0_MIG_50mhz [get_bd_pins labtools_fmeter_0/F0] [get_bd_pins vio_0/probe_in0]
  connect_bd_net -net lt_F1_mgt_ref [get_bd_pins labtools_fmeter_0/F1] [get_bd_pins vio_0/probe_in1]
  connect_bd_net -net lt_F2_CLK1B [get_bd_pins labtools_fmeter_0/F2] [get_bd_pins vio_0/probe_in2]
  connect_bd_net -net lt_F3_CLK0 [get_bd_pins labtools_fmeter_0/F3] [get_bd_pins vio_0/probe_in3]
  connect_bd_net -net lt_F4_TRX_LVDS_divclk [get_bd_pins labtools_fmeter_0/F4] [get_bd_pins vio_0/probe_in8]
  connect_bd_net -net mdm_USER2_0_Debug_SYS_Rst_0 [get_bd_pins BOOT_PLL/mb_debug_sys_rst_in] [get_bd_pins ETH0/mb_debug_sys_rst_in] [get_bd_pins mdm_USER2_0/Debug_SYS_Rst]
  connect_bd_net -net microblaze_0_Clk_100MHz [get_bd_ports microblaze_0_Clk_100MHz] [get_bd_pins AXI_TRX/ext_spi_clk] [get_bd_pins CLK1B_CW_0/s_axi_aclk] [get_bd_pins CLOCK/s_axi_aclk] [get_bd_pins ETH0/s_axi_aclk_in] [get_bd_pins EUI48/microblaze_0_Clk_100MHz_o] [get_bd_pins INT_ctrl/processor_clk] [get_bd_pins PWM_lights/s_axi_aclk] [get_bd_pins ROTENC_decoder/CLK] [get_bd_pins SCOPE/s_axi_aclk] [get_bd_pins UART0/s_axi_aclk] [get_bd_pins axi_BOARD_iic_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins labtools_fmeter_0/refclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/M12_ACLK] [get_bd_pins microblaze_0_axi_periph/M13_ACLK] [get_bd_pins microblaze_0_axi_periph/M14_ACLK] [get_bd_pins microblaze_0_axi_periph/M15_ACLK] [get_bd_pins microblaze_0_axi_periph/M16_ACLK] [get_bd_pins microblaze_0_axi_periph/M17_ACLK] [get_bd_pins microblaze_0_axi_periph/M19_ACLK] [get_bd_pins microblaze_0_axi_periph/M20_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rst_mig_7series_0_100M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_ports DDR3_init_calib_complete] [get_bd_pins mig_7series_0/init_calib_complete]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_ports mig_7series_0_mmcm_locked] [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_100M/dcm_locked] [get_bd_pins rst_mig_7series_0_50M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_addn_clk_0_200MHz [get_bd_ports mig_7series_0_ui_addn_clk_0_200MHz] [get_bd_pins mig_7series_0/clk_ref_i] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net mig_7series_0_ui_addn_clk_1_100MHz [get_bd_pins BOARD_clk_wiz_0/clk_in1] [get_bd_pins mig_7series_0/ui_addn_clk_1]
  connect_bd_net -net mig_7series_0_ui_addn_clk_2_50MHz [get_bd_pins CFG/s_axi_aclk] [get_bd_pins lt_fmeter_xlconcat_0/In0] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins mig_7series_0/ui_addn_clk_2] [get_bd_pins rst_mig_7series_0_50M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_ports mig_7series_0_ui_clk_sync_rst] [get_bd_pins BOARD_clk_wiz_0/reset] [get_bd_pins ETH0/ext_reset_in] [get_bd_pins SCOPE/SCLR] [get_bd_pins UART0/ext_reset_in] [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins rst_mig_7series_0_100M/ext_reset_in] [get_bd_pins rst_mig_7series_0_50M/ext_reset_in]
  connect_bd_net -net pulldata_dds_inc_1 [get_bd_ports dds_tx09_inc] [get_bd_pins vio_0/probe_in31]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins BOOT_PLL/reset_in] [get_bd_pins CLOCK/reset]
  connect_bd_net -net rotenc_dec_cnt_en_1 [get_bd_ports rotenc_dec_cnt_en] [get_bd_pins ROTENC_decoder/rotenc_dec_cnt_en]
  connect_bd_net -net rotenc_dec_cnt_up_dwn_1 [get_bd_ports rotenc_dec_cnt_up_dwn] [get_bd_pins ROTENC_decoder/rotenc_dec_cnt_up_dwn]
  connect_bd_net -net rst_mig_7series_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_mig_7series_0_100M/bus_struct_reset]
  connect_bd_net -net rst_mig_7series_0_100M_mb_reset [get_bd_pins INT_ctrl/processor_rst] [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_mig_7series_0_100M/mb_reset]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn [get_bd_pins AXI_TRX/s_axi_aresetn] [get_bd_pins CLK1B_CW_0/s_axi_aresetn] [get_bd_pins CLOCK/s_axi_aresetn] [get_bd_pins ETH0/s_axi_aresetn_in] [get_bd_pins EUI48/s_axi_aresetn] [get_bd_pins INT_ctrl/s_axi_aresetn] [get_bd_pins PWM_lights/s_axi_aresetn] [get_bd_pins ROTENC_decoder/s_axi_aresetn] [get_bd_pins SCOPE/s_axi_aresetn] [get_bd_pins UART0/s_axi_aresetn] [get_bd_pins axi_BOARD_iic_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/M12_ARESETN] [get_bd_pins microblaze_0_axi_periph/M13_ARESETN] [get_bd_pins microblaze_0_axi_periph/M14_ARESETN] [get_bd_pins microblaze_0_axi_periph/M15_ARESETN] [get_bd_pins microblaze_0_axi_periph/M16_ARESETN] [get_bd_pins microblaze_0_axi_periph/M17_ARESETN] [get_bd_pins microblaze_0_axi_periph/M19_ARESETN] [get_bd_pins microblaze_0_axi_periph/M20_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_mig_7series_0_100M/peripheral_aresetn]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset [get_bd_ports rst_mig_7series_0_100M_peripheral_reset] [get_bd_pins ROTENC_decoder/SINIT] [get_bd_pins rst_mig_7series_0_100M/peripheral_reset]
  connect_bd_net -net rst_mig_7series_0_50M_peripheral_aresetn [get_bd_pins CFG/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins rst_mig_7series_0_50M/peripheral_aresetn]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins labtools_fmeter_0/fin] [get_bd_pins lt_fmeter_xlconcat_0/dout]

  # Create address segments
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mdm_USER2_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mdm_USER2_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00004000 -target_address_space [get_bd_addr_spaces mdm_USER2_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_Local_BRAM/dlmb_bram_if_cntlr_0/SLMB1/Mem] -force
  assign_bd_address -offset 0x00010000 -range 0x00004000 -target_address_space [get_bd_addr_spaces mdm_USER2_0/Data_LMB_1] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB1/Mem] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40110000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLK1B_CW_0/CLK1B_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44B00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLK1B_CW_0/CLK1B_clk_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40E00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ETH0/ETH0_axi_ethernetlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs SCOPE/SCOPE_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40210000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs SCOPE/SCOPE_axi_gpio_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A50000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs AXI_TRX/TRX_RX_PUSHDATA_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs AXI_TRX/TRX_CONFIG_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x44A40000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs AXI_TRX/TRX_TX_DDS_ampt_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A30000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs AXI_TRX/TRX_TX_DDS_inc_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40900000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_BOARD_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40120000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs EUI48/axi_EUI48_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40140000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs PWM_lights/axi_PWM_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40130000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ROTENC_decoder/axi_ROTENC_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A20000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs AXI_TRX/TRX_CONFIG_TRX_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40300000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs UART0/axi_UART0_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs UART0/axi_UART0_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK/axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CFG/CFG_axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x41C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00010000 -range 0x00004000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x00010000 -range 0x00004000 -target_address_space [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs INT_ctrl/microblaze_0_axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x80000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BOOT_PLL/BOOT_PLL_microblaze_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BOOT_PLL/BOOT_PLL_microblaze_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00004000 -target_address_space [get_bd_addr_spaces BOOT_PLL/BOOT_PLL_microblaze_0/Data] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_Local_BRAM/dlmb_bram_if_cntlr_0/SLMB/Mem] -force
  assign_bd_address -offset 0x00000000 -range 0x00004000 -target_address_space [get_bd_addr_spaces BOOT_PLL/BOOT_PLL_microblaze_0/Instruction] [get_bd_addr_segs BOOT_PLL/BOOT_PLL_Local_BRAM/ilmb_bram_if_cntlr_0/SLMB/Mem] -force


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


