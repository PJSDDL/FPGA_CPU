#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/impl1/launch_synplify.tcl
#-- Written on Wed Jun 19 18:07:49 2024

project -close
set filename "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/impl1/impl1_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_4000HC
set_option -package MG132I
set_option -speed_grade -4

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 100
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
set_option -include_path "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4"
add_file -verilog -vlog_std v2001 "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/CPU4.v"
add_file -verilog -vlog_std v2001 "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/CPU4_ALU.v"
add_file -verilog -vlog_std v2001 "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/add.v"
add_file -verilog -vlog_std v2001 "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/PLL.v"
add_file -verilog -vlog_std v2001 "D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/ram.v"
#-- top module name
set_option -top_module {}
project -result_file {D:/A_STEP_FPGA_PROJECT/CPU4/CPU4/impl1/impl1.edi}
project -save "$filename"
