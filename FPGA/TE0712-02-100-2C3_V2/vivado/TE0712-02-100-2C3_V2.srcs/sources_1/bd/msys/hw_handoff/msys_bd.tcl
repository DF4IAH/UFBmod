
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
set scripts_vivado_version 2019.2
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


# Hierarchical cell: delay_3198clk
proc create_hier_cell_delay_3198clk { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_delay_3198clk() - Empty argument(s)!"}
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

  # Create pins
  create_bd_pin -dir I -from 1 -to 0 -type data D
  create_bd_pin -dir O -from 1 -to 0 -type data Q
  create_bd_pin -dir I -type rst reset_CD100_i
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_i

  # Create instance: c_shift_ram_dly1024_0, and set properties
  set c_shift_ram_dly1024_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_dly1024_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00} \
   CONFIG.DefaultData {00} \
   CONFIG.Depth {1024} \
   CONFIG.OptGoal {Resources} \
   CONFIG.SCLR {true} \
   CONFIG.ShiftRegType {Fixed_Length} \
   CONFIG.SyncInitVal {00} \
   CONFIG.Width {2} \
 ] $c_shift_ram_dly1024_0

  # Create instance: c_shift_ram_dly1024_1, and set properties
  set c_shift_ram_dly1024_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_dly1024_1 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00} \
   CONFIG.DefaultData {00} \
   CONFIG.Depth {1024} \
   CONFIG.OptGoal {Resources} \
   CONFIG.SCLR {true} \
   CONFIG.ShiftRegType {Fixed_Length} \
   CONFIG.SyncInitVal {00} \
   CONFIG.Width {2} \
 ] $c_shift_ram_dly1024_1

  # Create instance: c_shift_ram_dly1024_2, and set properties
  set c_shift_ram_dly1024_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_dly1024_2 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00} \
   CONFIG.DefaultData {00} \
   CONFIG.Depth {1024} \
   CONFIG.OptGoal {Resources} \
   CONFIG.SCLR {true} \
   CONFIG.ShiftRegType {Fixed_Length} \
   CONFIG.SyncInitVal {00} \
   CONFIG.Width {2} \
 ] $c_shift_ram_dly1024_2

  # Create instance: c_shift_ram_dly126_3, and set properties
  set c_shift_ram_dly126_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_dly126_3 ]
  set_property -dict [ list \
   CONFIG.AsyncInitVal {00} \
   CONFIG.DefaultData {00} \
   CONFIG.Depth {126} \
   CONFIG.OptGoal {Resources} \
   CONFIG.SCLR {true} \
   CONFIG.ShiftRegType {Fixed_Length} \
   CONFIG.SyncInitVal {00} \
   CONFIG.Width {2} \
 ] $c_shift_ram_dly126_3

  # Create port connections
  connect_bd_net -net D_1 [get_bd_pins D] [get_bd_pins c_shift_ram_dly1024_0/D]
  connect_bd_net -net c_shift_ram_0_Q [get_bd_pins c_shift_ram_dly1024_0/Q] [get_bd_pins c_shift_ram_dly1024_1/D]
  connect_bd_net -net c_shift_ram_dly1024_1_Q [get_bd_pins c_shift_ram_dly1024_1/Q] [get_bd_pins c_shift_ram_dly1024_2/D]
  connect_bd_net -net c_shift_ram_dly1024_2_Q [get_bd_pins c_shift_ram_dly1024_2/Q] [get_bd_pins c_shift_ram_dly126_3/D]
  connect_bd_net -net c_shift_ram_dly135_4_Q [get_bd_pins Q] [get_bd_pins c_shift_ram_dly126_3/Q]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset [get_bd_pins reset_CD100_i] [get_bd_pins c_shift_ram_dly1024_0/SCLR] [get_bd_pins c_shift_ram_dly1024_1/SCLR] [get_bd_pins c_shift_ram_dly1024_2/SCLR] [get_bd_pins c_shift_ram_dly126_3/SCLR]
  connect_bd_net -net s_axi_aclk_CD100 [get_bd_pins s_axi_aclk_CD100_i] [get_bd_pins c_shift_ram_dly1024_0/CLK] [get_bd_pins c_shift_ram_dly1024_1/CLK] [get_bd_pins c_shift_ram_dly1024_2/CLK] [get_bd_pins c_shift_ram_dly126_3/CLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_rx_FFT_calc
proc create_hier_cell_TRX_rx_FFT_calc { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_rx_FFT_calc() - Empty argument(s)!"}
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

  # Create pins
  create_bd_pin -dir O -from 31 -to 0 Dout
  create_bd_pin -dir O -from 1 -to 0 -type data TRX_pre_fft_subframe_out
  create_bd_pin -dir O cordic_rx09_tlast_out
  create_bd_pin -dir O -from 15 -to 0 cordic_rx09_tuser_out
  create_bd_pin -dir O cordic_rx09_tvalid_out
  create_bd_pin -dir O -type intr event_data_in_channel_halt
  create_bd_pin -dir O -type intr event_frame_started
  create_bd_pin -dir O -type intr event_tlast_missing
  create_bd_pin -dir O -type intr event_tlast_unexpected
  create_bd_pin -dir I -type rst fft_aresetn_in
  create_bd_pin -dir I -from 7 -to 0 fft_config_tdata_in
  create_bd_pin -dir O fft_config_tready_out
  create_bd_pin -dir I fft_config_tvalid_in
  create_bd_pin -dir I fft_data_tlast_in
  create_bd_pin -dir O fft_data_tready_out
  create_bd_pin -dir I fft_data_tvalid_in
  create_bd_pin -dir I -from 1 -to 0 -type data fft_premem_subframe_in
  create_bd_pin -dir I -from 12 -to 0 fft_s_data_rx09_im_in
  create_bd_pin -dir I -from 12 -to 0 fft_s_data_rx09_re_in
  create_bd_pin -dir I -from 12 -to 0 fft_s_data_rx24_im_in
  create_bd_pin -dir I -from 12 -to 0 fft_s_data_rx24_re_in
  create_bd_pin -dir I -type rst rst_mig_7series_0_100M_peripheral_reset_in
  create_bd_pin -dir O -from 31 -to 0 rx09_postmem_re_out
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_in

  # Create instance: cordic_rx09, and set properties
  set cordic_rx09 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_rx09 ]
  set_property -dict [ list \
   CONFIG.ARESETN {true} \
   CONFIG.Coarse_Rotation {true} \
   CONFIG.Compensation_Scaling {Embedded_Multiplier} \
   CONFIG.Data_Format {SignedFraction} \
   CONFIG.Functional_Selection {Translate} \
   CONFIG.Input_Width {24} \
   CONFIG.Output_Width {32} \
   CONFIG.Round_Mode {Nearest_Even} \
   CONFIG.cartesian_has_tlast {true} \
   CONFIG.cartesian_has_tuser {true} \
   CONFIG.cartesian_tuser_width {16} \
   CONFIG.out_tlast_behv {Pass_Cartesian_TLAST} \
 ] $cordic_rx09

  # Create instance: cordic_rx24, and set properties
  set cordic_rx24 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_rx24 ]
  set_property -dict [ list \
   CONFIG.ARESETN {true} \
   CONFIG.Coarse_Rotation {true} \
   CONFIG.Compensation_Scaling {Embedded_Multiplier} \
   CONFIG.Data_Format {SignedFraction} \
   CONFIG.Functional_Selection {Translate} \
   CONFIG.Input_Width {24} \
   CONFIG.Output_Width {32} \
   CONFIG.Round_Mode {Nearest_Even} \
   CONFIG.cartesian_has_tlast {true} \
   CONFIG.cartesian_has_tuser {false} \
   CONFIG.cartesian_tuser_width {1} \
   CONFIG.out_tlast_behv {Pass_Cartesian_TLAST} \
 ] $cordic_rx24

  # Create instance: delay_3198clk
  create_hier_cell_delay_3198clk $hier_obj delay_3198clk

  # Create instance: fft_rx09_s_data_xlconcat_0, and set properties
  set fft_rx09_s_data_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 fft_rx09_s_data_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {13} \
   CONFIG.IN1_WIDTH {3} \
   CONFIG.IN2_WIDTH {13} \
   CONFIG.IN3_WIDTH {3} \
   CONFIG.IN4_WIDTH {13} \
   CONFIG.IN5_WIDTH {3} \
   CONFIG.IN6_WIDTH {13} \
   CONFIG.IN7_WIDTH {3} \
   CONFIG.NUM_PORTS {4} \
 ] $fft_rx09_s_data_xlconcat_0

  # Create instance: fft_rx24_s_data_xlconcat_0, and set properties
  set fft_rx24_s_data_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 fft_rx24_s_data_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {13} \
   CONFIG.IN1_WIDTH {3} \
   CONFIG.IN2_WIDTH {13} \
   CONFIG.IN3_WIDTH {3} \
   CONFIG.NUM_PORTS {4} \
 ] $fft_rx24_s_data_xlconcat_0

  # Create instance: rx09_xlslice_31to00, and set properties
  set rx09_xlslice_31to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 rx09_xlslice_31to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $rx09_xlslice_31to00

  # Create instance: rx24_xlslice_31to00, and set properties
  set rx24_xlslice_31to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 rx24_xlslice_31to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_WIDTH {64} \
   CONFIG.DOUT_WIDTH {32} \
 ] $rx24_xlslice_31to00

  # Create instance: xfft_rx09_dly3198, and set properties
  set xfft_rx09_dly3198 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_rx09_dly3198 ]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.butterfly_type {use_xtremedsp_slices} \
   CONFIG.channels {1} \
   CONFIG.complex_mult_type {use_mults_performance} \
   CONFIG.cyclic_prefix_insertion {false} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {13} \
   CONFIG.memory_options_hybrid {false} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.rounding_modes {convergent_rounding} \
   CONFIG.scaling_options {unscaled} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.target_data_throughput {100} \
   CONFIG.throttle_scheme {realtime} \
   CONFIG.transform_length {1024} \
   CONFIG.xk_index {true} \
 ] $xfft_rx09_dly3198

  # Create instance: xfft_rx24_dly3198, and set properties
  set xfft_rx24_dly3198 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_rx24_dly3198 ]
  set_property -dict [ list \
   CONFIG.aresetn {true} \
   CONFIG.butterfly_type {use_xtremedsp_slices} \
   CONFIG.complex_mult_type {use_mults_performance} \
   CONFIG.data_format {fixed_point} \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {13} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {3} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.rounding_modes {convergent_rounding} \
   CONFIG.scaling_options {unscaled} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.target_data_throughput {50} \
   CONFIG.throttle_scheme {realtime} \
   CONFIG.xk_index {true} \
 ] $xfft_rx24_dly3198

  # Create instance: xlconstant_0x0_len3, and set properties
  set xlconstant_0x0_len3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0x0_len3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_0x0_len3

  # Create port connections
  connect_bd_net -net TRX_pre_fft_subframe_out_0 [get_bd_pins TRX_pre_fft_subframe_out] [get_bd_pins delay_3198clk/Q]
  connect_bd_net -net TRX_rx_xfft_dly8334_m_axis_data_tlast_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tlast] [get_bd_pins xfft_rx09_dly3198/m_axis_data_tlast]
  connect_bd_net -net TRX_rx_xfft_dly8334_m_axis_data_tuser_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tuser] [get_bd_pins xfft_rx09_dly3198/m_axis_data_tuser]
  connect_bd_net -net TRX_rx_xfft_dly8334_m_axis_data_tvalid_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tvalid] [get_bd_pins xfft_rx09_dly3198/m_axis_data_tvalid]
  connect_bd_net -net cordic_rx09_m_axis_dout_tdata [get_bd_pins cordic_rx09/m_axis_dout_tdata] [get_bd_pins rx09_xlslice_31to00/Din]
  connect_bd_net -net cordic_rx09_tlast_out_0 [get_bd_pins cordic_rx09_tlast_out] [get_bd_pins cordic_rx09/m_axis_dout_tlast]
  connect_bd_net -net cordic_rx09_tuser_out_0 [get_bd_pins cordic_rx09_tuser_out] [get_bd_pins cordic_rx09/m_axis_dout_tuser]
  connect_bd_net -net cordic_rx09_tvalid_out_0 [get_bd_pins cordic_rx09_tvalid_out] [get_bd_pins cordic_rx09/m_axis_dout_tvalid]
  connect_bd_net -net cordic_rx24_m_axis_dout_tdata [get_bd_pins cordic_rx24/m_axis_dout_tdata] [get_bd_pins rx24_xlslice_31to00/Din]
  connect_bd_net -net fft_aresetn_in_0 [get_bd_pins fft_aresetn_in] [get_bd_pins cordic_rx09/aresetn] [get_bd_pins cordic_rx24/aresetn] [get_bd_pins xfft_rx09_dly3198/aresetn] [get_bd_pins xfft_rx24_dly3198/aresetn]
  connect_bd_net -net fft_config_tdata_in_0 [get_bd_pins fft_config_tdata_in] [get_bd_pins xfft_rx09_dly3198/s_axis_config_tdata] [get_bd_pins xfft_rx24_dly3198/s_axis_config_tdata]
  connect_bd_net -net fft_config_tready_out_0 [get_bd_pins fft_config_tready_out] [get_bd_pins xfft_rx09_dly3198/s_axis_config_tready]
  connect_bd_net -net fft_config_tvalid_in_0 [get_bd_pins fft_config_tvalid_in] [get_bd_pins xfft_rx09_dly3198/s_axis_config_tvalid] [get_bd_pins xfft_rx24_dly3198/s_axis_config_tvalid]
  connect_bd_net -net fft_data_tlast_in_0 [get_bd_pins fft_data_tlast_in] [get_bd_pins xfft_rx09_dly3198/s_axis_data_tlast] [get_bd_pins xfft_rx24_dly3198/s_axis_data_tlast]
  connect_bd_net -net fft_data_tready_out_0 [get_bd_pins fft_data_tready_out] [get_bd_pins xfft_rx09_dly3198/s_axis_data_tready]
  connect_bd_net -net fft_data_tvalid_in_0 [get_bd_pins fft_data_tvalid_in] [get_bd_pins xfft_rx09_dly3198/s_axis_data_tvalid] [get_bd_pins xfft_rx24_dly3198/s_axis_data_tvalid]
  connect_bd_net -net fft_premem_subframe_in_0 [get_bd_pins fft_premem_subframe_in] [get_bd_pins delay_3198clk/D]
  connect_bd_net -net fft_rx24_s_data_xlconcat_0_dout [get_bd_pins fft_rx24_s_data_xlconcat_0/dout] [get_bd_pins xfft_rx24_dly3198/s_axis_data_tdata]
  connect_bd_net -net fft_s_data_rx09_im_in_0 [get_bd_pins fft_s_data_rx09_im_in] [get_bd_pins fft_rx09_s_data_xlconcat_0/In2]
  connect_bd_net -net fft_s_data_rx09_re_in_0 [get_bd_pins fft_s_data_rx09_re_in] [get_bd_pins fft_rx09_s_data_xlconcat_0/In0]
  connect_bd_net -net fft_s_data_rx24_im_in_0 [get_bd_pins fft_s_data_rx24_im_in] [get_bd_pins fft_rx24_s_data_xlconcat_0/In2]
  connect_bd_net -net fft_s_data_rx24_re_in_0 [get_bd_pins fft_s_data_rx24_re_in] [get_bd_pins fft_rx24_s_data_xlconcat_0/In0]
  connect_bd_net -net fft_s_data_xlconcat_0_dout [get_bd_pins fft_rx09_s_data_xlconcat_0/dout] [get_bd_pins xfft_rx09_dly3198/s_axis_data_tdata]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_0 [get_bd_pins rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins delay_3198clk/reset_CD100_i]
  connect_bd_net -net rx09_postmem_re_0 [get_bd_pins rx09_postmem_re_out] [get_bd_pins rx09_xlslice_31to00/Dout]
  connect_bd_net -net rx24_xlslice_31to00_Dout [get_bd_pins Dout] [get_bd_pins rx24_xlslice_31to00/Dout]
  connect_bd_net -net s_axi_aclk_CD100_0 [get_bd_pins s_axi_aclk_CD100_in] [get_bd_pins cordic_rx09/aclk] [get_bd_pins cordic_rx24/aclk] [get_bd_pins delay_3198clk/s_axi_aclk_CD100_i] [get_bd_pins xfft_rx09_dly3198/aclk] [get_bd_pins xfft_rx24_dly3198/aclk]
  connect_bd_net -net xfft_dly3449_event_data_in_channel_halt_0 [get_bd_pins event_data_in_channel_halt] [get_bd_pins xfft_rx09_dly3198/event_data_in_channel_halt]
  connect_bd_net -net xfft_dly3449_event_frame_started_0 [get_bd_pins event_frame_started] [get_bd_pins xfft_rx09_dly3198/event_frame_started]
  connect_bd_net -net xfft_dly3449_event_tlast_missing_0 [get_bd_pins event_tlast_missing] [get_bd_pins xfft_rx09_dly3198/event_tlast_missing]
  connect_bd_net -net xfft_dly3449_event_tlast_unexpected_0 [get_bd_pins event_tlast_unexpected] [get_bd_pins xfft_rx09_dly3198/event_tlast_unexpected]
  connect_bd_net -net xfft_rx09_dly3198_m_axis_data_tdata_0 [get_bd_pins cordic_rx09/s_axis_cartesian_tdata] [get_bd_pins xfft_rx09_dly3198/m_axis_data_tdata]
  connect_bd_net -net xfft_rx24_dly3198_m_axis_data_tdata_0 [get_bd_pins cordic_rx24/s_axis_cartesian_tdata] [get_bd_pins xfft_rx24_dly3198/m_axis_data_tdata]
  connect_bd_net -net xfft_rx24_dly3198_m_axis_data_tlast_0 [get_bd_pins cordic_rx24/s_axis_cartesian_tlast] [get_bd_pins xfft_rx24_dly3198/m_axis_data_tlast]
  connect_bd_net -net xfft_rx24_dly3198_m_axis_data_tvalid_0 [get_bd_pins cordic_rx24/s_axis_cartesian_tvalid] [get_bd_pins xfft_rx24_dly3198/m_axis_data_tvalid]
  connect_bd_net -net xlconstant_0x0_len3_dout [get_bd_pins fft_rx09_s_data_xlconcat_0/In1] [get_bd_pins fft_rx09_s_data_xlconcat_0/In3] [get_bd_pins fft_rx24_s_data_xlconcat_0/In1] [get_bd_pins fft_rx24_s_data_xlconcat_0/In3] [get_bd_pins xlconstant_0x0_len3/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_rx24_concat
proc create_hier_cell_TRX_rx24_concat { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_rx24_concat() - Empty argument(s)!"}
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
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_rx09_concat() - Empty argument(s)!"}
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

# Hierarchical cell: TRX_rx_FFT_unit
proc create_hier_cell_TRX_rx_FFT_unit { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_rx_FFT_unit() - Empty argument(s)!"}
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

  # Create pins
  create_bd_pin -dir O -from 1 -to 0 -type data TRX_pre_fft_subframe_out_0
  create_bd_pin -dir I -type rst aresetn_CD100_in
  create_bd_pin -dir O cordic_rx09_tlast_out
  create_bd_pin -dir O -from 15 -to 0 cordic_rx09_tuser_out
  create_bd_pin -dir O cordic_rx09_tvalid_out
  create_bd_pin -dir O -from 25 -to 0 dout
  create_bd_pin -dir O -from 15 -to 0 doutb
  create_bd_pin -dir O -type intr event_data_in_channel_halt
  create_bd_pin -dir O -type intr event_frame_started
  create_bd_pin -dir O -type intr event_tlast_missing
  create_bd_pin -dir O -type intr event_tlast_unexpected
  create_bd_pin -dir I -type rst fft_aresetn_in
  create_bd_pin -dir I -from 7 -to 0 fft_config_tdata_in
  create_bd_pin -dir O fft_config_tready_out
  create_bd_pin -dir I fft_config_tvalid_in
  create_bd_pin -dir I fft_data_tlast_in
  create_bd_pin -dir O fft_data_tready_out
  create_bd_pin -dir I fft_data_tvalid_in
  create_bd_pin -dir I -from 1 -to 0 -type data fft_premem_subframe_in
  create_bd_pin -dir O -from 31 -to 0 postmem_rx09_doutb_out
  create_bd_pin -dir O -from 31 -to 0 postmem_rx24_doutb_out
  create_bd_pin -dir I -from 12 -to 0 postmem_rx_addra_in
  create_bd_pin -dir I -from 12 -to 0 postmem_rx_addrb_in
  create_bd_pin -dir I -from 0 -to 0 postmem_rx_wea_in
  create_bd_pin -dir I -from 10 -to 0 premem_rx09_addra_in
  create_bd_pin -dir I -from 25 -to 0 premem_rx09_dina_in
  create_bd_pin -dir I -from 0 -to 0 premem_rx09_wea_in
  create_bd_pin -dir I -from 10 -to 0 premem_rx24_addra_in
  create_bd_pin -dir I -from 25 -to 0 premem_rx24_dina_in
  create_bd_pin -dir I -from 0 -to 0 premem_rx24_wea_in
  create_bd_pin -dir I -from 10 -to 0 premem_rx_addrb_in
  create_bd_pin -dir I -type rst rst_mig_7series_0_100M_peripheral_reset_in
  create_bd_pin -dir I -type clk s_axi_aclk_CD100_in

  # Create instance: TRX_rx_FFT_calc
  create_hier_cell_TRX_rx_FFT_calc $hier_obj TRX_rx_FFT_calc

  # Create instance: post_fft_rx09_blk_mem_gen_0, and set properties
  set post_fft_rx09_blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx09_blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {8192} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx09_blk_mem_gen_0

  # Create instance: post_fft_rx24_blk_mem_gen_0, and set properties
  set post_fft_rx24_blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 post_fft_rx24_blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Core {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {8192} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {32} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $post_fft_rx24_blk_mem_gen_0

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
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.Write_Width_A {26} \
   CONFIG.Write_Width_B {26} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $pre_fft_rx09_blk_mem_gen_0

  # Create instance: pre_fft_rx24_blk_mem_gen_0, and set properties
  set pre_fft_rx24_blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 pre_fft_rx24_blk_mem_gen_0 ]
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
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.Write_Width_A {26} \
   CONFIG.Write_Width_B {26} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $pre_fft_rx24_blk_mem_gen_0

  # Create instance: premem_fft_rx09_xlslice_12to00, and set properties
  set premem_fft_rx09_xlslice_12to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 premem_fft_rx09_xlslice_12to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_WIDTH {26} \
   CONFIG.DOUT_WIDTH {13} \
 ] $premem_fft_rx09_xlslice_12to00

  # Create instance: premem_fft_rx09_xlslice_25to13, and set properties
  set premem_fft_rx09_xlslice_25to13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 premem_fft_rx09_xlslice_25to13 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {26} \
   CONFIG.DOUT_WIDTH {13} \
 ] $premem_fft_rx09_xlslice_25to13

  # Create instance: premem_fft_rx24_xlslice_12to00, and set properties
  set premem_fft_rx24_xlslice_12to00 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 premem_fft_rx24_xlslice_12to00 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_WIDTH {26} \
   CONFIG.DOUT_WIDTH {13} \
 ] $premem_fft_rx24_xlslice_12to00

  # Create instance: premem_fft_rx24_xlslice_25to13, and set properties
  set premem_fft_rx24_xlslice_25to13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 premem_fft_rx24_xlslice_25to13 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {26} \
   CONFIG.DOUT_WIDTH {13} \
 ] $premem_fft_rx24_xlslice_25to13

  # Create port connections
  connect_bd_net -net TRX_rx_FFT_calc_Dout [get_bd_pins TRX_rx_FFT_calc/Dout] [get_bd_pins post_fft_rx24_blk_mem_gen_0/dina]
  connect_bd_net -net TRX_rx_FFT_calc_TRX_pre_fft_subframe_out [get_bd_pins TRX_pre_fft_subframe_out_0] [get_bd_pins TRX_rx_FFT_calc/TRX_pre_fft_subframe_out]
  connect_bd_net -net TRX_rx_FFT_calc_event_data_in_channel_halt_0 [get_bd_pins event_data_in_channel_halt] [get_bd_pins TRX_rx_FFT_calc/event_data_in_channel_halt]
  connect_bd_net -net TRX_rx_FFT_calc_event_frame_started_0 [get_bd_pins event_frame_started] [get_bd_pins TRX_rx_FFT_calc/event_frame_started]
  connect_bd_net -net TRX_rx_FFT_calc_event_tlast_missing_0 [get_bd_pins event_tlast_missing] [get_bd_pins TRX_rx_FFT_calc/event_tlast_missing]
  connect_bd_net -net TRX_rx_FFT_calc_event_tlast_unexpected_0 [get_bd_pins event_tlast_unexpected] [get_bd_pins TRX_rx_FFT_calc/event_tlast_unexpected]
  connect_bd_net -net cordic_rx09_tlast_out_0 [get_bd_pins cordic_rx09_tlast_out] [get_bd_pins TRX_rx_FFT_calc/cordic_rx09_tlast_out]
  connect_bd_net -net cordic_rx09_tuser_out_0 [get_bd_pins cordic_rx09_tuser_out] [get_bd_pins TRX_rx_FFT_calc/cordic_rx09_tuser_out]
  connect_bd_net -net cordic_rx09_tvalid_out_0 [get_bd_pins cordic_rx09_tvalid_out] [get_bd_pins TRX_rx_FFT_calc/cordic_rx09_tvalid_out]
  connect_bd_net -net fft_aresetn_in_0 [get_bd_pins fft_aresetn_in] [get_bd_pins TRX_rx_FFT_calc/fft_aresetn_in]
  connect_bd_net -net fft_config_tdata_in_0 [get_bd_pins fft_config_tdata_in] [get_bd_pins TRX_rx_FFT_calc/fft_config_tdata_in]
  connect_bd_net -net fft_config_tready_out_0 [get_bd_pins fft_config_tready_out] [get_bd_pins TRX_rx_FFT_calc/fft_config_tready_out]
  connect_bd_net -net fft_config_tvalid_in_0 [get_bd_pins fft_config_tvalid_in] [get_bd_pins TRX_rx_FFT_calc/fft_config_tvalid_in]
  connect_bd_net -net fft_data_tlast_in_0 [get_bd_pins fft_data_tlast_in] [get_bd_pins TRX_rx_FFT_calc/fft_data_tlast_in]
  connect_bd_net -net fft_data_tready_out_0 [get_bd_pins fft_data_tready_out] [get_bd_pins TRX_rx_FFT_calc/fft_data_tready_out]
  connect_bd_net -net fft_data_tvalid_in_0 [get_bd_pins fft_data_tvalid_in] [get_bd_pins TRX_rx_FFT_calc/fft_data_tvalid_in]
  connect_bd_net -net fft_premem_subframe_in_0 [get_bd_pins fft_premem_subframe_in] [get_bd_pins TRX_rx_FFT_calc/fft_premem_subframe_in]
  connect_bd_net -net fft_s_data_rx09_im_in_0 [get_bd_pins TRX_rx_FFT_calc/fft_s_data_rx09_im_in] [get_bd_pins premem_fft_rx09_xlslice_25to13/Dout]
  connect_bd_net -net fft_s_data_rx09_re_in_0 [get_bd_pins TRX_rx_FFT_calc/fft_s_data_rx09_re_in] [get_bd_pins premem_fft_rx09_xlslice_12to00/Dout]
  connect_bd_net -net fft_s_data_rx24_im_in_0 [get_bd_pins TRX_rx_FFT_calc/fft_s_data_rx24_im_in] [get_bd_pins premem_fft_rx24_xlslice_25to13/Dout]
  connect_bd_net -net fft_s_data_rx24_re_in_0 [get_bd_pins TRX_rx_FFT_calc/fft_s_data_rx24_re_in] [get_bd_pins premem_fft_rx24_xlslice_12to00/Dout]
  connect_bd_net -net postmem_rx09_doutb_out_0 [get_bd_pins postmem_rx09_doutb_out] [get_bd_pins post_fft_rx09_blk_mem_gen_0/doutb]
  connect_bd_net -net postmem_rx24_doutb_out_0 [get_bd_pins postmem_rx24_doutb_out] [get_bd_pins post_fft_rx24_blk_mem_gen_0/doutb]
  connect_bd_net -net postmem_rx_addra_in_0 [get_bd_pins postmem_rx_addra_in] [get_bd_pins post_fft_rx09_blk_mem_gen_0/addra] [get_bd_pins post_fft_rx24_blk_mem_gen_0/addra]
  connect_bd_net -net postmem_rx_addrb_in_0 [get_bd_pins postmem_rx_addrb_in] [get_bd_pins post_fft_rx09_blk_mem_gen_0/addrb] [get_bd_pins post_fft_rx24_blk_mem_gen_0/addrb]
  connect_bd_net -net postmem_rx_wea_in_0 [get_bd_pins postmem_rx_wea_in] [get_bd_pins post_fft_rx09_blk_mem_gen_0/wea] [get_bd_pins post_fft_rx24_blk_mem_gen_0/wea]
  connect_bd_net -net pre_fft_rx09_blk_mem_gen_0_doutb [get_bd_pins pre_fft_rx09_blk_mem_gen_0/doutb] [get_bd_pins premem_fft_rx09_xlslice_12to00/Din] [get_bd_pins premem_fft_rx09_xlslice_25to13/Din]
  connect_bd_net -net pre_fft_rx24_blk_mem_gen_0_doutb [get_bd_pins pre_fft_rx24_blk_mem_gen_0/doutb] [get_bd_pins premem_fft_rx24_xlslice_12to00/Din] [get_bd_pins premem_fft_rx24_xlslice_25to13/Din]
  connect_bd_net -net premem_rx09_addra_in_0 [get_bd_pins premem_rx09_addra_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/addra]
  connect_bd_net -net premem_rx09_dina_in_0 [get_bd_pins premem_rx09_dina_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/dina]
  connect_bd_net -net premem_rx09_wea_in_0 [get_bd_pins premem_rx09_wea_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/wea]
  connect_bd_net -net premem_rx24_addra_in_0 [get_bd_pins premem_rx24_addra_in] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/addra]
  connect_bd_net -net premem_rx24_dina_in_0 [get_bd_pins premem_rx24_dina_in] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/dina]
  connect_bd_net -net premem_rx24_wea_in_0 [get_bd_pins premem_rx24_wea_in] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/wea]
  connect_bd_net -net premem_rx_addrb_in_0 [get_bd_pins premem_rx_addrb_in] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/addrb] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/addrb]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_0 [get_bd_pins rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins TRX_rx_FFT_calc/rst_mig_7series_0_100M_peripheral_reset_in] [get_bd_pins post_fft_rx09_blk_mem_gen_0/rstb] [get_bd_pins post_fft_rx24_blk_mem_gen_0/rstb] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/rstb] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/rstb]
  connect_bd_net -net rx09_postmem_re_0 [get_bd_pins TRX_rx_FFT_calc/rx09_postmem_re_out] [get_bd_pins post_fft_rx09_blk_mem_gen_0/dina]
  connect_bd_net -net s_axi_aclk_CD100_0 [get_bd_pins s_axi_aclk_CD100_in] [get_bd_pins TRX_rx_FFT_calc/s_axi_aclk_CD100_in] [get_bd_pins post_fft_rx09_blk_mem_gen_0/clka] [get_bd_pins post_fft_rx09_blk_mem_gen_0/clkb] [get_bd_pins post_fft_rx24_blk_mem_gen_0/clka] [get_bd_pins post_fft_rx24_blk_mem_gen_0/clkb] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/clka] [get_bd_pins pre_fft_rx09_blk_mem_gen_0/clkb] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/clka] [get_bd_pins pre_fft_rx24_blk_mem_gen_0/clkb]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_config
