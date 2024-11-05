--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
--Date        : Fri Nov  1 11:27:35 2024
--Host        : AxelsPC running 64-bit major release  (build 9200)
--Command     : generate_target ADC1_wrapper.bd
--Design      : ADC1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC1_wrapper is
  port (
    Vaux4_v_n : in STD_LOGIC;
    Vaux4_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    daddr_in : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dclk_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC
  );
end ADC1_wrapper;

architecture STRUCTURE of ADC1_wrapper is
  component ADC1 is
  port (
    Vaux4_v_n : in STD_LOGIC;
    Vaux4_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    dclk_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    daddr_in : out STD_LOGIC_VECTOR ( 6 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component ADC1;
begin
ADC1_i: component ADC1
     port map (
      Vaux4_v_n => Vaux4_v_n,
      Vaux4_v_p => Vaux4_v_p,
      Vp_Vn_v_n => Vp_Vn_v_n,
      Vp_Vn_v_p => Vp_Vn_v_p,
      busy_out => busy_out,
      channel_out(4 downto 0) => channel_out(4 downto 0),
      d_out(11 downto 0) => d_out(11 downto 0),
      daddr_in(6 downto 0) => daddr_in(6 downto 0),
      dclk_in => dclk_in,
      drdy_out => drdy_out
    );
end STRUCTURE;
