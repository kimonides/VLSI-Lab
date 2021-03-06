# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-1
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/mlab_rom.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/MAC.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/mlab_ram.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/Control_Unit.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/FIR.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/FIR_pipe.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/MUL_unit.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/ADD_unit.vhd
  C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.srcs/sources_1/new/FIR_paral.vhd
}
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Superminiala/Documents/VLSI/Lab_3/Lab_3.cache/wt [current_project]
set_property parent.project_dir C:/Users/Superminiala/Documents/VLSI/Lab_3 [current_project]
catch { write_hwdef -file FIR.hwdef }
synth_design -top FIR -part xc7z010clg400-1
write_checkpoint FIR.dcp
report_utilization -file FIR_utilization_synth.rpt -pb FIR_utilization_synth.pb