proc create_hier_cell_TRX_config { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_config() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_spi


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 TRX_reset
  create_bd_pin -dir O -from 0 -to 0 TRX_rfx_mode
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: TRX_axi_quad_spi_0, and set properties
  set TRX_axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 TRX_axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_FIFO_DEPTH {256} \
   CONFIG.C_SCK_RATIO {4} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $TRX_axi_quad_spi_0

  # Create instance: TRX_gpio_xlslice_0to0_0, and set properties
  set TRX_gpio_xlslice_0to0_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_gpio_xlslice_0to0_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_gpio_xlslice_0to0_0

  # Create instance: TRX_gpio_xlslice_1to1_0, and set properties
  set TRX_gpio_xlslice_1to1_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 TRX_gpio_xlslice_1to1_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $TRX_gpio_xlslice_1to1_0

  # Create instance: axi_TRX_gpio_0, and set properties
  set axi_TRX_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_TRX_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_INTERRUPT_PRESENT {0} \
   CONFIG.C_IS_DUAL {0} \
   CONFIG.C_TRI_DEFAULT_2 {0xFFFFFFFF} \
 ] $axi_TRX_gpio_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_TRX_gpio_0/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins TRX_spi] [get_bd_intf_pins TRX_axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins AXI_LITE] [get_bd_intf_pins TRX_axi_quad_spi_0/AXI_LITE]

  # Create port connections
  connect_bd_net -net TRX_axi_quad_spi_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins TRX_axi_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net TRX_gpio_xlslice_0to0_0_Dout [get_bd_pins TRX_reset] [get_bd_pins TRX_gpio_xlslice_0to0_0/Dout]
  connect_bd_net -net TRX_gpio_xlslice_1to1_0_Dout [get_bd_pins TRX_rfx_mode] [get_bd_pins TRX_gpio_xlslice_1to1_0/Dout]
  connect_bd_net -net axi_TRX_gpio_0_gpio_io_o [get_bd_pins TRX_gpio_xlslice_0to0_0/Din] [get_bd_pins TRX_gpio_xlslice_1to1_0/Din] [get_bd_pins axi_TRX_gpio_0/gpio_io_o]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins TRX_axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_TRX_gpio_0/s_axi_aresetn]
  connect_bd_net -net s_axi_aclk_CD100 [get_bd_pins s_axi_aclk] [get_bd_pins TRX_axi_quad_spi_0/ext_spi_clk] [get_bd_pins TRX_axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_TRX_gpio_0/s_axi_aclk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_clock
proc create_hier_cell_TRX_clock { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_clock() - Empty argument(s)!"}
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

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_N
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_P
  create_bd_pin -dir I -type clk TRX_clk_26MHz

  # Create instance: TRX_PLL_clk_wiz_0, and set properties
  set TRX_PLL_clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 TRX_PLL_clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {100.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {352.369} \
   CONFIG.CLKOUT1_PHASE_ERROR {261.747} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.000} \
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
   CONFIG.FEEDBACK_SOURCE {FDBK_ONCHIP} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {50} \
   CONFIG.MMCM_CLKIN1_PERIOD {38.462} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {52} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $TRX_PLL_clk_wiz_0

  # Create instance: TRX_PLL_util_ds_buf_0, and set properties
  set TRX_PLL_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 TRX_PLL_util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $TRX_PLL_util_ds_buf_0

  # Create port connections
  connect_bd_net -net TRX_PLL_clk_wiz_0_clk_out1 [get_bd_pins TRX_PLL_clk_wiz_0/clk_out1] [get_bd_pins TRX_PLL_util_ds_buf_0/OBUF_IN]
  connect_bd_net -net TRX_PLL_util_ds_buf_0_OBUF_DS_N [get_bd_pins TRX_PLL_clk_25MHz_N] [get_bd_pins TRX_PLL_util_ds_buf_0/OBUF_DS_N]
  connect_bd_net -net TRX_PLL_util_ds_buf_0_OBUF_DS_P [get_bd_pins TRX_PLL_clk_25MHz_P] [get_bd_pins TRX_PLL_util_ds_buf_0/OBUF_DS_P]
  connect_bd_net -net TRX_clk_26MHz_1 [get_bd_pins TRX_clk_26MHz] [get_bd_pins TRX_PLL_clk_wiz_0/clk_in1]
  connect_bd_net -net TRX_clk_wiz_0_clkfb_out [get_bd_pins TRX_PLL_clk_wiz_0/clkfb_in] [get_bd_pins TRX_PLL_clk_wiz_0/clkfb_out]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX_LVDS
proc create_hier_cell_TRX_LVDS { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX_LVDS() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_rx_clk_64MHz

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_tx_clk


  # Create pins
  create_bd_pin -dir O -from 31 -to 0 TRX_rx09_fifo_o
  create_bd_pin -dir O TRX_rx09_fifo_valid_o
  create_bd_pin -dir O -from 31 -to 0 TRX_rx24_fifo_o
  create_bd_pin -dir O TRX_rx24_fifo_valid_o
  create_bd_pin -dir I -from 1 -to 0 TRX_rx_data_n
  create_bd_pin -dir I -from 1 -to 0 TRX_rx_data_p
  create_bd_pin -dir O -from 1 -to 0 TRX_tx_data_n
  create_bd_pin -dir O -from 1 -to 0 TRX_tx_data_p
  create_bd_pin -dir I -type rst clk_reset
  create_bd_pin -dir O -type clk clkdiv_CD016_o
  create_bd_pin -dir I -type rst io_reset
  create_bd_pin -dir I ref_clock
  create_bd_pin -dir I rst
  create_bd_pin -dir O -from 8 -to 0 rx09_rd_data_count_CD100_o
  create_bd_pin -dir I -type clk s_axi_aclk

  # Create instance: TRX_LVDS_selectio_wiz_0, and set properties
  set TRX_LVDS_selectio_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 TRX_LVDS_selectio_wiz_0 ]
  set_property -dict [ list \
   CONFIG.BUS_DIR {SEPARATE} \
   CONFIG.BUS_IO_STD {LVDS_25} \
   CONFIG.BUS_SIG_TYPE {DIFF} \
   CONFIG.CLK_FWD {true} \
   CONFIG.CLK_FWD_IO_STD {LVDS_25} \
   CONFIG.CLK_FWD_SIG_TYPE {DIFF} \
   CONFIG.IDELAY_HIGH_PERF_MODE {true} \
   CONFIG.SELIO_ACTIVE_EDGE {DDR} \
   CONFIG.SELIO_BUS_IN_DELAY {FIXED} \
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

  # Create instance: TRX_rx09_concat
  create_hier_cell_TRX_rx09_concat $hier_obj TRX_rx09_concat

  # Create instance: TRX_rx09_fifo_generator_0, and set properties
  set TRX_rx09_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 TRX_rx09_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count_Width {11} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {2045} \
   CONFIG.Full_Threshold_Negate_Value {2044} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {2048} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {512} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Data_Count {true} \
   CONFIG.Write_Data_Count_Width {11} \
   CONFIG.synchronization_stages {3} \
 ] $TRX_rx09_fifo_generator_0

  # Create instance: TRX_rx24_concat
  create_hier_cell_TRX_rx24_concat $hier_obj TRX_rx24_concat

  # Create instance: TRX_rx24_fifo_generator_0, and set properties
  set TRX_rx24_fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 TRX_rx24_fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count_Width {11} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {2045} \
   CONFIG.Full_Threshold_Negate_Value {2044} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {2048} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {512} \
   CONFIG.Read_Data_Count {false} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Valid_Flag {true} \
   CONFIG.Write_Data_Count {false} \
   CONFIG.Write_Data_Count_Width {11} \
   CONFIG.synchronization_stages {3} \
 ] $TRX_rx24_fifo_generator_0

  # Create instance: xlconstant_0x0_len2, and set properties
  set xlconstant_0x0_len2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0x0_len2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_0x0_len2

  # Create instance: xlconstant_0x4411_len16, and set properties
  set xlconstant_0x4411_len16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0x4411_len16 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {17425} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_0x4411_len16

  # Create instance: xlconstant_1_len1, and set properties
  set xlconstant_1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_1_len1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins TRX_tx_clk] [get_bd_intf_pins TRX_LVDS_selectio_wiz_0/diff_clk_to_pins]
  connect_bd_intf_net -intf_net rx_clk_CD064 [get_bd_intf_pins TRX_rx_clk_64MHz] [get_bd_intf_pins TRX_LVDS_selectio_wiz_0/diff_clk_in]

  # Create port connections
  connect_bd_net -net TRX_proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins TRX_rx09_fifo_generator_0/rst] [get_bd_pins TRX_rx24_fifo_generator_0/rst]
  connect_bd_net -net TRX_rx09_concat_CD016 [get_bd_pins TRX_rx09_concat/rx09_o] [get_bd_pins TRX_rx09_fifo_generator_0/din]
  connect_bd_net -net TRX_rx09_fifo_generator_0_dout [get_bd_pins TRX_rx09_fifo_o] [get_bd_pins TRX_rx09_fifo_generator_0/dout]
  connect_bd_net -net TRX_rx09_fifo_generator_0_rd_data_count [get_bd_pins rx09_rd_data_count_CD100_o] [get_bd_pins TRX_rx09_fifo_generator_0/rd_data_count]
  connect_bd_net -net TRX_rx09_fifo_generator_0_valid [get_bd_pins TRX_rx09_fifo_valid_o] [get_bd_pins TRX_rx09_fifo_generator_0/valid]
  connect_bd_net -net TRX_rx24_concat_CD016 [get_bd_pins TRX_rx24_concat/rx24_o] [get_bd_pins TRX_rx24_fifo_generator_0/din]
  connect_bd_net -net TRX_rx24_fifo_generator_0_dout [get_bd_pins TRX_rx24_fifo_o] [get_bd_pins TRX_rx24_fifo_generator_0/dout]
  connect_bd_net -net TRX_rx24_fifo_generator_0_valid [get_bd_pins TRX_rx24_fifo_valid_o] [get_bd_pins TRX_rx24_fifo_generator_0/valid]
  connect_bd_net -net TRX_rx_clkdiv_CD016 [get_bd_pins clkdiv_CD016_o] [get_bd_pins TRX_LVDS_selectio_wiz_0/clk_div_out] [get_bd_pins TRX_rx09_fifo_generator_0/wr_clk] [get_bd_pins TRX_rx24_fifo_generator_0/wr_clk]
  connect_bd_net -net TRX_rx_data_n_1 [get_bd_pins TRX_rx_data_n] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_in_from_pins_n]
  connect_bd_net -net TRX_rx_data_p_1 [get_bd_pins TRX_rx_data_p] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_in_from_pins_p]
  connect_bd_net -net TRX_rx_lvds_16bits_CD016 [get_bd_pins TRX_LVDS_selectio_wiz_0/data_in_to_device] [get_bd_pins TRX_rx09_concat/Din] [get_bd_pins TRX_rx24_concat/Din]
  connect_bd_net -net TRX_rx_selectio_io_reset [get_bd_pins io_reset] [get_bd_pins TRX_LVDS_selectio_wiz_0/io_reset]
  connect_bd_net -net TRX_rx_selectio_wiz_0_data_out_to_pins_n [get_bd_pins TRX_tx_data_n] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_out_to_pins_n]
  connect_bd_net -net TRX_rx_selectio_wiz_0_data_out_to_pins_p [get_bd_pins TRX_tx_data_p] [get_bd_pins TRX_LVDS_selectio_wiz_0/data_out_to_pins_p]
  connect_bd_net -net c_0xaa55_len16 [get_bd_pins TRX_LVDS_selectio_wiz_0/data_out_from_device] [get_bd_pins xlconstant_0x4411_len16/dout]
  connect_bd_net -net c_1 [get_bd_pins TRX_rx09_fifo_generator_0/rd_en] [get_bd_pins TRX_rx09_fifo_generator_0/wr_en] [get_bd_pins TRX_rx24_fifo_generator_0/rd_en] [get_bd_pins TRX_rx24_fifo_generator_0/wr_en] [get_bd_pins xlconstant_1_len1/dout]
  connect_bd_net -net ref_clock_200MHz [get_bd_pins ref_clock] [get_bd_pins TRX_LVDS_selectio_wiz_0/ref_clock]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset [get_bd_pins clk_reset] [get_bd_pins TRX_LVDS_selectio_wiz_0/clk_reset]
  connect_bd_net -net s_axi_aclk_CD100 [get_bd_pins s_axi_aclk] [get_bd_pins TRX_rx09_fifo_generator_0/rd_clk] [get_bd_pins TRX_rx24_fifo_generator_0/rd_clk]
  connect_bd_net -net xlconstant_0x0_len2_dout [get_bd_pins TRX_LVDS_selectio_wiz_0/bitslip] [get_bd_pins xlconstant_0x0_len2/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ETH0_LEDs
proc create_hier_cell_ETH0_LEDs { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ETH0_LEDs() - Empty argument(s)!"}
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

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 ETH0_DA_G
  create_bd_pin -dir O ETH0_DA_Y
  create_bd_pin -dir I -from 0 -to 0 ETH0_LINK_LED
  create_bd_pin -dir I -type clk clk_in
  create_bd_pin -dir O -from 2 -to 0 -type data data_in_to_device
  create_bd_pin -dir I -type rst io_reset
  create_bd_pin -dir I -from 0 -to 0 phy_tx_en
  create_bd_pin -dir I -from 0 -to 0 s_mii_rx_dv

  # Create instance: ETH0_selectio_wiz_0, and set properties
  set ETH0_selectio_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 ETH0_selectio_wiz_0 ]
  set_property -dict [ list \
   CONFIG.BUS_IO_STD {LVCMOS33} \
   CONFIG.CLK_FWD_IO_STD {LVCMOS33} \
   CONFIG.SELIO_CLK_BUF {MMCM} \
   CONFIG.SELIO_CLK_IO_STD {LVCMOS33} \
   CONFIG.SERIALIZATION_FACTOR {4} \
   CONFIG.SYSTEM_DATA_WIDTH {3} \
 ] $ETH0_selectio_wiz_0

  # Create instance: ETH0_util_reduced_logic_0, and set properties
  set ETH0_util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 ETH0_util_reduced_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {2} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $ETH0_util_reduced_logic_0

  # Create instance: ETH0_xlconcat_0, and set properties
  set ETH0_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ETH0_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {3} \
 ] $ETH0_xlconcat_0

  # Create instance: ETH0_xlslice_0to1_0, and set properties
  set ETH0_xlslice_0to1_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ETH0_xlslice_0to1_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {3} \
   CONFIG.DOUT_WIDTH {2} \
 ] $ETH0_xlslice_0to1_0

  # Create instance: ETH0_xlslice_2to2_0, and set properties
  set ETH0_xlslice_2to2_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ETH0_xlslice_2to2_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $ETH0_xlslice_2to2_0

  # Create port connections
  connect_bd_net -net ETH0_LINK_LED_1 [get_bd_pins ETH0_LINK_LED] [get_bd_pins ETH0_xlconcat_0/In2]
  connect_bd_net -net ETH0_selectio_wiz_0_data_in_to_device [get_bd_pins data_in_to_device] [get_bd_pins ETH0_selectio_wiz_0/data_in_to_device] [get_bd_pins ETH0_xlslice_0to1_0/Din] [get_bd_pins ETH0_xlslice_2to2_0/Din]
  connect_bd_net -net ETH0_util_reduced_logic_0_Res [get_bd_pins ETH0_DA_Y] [get_bd_pins ETH0_util_reduced_logic_0/Res]
  connect_bd_net -net ETH0_xlconcat_0_dout [get_bd_pins ETH0_selectio_wiz_0/data_in_from_pins] [get_bd_pins ETH0_xlconcat_0/dout]
  connect_bd_net -net ETH0_xlslice_0to1_0_Dout [get_bd_pins ETH0_util_reduced_logic_0/Op1] [get_bd_pins ETH0_xlslice_0to1_0/Dout]
  connect_bd_net -net ETH0_xlslice_2to2_0_Dout [get_bd_pins ETH0_DA_G] [get_bd_pins ETH0_xlslice_2to2_0/Dout]
  connect_bd_net -net clk_in_1 [get_bd_pins clk_in] [get_bd_pins ETH0_selectio_wiz_0/clk_in]
  connect_bd_net -net io_reset_1 [get_bd_pins io_reset] [get_bd_pins ETH0_selectio_wiz_0/io_reset]
  connect_bd_net -net phy_tx_en_1 [get_bd_pins phy_tx_en] [get_bd_pins ETH0_xlconcat_0/In1]
  connect_bd_net -net s_mii_rx_dv_1 [get_bd_pins s_mii_rx_dv] [get_bd_pins ETH0_xlconcat_0/In0]

  # Restore current instance
  current_bd_instance $oldCurInst
}

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

