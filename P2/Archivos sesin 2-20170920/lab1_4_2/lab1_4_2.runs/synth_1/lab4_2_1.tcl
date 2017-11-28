# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/fpga/DSED_G1/P2/Archivos sesin 2-20170920/lab1_4_2/lab1_4_2.cache/wt} [current_project]
set_property parent.project_path {C:/Users/fpga/DSED_G1/P2/Archivos sesin 2-20170920/lab1_4_2/lab1_4_2.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/fpga/DSED_G1/P2/Archivos sesin 2-20170920/lab1_4_2/lab1_4_2.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {{C:/Users/fpga/DSED_G1/P2/Archivos sesin 2-20170920/lab1_4_2/lab1_4_2.srcs/sources_1/new/lab4_2_1.vhd}}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/fpga/DSED_G1/P2/Archivos sesin 2-20170920/lab1_4_2/lab1_4_2.srcs/constrs_1/imports/Archivos sesi�n 2-20170920/Nexys4DDR_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/fpga/DSED_G1/P2/Archivos sesin 2-20170920/lab1_4_2/lab1_4_2.srcs/constrs_1/imports/Archivos sesi�n 2-20170920/Nexys4DDR_Master.xdc}}]


synth_design -top lab4_2_1 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef lab4_2_1.dcp

catch { report_utilization -file lab4_2_1_utilization_synth.rpt -pb lab4_2_1_utilization_synth.pb }
