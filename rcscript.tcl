# RTL Script to run Basic Synthesis Flow
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib   
set_db hdl_search_path /home/student/23ECR166
set_db library slow.lib
read_hdl booth.v
elaborate 
read_sdc /home/student/23ECR166/constraints_sdc.sdc

set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt


write_hdl > booth_netlist.v
write_sdc > booth_block.sdc
report_area > booth_area.rep
report_gates > booth_gate.rep
report_power > booth_power.rep
report_timing > booth_timing.rep
gui_show