# Hierarchical cell: UART0
proc create_hier_cell_UART0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_UART0() - Empty argument(s)!"}
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
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_reset
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
  connect_bd_net -net rst_mig_7series_0_12M_peripheral_reset [get_bd_pins peripheral_reset] [get_bd_pins rst_mig_7series_0_12M/peripheral_reset]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_UART0_gpio_0/s_axi_aclk] [get_bd_pins axi_UART0_uartlite_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_UART0_gpio_0/s_axi_aresetn] [get_bd_pins axi_UART0_uartlite_0/s_axi_aresetn]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins slowest_sync_clk] [get_bd_pins rst_mig_7series_0_12M/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TRX
proc create_hier_cell_TRX { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_TRX() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 AXI_LITE

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_rx_clk_64MHz

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_spi

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_tx_clk


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_N
  create_bd_pin -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_P
  create_bd_pin -dir I -type clk TRX_clk_26MHz
  create_bd_pin -dir O -from 1 -to 0 -type data TRX_pre_fft_subframe_out
  create_bd_pin -dir O -from 0 -to 0 TRX_reset
  create_bd_pin -dir O -from 0 -to 0 TRX_rfx_mode
  create_bd_pin -dir O -from 31 -to 0 TRX_rx09_fifo_o
  create_bd_pin -dir O TRX_rx09_fifo_valid_o
  create_bd_pin -dir O -from 31 -to 0 TRX_rx24_fifo_o
  create_bd_pin -dir O TRX_rx24_fifo_valid_o
  create_bd_pin -dir I -from 1 -to 0 TRX_rx_data_n
  create_bd_pin -dir I -from 1 -to 0 TRX_rx_data_p
  create_bd_pin -dir O -from 1 -to 0 TRX_tx_data_n
  create_bd_pin -dir O -from 1 -to 0 TRX_tx_data_p
  create_bd_pin -dir O -type clk clk_div_out
  create_bd_pin -dir O cordic_rx09_tlast_out
  create_bd_pin -dir O -from 15 -to 0 cordic_rx09_tuser_out
  create_bd_pin -dir O cordic_rx09_tvalid_out
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir O -from 25 -to 0 dout
  create_bd_pin -dir O -from 15 -to 0 doutb
  create_bd_pin -dir O -type intr event_data_in_channel_halt
  create_bd_pin -dir O -type intr event_frame_started
  create_bd_pin -dir O -type intr event_tlast_missing
  create_bd_pin -dir O -type intr event_tlast_unexpected
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -type rst fft_aresetn_in
  create_bd_pin -dir I -from 7 -to 0 fft_config_tdata_in
  create_bd_pin -dir O fft_config_tready_out
  create_bd_pin -dir I fft_config_tvalid_in
  create_bd_pin -dir I fft_data_tlast_in
  create_bd_pin -dir O fft_data_tready_out
  create_bd_pin -dir I fft_data_tvalid_in
  create_bd_pin -dir I -from 1 -to 0 -type data fft_premem_subframe_in
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir O -from 31 -to 0 postmem_rx09_doutb_out
  create_bd_pin -dir O -from 31 -to 0 postmem_rx24_doutb_out
  create_bd_pin -dir I -from 12 -to 0 postmem_rx_addra_in
  create_bd_pin -dir I -from 12 -to 0 postmem_rx_addrb_in
  create_bd_pin -dir I -from 0 -to 0 postmem_rx_wea_in
  create_bd_pin -dir I -from 10 -to 0 premem_rx09_addra_in
  create_bd_pin -dir I -from 25 -to 0 premem_rx09_dina_in
  create_bd_pin -dir I -from 0 -to 0 premem_rx09_wea_in
  create_bd_pin -dir I -from 10 -to 0 premem_rx24_addra_in
  create_bd_pin -dir I -from 25 -to 0 premem_rx24_dina_in
  create_bd_pin -dir I -from 0 -to 0 premem_rx24_wea_in
  create_bd_pin -dir I -from 10 -to 0 premem_rx_addrb_in
  create_bd_pin -dir O -from 8 -to 0 rd_data_count_CD100_o
  create_bd_pin -dir I ref_clock
  create_bd_pin -dir I -type rst reset_CD100_i
  create_bd_pin -dir O -from 31 -to 0 rx09_32bits_CD100_o
  create_bd_pin -dir O -from 31 -to 0 rx24_32bits_CD100_o
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: TRX_LVDS
  create_hier_cell_TRX_LVDS $hier_obj TRX_LVDS

  # Create instance: TRX_clock
  create_hier_cell_TRX_clock $hier_obj TRX_clock

  # Create instance: TRX_config
  create_hier_cell_TRX_config $hier_obj TRX_config

  # Create instance: TRX_proc_sys_reset_0, and set properties
  set TRX_proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 TRX_proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $TRX_proc_sys_reset_0

  # Create instance: TRX_rx_FFT_unit
  create_hier_cell_TRX_rx_FFT_unit $hier_obj TRX_rx_FFT_unit

  # Create instance: counter_binary_0, and set properties
  set counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Count_Mode {UP} \
   CONFIG.Final_Count_Value {40} \
   CONFIG.Output_Width {7} \
   CONFIG.Restrict_Count {false} \
   CONFIG.SCLR {true} \
   CONFIG.SSET {false} \
   CONFIG.Sync_Threshold_Output {true} \
   CONFIG.Threshold_Value {40} \
 ] $counter_binary_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins TRX_spi] [get_bd_intf_pins TRX_config/TRX_spi]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins TRX_tx_clk] [get_bd_intf_pins TRX_LVDS/TRX_tx_clk]
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins TRX_config/S_AXI]
  connect_bd_intf_net -intf_net TRX_rx_clk_64MHz_1 [get_bd_intf_pins TRX_rx_clk_64MHz] [get_bd_intf_pins TRX_LVDS/TRX_rx_clk_64MHz]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins AXI_LITE] [get_bd_intf_pins TRX_config/AXI_LITE]

  # Create port connections
  connect_bd_net -net TRX_axi_quad_spi_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins TRX_config/ip2intc_irpt]
  connect_bd_net -net TRX_clk_26MHz_1 [get_bd_pins TRX_clk_26MHz] [get_bd_pins TRX_clock/TRX_clk_26MHz]
  connect_bd_net -net TRX_clock_TRX_PLL_clk_25MHz_N [get_bd_pins TRX_PLL_clk_25MHz_N] [get_bd_pins TRX_clock/TRX_PLL_clk_25MHz_N]
  connect_bd_net -net TRX_clock_TRX_PLL_clk_25MHz_P [get_bd_pins TRX_PLL_clk_25MHz_P] [get_bd_pins TRX_clock/TRX_PLL_clk_25MHz_P]
  connect_bd_net -net TRX_config_TRX_reset [get_bd_pins TRX_reset] [get_bd_pins TRX_config/TRX_reset]
  connect_bd_net -net TRX_config_TRX_rfx_mode [get_bd_pins TRX_rfx_mode] [get_bd_pins TRX_config/TRX_rfx_mode]
  connect_bd_net -net TRX_proc_sys_reset_0_peripheral_reset_CD016 [get_bd_pins TRX_LVDS/rst] [get_bd_pins TRX_proc_sys_reset_0/peripheral_reset] [get_bd_pins counter_binary_0/SCLR]
  connect_bd_net -net TRX_rx09_fifo_o_1 [get_bd_pins TRX_rx09_fifo_o] [get_bd_pins TRX_LVDS/TRX_rx09_fifo_o]
  connect_bd_net -net TRX_rx09_fifo_valid_o_1 [get_bd_pins TRX_rx09_fifo_valid_o] [get_bd_pins TRX_LVDS/TRX_rx09_fifo_valid_o]
  connect_bd_net -net TRX_rx24_fifo_o_1 [get_bd_pins TRX_rx24_fifo_o] [get_bd_pins TRX_LVDS/TRX_rx24_fifo_o]
  connect_bd_net -net TRX_rx24_fifo_valid_o_1 [get_bd_pins TRX_rx24_fifo_valid_o] [get_bd_pins TRX_LVDS/TRX_rx24_fifo_valid_o]
  connect_bd_net -net TRX_rx_FFT_dout [get_bd_pins dout] [get_bd_pins TRX_rx_FFT_unit/dout]
  connect_bd_net -net TRX_rx_FFT_doutb [get_bd_pins doutb] [get_bd_pins TRX_rx_FFT_unit/doutb]
  connect_bd_net -net TRX_rx_FFT_unit_TRX_pre_fft_subframe_out_0 [get_bd_pins TRX_pre_fft_subframe_out] [get_bd_pins TRX_rx_FFT_unit/TRX_pre_fft_subframe_out_0]
  connect_bd_net -net TRX_rx_FFT_unit_event_data_in_channel_halt_0 [get_bd_pins event_data_in_channel_halt] [get_bd_pins TRX_rx_FFT_unit/event_data_in_channel_halt]
  connect_bd_net -net TRX_rx_FFT_unit_event_frame_started_0 [get_bd_pins event_frame_started] [get_bd_pins TRX_rx_FFT_unit/event_frame_started]
  connect_bd_net -net TRX_rx_FFT_unit_event_tlast_missing_0 [get_bd_pins event_tlast_missing] [get_bd_pins TRX_rx_FFT_unit/event_tlast_missing]
  connect_bd_net -net TRX_rx_FFT_unit_event_tlast_unexpected_0 [get_bd_pins event_tlast_unexpected] [get_bd_pins TRX_rx_FFT_unit/event_tlast_unexpected]
  connect_bd_net -net TRX_rx_LVDS_rd_data_count_CD100 [get_bd_pins rd_data_count_CD100_o] [get_bd_pins TRX_LVDS/rx09_rd_data_count_CD100_o]
  connect_bd_net -net TRX_rx_clkdiv_CD016 [get_bd_pins clk_div_out] [get_bd_pins TRX_LVDS/clkdiv_CD016_o] [get_bd_pins TRX_proc_sys_reset_0/slowest_sync_clk] [get_bd_pins counter_binary_0/CLK]
  connect_bd_net -net TRX_rx_data_n_1 [get_bd_pins TRX_rx_data_n] [get_bd_pins TRX_LVDS/TRX_rx_data_n]
  connect_bd_net -net TRX_rx_data_p_1 [get_bd_pins TRX_rx_data_p] [get_bd_pins TRX_LVDS/TRX_rx_data_p]
  connect_bd_net -net TRX_rx_selectio_wiz_0_data_out_to_pins_n [get_bd_pins TRX_tx_data_n] [get_bd_pins TRX_LVDS/TRX_tx_data_n]
  connect_bd_net -net TRX_rx_selectio_wiz_0_data_out_to_pins_p [get_bd_pins TRX_tx_data_p] [get_bd_pins TRX_LVDS/TRX_tx_data_p]
  connect_bd_net -net cordic_rx09_tlast_out_0 [get_bd_pins cordic_rx09_tlast_out] [get_bd_pins TRX_rx_FFT_unit/cordic_rx09_tlast_out]
  connect_bd_net -net cordic_rx09_tuser_out_0 [get_bd_pins cordic_rx09_tuser_out] [get_bd_pins TRX_rx_FFT_unit/cordic_rx09_tuser_out]
  connect_bd_net -net cordic_rx09_tvalid_out_0 [get_bd_pins cordic_rx09_tvalid_out] [get_bd_pins TRX_rx_FFT_unit/cordic_rx09_tvalid_out]
  connect_bd_net -net counter_binary_0_THRESH0 [get_bd_pins counter_binary_0/THRESH0] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net fft_aresetn_in_0 [get_bd_pins fft_aresetn_in] [get_bd_pins TRX_rx_FFT_unit/fft_aresetn_in]
  connect_bd_net -net fft_config_tdata_in_0 [get_bd_pins fft_config_tdata_in] [get_bd_pins TRX_rx_FFT_unit/fft_config_tdata_in]
  connect_bd_net -net fft_config_tready_out_0 [get_bd_pins fft_config_tready_out] [get_bd_pins TRX_rx_FFT_unit/fft_config_tready_out]
  connect_bd_net -net fft_config_tvalid_in_0 [get_bd_pins fft_config_tvalid_in] [get_bd_pins TRX_rx_FFT_unit/fft_config_tvalid_in]
  connect_bd_net -net fft_data_tlast_in_0 [get_bd_pins fft_data_tlast_in] [get_bd_pins TRX_rx_FFT_unit/fft_data_tlast_in]
  connect_bd_net -net fft_data_tready_out_0 [get_bd_pins fft_data_tready_out] [get_bd_pins TRX_rx_FFT_unit/fft_data_tready_out]
  connect_bd_net -net fft_data_tvalid_in_0 [get_bd_pins fft_data_tvalid_in] [get_bd_pins TRX_rx_FFT_unit/fft_data_tvalid_in]
  connect_bd_net -net fft_premem_subframe_in_0 [get_bd_pins fft_premem_subframe_in] [get_bd_pins TRX_rx_FFT_unit/fft_premem_subframe_in]
  connect_bd_net -net io_reset_0 [get_bd_pins TRX_LVDS/io_reset] [get_bd_pins counter_binary_0/CE] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins dcm_locked] [get_bd_pins TRX_proc_sys_reset_0/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_addn_clk_0_200MHz [get_bd_pins ref_clock] [get_bd_pins TRX_LVDS/ref_clock]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins ext_reset_in] [get_bd_pins TRX_proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net postmem_rx09_doutb_out_0 [get_bd_pins postmem_rx09_doutb_out] [get_bd_pins TRX_rx_FFT_unit/postmem_rx09_doutb_out]
  connect_bd_net -net postmem_rx24_doutb_out_0 [get_bd_pins postmem_rx24_doutb_out] [get_bd_pins TRX_rx_FFT_unit/postmem_rx24_doutb_out]
  connect_bd_net -net postmem_rx_addra_in_0 [get_bd_pins postmem_rx_addra_in] [get_bd_pins TRX_rx_FFT_unit/postmem_rx_addra_in]
  connect_bd_net -net postmem_rx_addrb_in_0 [get_bd_pins postmem_rx_addrb_in] [get_bd_pins TRX_rx_FFT_unit/postmem_rx_addrb_in]
  connect_bd_net -net postmem_rx_wea_in_0 [get_bd_pins postmem_rx_wea_in] [get_bd_pins TRX_rx_FFT_unit/postmem_rx_wea_in]
  connect_bd_net -net premem_rx09_addra_in_0 [get_bd_pins premem_rx09_addra_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx09_addra_in]
  connect_bd_net -net premem_rx09_dina_in_0 [get_bd_pins premem_rx09_dina_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx09_dina_in]
  connect_bd_net -net premem_rx09_wea_in_0 [get_bd_pins premem_rx09_wea_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx09_wea_in]
  connect_bd_net -net premem_rx24_addra_in_0 [get_bd_pins premem_rx24_addra_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx24_addra_in]
  connect_bd_net -net premem_rx24_dina_in_0 [get_bd_pins premem_rx24_dina_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx24_dina_in]
  connect_bd_net -net premem_rx24_wea_in_0 [get_bd_pins premem_rx24_wea_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx24_wea_in]
  connect_bd_net -net premem_rx_addrb_in_0 [get_bd_pins premem_rx_addrb_in] [get_bd_pins TRX_rx_FFT_unit/premem_rx_addrb_in]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn_0 [get_bd_pins s_axi_aresetn] [get_bd_pins TRX_config/s_axi_aresetn] [get_bd_pins TRX_rx_FFT_unit/aresetn_CD100_in]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset_0 [get_bd_pins reset_CD100_i] [get_bd_pins TRX_LVDS/clk_reset] [get_bd_pins TRX_rx_FFT_unit/rst_mig_7series_0_100M_peripheral_reset_in]
  connect_bd_net -net s_axi_aclk_CD100_0 [get_bd_pins s_axi_aclk] [get_bd_pins TRX_LVDS/s_axi_aclk] [get_bd_pins TRX_config/s_axi_aclk] [get_bd_pins TRX_rx_FFT_unit/s_axi_aclk_CD100_in]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ROTENC_decoder
proc create_hier_cell_ROTENC_decoder { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ROTENC_decoder() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -from 0 -to 0 BOARD_ROTENC_PUSH
  create_bd_pin -dir I -type clk CLK
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
   CONFIG.SINIT_Value {80000000} \
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
   CONFIG.C_TRI_DEFAULT_2 {0x0000FFFF} \
 ] $axi_ROTENC_gpio_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_ROTENC_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net BOARD_ROTENC_PUSH_1 [get_bd_pins BOARD_ROTENC_PUSH] [get_bd_pins axi_ROTENC_gpio_0/gpio2_io_i]
  connect_bd_net -net CLK_1 [get_bd_pins CLK] [get_bd_pins ROTENC_counter_32bit_0/CLK] [get_bd_pins axi_ROTENC_gpio_0/s_axi_aclk]
  connect_bd_net -net ROTENC_counter_32bit_0_Q [get_bd_pins ROTENC_counter_32bit_0/Q] [get_bd_pins axi_ROTENC_gpio_0/gpio_io_i]
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
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_PWM_lights() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir I -from 0 -to 0 In0
  create_bd_pin -dir I -from 0 -to 0 In1
  create_bd_pin -dir I -from 2 -to 0 -type data In2
  create_bd_pin -dir I -from 0 -to 0 In3
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
   CONFIG.A_Type {Signed} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Signed} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $LCD_BL_compare_0

  # Create instance: LCD_BL_xlslice_0, and set properties
  set LCD_BL_xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LCD_BL_xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $LCD_BL_xlslice_0

  # Create instance: PWM_GPIO2_xlconcat_0, and set properties
  set PWM_GPIO2_xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 PWM_GPIO2_xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {3} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {26} \
   CONFIG.IN5_WIDTH {27} \
   CONFIG.NUM_PORTS {5} \
 ] $PWM_GPIO2_xlconcat_0

  # Create instance: PWM_GPIO_xlslice_1, and set properties
  set PWM_GPIO_xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_GPIO_xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $PWM_GPIO_xlslice_1

  # Create instance: PWM_counter_binary_0, and set properties
  set PWM_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 PWM_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Implementation {DSP48} \
   CONFIG.Output_Width {21} \
 ] $PWM_counter_binary_0

  # Create instance: PWM_ctr_xlslice_0, and set properties
  set PWM_ctr_xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_ctr_xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {13} \
   CONFIG.DIN_WIDTH {21} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_ctr_xlslice_0

  # Create instance: PWM_gpio_xlslice_15to8_0, and set properties
  set PWM_gpio_xlslice_15to8_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_gpio_xlslice_15to8_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_gpio_xlslice_15to8_0

  # Create instance: PWM_gpio_xlslice_21to16_0, and set properties
  set PWM_gpio_xlslice_21to16_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PWM_gpio_xlslice_21to16_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {24} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $PWM_gpio_xlslice_21to16_0

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
   CONFIG.A_Type {Signed} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Signed} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $RGB_blue_compare_0

  # Create instance: RGB_blue_xlslice_0, and set properties
  set RGB_blue_xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RGB_blue_xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $RGB_blue_xlslice_0

  # Create instance: RGB_green_compare_0, and set properties
  set RGB_green_compare_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 RGB_green_compare_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Signed} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Signed} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $RGB_green_compare_0

  # Create instance: RGB_green_xlslice_0, and set properties
  set RGB_green_xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RGB_green_xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $RGB_green_xlslice_0

  # Create instance: RGB_red_compare_0, and set properties
  set RGB_red_compare_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 RGB_red_compare_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Signed} \
   CONFIG.A_Width {8} \
   CONFIG.Add_Mode {Subtract} \
   CONFIG.B_Type {Signed} \
   CONFIG.B_Value {00000000} \
   CONFIG.B_Width {8} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Out_Width {9} \
 ] $RGB_red_compare_0

  # Create instance: RGB_red_xlslice_0, and set properties
  set RGB_red_xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 RGB_red_xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $RGB_red_xlslice_0

  # Create instance: axi_PWM_gpio_0, and set properties
  set axi_PWM_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_PWM_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.C_TRI_DEFAULT_2 {0x0000FFFF} \
 ] $axi_PWM_gpio_0

  # Create instance: xlconstant_0_len26, and set properties
  set xlconstant_0_len26 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0_len26 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {26} \
 ] $xlconstant_0_len26

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_PWM_gpio_0/S_AXI]

  # Create port connections
  connect_bd_net -net In0_1 [get_bd_pins In0] [get_bd_pins PWM_GPIO2_xlconcat_0/In0]
  connect_bd_net -net In1_1 [get_bd_pins In1] [get_bd_pins PWM_GPIO2_xlconcat_0/In1]
  connect_bd_net -net In2_1 [get_bd_pins In2] [get_bd_pins PWM_GPIO2_xlconcat_0/In2]
  connect_bd_net -net In3_1 [get_bd_pins In3] [get_bd_pins PWM_GPIO2_xlconcat_0/In3]
  connect_bd_net -net LCD_BL_compare_0_S [get_bd_pins LCD_BL_compare_0/S] [get_bd_pins LCD_BL_xlslice_0/Din]
  connect_bd_net -net LCD_BL_xlslice_0_Dout [get_bd_pins LCD_BL] [get_bd_pins LCD_BL_xlslice_0/Dout]
  connect_bd_net -net PWM_GPIO2_xlconcat_0_dout [get_bd_pins PWM_GPIO2_xlconcat_0/dout] [get_bd_pins axi_PWM_gpio_0/gpio2_io_i]
  connect_bd_net -net PWM_GPIO_xlslice_1_Dout [get_bd_pins LCD_rstn] [get_bd_pins PWM_GPIO_xlslice_1/Dout]
  connect_bd_net -net PWM_counter_binary_0_Q [get_bd_pins PWM_counter_binary_0/Q] [get_bd_pins PWM_ctr_xlslice_0/Din]
  connect_bd_net -net PWM_ctr_xlslice_0_Dout [get_bd_pins LCD_BL_compare_0/A] [get_bd_pins PWM_ctr_xlslice_0/Dout] [get_bd_pins RGB_blue_compare_0/A] [get_bd_pins RGB_green_compare_0/A] [get_bd_pins RGB_red_compare_0/A]
  connect_bd_net -net PWM_gpio_xlslice_15to8_0_Dout [get_bd_pins PWM_gpio_xlslice_15to8_0/Dout] [get_bd_pins RGB_green_compare_0/B]
  connect_bd_net -net PWM_gpio_xlslice_21to16_0_Dout [get_bd_pins PWM_gpio_xlslice_21to16_0/Dout] [get_bd_pins RGB_blue_compare_0/B]
  connect_bd_net -net PWM_gpio_xlslice_31to24_0_Dout [get_bd_pins LCD_BL_compare_0/B] [get_bd_pins PWM_gpio_xlslice_31to24_0/Dout]
  connect_bd_net -net PWM_gpio_xlslice_7to0_0_Dout [get_bd_pins PWM_gpio_xlslice_7to0_0/Dout] [get_bd_pins RGB_red_compare_0/B]
  connect_bd_net -net RGB_blue_compare_0_S [get_bd_pins RGB_blue_compare_0/S] [get_bd_pins RGB_blue_xlslice_0/Din]
  connect_bd_net -net RGB_blue_xlslice_0_Dout [get_bd_pins LED_RGB_blue] [get_bd_pins RGB_blue_xlslice_0/Dout]
  connect_bd_net -net RGB_green_compare_0_S [get_bd_pins RGB_green_compare_0/S] [get_bd_pins RGB_green_xlslice_0/Din]
  connect_bd_net -net RGB_green_xlslice_0_Dout [get_bd_pins LED_RGB_green] [get_bd_pins RGB_green_xlslice_0/Dout]
  connect_bd_net -net RGB_red_compare_0_S [get_bd_pins RGB_red_compare_0/S] [get_bd_pins RGB_red_xlslice_0/Din]
  connect_bd_net -net RGB_red_xlslice_0_Dout [get_bd_pins LED_RGB_red] [get_bd_pins RGB_red_xlslice_0/Dout]
  connect_bd_net -net axi_PWM_gpio_0_gpio2_io_o [get_bd_pins PWM_GPIO_xlslice_1/Din] [get_bd_pins axi_PWM_gpio_0/gpio2_io_o]
  connect_bd_net -net axi_PWM_gpio_0_gpio_io_o [get_bd_pins PWM_gpio_xlslice_15to8_0/Din] [get_bd_pins PWM_gpio_xlslice_21to16_0/Din] [get_bd_pins PWM_gpio_xlslice_31to24_0/Din] [get_bd_pins PWM_gpio_xlslice_7to0_0/Din] [get_bd_pins axi_PWM_gpio_0/gpio_io_o]
  connect_bd_net -net axi_PWM_gpio_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_PWM_gpio_0/ip2intc_irpt]
  connect_bd_net -net c_0_len28 [get_bd_pins PWM_GPIO2_xlconcat_0/In4] [get_bd_pins xlconstant_0_len26/dout]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins LCD_BL_compare_0/CLK] [get_bd_pins PWM_counter_binary_0/CLK] [get_bd_pins RGB_blue_compare_0/CLK] [get_bd_pins RGB_green_compare_0/CLK] [get_bd_pins RGB_red_compare_0/CLK] [get_bd_pins axi_PWM_gpio_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_PWM_gpio_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: INT_ctrl
proc create_hier_cell_INT_ctrl { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_INT_ctrl() - Empty argument(s)!"}
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
  create_bd_pin -dir I -from 0 -to 0 PLL_int
  create_bd_pin -dir I -from 0 -to 0 TRX_int
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
  connect_bd_net -net In1_1 [get_bd_pins In1] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net In2_1 [get_bd_pins In2] [get_bd_pins microblaze_0_xlconcat/In2]
  connect_bd_net -net In3_1 [get_bd_pins In3] [get_bd_pins microblaze_0_xlconcat/In3]
  connect_bd_net -net In4_1 [get_bd_pins In4] [get_bd_pins microblaze_0_xlconcat/In4]
  connect_bd_net -net In5_1 [get_bd_pins In5] [get_bd_pins microblaze_0_xlconcat/In5]
  connect_bd_net -net In6_1 [get_bd_pins In6] [get_bd_pins microblaze_0_xlconcat/In6]
  connect_bd_net -net In7_1 [get_bd_pins In7] [get_bd_pins microblaze_0_xlconcat/In7]
  connect_bd_net -net In8_1 [get_bd_pins In8] [get_bd_pins microblaze_0_xlconcat/In8]
  connect_bd_net -net PLL_int_1 [get_bd_pins PLL_int] [get_bd_pins microblaze_0_xlconcat/In9]
  connect_bd_net -net TRX_int_1 [get_bd_pins TRX_int] [get_bd_pins microblaze_0_xlconcat/In11]
  connect_bd_net -net microblaze_0_xlconcat_dout [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net processor_clk_1 [get_bd_pins processor_clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk]
  connect_bd_net -net processor_rst_1 [get_bd_pins processor_rst] [get_bd_pins microblaze_0_axi_intc/processor_rst]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ETH0
proc create_hier_cell_ETH0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ETH0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 ETH0_MDIO_MDC

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:rmii_rtl:1.0 RMII_PHY_M_0

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI


  # Create pins
  create_bd_pin -dir O -from 0 -to 0 ETH0_DA_G
  create_bd_pin -dir O ETH0_DA_Y
  create_bd_pin -dir I -from 0 -to 0 ETH0_LINK_LED
  create_bd_pin -dir I -type clk UART0_clk
  create_bd_pin -dir O -from 2 -to 0 -type data data_in_to_device
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -type rst io_reset
  create_bd_pin -dir O -type intr ip2intc_irpt
  create_bd_pin -dir I -type rst mb_debug_sys_rst
  create_bd_pin -dir O phy_rst_n
  create_bd_pin -dir O phy_tx_en
  create_bd_pin -dir I -type clk ref_clk
  create_bd_pin -dir O s_mii_rx_dv

  # Create instance: ETH0_LEDs
  create_hier_cell_ETH0_LEDs $hier_obj ETH0_LEDs

  # Create instance: ETH0_proc_sys_reset_0, and set properties
  set ETH0_proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ETH0_proc_sys_reset_0 ]

  # Create instance: axi_ethernetlite_0, and set properties
  set axi_ethernetlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 axi_ethernetlite_0 ]
  set_property -dict [ list \
   CONFIG.MDIO_BOARD_INTERFACE {ETH0_MDIO_MDC} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_ethernetlite_0

  # Create instance: mii_to_rmii_0, and set properties
  set mii_to_rmii_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mii_to_rmii:2.0 mii_to_rmii_0 ]
  set_property -dict [ list \
   CONFIG.RMII_BOARD_INTERFACE {ETH0_RMII} \
 ] $mii_to_rmii_0

  # Create instance: mii_y_adapater_0, and set properties
  set mii_y_adapater_0 [ create_bd_cell -type ip -vlnv trenz.biz:user:mii_y_adapater:1.0 mii_y_adapater_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_ethernetlite_0/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins RMII_PHY_M_0] [get_bd_intf_pins mii_to_rmii_0/RMII_PHY_M]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins ETH0_MDIO_MDC] [get_bd_intf_pins axi_ethernetlite_0/MDIO]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MII [get_bd_intf_pins axi_ethernetlite_0/MII] [get_bd_intf_pins mii_y_adapater_0/S_MII]
  connect_bd_intf_net -intf_net mii_y_adapater_0_M_MII [get_bd_intf_pins mii_to_rmii_0/MII] [get_bd_intf_pins mii_y_adapater_0/M_MII]

  # Create port connections
  connect_bd_net -net ETH0_LEDs_ETH0_DA_G [get_bd_pins ETH0_DA_G] [get_bd_pins ETH0_LEDs/ETH0_DA_G]
  connect_bd_net -net ETH0_LEDs_ETH0_DA_Y [get_bd_pins ETH0_DA_Y] [get_bd_pins ETH0_LEDs/ETH0_DA_Y]
  connect_bd_net -net ETH0_LEDs_data_in_to_device [get_bd_pins data_in_to_device] [get_bd_pins ETH0_LEDs/data_in_to_device]
  connect_bd_net -net ETH0_LINK_LED_1 [get_bd_pins ETH0_LINK_LED] [get_bd_pins ETH0_LEDs/ETH0_LINK_LED]
  connect_bd_net -net ETH0_proc_sys_reset_0_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins ETH0_proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net UART0_clk_wiz_0_clk_out1 [get_bd_pins UART0_clk] [get_bd_pins ETH0_LEDs/clk_in]
  connect_bd_net -net UART0_peripheral_reset [get_bd_pins io_reset] [get_bd_pins ETH0_LEDs/io_reset]
  connect_bd_net -net axi_ethernetlite_0_ip2intc_irpt [get_bd_pins ip2intc_irpt] [get_bd_pins axi_ethernetlite_0/ip2intc_irpt]
  connect_bd_net -net axi_ethernetlite_0_phy_tx_en [get_bd_pins phy_tx_en] [get_bd_pins ETH0_LEDs/phy_tx_en] [get_bd_pins axi_ethernetlite_0/phy_tx_en]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked] [get_bd_pins ETH0_proc_sys_reset_0/dcm_locked]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins ETH0_proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net mb_debug_sys_rst_1 [get_bd_pins mb_debug_sys_rst] [get_bd_pins ETH0_proc_sys_reset_0/mb_debug_sys_rst]
  connect_bd_net -net mii_y_adapater_0_phy_rst_n [get_bd_pins phy_rst_n] [get_bd_pins mii_y_adapater_0/phy_rst_n]
  connect_bd_net -net mii_y_adapater_0_s_mii_rx_dv [get_bd_pins s_mii_rx_dv] [get_bd_pins ETH0_LEDs/s_mii_rx_dv] [get_bd_pins mii_y_adapater_0/s_mii_rx_dv]
  connect_bd_net -net ref_clk_1 [get_bd_pins ref_clk] [get_bd_pins ETH0_proc_sys_reset_0/slowest_sync_clk] [get_bd_pins axi_ethernetlite_0/s_axi_aclk] [get_bd_pins mii_to_rmii_0/ref_clk]
  connect_bd_net -net rst_n_1 [get_bd_pins ETH0_proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_ethernetlite_0/s_axi_aresetn] [get_bd_pins mii_to_rmii_0/rst_n]

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
  set BOARD_IIC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 BOARD_IIC ]

  set CLK0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK0 ]

  set CLK2_mgt_clk0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK2_mgt_clk0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $CLK2_mgt_clk0

  set CLK3_sys_diff [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK3_sys_diff ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $CLK3_sys_diff

  set DDR3_SDRAM [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3_SDRAM ]

  set ETH0_MDIO_MDC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 ETH0_MDIO_MDC ]

  set RMII_PHY_M_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rmii_rtl:1.0 RMII_PHY_M_0 ]

  set TRX_rx_clk_64MHz [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_rx_clk_64MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {64000000} \
   ] $TRX_rx_clk_64MHz

  set TRX_spi [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_spi ]

  set TRX_tx_clk [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_clock_rtl:1.0 TRX_tx_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {64000000} \
   ] $TRX_tx_clk

  set UART0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART0 ]

  set onewire_EUI48 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 onewire_EUI48 ]

  set qspi_flash [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi_flash ]


  # Create ports
  set BOARD_ROTENC_PUSH [ create_bd_port -dir I BOARD_ROTENC_PUSH ]
  set CLK1B_clk [ create_bd_port -dir I -from 0 -to 0 -type clk -freq_hz 50000000 CLK1B_clk ]
  set DDR3_init_calib_complete [ create_bd_port -dir O DDR3_init_calib_complete ]
  set ETH0_DA_G [ create_bd_port -dir O -from 0 -to 0 ETH0_DA_G ]
  set ETH0_DA_Y [ create_bd_port -dir O ETH0_DA_Y ]
  set ETH0_LINK_LED_g [ create_bd_port -dir I ETH0_LINK_LED_g ]
  set FPGA_IO [ create_bd_port -dir I FPGA_IO ]
  set LCD_BL [ create_bd_port -dir O -from 0 -to 0 LCD_BL ]
  set LCD_rstn [ create_bd_port -dir O -from 0 -to 0 -type rst LCD_rstn ]
  set LED_RGB_blue [ create_bd_port -dir O -from 0 -to 0 LED_RGB_blue ]
  set LED_RGB_green [ create_bd_port -dir O -from 0 -to 0 LED_RGB_green ]
  set LED_RGB_red [ create_bd_port -dir O -from 0 -to 0 LED_RGB_red ]
  set PLL_I2C_ext_scl_o [ create_bd_port -dir O PLL_I2C_ext_scl_o ]
  set PLL_I2C_ext_sda [ create_bd_port -dir IO PLL_I2C_ext_sda ]
  set PLL_int [ create_bd_port -dir I -type intr PLL_int ]
  set TRX_PLL_clk_25MHz_N [ create_bd_port -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_N ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {25000000} \
 ] $TRX_PLL_clk_25MHz_N
  set TRX_PLL_clk_25MHz_P [ create_bd_port -dir O -from 0 -to 0 -type clk TRX_PLL_clk_25MHz_P ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {25000000} \
 ] $TRX_PLL_clk_25MHz_P
  set TRX_clk_26MHz [ create_bd_port -dir I -type clk -freq_hz 26000000 TRX_clk_26MHz ]
  set TRX_int [ create_bd_port -dir I -type intr TRX_int ]
  set TRX_pre_fft_subframe_out [ create_bd_port -dir O -from 1 -to 0 -type data TRX_pre_fft_subframe_out ]
  set TRX_reset [ create_bd_port -dir O -from 0 -to 0 -type rst TRX_reset ]
  set TRX_rfx_mode [ create_bd_port -dir O -from 0 -to 0 TRX_rfx_mode ]
  set TRX_rx09_fifo_o [ create_bd_port -dir O -from 31 -to 0 TRX_rx09_fifo_o ]
  set TRX_rx09_fifo_valid_o [ create_bd_port -dir O TRX_rx09_fifo_valid_o ]
  set TRX_rx24_fifo_o [ create_bd_port -dir O -from 31 -to 0 TRX_rx24_fifo_o ]
  set TRX_rx24_fifo_valid_o [ create_bd_port -dir O TRX_rx24_fifo_valid_o ]
  set TRX_rx_data_n [ create_bd_port -dir I -from 1 -to 0 TRX_rx_data_n ]
  set TRX_rx_data_p [ create_bd_port -dir I -from 1 -to 0 TRX_rx_data_p ]
  set TRX_tx_data_n [ create_bd_port -dir O -from 1 -to 0 TRX_tx_data_n ]
  set TRX_tx_data_p [ create_bd_port -dir O -from 1 -to 0 TRX_tx_data_p ]
  set UART0EXT_CTSn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_CTSn ]
  set UART0EXT_DCDn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_DCDn ]
  set UART0EXT_DSRn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_DSRn ]
  set UART0EXT_DTRn [ create_bd_port -dir I UART0EXT_DTRn ]
  set UART0EXT_RIn [ create_bd_port -dir O -from 0 -to 0 UART0EXT_RIn ]
  set UART0EXT_RTSn [ create_bd_port -dir I UART0EXT_RTSn ]
  set UART0_clk [ create_bd_port -dir O -type clk UART0_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {12000000} \
 ] $UART0_clk
  set UART0_rst_n [ create_bd_port -dir O -from 0 -to 0 -type rst UART0_rst_n ]
  set ULI_SYSTEM_XIO [ create_bd_port -dir I ULI_SYSTEM_XIO ]
  set cordic_rx09_tlast_out [ create_bd_port -dir O cordic_rx09_tlast_out ]
  set cordic_rx09_tuser_out [ create_bd_port -dir O -from 15 -to 0 cordic_rx09_tuser_out ]
  set cordic_rx09_tvalid_out [ create_bd_port -dir O cordic_rx09_tvalid_out ]
  set fft_aresetn_in [ create_bd_port -dir I -type rst fft_aresetn_in ]
  set fft_config_tdata_in [ create_bd_port -dir I -from 7 -to 0 fft_config_tdata_in ]
  set fft_config_tready_out [ create_bd_port -dir O fft_config_tready_out ]
  set fft_config_tvalid_in [ create_bd_port -dir I fft_config_tvalid_in ]
  set fft_data_tlast_in [ create_bd_port -dir I fft_data_tlast_in ]
  set fft_data_tready_out [ create_bd_port -dir O fft_data_tready_out ]
  set fft_data_tvalid_in [ create_bd_port -dir I fft_data_tvalid_in ]
  set fft_premem_subframe_in [ create_bd_port -dir I -from 1 -to 0 -type data fft_premem_subframe_in ]
  set microblaze_0_Clk_100MHz_o [ create_bd_port -dir O -type clk microblaze_0_Clk_100MHz_o ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {fft_aresetn_in} \
 ] $microblaze_0_Clk_100MHz_o
  set phy_rst_n [ create_bd_port -dir O phy_rst_n ]
  set postmem_rx_addra_in [ create_bd_port -dir I -from 12 -to 0 postmem_rx_addra_in ]
  set postmem_rx_wea_in [ create_bd_port -dir I -from 0 -to 0 postmem_rx_wea_in ]
  set premem_rx09_addra_in [ create_bd_port -dir I -from 10 -to 0 premem_rx09_addra_in ]
  set premem_rx09_dina_in [ create_bd_port -dir I -from 25 -to 0 premem_rx09_dina_in ]
  set premem_rx09_wea_in [ create_bd_port -dir I -from 0 -to 0 premem_rx09_wea_in ]
  set premem_rx24_addra_in [ create_bd_port -dir I -from 10 -to 0 premem_rx24_addra_in ]
  set premem_rx24_dina_in [ create_bd_port -dir I -from 25 -to 0 premem_rx24_dina_in ]
  set premem_rx24_wea_in [ create_bd_port -dir I -from 0 -to 0 premem_rx24_wea_in ]
  set premem_rx_addrb_in [ create_bd_port -dir I -from 10 -to 0 premem_rx_addrb_in ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set rotenc_dec_cnt_en [ create_bd_port -dir I rotenc_dec_cnt_en ]
  set rotenc_dec_cnt_up_dwn [ create_bd_port -dir I rotenc_dec_cnt_up_dwn ]
  set rotenc_decoder_reset [ create_bd_port -dir O -from 0 -to 0 -type rst rotenc_decoder_reset ]

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
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {26.000} \
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

  # Create instance: CLK0_util_ds_buf_0, and set properties
  set CLK0_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 CLK0_util_ds_buf_0 ]

  # Create instance: CLK0_util_ds_buf_1, and set properties
  set CLK0_util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 CLK0_util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $CLK0_util_ds_buf_1

  # Create instance: CLK1B_util_ds_buf_0, and set properties
  set CLK1B_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 CLK1B_util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $CLK1B_util_ds_buf_0

  # Create instance: ETH0
  create_hier_cell_ETH0 [current_bd_instance .] ETH0

  # Create instance: INT_ctrl
  create_hier_cell_INT_ctrl [current_bd_instance .] INT_ctrl

  # Create instance: PWM_lights
  create_hier_cell_PWM_lights [current_bd_instance .] PWM_lights

  # Create instance: ROTENC_decoder
  create_hier_cell_ROTENC_decoder [current_bd_instance .] ROTENC_decoder

  # Create instance: SC0712_0, and set properties
  set SC0712_0 [ create_bd_cell -type ip -vlnv trenz.biz:user:SC0712:1.0 SC0712_0 ]

  # Create instance: TRX
  create_hier_cell_TRX [current_bd_instance .] TRX

  # Create instance: UART0
  create_hier_cell_UART0 [current_bd_instance .] UART0

  # Create instance: axi_BOARD_iic_0, and set properties
  set axi_BOARD_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_BOARD_iic_0 ]

  # Create instance: axi_ONEWIRE_gpio_0, and set properties
  set axi_ONEWIRE_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_ONEWIRE_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_INPUTS_2 {0} \
   CONFIG.C_ALL_OUTPUTS {0} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_INTERRUPT_PRESENT {0} \
   CONFIG.C_IS_DUAL {0} \
   CONFIG.C_TRI_DEFAULT {0x00000000} \
   CONFIG.C_TRI_DEFAULT_2 {0x0000FFFF} \
 ] $axi_ONEWIRE_gpio_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
 ] $axi_interconnect_0

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.QSPI_BOARD_INTERFACE {qspi_flash} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_quad_spi_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: cfgmclk_util_ds_buf_0, and set properties
  set cfgmclk_util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 cfgmclk_util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $cfgmclk_util_ds_buf_0

  # Create instance: labtools_fmeter_0, and set properties
  set labtools_fmeter_0 [ create_bd_cell -type ip -vlnv trenz.biz:user:labtools_fmeter:1.0 labtools_fmeter_0 ]
  set_property -dict [ list \
   CONFIG.C_CHANNELS {5} \
 ] $labtools_fmeter_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

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
   CONFIG.C_CACHE_BYTE_SIZE {32768} \
   CONFIG.C_DCACHE_ADDR_TAG {15} \
   CONFIG.C_DCACHE_BYTE_SIZE {32768} \
   CONFIG.C_DCACHE_VICTIMS {0} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_DIV_ZERO_EXCEPTION {0} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_ICACHE_LINE_LEN {4} \
   CONFIG.C_ICACHE_STREAMS {0} \
   CONFIG.C_ICACHE_VICTIMS {0} \
   CONFIG.C_ILL_OPCODE_EXCEPTION {1} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_MMU_ZONES {2} \
   CONFIG.C_M_AXI_D_BUS_EXCEPTION {1} \
   CONFIG.C_M_AXI_I_BUS_EXCEPTION {1} \
   CONFIG.C_OPCODE_0x0_ILLEGAL {1} \
   CONFIG.C_PVR {0} \
   CONFIG.C_UNALIGNED_EXCEPTIONS {1} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_DIV {0} \
   CONFIG.C_USE_HW_MUL {1} \
   CONFIG.C_USE_ICACHE {1} \
   CONFIG.C_USE_MMU {3} \
   CONFIG.C_USE_MSR_INSTR {1} \
   CONFIG.C_USE_PCMP_INSTR {1} \
   CONFIG.G_TEMPLATE_LIST {5} \
   CONFIG.G_USE_EXCEPTIONS {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {13} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_mcs_0, and set properties
  set microblaze_mcs_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze_mcs:3.0 microblaze_mcs_0 ]
  set_property -dict [ list \
   CONFIG.MEMSIZE {20480} \
   CONFIG.USE_GPI1 {1} \
   CONFIG.USE_GPO1 {1} \
 ] $microblaze_mcs_0

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_b.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_msys_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {DDR3_SDRAM} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_b.prj} \
 ] $mig_7series_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_0

  # Create instance: rst_mig_7series_0_100M, and set properties
  set rst_mig_7series_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_100M ]

  # Create instance: rst_mig_7series_0_50M, and set properties
  set rst_mig_7series_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_50M ]

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_PROBE_IN {23} \
   CONFIG.C_NUM_PROBE_OUT {1} \
   CONFIG.C_PROBE_OUT0_WIDTH {13} \
 ] $vio_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $xlconcat_0

  # Create instance: xlconstant_1_len1, and set properties
  set xlconstant_1_len1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1_len1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_1_len1

  # Create interface connections
  connect_bd_intf_net -intf_net CLK0_1 [get_bd_intf_ports CLK0] [get_bd_intf_pins CLK0_util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net CLK2_mgt_clk0_1 [get_bd_intf_ports CLK2_mgt_clk0] [get_bd_intf_pins mgt_clk0_CLK2_util_ds_buf_1/CLK_IN_D]
  connect_bd_intf_net -intf_net CLK3_sys_diff_1 [get_bd_intf_ports CLK3_sys_diff] [get_bd_intf_pins mig_7series_0/SYS_CLK]
  connect_bd_intf_net -intf_net ETH0_ETH0_MDIO_MDC [get_bd_intf_ports ETH0_MDIO_MDC] [get_bd_intf_pins ETH0/ETH0_MDIO_MDC]
  connect_bd_intf_net -intf_net ETH0_RMII_PHY_M_0 [get_bd_intf_ports RMII_PHY_M_0] [get_bd_intf_pins ETH0/RMII_PHY_M_0]
  connect_bd_intf_net -intf_net INT_ctrl_interrupt [get_bd_intf_pins INT_ctrl/interrupt] [get_bd_intf_pins microblaze_0/INTERRUPT]
  connect_bd_intf_net -intf_net TRX_TRX_spi [get_bd_intf_ports TRX_spi] [get_bd_intf_pins TRX/TRX_spi]
  connect_bd_intf_net -intf_net TRX_TRX_tx_clk [get_bd_intf_ports TRX_tx_clk] [get_bd_intf_pins TRX/TRX_tx_clk]
  connect_bd_intf_net -intf_net TRX_rx_clk_64MHz_1 [get_bd_intf_ports TRX_rx_clk_64MHz] [get_bd_intf_pins TRX/TRX_rx_clk_64MHz]
  connect_bd_intf_net -intf_net UART0_UART0 [get_bd_intf_ports UART0] [get_bd_intf_pins UART0/UART0]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_pins SC0712_0/EMIO_I2C] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports BOARD_IIC] [get_bd_intf_pins axi_BOARD_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_onewire_gpio_0_GPIO [get_bd_intf_ports onewire_EUI48] [get_bd_intf_pins axi_ONEWIRE_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi_flash] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins INT_ctrl/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins UART0/S_AXI1] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins ETH0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins UART0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_BOARD_iic_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins PWM_lights/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins ROTENC_decoder/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins axi_ONEWIRE_gpio_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins TRX/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M12_AXI [get_bd_intf_pins TRX/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_mcs_0_GPIO1 [get_bd_intf_pins SC0712_0/MCS_GPIO] [get_bd_intf_pins microblaze_mcs_0/GPIO1]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3_SDRAM] [get_bd_intf_pins mig_7series_0/DDR3]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins rst_mig_7series_0_100M/interconnect_aresetn]
  connect_bd_net -net BOARD_ROTENC_PUSH_1 [get_bd_ports BOARD_ROTENC_PUSH] [get_bd_pins ROTENC_decoder/BOARD_ROTENC_PUSH]
  connect_bd_net -net BUFG_I_0_1 [get_bd_ports CLK1B_clk] [get_bd_pins CLK1B_util_ds_buf_0/BUFG_I]
  connect_bd_net -net CLK0_util_ds_buf_1_BUFG_O [get_bd_pins CLK0_util_ds_buf_1/BUFG_O] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net ETH0_ETH0_DA_G [get_bd_ports ETH0_DA_G] [get_bd_pins ETH0/ETH0_DA_G]
  connect_bd_net -net ETH0_ETH0_DA_Y [get_bd_ports ETH0_DA_Y] [get_bd_pins ETH0/ETH0_DA_Y]
  connect_bd_net -net ETH0_LINK_LED_g_1 [get_bd_ports ETH0_LINK_LED_g] [get_bd_pins ETH0/ETH0_LINK_LED]
  connect_bd_net -net ETH0_ip2intc_irpt [get_bd_pins ETH0/ip2intc_irpt] [get_bd_pins INT_ctrl/In4]
  connect_bd_net -net ETH0_phy_rst_n [get_bd_ports phy_rst_n] [get_bd_pins ETH0/phy_rst_n]
  connect_bd_net -net FPGA_IO_1 [get_bd_ports FPGA_IO] [get_bd_pins vio_0/probe_in9]
  connect_bd_net -net In2_1 [get_bd_pins ETH0/data_in_to_device] [get_bd_pins PWM_lights/In2]
  connect_bd_net -net M05_ARESETN_1 [get_bd_pins ETH0/interconnect_aresetn] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN]
  connect_bd_net -net Net [get_bd_ports PLL_I2C_ext_sda] [get_bd_pins SC0712_0/ext_sda]
  connect_bd_net -net PLL_int_1 [get_bd_ports PLL_int] [get_bd_pins INT_ctrl/PLL_int]
  connect_bd_net -net PWM_lights_LCD_BL [get_bd_ports LCD_BL] [get_bd_pins PWM_lights/LCD_BL]
  connect_bd_net -net PWM_lights_LCD_rstn [get_bd_ports LCD_rstn] [get_bd_pins PWM_lights/LCD_rstn]
  connect_bd_net -net PWM_lights_LED_RGB_blue [get_bd_ports LED_RGB_blue] [get_bd_pins PWM_lights/LED_RGB_blue]
  connect_bd_net -net PWM_lights_LED_RGB_green [get_bd_ports LED_RGB_green] [get_bd_pins PWM_lights/LED_RGB_green]
  connect_bd_net -net PWM_lights_LED_RGB_red [get_bd_ports LED_RGB_red] [get_bd_pins PWM_lights/LED_RGB_red]
  connect_bd_net -net PWM_lights_ip2intc_irpt [get_bd_pins INT_ctrl/In7] [get_bd_pins PWM_lights/ip2intc_irpt]
  connect_bd_net -net ROTENC_decoder_ip2intc_irpt [get_bd_pins INT_ctrl/In8] [get_bd_pins ROTENC_decoder/ip2intc_irpt]
  connect_bd_net -net SC0712_0_ext_scl_o [get_bd_ports PLL_I2C_ext_scl_o] [get_bd_pins SC0712_0/ext_scl_o]
  connect_bd_net -net SC0712_0_mcs_clk_out [get_bd_pins SC0712_0/mcs_clk_out] [get_bd_pins microblaze_mcs_0/Clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net SC0712_0_mon_GPIO1_I [get_bd_pins SC0712_0/mon_GPIO1_I] [get_bd_pins vio_0/probe_in7]
  connect_bd_net -net SC0712_0_mon_GPIO1_O [get_bd_pins SC0712_0/mon_GPIO1_O] [get_bd_pins vio_0/probe_in6]
  connect_bd_net -net SC0712_0_reset_out [get_bd_pins SC0712_0/reset_out] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins vio_0/probe_in5]
  connect_bd_net -net TRX_TRX_PLL_clk_25MHz_N [get_bd_ports TRX_PLL_clk_25MHz_N] [get_bd_pins TRX/TRX_PLL_clk_25MHz_N]
  connect_bd_net -net TRX_TRX_PLL_clk_25MHz_P [get_bd_ports TRX_PLL_clk_25MHz_P] [get_bd_pins TRX/TRX_PLL_clk_25MHz_P]
  connect_bd_net -net TRX_TRX_pre_fft_subframe_out_0 [get_bd_ports TRX_pre_fft_subframe_out] [get_bd_pins TRX/TRX_pre_fft_subframe_out] [get_bd_pins vio_0/probe_in16]
  connect_bd_net -net TRX_TRX_reset [get_bd_ports TRX_reset] [get_bd_pins TRX/TRX_reset]
  connect_bd_net -net TRX_TRX_rfx_mode [get_bd_ports TRX_rfx_mode] [get_bd_pins TRX/TRX_rfx_mode]
  connect_bd_net -net TRX_TRX_tx_data_n [get_bd_ports TRX_tx_data_n] [get_bd_pins TRX/TRX_tx_data_n]
  connect_bd_net -net TRX_TRX_tx_data_p [get_bd_ports TRX_tx_data_p] [get_bd_pins TRX/TRX_tx_data_p]
  connect_bd_net -net TRX_clk_26MHz_1 [get_bd_ports TRX_clk_26MHz] [get_bd_pins TRX/TRX_clk_26MHz]
  connect_bd_net -net TRX_dout [get_bd_pins TRX/dout] [get_bd_pins vio_0/probe_in15]
  connect_bd_net -net TRX_doutb [get_bd_pins TRX/doutb] [get_bd_pins vio_0/probe_in14]
  connect_bd_net -net TRX_event_data_in_channel_halt_0 [get_bd_pins TRX/event_data_in_channel_halt] [get_bd_pins vio_0/probe_in20]
  connect_bd_net -net TRX_event_frame_started_0 [get_bd_pins TRX/event_frame_started] [get_bd_pins vio_0/probe_in17]
  connect_bd_net -net TRX_event_tlast_missing_0 [get_bd_pins TRX/event_tlast_missing] [get_bd_pins vio_0/probe_in19]
  connect_bd_net -net TRX_event_tlast_unexpected_0 [get_bd_pins TRX/event_tlast_unexpected] [get_bd_pins vio_0/probe_in18]
  connect_bd_net -net TRX_int_1 [get_bd_ports TRX_int] [get_bd_pins INT_ctrl/TRX_int]
  connect_bd_net -net TRX_ip2intc_irpt [get_bd_pins INT_ctrl/In10] [get_bd_pins TRX/ip2intc_irpt]
  connect_bd_net -net TRX_rd_data_count_CD100 [get_bd_pins TRX/rd_data_count_CD100_o] [get_bd_pins vio_0/probe_in11]
  connect_bd_net -net TRX_rx09_32bits_CD100 [get_bd_pins TRX/rx09_32bits_CD100_o] [get_bd_pins vio_0/probe_in12]
  connect_bd_net -net TRX_rx09_fifo_o_1 [get_bd_ports TRX_rx09_fifo_o] [get_bd_pins TRX/TRX_rx09_fifo_o]
  connect_bd_net -net TRX_rx09_fifo_valid_o_1 [get_bd_ports TRX_rx09_fifo_valid_o] [get_bd_pins TRX/TRX_rx09_fifo_valid_o]
  connect_bd_net -net TRX_rx24_32bits_CD100 [get_bd_pins TRX/rx24_32bits_CD100_o] [get_bd_pins vio_0/probe_in13]
  connect_bd_net -net TRX_rx24_fifo_o_1 [get_bd_ports TRX_rx24_fifo_o] [get_bd_pins TRX/TRX_rx24_fifo_o]
  connect_bd_net -net TRX_rx24_fifo_valid_o_1 [get_bd_ports TRX_rx24_fifo_valid_o] [get_bd_pins TRX/TRX_rx24_fifo_valid_o]
  connect_bd_net -net TRX_rx_data_n_1 [get_bd_ports TRX_rx_data_n] [get_bd_pins TRX/TRX_rx_data_n]
  connect_bd_net -net TRX_rx_data_p_1 [get_bd_ports TRX_rx_data_p] [get_bd_pins TRX/TRX_rx_data_p]
  connect_bd_net -net TRX_rx_selectio_wiz_0_clk_div_out [get_bd_pins TRX/clk_div_out] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net UART0EXT_DTRn_1 [get_bd_ports UART0EXT_DTRn] [get_bd_pins UART0/UART0EXT_DTRn]
  connect_bd_net -net UART0EXT_RTSn_1 [get_bd_ports UART0EXT_RTSn] [get_bd_pins UART0/UART0EXT_RTSn]
  connect_bd_net -net UART0_UART0EXT_CTSn [get_bd_ports UART0EXT_CTSn] [get_bd_pins UART0/UART0EXT_CTSn]
  connect_bd_net -net UART0_UART0EXT_DCDn [get_bd_ports UART0EXT_DCDn] [get_bd_pins UART0/UART0EXT_DCDn]
  connect_bd_net -net UART0_UART0EXT_DSRn [get_bd_ports UART0EXT_DSRn] [get_bd_pins UART0/UART0EXT_DSRn]
  connect_bd_net -net UART0_UART0EXT_RIn [get_bd_ports UART0EXT_RIn] [get_bd_pins UART0/UART0EXT_RIn]
  connect_bd_net -net UART0_UART0_rst_n [get_bd_ports UART0_rst_n] [get_bd_pins UART0/UART0_rst_n]
  connect_bd_net -net UART0_clk_wiz_0_clk_out1 [get_bd_ports UART0_clk] [get_bd_pins BOARD_clk_wiz_0/clk_out1] [get_bd_pins ETH0/UART0_clk] [get_bd_pins UART0/slowest_sync_clk]
  connect_bd_net -net UART0_interrupt [get_bd_pins INT_ctrl/In1] [get_bd_pins UART0/interrupt]
  connect_bd_net -net UART0_ip2intc_irpt [get_bd_pins INT_ctrl/In5] [get_bd_pins UART0/ip2intc_irpt]
  connect_bd_net -net UART0_peripheral_reset [get_bd_pins ETH0/io_reset] [get_bd_pins UART0/peripheral_reset]
  connect_bd_net -net ULI_SYSTEM_XIO_1 [get_bd_ports ULI_SYSTEM_XIO] [get_bd_pins vio_0/probe_in10]
  connect_bd_net -net axi_BOARD_iic_0_iic2intc_irpt [get_bd_pins INT_ctrl/In6] [get_bd_pins axi_BOARD_iic_0/iic2intc_irpt]
  connect_bd_net -net axi_ethernetlite_0_phy_tx_en [get_bd_pins ETH0/phy_tx_en] [get_bd_pins PWM_lights/In1]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins INT_ctrl/In3] [get_bd_pins axi_iic_0/iic2intc_irpt]
  connect_bd_net -net axi_quad_spi_0_cfgmclk [get_bd_pins axi_quad_spi_0/cfgmclk] [get_bd_pins cfgmclk_util_ds_buf_0/BUFG_I]
  connect_bd_net -net axi_quad_spi_0_eos [get_bd_pins axi_quad_spi_0/eos] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins INT_ctrl/In2] [get_bd_pins axi_quad_spi_0/ip2intc_irpt]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins INT_ctrl/In0] [get_bd_pins axi_timer_0/interrupt]
  connect_bd_net -net cfgmclk_util_ds_buf_0_BUFG_O [get_bd_pins SC0712_0/mcs_clk_in] [get_bd_pins cfgmclk_util_ds_buf_0/BUFG_O]
  connect_bd_net -net cordic_rx09_tlast_out_0 [get_bd_ports cordic_rx09_tlast_out] [get_bd_pins TRX/cordic_rx09_tlast_out]
  connect_bd_net -net cordic_rx09_tuser_out_0 [get_bd_ports cordic_rx09_tuser_out] [get_bd_pins TRX/cordic_rx09_tuser_out]
  connect_bd_net -net cordic_rx09_tvalid_out_0 [get_bd_ports cordic_rx09_tvalid_out] [get_bd_pins TRX/cordic_rx09_tvalid_out]
  connect_bd_net -net fft_aresetn_in_0 [get_bd_ports fft_aresetn_in] [get_bd_pins TRX/fft_aresetn_in]
  connect_bd_net -net fft_config_tdata_in_0 [get_bd_ports fft_config_tdata_in] [get_bd_pins TRX/fft_config_tdata_in]
  connect_bd_net -net fft_config_tready_out_0 [get_bd_ports fft_config_tready_out] [get_bd_pins TRX/fft_config_tready_out]
  connect_bd_net -net fft_config_tvalid_in_0 [get_bd_ports fft_config_tvalid_in] [get_bd_pins TRX/fft_config_tvalid_in]
  connect_bd_net -net fft_data_tlast_in_0 [get_bd_ports fft_data_tlast_in] [get_bd_pins TRX/fft_data_tlast_in]
  connect_bd_net -net fft_data_tready_out_0 [get_bd_ports fft_data_tready_out] [get_bd_pins TRX/fft_data_tready_out]
  connect_bd_net -net fft_data_tvalid_in_0 [get_bd_ports fft_data_tvalid_in] [get_bd_pins TRX/fft_data_tvalid_in]
  connect_bd_net -net fft_premem_subframe_in_0 [get_bd_ports fft_premem_subframe_in] [get_bd_pins TRX/fft_premem_subframe_in]
  connect_bd_net -net fm_mgt_ref [get_bd_pins labtools_fmeter_0/F1] [get_bd_pins vio_0/probe_in1]
  connect_bd_net -net fm_mig_50mhz [get_bd_pins labtools_fmeter_0/F0] [get_bd_pins vio_0/probe_in0]
  connect_bd_net -net labtools_fmeter_0_F4 [get_bd_pins labtools_fmeter_0/F4] [get_bd_pins vio_0/probe_in8]
  connect_bd_net -net labtools_fmeter_0_update [get_bd_pins labtools_fmeter_0/update] [get_bd_pins vio_0/probe_in4]
  connect_bd_net -net lt_CLK0 [get_bd_pins labtools_fmeter_0/F3] [get_bd_pins vio_0/probe_in3]
  connect_bd_net -net lt_CLK1B [get_bd_pins labtools_fmeter_0/F2] [get_bd_pins vio_0/probe_in2]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins ETH0/mb_debug_sys_rst] [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_mig_7series_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk_100MHz [get_bd_ports microblaze_0_Clk_100MHz_o] [get_bd_pins INT_ctrl/processor_clk] [get_bd_pins PWM_lights/s_axi_aclk] [get_bd_pins ROTENC_decoder/CLK] [get_bd_pins TRX/s_axi_aclk] [get_bd_pins UART0/s_axi_aclk] [get_bd_pins axi_BOARD_iic_0/s_axi_aclk] [get_bd_pins axi_ONEWIRE_gpio_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins labtools_fmeter_0/refclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/M12_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rst_mig_7series_0_100M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_ports DDR3_init_calib_complete] [get_bd_pins PWM_lights/In3] [get_bd_pins mig_7series_0/init_calib_complete]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins ETH0/dcm_locked] [get_bd_pins TRX/dcm_locked] [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_100M/dcm_locked] [get_bd_pins rst_mig_7series_0_50M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_addn_clk_0_200MHz [get_bd_pins TRX/ref_clock] [get_bd_pins mig_7series_0/clk_ref_i] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net mig_7series_0_ui_addn_clk_1_100MHz [get_bd_pins BOARD_clk_wiz_0/clk_in1] [get_bd_pins mig_7series_0/ui_addn_clk_1]
  connect_bd_net -net mig_7series_0_ui_addn_clk_2_50MHz [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins mig_7series_0/ui_addn_clk_2] [get_bd_pins rst_mig_7series_0_50M/slowest_sync_clk] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins BOARD_clk_wiz_0/reset] [get_bd_pins ETH0/ext_reset_in] [get_bd_pins TRX/ext_reset_in] [get_bd_pins UART0/ext_reset_in] [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins rst_mig_7series_0_100M/ext_reset_in] [get_bd_pins rst_mig_7series_0_50M/ext_reset_in]
  connect_bd_net -net mii_y_adapater_0_s_mii_rx_dv [get_bd_pins ETH0/s_mii_rx_dv] [get_bd_pins PWM_lights/In0]
  connect_bd_net -net postmem_rx09_doutb_out_0 [get_bd_pins TRX/postmem_rx09_doutb_out] [get_bd_pins vio_0/probe_in21]
  connect_bd_net -net postmem_rx24_doutb_out_0 [get_bd_pins TRX/postmem_rx24_doutb_out] [get_bd_pins vio_0/probe_in22]
  connect_bd_net -net postmem_rx_addra_in_0 [get_bd_ports postmem_rx_addra_in] [get_bd_pins TRX/postmem_rx_addra_in]
  connect_bd_net -net postmem_rx_addrb_in_0 [get_bd_pins TRX/postmem_rx_addrb_in] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net postmem_rx_wea_in_0 [get_bd_ports postmem_rx_wea_in] [get_bd_pins TRX/postmem_rx_wea_in]
  connect_bd_net -net premem_rx09_addra_in_0 [get_bd_ports premem_rx09_addra_in] [get_bd_pins TRX/premem_rx09_addra_in]
  connect_bd_net -net premem_rx09_dina_in_0 [get_bd_ports premem_rx09_dina_in] [get_bd_pins TRX/premem_rx09_dina_in]
  connect_bd_net -net premem_rx09_wea_in_0 [get_bd_ports premem_rx09_wea_in] [get_bd_pins TRX/premem_rx09_wea_in]
  connect_bd_net -net premem_rx24_addra_in_0 [get_bd_ports premem_rx24_addra_in] [get_bd_pins TRX/premem_rx24_addra_in]
  connect_bd_net -net premem_rx24_dina_in_0 [get_bd_ports premem_rx24_dina_in] [get_bd_pins TRX/premem_rx24_dina_in]
  connect_bd_net -net premem_rx24_wea_in_0 [get_bd_ports premem_rx24_wea_in] [get_bd_pins TRX/premem_rx24_wea_in]
  connect_bd_net -net premem_rx_addrb_in_0 [get_bd_ports premem_rx_addrb_in] [get_bd_pins TRX/premem_rx_addrb_in]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins mig_7series_0/aresetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_mb_reset [get_bd_pins microblaze_mcs_0/Reset] [get_bd_pins proc_sys_reset_0/mb_reset]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net rotenc_dec_cnt_en_1 [get_bd_ports rotenc_dec_cnt_en] [get_bd_pins ROTENC_decoder/rotenc_dec_cnt_en]
  connect_bd_net -net rotenc_dec_cnt_up_dwn_1 [get_bd_ports rotenc_dec_cnt_up_dwn] [get_bd_pins ROTENC_decoder/rotenc_dec_cnt_up_dwn]
  connect_bd_net -net rst_mig_7series_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_mig_7series_0_100M/bus_struct_reset]
  connect_bd_net -net rst_mig_7series_0_100M_mb_reset [get_bd_pins INT_ctrl/processor_rst] [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_mig_7series_0_100M/mb_reset]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_aresetn [get_bd_ports rotenc_decoder_reset] [get_bd_pins INT_ctrl/s_axi_aresetn] [get_bd_pins PWM_lights/s_axi_aresetn] [get_bd_pins ROTENC_decoder/s_axi_aresetn] [get_bd_pins TRX/s_axi_aresetn] [get_bd_pins UART0/s_axi_aresetn] [get_bd_pins axi_BOARD_iic_0/s_axi_aresetn] [get_bd_pins axi_ONEWIRE_gpio_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/M12_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_mig_7series_0_100M/peripheral_aresetn]
  connect_bd_net -net rst_mig_7series_0_100M_peripheral_reset [get_bd_pins ROTENC_decoder/SINIT] [get_bd_pins TRX/reset_CD100_i] [get_bd_pins rst_mig_7series_0_100M/peripheral_reset]
  connect_bd_net -net rst_mig_7series_0_50M_peripheral_aresetn [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins rst_mig_7series_0_50M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_BUFG_O [get_bd_pins CLK1B_util_ds_buf_0/BUFG_O] [get_bd_pins ETH0/ref_clk] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net util_ds_buf_1_IBUF_OUT [get_bd_pins mgt_clk0_CLK2_util_ds_buf_1/IBUF_OUT] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net util_ds_buf_2_IBUF_OUT [get_bd_pins CLK0_util_ds_buf_0/IBUF_OUT] [get_bd_pins CLK0_util_ds_buf_1/BUFG_I]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins labtools_fmeter_0/fin] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_len1_dout [get_bd_pins rst_mig_7series_0_100M/aux_reset_in] [get_bd_pins xlconstant_1_len1/dout]

  # Create address segments
  assign_bd_address -offset 0x44A10000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs TRX/TRX_config/TRX_axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs TRX/TRX_config/axi_TRX_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40E00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ETH0/axi_ethernetlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40810000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_BOARD_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_ONEWIRE_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs PWM_lights/axi_PWM_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ROTENC_decoder/axi_ROTENC_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x41C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs UART0/axi_UART0_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs UART0/axi_UART0_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x00000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] -force
  assign_bd_address -offset 0x41200000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs INT_ctrl/microblaze_0_axi_intc/S_AXI/Reg] -force
  assign_bd_address -offset 0x80000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x80000000 -range 0x40000000 -target_address_space [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force


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


