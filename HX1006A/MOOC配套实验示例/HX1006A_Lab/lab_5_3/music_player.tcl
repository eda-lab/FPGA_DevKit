# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: music_player.tcl
# Generated on: Fri Feb 05 19:37:54 2021

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "music_player"]} {
		puts "Project music_player is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists music_player]} {
		project_open -revision music_player music_player
	} else {
		project_new -revision music_player music_player
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone 10 LP"
	set_global_assignment -name DEVICE 10CL006YU256C8G
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 18.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "19:36:05  FEBRUARY 05, 2021"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.1.0 Standard Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 256
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST ON -section_id eda_simulation
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name ENABLE_OCT_DONE OFF
	set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
	set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name VERILOG_FILE music_player.v
	set_global_assignment -name QIP_FILE pll.qip
	set_global_assignment -name VERILOG_FILE fdiv.v
	set_global_assignment -name VERILOG_FILE cnt138t.v
	set_global_assignment -name QIP_FILE music.qip
	set_global_assignment -name VERILOG_FILE f_code.v
	set_global_assignment -name VERILOG_FILE speak.v
	set_global_assignment -name VERILOG_FILE DFF.v
	set_global_assignment -name VERILOG_FILE vga_bmp.v
	set_global_assignment -name VERILOG_FILE vga_disp.v
	set_global_assignment -name QIP_FILE rom_bmp.qip
	set_location_assignment PIN_K10 -to speak
	set_location_assignment PIN_E15 -to clk
	set_location_assignment PIN_D15 -to high
	set_location_assignment PIN_T10 -to led[0]
	set_location_assignment PIN_R9 -to led[1]
	set_location_assignment PIN_T9 -to led[2]
	set_location_assignment PIN_K8 -to led[3]
	set_location_assignment PIN_M1 -to rst_n
	set_location_assignment PIN_F15 -to VGA_D[11]
	set_location_assignment PIN_F16 -to VGA_D[10]
	set_location_assignment PIN_G15 -to VGA_D[9]
	set_location_assignment PIN_G16 -to VGA_D[8]
	set_location_assignment PIN_J11 -to VGA_D[7]
	set_location_assignment PIN_J16 -to VGA_D[6]
	set_location_assignment PIN_J15 -to VGA_D[5]
	set_location_assignment PIN_K16 -to VGA_D[4]
	set_location_assignment PIN_K15 -to VGA_D[3]
	set_location_assignment PIN_L16 -to VGA_D[2]
	set_location_assignment PIN_L15 -to VGA_D[1]
	set_location_assignment PIN_N16 -to VGA_D[0]
	set_location_assignment PIN_P16 -to VGA_HSYNC
	set_location_assignment PIN_N15 -to VGA_VSYNC
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
