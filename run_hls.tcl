open_project -reset poseidon_hls
set_top poseidon_top
add_files poseidon.cpp
add_files -tb poseidon_tb.cpp

open_solution -reset "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default

# Find the absolute path to the data directory
set script_dir [file dirname [file normalize [info script]]]
set data_dir [file join $script_dir "data"]

# Run C-Simulation with the data directory as an argument (-argv)
if {[catch {csim_design -argv "$data_dir"} res]} {
    puts "Error: C-Simulation failed."
    puts $res
    exit 1
}

csynth_design
# export_design -format ip_catalog
exit