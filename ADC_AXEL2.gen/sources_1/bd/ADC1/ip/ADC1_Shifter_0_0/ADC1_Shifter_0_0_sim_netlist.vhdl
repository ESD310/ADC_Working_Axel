-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Fri Nov  1 11:32:33 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_Shifter_0_0/ADC1_Shifter_0_0_sim_netlist.vhdl
-- Design      : ADC1_Shifter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC1_Shifter_0_0 is
  port (
    d_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADC1_Shifter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ADC1_Shifter_0_0 : entity is "ADC1_Shifter_0_0,Shifter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ADC1_Shifter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ADC1_Shifter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ADC1_Shifter_0_0 : entity is "Shifter,Vivado 2024.1.2";
end ADC1_Shifter_0_0;

architecture STRUCTURE of ADC1_Shifter_0_0 is
  signal \^d_in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \^d_in\(15 downto 4) <= d_in(15 downto 4);
  d_out(11 downto 0) <= \^d_in\(15 downto 4);
end STRUCTURE;
