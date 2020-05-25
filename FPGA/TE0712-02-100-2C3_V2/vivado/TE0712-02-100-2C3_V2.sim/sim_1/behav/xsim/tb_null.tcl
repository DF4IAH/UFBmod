set curr_wave [current_wave_config]
if { [string length $curr_wave] == 0 } {
  if { [llength [get_objects]] > 0} {
    add_wave /
    set_property needs_save false [current_wave_config]
  } else {
     send_msg_id Add_Wave-1 WARNING "No top level signals found. Simulator will start without a wave window. If you want to open a wave window go to 'File->New Waveform Configuration' or type 'create_wave_config' in the TCL console."
  }
}

add_force {/tb_null/msys_wrapper_i/msys_i/SC0712_0/reset_out} -radix hex {1 10us}

add_force {/tb_null/msys_wrapper_i/msys_i/TRX/TRX_tx_DDS_unit/TRX_tx0_c_shift_ram_0_Q} -radix hex {ff040000 0ns}
add_force {/tb_null/msys_wrapper_i/msys_i/TRX/TRX_tx_DDS_unit/TRX_tx1_c_shift_ram_0_Q} -radix hex {00020000 0ns}

run 1000ns
