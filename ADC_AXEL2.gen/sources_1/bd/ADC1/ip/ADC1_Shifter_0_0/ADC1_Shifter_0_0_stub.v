// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Nov  1 11:32:33 2024
// Host        : AxelsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_stub.v
// Design      : ADC1_Shifter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Shifter,Vivado 2024.1.2" *)
module ADC1_Shifter_0_0(d_in, d_out)
/* synthesis syn_black_box black_box_pad_pin="d_in[15:0],d_out[11:0]" */;
  input [15:0]d_in;
  output [11:0]d_out;
endmodule
