--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
--Date        : Fri Nov  1 11:27:35 2024
--Host        : AxelsPC running 64-bit major release  (build 9200)
--Command     : generate_target ADC1.bd
--Design      : ADC1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ADC1 : entity is "ADC1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ADC1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ADC1 : entity is "ADC1.hwdef";
end ADC1;

architecture STRUCTURE of ADC1 is
  component ADC1_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp4 : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component ADC1_xadc_wiz_0_0;
  component ADC1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ADC1_xlconstant_0_0;
  component ADC1_Shifter_0_0 is
  port (
    d_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component ADC1_Shifter_0_0;
  signal Shifter_0_d_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Vaux4_1_V_N : STD_LOGIC;
  signal Vaux4_1_V_P : STD_LOGIC;
  signal Vp_Vn_1_V_N : STD_LOGIC;
  signal Vp_Vn_1_V_P : STD_LOGIC;
  signal dclk_in_1 : STD_LOGIC;
  signal xadc_wiz_0_busy_out : STD_LOGIC;
  signal xadc_wiz_0_channel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xadc_wiz_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_drdy_out : STD_LOGIC;
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vaux4_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux4 V_N";
  attribute X_INTERFACE_INFO of Vaux4_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux4 V_P";
  attribute X_INTERFACE_INFO of Vp_Vn_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn V_N";
  attribute X_INTERFACE_INFO of Vp_Vn_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn V_P";
  attribute X_INTERFACE_INFO of dclk_in : signal is "xilinx.com:signal:clock:1.0 CLK.DCLK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dclk_in : signal is "XIL_INTERFACENAME CLK.DCLK_IN, CLK_DOMAIN ADC1_dclk_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  Vaux4_1_V_N <= Vaux4_v_n;
  Vaux4_1_V_P <= Vaux4_v_p;
  Vp_Vn_1_V_N <= Vp_Vn_v_n;
  Vp_Vn_1_V_P <= Vp_Vn_v_p;
  busy_out <= xadc_wiz_0_busy_out;
  channel_out(4 downto 0) <= xadc_wiz_0_channel_out(4 downto 0);
  d_out(11 downto 0) <= Shifter_0_d_out(11 downto 0);
  daddr_in(6 downto 0) <= xlconstant_0_dout(6 downto 0);
  dclk_in_1 <= dclk_in;
  drdy_out <= xadc_wiz_0_drdy_out;
Shifter_0: component ADC1_Shifter_0_0
     port map (
      d_in(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      d_out(11 downto 0) => Shifter_0_d_out(11 downto 0)
    );
xadc_wiz_0: component ADC1_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => xadc_wiz_0_busy_out,
      channel_out(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      daddr_in(6 downto 0) => xlconstant_0_dout(6 downto 0),
      dclk_in => dclk_in_1,
      den_in => xadc_wiz_0_eoc_out,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      drdy_out => xadc_wiz_0_drdy_out,
      dwe_in => '0',
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      user_temp_alarm_out => NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED,
      vauxn4 => Vaux4_1_V_N,
      vauxp4 => Vaux4_1_V_P,
      vccaux_alarm_out => NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED,
      vn_in => Vp_Vn_1_V_N,
      vp_in => Vp_Vn_1_V_P
    );
xlconstant_0: component ADC1_xlconstant_0_0
     port map (
      dout(6 downto 0) => xlconstant_0_dout(6 downto 0)
    );
end STRUCTURE;
