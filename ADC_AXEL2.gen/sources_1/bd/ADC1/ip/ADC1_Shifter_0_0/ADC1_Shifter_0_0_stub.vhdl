-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Fri Nov  1 11:32:33 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_stub.vhdl
-- Design      : ADC1_Shifter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADC1_Shifter_0_0 is
  Port ( 
    d_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end ADC1_Shifter_0_0;

architecture stub of ADC1_Shifter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "d_in[15:0],d_out[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Shifter,Vivado 2024.1.2";
begin
end;
