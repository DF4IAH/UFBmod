
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

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 "4 MSPS
128 dots
351 cycles" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_1 "351 cycles" [get_bd_designs $design_name]

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
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
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>0</C0_S_AXI_SUPPORTS_NARROW_BURST>}
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
  set FSM_LVDS_in_CORDIC_0_M_AXIS [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 FSM_LVDS_in_CORDIC_0_M_AXIS ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {64000000} \
   CONFIG.PHASE {0.0} \
   ] $FSM_LVDS_in_CORDIC_0_M_AXIS

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
  set FSM_LVDS_clk_064mhz000 [ create_bd_port -dir O -type clk FSM_LVDS_clk_064mhz000 ]
  set FSM_LVDS_in_0CMP_0_nomatch [ create_bd_port -dir O FSM_LVDS_in_0CMP_0_nomatch ]
  set FSM_LVDS_in_FFT_0_FrameStarted [ create_bd_port -dir O -type intr FSM_LVDS_in_FFT_0_FrameStarted ]
  set FSM_LVDS_in_FFT_0_pntIdx [ create_bd_port -dir O -from 7 -to 0 FSM_LVDS_in_FFT_0_pntIdx ]
  set FSM_LVDS_in_bitslip [ create_bd_port -dir I -from 0 -to 0 FSM_LVDS_in_bitslip ]
  set FSM_LVDS_in_sample_clken [ create_bd_port -dir O -type ce FSM_LVDS_in_sample_clken ]
  set board_rotenc_pulse [ create_bd_port -dir I -type ce board_rotenc_pulse ]
  set board_rotenc_push [ create_bd_port -dir I -from 0 -to 0 board_rotenc_push ]
  set board_rotenc_up [ create_bd_port -dir I -type data board_rotenc_up ]
  set ddr3_init_calib_complete_obuf [ create_bd_port -dir O ddr3_init_calib_complete_obuf ]
  set dmr_1_onewire_a_in [ create_bd_port -dir I -from 3 -to 0 dmr_1_onewire_a_in ]
  set dmr_1_onewire_d_in [ create_bd_port -dir I -from 31 -to 0 dmr_1_onewire_d_in ]
  set dmr_1_onewire_we_in [ create_bd_port -dir I dmr_1_onewire_we_in ]
  set mb_axi_clk_083mhz333 [ create_bd_port -dir O -type clk mb_axi_clk_083mhz333 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {gpio_rtl_1_onewire_gpio_in} \
   CONFIG.ASSOCIATED_RESET {peripheral_reset} \
 ] $mb_axi_clk_083mhz333
  set peripheral_reset [ create_bd_port -dir O -from 0 -to 0 -type rst peripheral_reset ]
  set pll_clk_g [ create_bd_port -dir I -type clk pll_clk_g ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $pll_clk_g
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
  set trx_clk_026mhz000_g [ create_bd_port -dir I -type clk trx_clk_026mhz000_g ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {26000000} \
 ] $trx_clk_026mhz000_g
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

  # Create instance: LVDS_016mhz000_SYSRESET_0, and set properties
  set LVDS_016mhz000_SYSRESET_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 LVDS_016mhz000_SYSRESET_0 ]

  # Create instance: LVDS_064mhz000_SYSRESET_0, and set properties
  set LVDS_064mhz000_SYSRESET_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 LVDS_064mhz000_SYSRESET_0 ]

  # Create instance: LVDS_in_0CMP_0, and set properties
  set LVDS_in_0CMP_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 LVDS_in_0CMP_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {32} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $LVDS_in_0CMP_0

  # Create instance: LVDS_in_AND_0, and set properties
  set LVDS_in_AND_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 LVDS_in_AND_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {32} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $LVDS_in_AND_0

  # Create instance: LVDS_in_AXIS_0, and set properties
  set LVDS_in_AXIS_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 LVDS_in_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.Clock_Enable_Type {Slave_Interface_Clock_Enable} \
   CONFIG.Clock_Type_AXI {Common_Clock} \
   CONFIG.Data_Count_Width {6} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Assert_Value_axis {1022} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {61} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.Full_Threshold_Negate_Value {60} \
   CONFIG.HAS_ACLKEN {false} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {64} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {16} \
   CONFIG.Read_Data_Count_Width {4} \
   CONFIG.Register_Slice_Mode_axis {Light_Weight} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TID_WIDTH {1} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {44} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Use_Embedded_Registers_axis {false} \
   CONFIG.Use_Extra_Logic {false} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Acknowledge_Flag {false} \
   CONFIG.Write_Data_Count_Width {6} \
   CONFIG.axis_type {FIFO} \
 ] $LVDS_in_AXIS_0

  # Create instance: LVDS_in_CDC_0, and set properties
  set LVDS_in_CDC_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 LVDS_in_CDC_0 ]
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
 ] $LVDS_in_CDC_0

  # Create instance: LVDS_in_CONCAT_0, and set properties
  set LVDS_in_CONCAT_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 LVDS_in_CONCAT_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {14} \
   CONFIG.IN1_WIDTH {2} \
   CONFIG.IN2_WIDTH {14} \
   CONFIG.IN3_WIDTH {2} \
   CONFIG.NUM_PORTS {4} \
 ] $LVDS_in_CONCAT_0

  # Create instance: LVDS_in_CORDIC_0, and set properties
  set LVDS_in_CORDIC_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 LVDS_in_CORDIC_0 ]
  set_property -dict [ list \
   CONFIG.Compensation_Scaling {Embedded_Multiplier} \
   CONFIG.Data_Format {SignedFraction} \
   CONFIG.Functional_Selection {Translate} \
   CONFIG.Input_Width {24} \
   CONFIG.Output_Width {16} \
   CONFIG.Round_Mode {Nearest_Even} \
   CONFIG.cartesian_has_tlast {true} \
   CONFIG.cartesian_has_tuser {true} \
   CONFIG.cartesian_tuser_width {44} \
   CONFIG.out_tlast_behv {Pass_Cartesian_TLAST} \
 ] $LVDS_in_CORDIC_0

  # Create instance: LVDS_in_FFT_0, and set properties
  set LVDS_in_FFT_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 LVDS_in_FFT_0 ]
  set_property -dict [ list \
   CONFIG.aclken {false} \
   CONFIG.aresetn {true} \
   CONFIG.butterfly_type {use_xtremedsp_slices} \
   CONFIG.complex_mult_type {use_mults_performance} \
   CONFIG.implementation_options {pipelined_streaming_io} \
   CONFIG.input_width {16} \
   CONFIG.memory_options_data {distributed_ram} \
   CONFIG.memory_options_phase_factors {distributed_ram} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {0} \
   CONFIG.output_ordering {bit_reversed_order} \
   CONFIG.phase_factor_width {16} \
   CONFIG.rounding_modes {convergent_rounding} \
   CONFIG.scaling_options {unscaled} \
   CONFIG.target_clock_frequency {64} \
   CONFIG.target_data_throughput {4} \
   CONFIG.throttle_scheme {realtime} \
   CONFIG.transform_length {128} \
   CONFIG.xk_index {true} \
 ] $LVDS_in_FFT_0

  # Create instance: LVDS_in_FIFO_combiner_0, and set properties
  set LVDS_in_FIFO_combiner_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 LVDS_in_FIFO_combiner_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {7} \
   CONFIG.Empty_Threshold_Assert_Value {4} \
   CONFIG.Empty_Threshold_Assert_Value_rach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {1022} \
   CONFIG.Empty_Threshold_Negate_Value {5} \
   CONFIG.Enable_Safety_Circuit {false} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {0} \
   CONFIG.Full_Threshold_Assert_Value {63} \
   CONFIG.Full_Threshold_Assert_Value_rach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wrch {1023} \
   CONFIG.Full_Threshold_Negate_Value {62} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {64} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {16} \
   CONFIG.Performance_Options {First_Word_Fall_Through} \
   CONFIG.Read_Data_Count_Width {5} \
   CONFIG.Reset_Pin {false} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
   CONFIG.Use_Embedded_Registers {true} \
   CONFIG.Use_Extra_Logic {true} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Acknowledge_Flag {false} \
   CONFIG.Write_Data_Count_Width {7} \
 ] $LVDS_in_FIFO_combiner_0

  # Create instance: LVDS_in_SERDES_0, and set properties
  set LVDS_in_SERDES_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 LVDS_in_SERDES_0 ]
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
 ] $LVDS_in_SERDES_0

  # Create instance: LVDS_in_SLICE_HiCheck_0, and set properties
  set LVDS_in_SLICE_HiCheck_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_SLICE_HiCheck_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {30} \
   CONFIG.DOUT_WIDTH {2} \
 ] $LVDS_in_SLICE_HiCheck_0

  # Create instance: LVDS_in_SLICE_I_0, and set properties
  set LVDS_in_SLICE_I_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_SLICE_I_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {29} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {14} \
 ] $LVDS_in_SLICE_I_0

  # Create instance: LVDS_in_SLICE_LoCheck_0, and set properties
  set LVDS_in_SLICE_LoCheck_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_SLICE_LoCheck_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {2} \
 ] $LVDS_in_SLICE_LoCheck_0

  # Create instance: LVDS_in_SLICE_Q_0, and set properties
  set LVDS_in_SLICE_Q_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_SLICE_Q_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {13} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {14} \
 ] $LVDS_in_SLICE_Q_0

  # Create instance: LVDS_in_ShiftRAM_0, and set properties
  set LVDS_in_ShiftRAM_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 LVDS_in_ShiftRAM_0 ]
  set_property -dict [ list \
   CONFIG.AsyncInitRadix {16} \
   CONFIG.AsyncInitVal {00000000000} \
   CONFIG.DefaultData {00000000000} \
   CONFIG.DefaultDataRadix {16} \
   CONFIG.Depth {351} \
   CONFIG.SCLR {true} \
   CONFIG.SyncInitVal {00000000000000000000000000000000000000000000} \
   CONFIG.Width {44} \
 ] $LVDS_in_ShiftRAM_0

  # Create instance: LVDS_in_XOR_0, and set properties
  set LVDS_in_XOR_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 LVDS_in_XOR_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {32} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $LVDS_in_XOR_0

  # Create instance: LVDS_in_out_bin_clken_REDLOG_0, and set properties
  set LVDS_in_out_bin_clken_REDLOG_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 LVDS_in_out_bin_clken_REDLOG_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {2} \
 ] $LVDS_in_out_bin_clken_REDLOG_0

  # Create instance: LVDS_in_out_bin_clken_SLICE_0, and set properties
  set LVDS_in_out_bin_clken_SLICE_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_out_bin_clken_SLICE_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {2} \
 ] $LVDS_in_out_bin_clken_SLICE_0

  # Create instance: LVDS_in_out_clk_BINCOUNTER_0, and set properties
  set LVDS_in_out_clk_BINCOUNTER_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 LVDS_in_out_clk_BINCOUNTER_0 ]
  set_property -dict [ list \
   CONFIG.Implementation {DSP48} \
   CONFIG.Output_Width {48} \
 ] $LVDS_in_out_clk_BINCOUNTER_0

  # Create instance: LVDS_in_out_sample_clken_REDLOG_0, and set properties
  set LVDS_in_out_sample_clken_REDLOG_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 LVDS_in_out_sample_clken_REDLOG_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {4} \
 ] $LVDS_in_out_sample_clken_REDLOG_0

  # Create instance: LVDS_in_out_sample_clken_SLICE_0, and set properties
  set LVDS_in_out_sample_clken_SLICE_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_out_sample_clken_SLICE_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {4} \
 ] $LVDS_in_out_sample_clken_SLICE_0

  # Create instance: LVDS_in_out_samplecounter_SLICE_0, and set properties
  set LVDS_in_out_samplecounter_SLICE_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_out_samplecounter_SLICE_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {47} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {1} \
 ] $LVDS_in_out_samplecounter_SLICE_0

  # Create instance: LVDS_in_tlast_gen_REDLOG_0, and set properties
  set LVDS_in_tlast_gen_REDLOG_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 LVDS_in_tlast_gen_REDLOG_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {11} \
 ] $LVDS_in_tlast_gen_REDLOG_0

  # Create instance: LVDS_in_tlast_gen_REDLOG_1, and set properties
  set LVDS_in_tlast_gen_REDLOG_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 LVDS_in_tlast_gen_REDLOG_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {11} \
 ] $LVDS_in_tlast_gen_REDLOG_1

  # Create instance: LVDS_in_tlast_gen_SLICE_0, and set properties
  set LVDS_in_tlast_gen_SLICE_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 LVDS_in_tlast_gen_SLICE_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {10} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {48} \
   CONFIG.DOUT_WIDTH {11} \
 ] $LVDS_in_tlast_gen_SLICE_0

  # Create instance: LVDS_in_tlast_gen_VecLOG_1, and set properties
  set LVDS_in_tlast_gen_VecLOG_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 LVDS_in_tlast_gen_VecLOG_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {11} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $LVDS_in_tlast_gen_VecLOG_1

  # Create instance: LVDS_out_CDC_0, and set properties
  set LVDS_out_CDC_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 LVDS_out_CDC_0 ]
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
 ] $LVDS_out_CDC_0

  # Create instance: LVDS_out_SERDES_0, and set properties
  set LVDS_out_SERDES_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 LVDS_out_SERDES_0 ]
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
 ] $LVDS_out_SERDES_0

  # Create instance: axi_ethernetlite_ETHERNET, and set properties
  set axi_ethernetlite_ETHERNET [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernetlite:3.0 axi_ethernetlite_ETHERNET ]
  set_property -dict [ list \
   CONFIG.C_DUPLEX {1} \
   CONFIG.C_INCLUDE_GLOBAL_BUFFERS {1} \
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
   CONFIG.C_TRI_DEFAULT_2 {0xFFFFFFFF} \
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

  # Create instance: axi_uart16550_FTDI_0, and set properties
  set axi_uart16550_FTDI_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_FTDI_0 ]

  # Create instance: clk_lvds_in_PLL_0, and set properties
  set clk_lvds_in_PLL_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_lvds_in_PLL_0 ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {false} \
   CONFIG.CLKIN1_JITTER_PS {156.25} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {149.670} \
   CONFIG.CLKOUT1_MATCHED_ROUTING {true} \
   CONFIG.CLKOUT1_PHASE_ERROR {114.696} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {128} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {174.718} \
   CONFIG.CLKOUT2_MATCHED_ROUTING {false} \
   CONFIG.CLKOUT2_PHASE_ERROR {114.696} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {64} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {237.501} \
   CONFIG.CLKOUT3_PHASE_ERROR {114.696} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {16} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {158.007} \
   CONFIG.CLKOUT4_PHASE_ERROR {114.696} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_128mhz000_lvds} \
   CONFIG.CLK_OUT1_USE_FINE_PS_GUI {false} \
   CONFIG.CLK_OUT2_PORT {clk_064mhz000_lvds} \
   CONFIG.CLK_OUT2_USE_FINE_PS_GUI {false} \
   CONFIG.CLK_OUT3_PORT {clk_016mhz000_lvds} \
   CONFIG.CLK_OUT4_PORT {clk_out4} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {14} \
   CONFIG.MMCM_CLKIN1_PERIOD {15.625} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7} \
   CONFIG.MMCM_CLKOUT0_USE_FINE_PS {false} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {14} \
   CONFIG.MMCM_CLKOUT1_USE_FINE_PS {false} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {56} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {64} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_DYN_PHASE_SHIFT {false} \
   CONFIG.USE_DYN_RECONFIG {false} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {false} \
 ] $clk_lvds_in_PLL_0

  # Create instance: clk_pll_trx_in_MMCM_0, and set properties
  set clk_pll_trx_in_MMCM_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_pll_trx_in_MMCM_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKIN2_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {273.316} \
   CONFIG.CLKOUT1_PHASE_ERROR {162.874} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {114.306} \
   CONFIG.CLKOUT2_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {64} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {141.322} \
   CONFIG.CLKOUT3_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {16} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {118.639} \
   CONFIG.CLKOUT4_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT5_JITTER {131.885} \
   CONFIG.CLKOUT5_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {25} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT6_JITTER {190.216} \
   CONFIG.CLKOUT6_PHASE_ERROR {138.123} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT6_USED {false} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_012mhz000} \
   CONFIG.CLK_OUT2_PORT {clk_064mhz000} \
   CONFIG.CLK_OUT3_PORT {clk_016mhz000} \
   CONFIG.CLK_OUT4_PORT {clk_050mhz000} \
   CONFIG.CLK_OUT5_PORT {clk_025mhz000} \
   CONFIG.CLK_OUT6_PORT {clk_out6} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {20.250} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {20.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {84.375} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT5_DIVIDE {1} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_IN_FREQ {50} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.SECONDARY_IN_FREQ {50} \
   CONFIG.SECONDARY_SOURCE {No_buffer} \
   CONFIG.USE_INCLK_SWITCHOVER {true} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {true} \
 ] $clk_pll_trx_in_MMCM_0

  # Create instance: clk_pll_trx_in_PLL_0, and set properties
  set clk_pll_trx_in_PLL_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_pll_trx_in_PLL_0 ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {false} \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKIN2_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {96.666} \
   CONFIG.CLKOUT1_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {98.321} \
   CONFIG.CLKOUT2_MATCHED_ROUTING {true} \
   CONFIG.CLKOUT2_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {177.778} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {118.639} \
   CONFIG.CLKOUT3_MATCHED_ROUTING {true} \
   CONFIG.CLKOUT3_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {131.885} \
   CONFIG.CLKOUT4_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {25} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT5_JITTER {106.952} \
   CONFIG.CLKOUT5_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT6_JITTER {106.952} \
   CONFIG.CLKOUT6_PHASE_ERROR {120.359} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT6_USED {false} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_200mhz000} \
   CONFIG.CLK_OUT1_USE_FINE_PS_GUI {false} \
   CONFIG.CLK_OUT2_PORT {clk_177mhz778} \
   CONFIG.CLK_OUT3_PORT {clk_050mhz000} \
   CONFIG.CLK_OUT4_PORT {clk_025mhz000} \
   CONFIG.CLK_OUT5_PORT {clk_out5} \
   CONFIG.CLK_OUT6_PORT {clk_out6} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {20.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {8} \
   CONFIG.MMCM_CLKOUT0_USE_FINE_PS {false} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {9} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {32} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {64} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT5_DIVIDE {1} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {50} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.SECONDARY_IN_FREQ {50} \
   CONFIG.SECONDARY_SOURCE {No_buffer} \
   CONFIG.USE_DYN_PHASE_SHIFT {false} \
   CONFIG.USE_DYN_RECONFIG {false} \
   CONFIG.USE_INCLK_SWITCHOVER {true} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {true} \
 ] $clk_pll_trx_in_PLL_0

  # Create instance: clk_trx_in_PLL_0, and set properties
  set clk_trx_in_PLL_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_trx_in_PLL_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {384.61} \
   CONFIG.CLKIN2_JITTER_PS {106.24} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {187.765} \
   CONFIG.CLKOUT1_PHASE_ERROR {208.908} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.0} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {137.681} \
   CONFIG.CLKOUT2_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {137.681} \
   CONFIG.CLKOUT3_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {137.681} \
   CONFIG.CLKOUT4_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT5_JITTER {137.681} \
   CONFIG.CLKOUT5_PHASE_ERROR {105.461} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_trx_050mhz000} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {50} \
   CONFIG.MMCM_CLKIN1_PERIOD {38.462} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {26} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.PRIM_IN_FREQ {26.000} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_INCLK_SWITCHOVER {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_trx_in_PLL_0

  # Create instance: const_width11_0x400, and set properties
  set const_width11_0x400 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width11_0x400 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1024} \
   CONFIG.CONST_WIDTH {11} \
 ] $const_width11_0x400

  # Create instance: const_width1_val1, and set properties
  set const_width1_val1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width1_val1 ]

  # Create instance: const_width31_val0, and set properties
  set const_width31_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width31_val0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {31} \
 ] $const_width31_val0

  # Create instance: const_width32_0x80004000, and set properties
  set const_width32_0x80004000 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width32_0x80004000 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {2147500032} \
   CONFIG.CONST_WIDTH {32} \
 ] $const_width32_0x80004000

  # Create instance: const_width32_0xC000C000, and set properties
  set const_width32_0xC000C000 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width32_0xC000C000 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {3221274624} \
   CONFIG.CONST_WIDTH {32} \
 ] $const_width32_0xC000C000

  # Create instance: const_width4_val0, and set properties
  set const_width4_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width4_val0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $const_width4_val0

  # Create instance: const_width8_val0, and set properties
  set const_width8_val0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_width8_val0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $const_width8_val0

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

  # Create instance: mb_0_axi_interconnect_bot1, and set properties
  set mb_0_axi_interconnect_bot1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mb_0_axi_interconnect_bot1 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {8} \
   CONFIG.NUM_SI {1} \
   CONFIG.STRATEGY {0} \
 ] $mb_0_axi_interconnect_bot1

  # Create instance: mb_0_axi_interconnect_bot2, and set properties
  set mb_0_axi_interconnect_bot2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mb_0_axi_interconnect_bot2 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {6} \
   CONFIG.NUM_SI {1} \
   CONFIG.STRATEGY {0} \
 ] $mb_0_axi_interconnect_bot2

  # Create instance: mb_0_axi_interconnect_top, and set properties
  set mb_0_axi_interconnect_top [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 mb_0_axi_interconnect_top ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {4} \
   CONFIG.STRATEGY {0} \
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
   CONFIG.C_INCLUDE_BUF {1} \
 ] $mii_to_rmii_ETHERNET

  # Create instance: onewire_DMR_0, and set properties
  set onewire_DMR_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 onewire_DMR_0 ]
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
 ] $onewire_DMR_0

  # Create instance: rotenc_ACCU_0, and set properties
  set rotenc_ACCU_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_accum:12.0 rotenc_ACCU_0 ]
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
 ] $rotenc_ACCU_0

  # Create instance: rotenc_CONCAT_0, and set properties
  set rotenc_CONCAT_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 rotenc_CONCAT_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net LVDS_in_CORDIC_0_M_AXIS_DOUT [get_bd_intf_ports FSM_LVDS_in_CORDIC_0_M_AXIS] [get_bd_intf_pins LVDS_in_CORDIC_0/M_AXIS_DOUT]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins mb_0_axi_interconnect_bot1/S00_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins mb_0_axi_interconnect_bot2/S00_AXI] [get_bd_intf_pins mb_0_axi_interconnect_top/M01_AXI]
  connect_bd_intf_net -intf_net axi_ethernetlite_0_MII [get_bd_intf_pins axi_ethernetlite_ETHERNET/MII] [get_bd_intf_pins mii_to_rmii_ETHERNET/MII]
  connect_bd_intf_net -intf_net axi_ethernetlite_ETHERNET_MDIO [get_bd_intf_ports mdio_rtl_0_ethernet] [get_bd_intf_pins axi_ethernetlite_ETHERNET/MDIO]
  connect_bd_intf_net -intf_net axi_gpio_0_gpio [get_bd_intf_ports gpio_rtl_0_multi] [get_bd_intf_pins axi_gpio_0_MULTI/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_2_ONEWIRE_in_GPIO2 [get_bd_intf_ports gpio_rtl_1_onewire_gpio_in] [get_bd_intf_pins axi_gpio_2_ONEWIRE_in/GPIO2]
  connect_bd_intf_net -intf_net axi_iic_0_iic [get_bd_intf_ports iic_rtl_0_pll] [get_bd_intf_pins axi_iic_0_PLL/IIC]
  connect_bd_intf_net -intf_net axi_iic_0_iic1 [get_bd_intf_ports iic_rtl_1_board] [get_bd_intf_pins axi_iic_1_BOARD/IIC]
  connect_bd_intf_net -intf_net axi_quad_spi_0_spi [get_bd_intf_ports spi_rtl_0_config] [get_bd_intf_pins axi_quad_spi_0_CONFIG/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_1_spi [get_bd_intf_ports spi_rtl_1_trx] [get_bd_intf_pins axi_quad_spi_1_TRX/SPI_0]
  connect_bd_intf_net -intf_net axi_uart16550_0_uart [get_bd_intf_ports uart_rtl_0_ftdi] [get_bd_intf_pins axi_uart16550_FTDI_0/UART]
  connect_bd_intf_net -intf_net gpio_rtl_1_onewire_gpio_out [get_bd_intf_ports gpio_rtl_1_onewire_gpio_out] [get_bd_intf_pins axi_gpio_1_ONEWIRE_out/GPIO2]
  connect_bd_intf_net -intf_net mb_0_DLMB [get_bd_intf_pins mb_0/DLMB] [get_bd_intf_pins mb_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net mb_0_ILMB [get_bd_intf_pins mb_0/ILMB] [get_bd_intf_pins mb_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net mb_0_INTERRUPT [get_bd_intf_pins mb_0/INTERRUPT] [get_bd_intf_pins mb_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net mb_0_M_AXI_DC [get_bd_intf_pins mb_0/M_AXI_DC] [get_bd_intf_pins mb_0_axi_interconnect_top/S02_AXI]
  connect_bd_intf_net -intf_net mb_0_M_AXI_DP [get_bd_intf_pins mb_0/M_AXI_DP] [get_bd_intf_pins mb_0_axi_interconnect_top/S00_AXI]
  connect_bd_intf_net -intf_net mb_0_M_AXI_IC [get_bd_intf_pins mb_0/M_AXI_IC] [get_bd_intf_pins mb_0_axi_interconnect_top/S03_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M00_AXI [get_bd_intf_pins axi_ethernetlite_ETHERNET/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M00_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M01_AXI [get_bd_intf_pins axi_gpio_0_MULTI/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M01_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M02_AXI [get_bd_intf_pins axi_gpio_1_ONEWIRE_out/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M02_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M03_AXI [get_bd_intf_pins axi_gpio_2_ONEWIRE_in/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M03_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M04_AXI [get_bd_intf_pins axi_gpio_3_ROTENC/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M04_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M05_AXI [get_bd_intf_pins axi_gpio_7_LVDS/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M05_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M06_AXI [get_bd_intf_pins axi_iic_0_PLL/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M06_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot1_M07_AXI [get_bd_intf_pins axi_iic_1_BOARD/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot1/M07_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot2_M00_AXI [get_bd_intf_pins mb_0_axi_intc/s_axi] [get_bd_intf_pins mb_0_axi_interconnect_bot2/M00_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot2_M01_AXI [get_bd_intf_pins mb_0_axi_interconnect_bot2/M01_AXI] [get_bd_intf_pins mb_0_mdm/S_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot2_M02_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot2/M02_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot2_M03_AXI [get_bd_intf_pins axi_uart16550_FTDI_0/S_AXI] [get_bd_intf_pins mb_0_axi_interconnect_bot2/M03_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot2_M04_AXI [get_bd_intf_pins axi_quad_spi_0_CONFIG/AXI_LITE] [get_bd_intf_pins mb_0_axi_interconnect_bot2/M04_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_bot2_M05_AXI [get_bd_intf_pins axi_quad_spi_1_TRX/AXI_LITE] [get_bd_intf_pins mb_0_axi_interconnect_bot2/M05_AXI]
  connect_bd_intf_net -intf_net mb_0_axi_interconnect_top_M02_AXI [get_bd_intf_pins mb_0_axi_interconnect_top/M02_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net mb_0_mdm_LMB_0 [get_bd_intf_pins mb_0_local_memory/LMB_M] [get_bd_intf_pins mb_0_mdm/LMB_0]
  connect_bd_intf_net -intf_net mb_0_mdm_MDEBUG_0 [get_bd_intf_pins mb_0/DEBUG] [get_bd_intf_pins mb_0_mdm/MBDEBUG_0]
  connect_bd_intf_net -intf_net mb_0_mdm_M_AXI [get_bd_intf_pins mb_0_axi_interconnect_top/S01_AXI] [get_bd_intf_pins mb_0_mdm/M_AXI]
  connect_bd_intf_net -intf_net mig_7series_0_ddr3 [get_bd_intf_ports ddr3_sdram] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net mii_to_rmii_ETHERNET_RMII_PHY_M [get_bd_intf_ports rmii_rtl_0_ethernet] [get_bd_intf_pins mii_to_rmii_ETHERNET/RMII_PHY_M]

  # Create port connections
  connect_bd_net -net FSM_LVDS_in_bitslip_n [get_bd_ports FSM_LVDS_in_bitslip] [get_bd_pins LVDS_in_SERDES_0/bitslip]
  connect_bd_net -net LVDS_064mhz000_SYSRESET_0_bus_struct_reset [get_bd_pins LVDS_064mhz000_SYSRESET_0/bus_struct_reset] [get_bd_pins LVDS_out_SERDES_0/clk_reset]
  connect_bd_net -net LVDS_064mhz000_SYSRESET_0_peripheral_aresetn [get_bd_pins LVDS_064mhz000_SYSRESET_0/peripheral_aresetn] [get_bd_pins LVDS_in_FFT_0/aresetn]
  connect_bd_net -net LVDS_064mhz000_SYSRESET_0_peripheral_reset [get_bd_pins LVDS_064mhz000_SYSRESET_0/peripheral_reset] [get_bd_pins LVDS_in_ShiftRAM_0/SCLR] [get_bd_pins LVDS_out_SERDES_0/io_reset]
  connect_bd_net -net LVDS_in_0CMP_0_nomatch [get_bd_ports FSM_LVDS_in_0CMP_0_nomatch] [get_bd_pins LVDS_in_0CMP_0/Res]
  connect_bd_net -net LVDS_in_AND_0_Res [get_bd_pins LVDS_in_0CMP_0/Op1] [get_bd_pins LVDS_in_AND_0/Res]
  connect_bd_net -net LVDS_in_AXIS_0_m_axis_tdata [get_bd_pins LVDS_in_AXIS_0/m_axis_tdata] [get_bd_pins LVDS_in_FFT_0/s_axis_data_tdata]
  connect_bd_net -net LVDS_in_AXIS_0_m_axis_tlast [get_bd_pins LVDS_in_AXIS_0/m_axis_tlast] [get_bd_pins LVDS_in_FFT_0/s_axis_data_tlast]
  connect_bd_net -net LVDS_in_AXIS_0_m_axis_tuser [get_bd_pins LVDS_in_AXIS_0/m_axis_tuser] [get_bd_pins LVDS_in_ShiftRAM_0/D]
  connect_bd_net -net LVDS_in_AXIS_0_m_axis_tvalid [get_bd_pins LVDS_in_AXIS_0/m_axis_tvalid] [get_bd_pins LVDS_in_FFT_0/s_axis_data_tvalid]
  connect_bd_net -net LVDS_in_CDC_0_data [get_bd_pins LVDS_in_CDC_0/d] [get_bd_pins LVDS_in_FIFO_combiner_0/din] [get_bd_pins LVDS_in_SERDES_0/data_in_to_device]
  connect_bd_net -net LVDS_in_CDC_0_dout [get_bd_pins LVDS_in_FIFO_combiner_0/dout] [get_bd_pins LVDS_in_SLICE_HiCheck_0/Din] [get_bd_pins LVDS_in_SLICE_I_0/Din] [get_bd_pins LVDS_in_SLICE_LoCheck_0/Din] [get_bd_pins LVDS_in_SLICE_Q_0/Din]
  connect_bd_net -net LVDS_in_CDC_0_qdpo [get_bd_pins LVDS_in_CDC_0/qdpo] [get_bd_pins axi_gpio_7_LVDS/gpio2_io_i]
  connect_bd_net -net LVDS_in_CONCAT_0_dout [get_bd_pins LVDS_in_CONCAT_0/dout] [get_bd_pins LVDS_in_XOR_0/Op1]
  connect_bd_net -net LVDS_in_FFT_0_event_frame_started [get_bd_ports FSM_LVDS_in_FFT_0_FrameStarted] [get_bd_pins LVDS_in_FFT_0/event_frame_started]
  connect_bd_net -net LVDS_in_FFT_0_m_axis_data_tdata [get_bd_pins LVDS_in_CORDIC_0/s_axis_cartesian_tdata] [get_bd_pins LVDS_in_FFT_0/m_axis_data_tdata]
  connect_bd_net -net LVDS_in_FFT_0_m_axis_data_tlast [get_bd_pins LVDS_in_CORDIC_0/s_axis_cartesian_tlast] [get_bd_pins LVDS_in_FFT_0/m_axis_data_tlast]
  connect_bd_net -net LVDS_in_FFT_0_m_axis_data_tuser [get_bd_ports FSM_LVDS_in_FFT_0_pntIdx] [get_bd_pins LVDS_in_FFT_0/m_axis_data_tuser]
  connect_bd_net -net LVDS_in_FFT_0_m_axis_data_tvalid [get_bd_pins LVDS_in_CORDIC_0/s_axis_cartesian_tvalid] [get_bd_pins LVDS_in_FFT_0/m_axis_data_tvalid]
  connect_bd_net -net LVDS_in_FFT_0_s_axis_data_tready [get_bd_pins LVDS_in_AXIS_0/m_axis_tready] [get_bd_pins LVDS_in_FFT_0/s_axis_data_tready]
  connect_bd_net -net LVDS_in_SLICE_HiCheck_0_Dout [get_bd_pins LVDS_in_CONCAT_0/In3] [get_bd_pins LVDS_in_SLICE_HiCheck_0/Dout]
  connect_bd_net -net LVDS_in_SLICE_I_0_Dout [get_bd_pins LVDS_in_CONCAT_0/In0] [get_bd_pins LVDS_in_SLICE_I_0/Dout]
  connect_bd_net -net LVDS_in_SLICE_LoCheck_0_Dout [get_bd_pins LVDS_in_CONCAT_0/In1] [get_bd_pins LVDS_in_SLICE_LoCheck_0/Dout]
  connect_bd_net -net LVDS_in_SLICE_Q_0_Dout [get_bd_pins LVDS_in_CONCAT_0/In2] [get_bd_pins LVDS_in_SLICE_Q_0/Dout]
  connect_bd_net -net LVDS_in_ShiftRAM_0_Q [get_bd_pins LVDS_in_CORDIC_0/s_axis_cartesian_tuser] [get_bd_pins LVDS_in_ShiftRAM_0/Q]
  connect_bd_net -net LVDS_in_XOR_0_Res [get_bd_pins LVDS_in_AND_0/Op1] [get_bd_pins LVDS_in_AXIS_0/s_axis_tdata] [get_bd_pins LVDS_in_XOR_0/Res]
  connect_bd_net -net LVDS_in_out_bincounter_REDLOG_0_Res [get_bd_pins LVDS_in_FIFO_combiner_0/wr_en] [get_bd_pins LVDS_in_out_bin_clken_REDLOG_0/Res]
  connect_bd_net -net LVDS_in_out_bincounter_SLICE_0_Dout [get_bd_pins LVDS_in_out_bin_clken_REDLOG_0/Op1] [get_bd_pins LVDS_in_out_bin_clken_SLICE_0/Dout]
  connect_bd_net -net LVDS_in_out_clk_BINCOUNTER_0_Q [get_bd_pins LVDS_in_out_bin_clken_SLICE_0/Din] [get_bd_pins LVDS_in_out_clk_BINCOUNTER_0/Q] [get_bd_pins LVDS_in_out_sample_clken_SLICE_0/Din] [get_bd_pins LVDS_in_out_samplecounter_SLICE_0/Din] [get_bd_pins LVDS_in_tlast_gen_SLICE_0/Din]
  connect_bd_net -net LVDS_in_out_sample_clken_REDLOG_0_Res [get_bd_ports FSM_LVDS_in_sample_clken] [get_bd_pins LVDS_in_AXIS_0/s_axis_tvalid] [get_bd_pins LVDS_in_FIFO_combiner_0/rd_en] [get_bd_pins LVDS_in_out_sample_clken_REDLOG_0/Res]
  connect_bd_net -net LVDS_in_out_sample_clken_SLICE_0_Dout [get_bd_pins LVDS_in_out_sample_clken_REDLOG_0/Op1] [get_bd_pins LVDS_in_out_sample_clken_SLICE_0/Dout]
  connect_bd_net -net LVDS_in_out_samplecounter_SLICE_0_Dout [get_bd_pins LVDS_in_AXIS_0/s_axis_tuser] [get_bd_pins LVDS_in_out_samplecounter_SLICE_0/Dout]
  connect_bd_net -net LVDS_in_tlast_gen_REDLOG_0_Res [get_bd_pins LVDS_in_AXIS_0/s_axis_tlast] [get_bd_pins LVDS_in_tlast_gen_REDLOG_0/Res]
  connect_bd_net -net LVDS_in_tlast_gen_REDLOG_1_Res [get_bd_pins LVDS_in_AXIS_0/s_axis_tid] [get_bd_pins LVDS_in_tlast_gen_REDLOG_1/Res]
  connect_bd_net -net LVDS_in_tlast_gen_SLICE_0_Dout [get_bd_pins LVDS_in_tlast_gen_REDLOG_0/Op1] [get_bd_pins LVDS_in_tlast_gen_SLICE_0/Dout] [get_bd_pins LVDS_in_tlast_gen_VecLOG_1/Op1]
  connect_bd_net -net LVDS_in_tlast_gen_VecLOG_1_Res [get_bd_pins LVDS_in_tlast_gen_REDLOG_1/Op1] [get_bd_pins LVDS_in_tlast_gen_VecLOG_1/Res]
  connect_bd_net -net LVDS_out_CDC_0_data [get_bd_pins LVDS_out_CDC_0/d] [get_bd_pins axi_gpio_7_LVDS/gpio_io_o]
  connect_bd_net -net LVDS_out_CDC_0_qdpo [get_bd_pins LVDS_out_CDC_0/qdpo] [get_bd_pins LVDS_out_SERDES_0/data_out_from_device]
  connect_bd_net -net LVDS_out_SERDES_0_clk_to_pins_n [get_bd_ports ufb_trx_txclk_n] [get_bd_pins LVDS_out_SERDES_0/clk_to_pins_n]
  connect_bd_net -net LVDS_out_SERDES_0_clk_to_pins_p [get_bd_ports ufb_trx_txclk_p] [get_bd_pins LVDS_out_SERDES_0/clk_to_pins_p]
  connect_bd_net -net LVDS_out_SERDES_0_data_out_to_pins_n [get_bd_ports ufb_trx_txd_n] [get_bd_pins LVDS_out_SERDES_0/data_out_to_pins_n]
  connect_bd_net -net LVDS_out_SERDES_0_data_out_to_pins_p [get_bd_ports ufb_trx_txd_p] [get_bd_pins LVDS_out_SERDES_0/data_out_to_pins_p]
  connect_bd_net -net axi_ethernetlite_ETHERNET_ip2intc_irpt [get_bd_pins axi_ethernetlite_ETHERNET/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In11]
  connect_bd_net -net axi_gpio_1_ONEWIRE_out_gpio_io_o [get_bd_pins axi_gpio_1_ONEWIRE_out/gpio_io_o] [get_bd_pins onewire_DMR_0/dpra]
  connect_bd_net -net axi_gpio_2_onewire_ip2intc_irpt [get_bd_pins axi_gpio_2_ONEWIRE_in/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In10]
  connect_bd_net -net axi_gpio_3_rotenc_ip2intc_irpt [get_bd_pins axi_gpio_3_ROTENC/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In9]
  connect_bd_net -net axi_gpio_3_rotenc_push [get_bd_ports board_rotenc_push] [get_bd_pins axi_gpio_3_ROTENC/gpio2_io_i]
  connect_bd_net -net axi_iic_0_pll_iic2intc_irpt [get_bd_pins axi_iic_0_PLL/iic2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In4]
  connect_bd_net -net axi_iic_1_board_iic2intc_irpt [get_bd_pins axi_iic_1_BOARD/iic2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In7]
  connect_bd_net -net axi_quad_spi_0_config_ip2intc_irpt [get_bd_pins axi_quad_spi_0_CONFIG/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In3]
  connect_bd_net -net axi_quad_spi_1_trx_ip2intc_irpt [get_bd_pins axi_quad_spi_1_TRX/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In5]
  connect_bd_net -net axi_timer_0_irpt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins mb_0_axi_intc_concat/In1]
  connect_bd_net -net axi_timer_0_lcd_pwm0 [get_bd_ports pwm0_lcd_bl_obuf] [get_bd_pins axi_timer_0/pwm0]
  connect_bd_net -net axi_uart16550_0_ftdi_ip2intc_irpt [get_bd_pins axi_uart16550_FTDI_0/ip2intc_irpt] [get_bd_pins mb_0_axi_intc_concat/In2]
  connect_bd_net -net clk_012mhz000_n [get_bd_ports ufb_fpga_ft_12mhz_obuf] [get_bd_pins clk_pll_trx_in_MMCM_0/clk_012mhz000]
  connect_bd_net -net clk_025mhz000_n [get_bd_pins axi_quad_spi_0_CONFIG/ext_spi_clk] [get_bd_pins axi_quad_spi_1_TRX/ext_spi_clk] [get_bd_pins clk_pll_trx_in_PLL_0/clk_025mhz000]
  connect_bd_net -net clk_050mhz000_n [get_bd_pins clk_pll_trx_in_PLL_0/clk_050mhz000] [get_bd_pins mii_to_rmii_ETHERNET/ref_clk]
  connect_bd_net -net clk_177mhz778_n [get_bd_pins clk_pll_trx_in_PLL_0/clk_177mhz778] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_LVDS_in_PLL_locked [get_bd_pins LVDS_016mhz000_SYSRESET_0/dcm_locked] [get_bd_pins LVDS_064mhz000_SYSRESET_0/dcm_locked] [get_bd_pins clk_lvds_in_PLL_0/locked]
  connect_bd_net -net clk_LVDS_in_clk_016mhz000_lvds [get_bd_pins LVDS_016mhz000_SYSRESET_0/slowest_sync_clk] [get_bd_pins LVDS_in_SERDES_0/clk_div_in] [get_bd_pins LVDS_out_SERDES_0/clk_div_in] [get_bd_pins clk_lvds_in_PLL_0/clk_016mhz000_lvds]
  connect_bd_net -net clk_LVDS_in_clk_064mhz000_lvds [get_bd_ports FSM_LVDS_clk_064mhz000] [get_bd_pins LVDS_064mhz000_SYSRESET_0/slowest_sync_clk] [get_bd_pins LVDS_in_AXIS_0/s_aclk] [get_bd_pins LVDS_in_CDC_0/clk] [get_bd_pins LVDS_in_CORDIC_0/aclk] [get_bd_pins LVDS_in_FFT_0/aclk] [get_bd_pins LVDS_in_FIFO_combiner_0/clk] [get_bd_pins LVDS_in_SERDES_0/clk_in] [get_bd_pins LVDS_in_ShiftRAM_0/CLK] [get_bd_pins LVDS_in_out_clk_BINCOUNTER_0/CLK] [get_bd_pins LVDS_out_CDC_0/qdpo_clk] [get_bd_pins LVDS_out_SERDES_0/clk_in] [get_bd_pins clk_lvds_in_PLL_0/clk_064mhz000_lvds]
  connect_bd_net -net clk_trx_050mhz000_PLL_locked [get_bd_pins clk_pll_trx_in_MMCM_0/clk_in_sel] [get_bd_pins clk_pll_trx_in_PLL_0/clk_in_sel] [get_bd_pins clk_trx_in_PLL_0/locked]
  connect_bd_net -net clk_trx_050mhz000_n [get_bd_pins clk_pll_trx_in_MMCM_0/clk_in1] [get_bd_pins clk_pll_trx_in_PLL_0/clk_in1] [get_bd_pins clk_trx_in_PLL_0/clk_trx_050mhz000]
  connect_bd_net -net concat_ROTENC_0_dout [get_bd_pins rotenc_ACCU_0/B] [get_bd_pins rotenc_CONCAT_0/dout]
  connect_bd_net -net concat_ROTENC_0_pulse [get_bd_ports board_rotenc_pulse] [get_bd_pins rotenc_CONCAT_0/In0]
  connect_bd_net -net const_0xc000c000_dout [get_bd_pins LVDS_in_AND_0/Op2] [get_bd_pins const_width32_0xC000C000/dout]
  connect_bd_net -net const_width1_val1_dout [get_bd_pins LVDS_in_FFT_0/s_axis_config_tvalid] [get_bd_pins LVDS_out_CDC_0/we] [get_bd_pins const_width1_val1/dout]
  connect_bd_net -net const_width31_val0_dout [get_bd_pins const_width31_val0/dout] [get_bd_pins rotenc_CONCAT_0/In1]
  connect_bd_net -net const_width32_0x80004000_dout [get_bd_pins LVDS_in_XOR_0/Op2] [get_bd_pins const_width32_0x80004000/dout]
  connect_bd_net -net const_width32_0x80004001_dout [get_bd_pins LVDS_in_tlast_gen_VecLOG_1/Op2] [get_bd_pins const_width11_0x400/dout]
  connect_bd_net -net const_width4_val0_dout [get_bd_pins LVDS_in_CDC_0/a] [get_bd_pins LVDS_in_CDC_0/dpra] [get_bd_pins LVDS_out_CDC_0/a] [get_bd_pins LVDS_out_CDC_0/dpra] [get_bd_pins const_width4_val0/dout]
  connect_bd_net -net const_width8_val0_dout [get_bd_pins LVDS_in_FFT_0/s_axis_config_tdata] [get_bd_pins const_width8_val0/dout]
  connect_bd_net -net mb_0_intr_in [get_bd_pins mb_0_axi_intc/intr] [get_bd_pins mb_0_axi_intc_concat/dout]
  connect_bd_net -net mb_0_mdm_Interrupt [get_bd_pins mb_0_axi_intc_concat/In0] [get_bd_pins mb_0_mdm/Interrupt]
  connect_bd_net -net mb_0_mdm_debug_sys_rst [get_bd_pins mb_0_mdm/Debug_SYS_Rst] [get_bd_pins mb_0_reset/mb_debug_sys_rst]
  connect_bd_net -net mb_0_reset_aux_reset_in [get_bd_ports reset] [get_bd_pins LVDS_016mhz000_SYSRESET_0/aux_reset_in] [get_bd_pins LVDS_064mhz000_SYSRESET_0/aux_reset_in] [get_bd_pins clk_pll_trx_in_MMCM_0/reset] [get_bd_pins clk_pll_trx_in_PLL_0/reset] [get_bd_pins mb_0_reset/aux_reset_in]
  connect_bd_net -net mb_0_reset_bus_struct_reset [get_bd_pins mb_0_local_memory/SYS_Rst] [get_bd_pins mb_0_reset/bus_struct_reset]
  connect_bd_net -net mb_0_reset_interconnect_aresetn [get_bd_pins mb_0_axi_interconnect_bot1/ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/ARESETN] [get_bd_pins mb_0_axi_interconnect_top/ARESETN] [get_bd_pins mb_0_reset/interconnect_aresetn]
  connect_bd_net -net mb_0_reset_mb_reset [get_bd_pins mb_0/Reset] [get_bd_pins mb_0_axi_intc/processor_rst] [get_bd_pins mb_0_reset/mb_reset]
  connect_bd_net -net mb_0_reset_peripheral_aresetn [get_bd_ports ufb_fpga_ft_resetn_obuf] [get_bd_pins axi_ethernetlite_ETHERNET/s_axi_aresetn] [get_bd_pins axi_gpio_0_MULTI/s_axi_aresetn] [get_bd_pins axi_gpio_1_ONEWIRE_out/s_axi_aresetn] [get_bd_pins axi_gpio_2_ONEWIRE_in/s_axi_aresetn] [get_bd_pins axi_gpio_3_ROTENC/s_axi_aresetn] [get_bd_pins axi_gpio_7_LVDS/s_axi_aresetn] [get_bd_pins axi_iic_0_PLL/s_axi_aresetn] [get_bd_pins axi_iic_1_BOARD/s_axi_aresetn] [get_bd_pins axi_quad_spi_0_CONFIG/s_axi_aresetn] [get_bd_pins axi_quad_spi_1_TRX/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uart16550_FTDI_0/s_axi_aresetn] [get_bd_pins mb_0_axi_intc/s_axi_aresetn] [get_bd_pins mb_0_axi_interconnect_bot1/M00_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M01_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M02_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M03_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M04_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M05_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M06_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/M07_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot1/S00_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/M00_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/M01_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/M02_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/M03_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/M04_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/M05_ARESETN] [get_bd_pins mb_0_axi_interconnect_bot2/S00_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M00_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M01_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/M02_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S00_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S01_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S02_ARESETN] [get_bd_pins mb_0_axi_interconnect_top/S03_ARESETN] [get_bd_pins mb_0_mdm/M_AXI_ARESETN] [get_bd_pins mb_0_mdm/S_AXI_ARESETN] [get_bd_pins mb_0_reset/peripheral_aresetn] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins mii_to_rmii_ETHERNET/rst_n] [get_bd_pins onewire_DMR_0/qdpo_srst] [get_bd_pins onewire_DMR_0/qspo_srst]
  connect_bd_net -net mb_0_reset_peripheral_reset [get_bd_ports peripheral_reset] [get_bd_pins LVDS_in_SERDES_0/io_reset] [get_bd_pins mb_0_reset/peripheral_reset] [get_bd_pins rotenc_ACCU_0/SCLR]
  connect_bd_net -net mb_axi_clk_083mhz333 [get_bd_ports mb_axi_clk_083mhz333] [get_bd_pins LVDS_in_CDC_0/qdpo_clk] [get_bd_pins LVDS_out_CDC_0/clk] [get_bd_pins axi_ethernetlite_ETHERNET/s_axi_aclk] [get_bd_pins axi_gpio_0_MULTI/s_axi_aclk] [get_bd_pins axi_gpio_1_ONEWIRE_out/s_axi_aclk] [get_bd_pins axi_gpio_2_ONEWIRE_in/s_axi_aclk] [get_bd_pins axi_gpio_3_ROTENC/s_axi_aclk] [get_bd_pins axi_gpio_7_LVDS/s_axi_aclk] [get_bd_pins axi_iic_0_PLL/s_axi_aclk] [get_bd_pins axi_iic_1_BOARD/s_axi_aclk] [get_bd_pins axi_quad_spi_0_CONFIG/s_axi_aclk] [get_bd_pins axi_quad_spi_1_TRX/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uart16550_FTDI_0/s_axi_aclk] [get_bd_pins mb_0/Clk] [get_bd_pins mb_0_axi_intc/processor_clk] [get_bd_pins mb_0_axi_intc/s_axi_aclk] [get_bd_pins mb_0_axi_interconnect_bot1/ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M00_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M01_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M02_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M03_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M04_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M05_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M06_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/M07_ACLK] [get_bd_pins mb_0_axi_interconnect_bot1/S00_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/M00_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/M01_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/M02_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/M03_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/M04_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/M05_ACLK] [get_bd_pins mb_0_axi_interconnect_bot2/S00_ACLK] [get_bd_pins mb_0_axi_interconnect_top/ACLK] [get_bd_pins mb_0_axi_interconnect_top/M00_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M01_ACLK] [get_bd_pins mb_0_axi_interconnect_top/M02_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S00_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S01_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S02_ACLK] [get_bd_pins mb_0_axi_interconnect_top/S03_ACLK] [get_bd_pins mb_0_local_memory/LMB_Clk] [get_bd_pins mb_0_mdm/M_AXI_ACLK] [get_bd_pins mb_0_mdm/S_AXI_ACLK] [get_bd_pins mb_0_reset/slowest_sync_clk] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins onewire_DMR_0/clk] [get_bd_pins rotenc_ACCU_0/CLK]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_ports ddr3_init_calib_complete_obuf] [get_bd_pins mig_7series_0/init_calib_complete]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins mb_0_reset/dcm_locked] [get_bd_pins mig_7series_0/mmcm_locked]
  connect_bd_net -net mig_7series_0_sys_rst [get_bd_ports sys_rst] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net mig_7series_0_ui_addn_clk_0 [get_bd_pins mig_7series_0/clk_ref_i] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins LVDS_016mhz000_SYSRESET_0/ext_reset_in] [get_bd_pins LVDS_064mhz000_SYSRESET_0/ext_reset_in] [get_bd_pins mb_0_reset/ext_reset_in] [get_bd_pins mig_7series_0/ui_clk_sync_rst]
  connect_bd_net -net onewire_DMR_0_a_in [get_bd_ports dmr_1_onewire_a_in] [get_bd_pins onewire_DMR_0/a]
  connect_bd_net -net onewire_DMR_0_d_in [get_bd_ports dmr_1_onewire_d_in] [get_bd_pins onewire_DMR_0/d]
  connect_bd_net -net onewire_DMR_0_qdpo [get_bd_pins axi_gpio_2_ONEWIRE_in/gpio_io_i] [get_bd_pins onewire_DMR_0/qdpo]
  connect_bd_net -net onewire_DMR_0_we [get_bd_ports dmr_1_onewire_we_in] [get_bd_pins onewire_DMR_0/we]
  connect_bd_net -net pll_clk_g [get_bd_ports pll_clk_g] [get_bd_pins clk_pll_trx_in_MMCM_0/clk_in2] [get_bd_pins clk_pll_trx_in_PLL_0/clk_in2]
  connect_bd_net -net pll_iic2intc_irpt [get_bd_ports pll_int] [get_bd_pins mb_0_axi_intc_concat/In8]
  connect_bd_net -net rotenc_ACCU_0_add [get_bd_ports board_rotenc_up] [get_bd_pins rotenc_ACCU_0/ADD]
  connect_bd_net -net rotenc_ACCU_0_q [get_bd_pins axi_gpio_3_ROTENC/gpio_io_i] [get_bd_pins rotenc_ACCU_0/Q]
  connect_bd_net -net sys_reset_016mhz000_peripheral_aresetn [get_bd_pins LVDS_016mhz000_SYSRESET_0/peripheral_aresetn] [get_bd_pins LVDS_in_AXIS_0/s_aresetn]
  connect_bd_net -net trx_clk_026mhz000_g [get_bd_ports trx_clk_026mhz000_g] [get_bd_pins clk_trx_in_PLL_0/clk_in1]
  connect_bd_net -net trx_iic2intc_irpt [get_bd_ports trx_int] [get_bd_pins mb_0_axi_intc_concat/In6]
  connect_bd_net -net ufb_trx_rxclk_n [get_bd_ports ufb_trx_rxclk_n] [get_bd_pins clk_lvds_in_PLL_0/clk_in1_n]
  connect_bd_net -net ufb_trx_rxclk_p [get_bd_ports ufb_trx_rxclk_p] [get_bd_pins clk_lvds_in_PLL_0/clk_in1_p]
  connect_bd_net -net ufb_trx_rxd09_n [get_bd_ports ufb_trx_rxd09_n] [get_bd_pins LVDS_in_SERDES_0/data_in_from_pins_n]
  connect_bd_net -net ufb_trx_rxd09_p [get_bd_ports ufb_trx_rxd09_p] [get_bd_pins LVDS_in_SERDES_0/data_in_from_pins_p]

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
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_0/Data] [get_bd_addr_segs axi_uart16550_FTDI_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_0/Instruction] [get_bd_addr_segs axi_uart16550_FTDI_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
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
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces mb_0_mdm/Data] [get_bd_addr_segs axi_uart16550_FTDI_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
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


