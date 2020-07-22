###################################################################

# Created by write_sdc on Tue Aug  1 12:53:53 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_wire_load_mode top
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[7]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[6]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[5]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[4]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[3]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[2]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[1]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {a[0]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[7]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[6]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[5]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[4]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[3]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[2]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[1]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports {b[0]}]
set_driving_cell -lib_cell DFFPOSX1 -pin Q [get_ports reset]
set_load -pin_load 0.0156852 [get_ports {result[15]}]
set_load -pin_load 0.0156852 [get_ports {result[14]}]
set_load -pin_load 0.0156852 [get_ports {result[13]}]
set_load -pin_load 0.0156852 [get_ports {result[12]}]
set_load -pin_load 0.0156852 [get_ports {result[11]}]
set_load -pin_load 0.0156852 [get_ports {result[10]}]
set_load -pin_load 0.0156852 [get_ports {result[9]}]
set_load -pin_load 0.0156852 [get_ports {result[8]}]
set_load -pin_load 0.0156852 [get_ports {result[7]}]
set_load -pin_load 0.0156852 [get_ports {result[6]}]
set_load -pin_load 0.0156852 [get_ports {result[5]}]
set_load -pin_load 0.0156852 [get_ports {result[4]}]
set_load -pin_load 0.0156852 [get_ports {result[3]}]
set_load -pin_load 0.0156852 [get_ports {result[2]}]
set_load -pin_load 0.0156852 [get_ports {result[1]}]
set_load -pin_load 0.0156852 [get_ports {result[0]}]
set_max_fanout 6 [get_ports {a[7]}]
set_max_fanout 6 [get_ports {a[6]}]
set_max_fanout 6 [get_ports {a[5]}]
set_max_fanout 6 [get_ports {a[4]}]
set_max_fanout 6 [get_ports {a[3]}]
set_max_fanout 6 [get_ports {a[2]}]
set_max_fanout 6 [get_ports {a[1]}]
set_max_fanout 6 [get_ports {a[0]}]
set_max_fanout 6 [get_ports {b[7]}]
set_max_fanout 6 [get_ports {b[6]}]
set_max_fanout 6 [get_ports {b[5]}]
set_max_fanout 6 [get_ports {b[4]}]
set_max_fanout 6 [get_ports {b[3]}]
set_max_fanout 6 [get_ports {b[2]}]
set_max_fanout 6 [get_ports {b[1]}]
set_max_fanout 6 [get_ports {b[0]}]
set_max_fanout 6 [get_ports reset]
create_clock [get_ports clk]  -period 100  -waveform {0 50}
set_clock_uncertainty 1  [get_clocks clk]
set_propagated_clock [get_clocks clk]
set_input_delay -clock clk  -max 0  [get_ports {a[7]}]
set_input_delay -clock clk  -max 0  [get_ports {a[6]}]
set_input_delay -clock clk  -max 0  [get_ports {a[5]}]
set_input_delay -clock clk  -max 0  [get_ports {a[4]}]
set_input_delay -clock clk  -max 0  [get_ports {a[3]}]
set_input_delay -clock clk  -max 0  [get_ports {a[2]}]
set_input_delay -clock clk  -max 0  [get_ports {a[1]}]
set_input_delay -clock clk  -max 0  [get_ports {a[0]}]
set_input_delay -clock clk  -max 0  [get_ports {b[7]}]
set_input_delay -clock clk  -max 0  [get_ports {b[6]}]
set_input_delay -clock clk  -max 0  [get_ports {b[5]}]
set_input_delay -clock clk  -max 0  [get_ports {b[4]}]
set_input_delay -clock clk  -max 0  [get_ports {b[3]}]
set_input_delay -clock clk  -max 0  [get_ports {b[2]}]
set_input_delay -clock clk  -max 0  [get_ports {b[1]}]
set_input_delay -clock clk  -max 0  [get_ports {b[0]}]
set_input_delay -clock clk  -max 0  [get_ports reset]
set_output_delay -clock clk  -max 0  [get_ports {result[15]}]
set_output_delay -clock clk  -max 0  [get_ports {result[14]}]
set_output_delay -clock clk  -max 0  [get_ports {result[13]}]
set_output_delay -clock clk  -max 0  [get_ports {result[12]}]
set_output_delay -clock clk  -max 0  [get_ports {result[11]}]
set_output_delay -clock clk  -max 0  [get_ports {result[10]}]
set_output_delay -clock clk  -max 0  [get_ports {result[9]}]
set_output_delay -clock clk  -max 0  [get_ports {result[8]}]
set_output_delay -clock clk  -max 0  [get_ports {result[7]}]
set_output_delay -clock clk  -max 0  [get_ports {result[6]}]
set_output_delay -clock clk  -max 0  [get_ports {result[5]}]
set_output_delay -clock clk  -max 0  [get_ports {result[4]}]
set_output_delay -clock clk  -max 0  [get_ports {result[3]}]
set_output_delay -clock clk  -max 0  [get_ports {result[2]}]
set_output_delay -clock clk  -max 0  [get_ports {result[1]}]
set_output_delay -clock clk  -max 0  [get_ports {result[0]}]
