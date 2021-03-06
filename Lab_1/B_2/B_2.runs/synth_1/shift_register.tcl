# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib C:/Users/Superminiala/Documents/VLSI/Lab_1/B_2/B_2.srcs/sources_1/new/shift_register.vhd
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Superminiala/Documents/VLSI/Lab_1/B_2/B_2.cache/wt [current_project]
set_property parent.project_dir C:/Users/Superminiala/Documents/VLSI/Lab_1/B_2 [current_project]
catch { write_hwdef -file shift_register.hwdef }
synth_design -top shift_register -part xc7z010clg400-1
write_checkpoint shift_register.dcp
report_utilization -file shift_register_utilization_synth.rpt -pb shift_register_utilization_synth.pb
