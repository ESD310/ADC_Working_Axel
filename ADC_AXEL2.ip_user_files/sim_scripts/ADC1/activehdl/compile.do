transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib
vlib activehdl/xlconstant_v1_1_9

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9

vcom -work xil_defaultlib -93  \
"../../../bd/ADC1/ip/ADC1_xadc_wiz_0_0/ADC1_xadc_wiz_0_0.vhd" \

vlog -work xlconstant_v1_1_9  -v2k5 -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../../ADC_AXEL2.gen/sources_1/bd/ADC1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib -l xlconstant_v1_1_9 \
"../../../bd/ADC1/ip/ADC1_xlconstant_0_0/sim/ADC1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/ADC1/ip/ADC1_Shifter_0_0/sim/ADC1_Shifter_0_0.vhd" \
"../../../bd/ADC1/sim/ADC1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

