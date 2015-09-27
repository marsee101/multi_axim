############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project multi_axim
set_top multi_axim
add_files multi_axim/multi_axim.c
add_files -tb multi_axim/multi_axim_tb.c
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
#source "./multi_axim/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
