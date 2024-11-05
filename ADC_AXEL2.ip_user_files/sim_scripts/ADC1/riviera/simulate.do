transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ADC1  -L xil_defaultlib -L xlconstant_v1_1_9 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ADC1 xil_defaultlib.glbl

do {ADC1.udo}

run 1000ns

endsim

quit -force
