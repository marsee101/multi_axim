
call xelab xil_defaultlib.apatb_multi_axim_top -prj multi_axim.prj --lib "ieee_proposed=./ieee_proposed" -s multi_axim -debug wave
call xsim --noieeewarnings multi_axim -tclbatch multi_axim.tcl

