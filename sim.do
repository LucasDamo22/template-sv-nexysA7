vlib work
vmap work work

vlog -work work -sv ./design-modules/*.sv
vlog -work work -sv ./testbench-modelsim/tb.sv 
vlog -work work -sv ./FPGA-special-modules/edge_detector_sintese.sv
#vlog -work work -v ./FPGA-special-modules/dspl_drv_NexysA7.v

vsim -voptargs=+acc=lprn -t ns work.tb

do wave.do

run 400ns