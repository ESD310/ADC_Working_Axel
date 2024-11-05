vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_9

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9

vcom -work xil_defaultlib  -93  \
"../../../bd/ADC1/ip/ADC1_xadc_wiz_0_0/ADC1_xadc_wiz_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  \
"../../../../ADC_AXEL2.gen/sources_1/bd/ADC1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/ADC1/ip/ADC1_xlconstant_0_0/sim/ADC1_xlconstant_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/ADC1/ip/ADC1_Shifter_0_0/sim/ADC1_Shifter_0_0.vhd" \
"../../../bd/ADC1/sim/ADC1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

