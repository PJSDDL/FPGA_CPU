lappend auto_path "D:/Diamond/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {SIM}
set ::bali::simulation::Para(PROJECTPATH) {D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4}
set ::bali::simulation::Para(FILELIST) {"D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4/add.v" "D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4/CPU4_ALU.v" "D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4/ram.v" "D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4/PLL.v" "D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4/CPU4.v" "D:/A_STEP_FPGA_PROJECT/CPU4.5/CPU4/sim.v" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" "VERILOG" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {sim}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VERILOG}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {D:/Diamond/diamond/3.12}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
