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
add_force {/tb_null/msys_wrapper_i/FFT_controller_i/rx09_bs_32bits_vld} -radix hex {1 10us} {0 10010000000fs} -repeat_every 50000000fs
add_force {/tb_null/msys_wrapper_i/FFT_controller_i/rx24_bs_32bits_vld} -radix hex {1 10us} {0 10010000000fs} -repeat_every 50000000fs

run 1000ns
