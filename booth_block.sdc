# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Mon Feb 09 15:16:05 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design booth

set_load -pin_load 0.15 [get_ports {y[7]}]
set_load -pin_load 0.15 [get_ports {y[6]}]
set_load -pin_load 0.15 [get_ports {y[5]}]
set_load -pin_load 0.15 [get_ports {y[4]}]
set_load -pin_load 0.15 [get_ports {y[3]}]
set_load -pin_load 0.15 [get_ports {y[2]}]
set_load -pin_load 0.15 [get_ports {y[1]}]
set_load -pin_load 0.15 [get_ports {y[0]}]
set_clock_gating_check -setup 0.0 
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {m[3]}]
set_input_transition 0.12 [get_ports {m[2]}]
set_input_transition 0.12 [get_ports {m[1]}]
set_input_transition 0.12 [get_ports {m[0]}]
set_input_transition 0.12 [get_ports {q[3]}]
set_input_transition 0.12 [get_ports {q[2]}]
set_input_transition 0.12 [get_ports {q[1]}]
set_input_transition 0.12 [get_ports {q[0]}]
set_wire_load_mode "enclosed"
