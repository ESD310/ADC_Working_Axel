-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Wed Oct 30 14:49:31 2024
-- Host        : AxelsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.sim/sim_1/impl/func/xsim/ADC1_wrapper_func_impl.vhd
-- Design      : ADC1_wrapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC1_xadc_wiz_0_0 is
  port (
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    dclk_in : in STD_LOGIC;
    vauxp4 : in STD_LOGIC;
    vauxn4 : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );
end ADC1_xadc_wiz_0_0;

architecture STRUCTURE of ADC1_xadc_wiz_0_0 is
  signal NLW_U0_BUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_EOS_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_JTAGBUSY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_JTAGLOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_JTAGMODIFIED_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_OT_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ALM_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_CHANNEL_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_MUXADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute box_type : string;
  attribute box_type of U0 : label is "PRIMITIVE";
begin
U0: unisim.vcomponents.XADC
    generic map(
      INIT_40 => X"0014",
      INIT_41 => X"31AF",
      INIT_42 => X"0400",
      INIT_43 => X"0000",
      INIT_44 => X"0000",
      INIT_45 => X"0000",
      INIT_46 => X"0000",
      INIT_47 => X"0000",
      INIT_48 => X"0100",
      INIT_49 => X"0000",
      INIT_4A => X"0000",
      INIT_4B => X"0000",
      INIT_4C => X"0000",
      INIT_4D => X"0000",
      INIT_4E => X"0000",
      INIT_4F => X"0000",
      INIT_50 => X"B5ED",
      INIT_51 => X"57E4",
      INIT_52 => X"A147",
      INIT_53 => X"CA33",
      INIT_54 => X"A93A",
      INIT_55 => X"52C6",
      INIT_56 => X"9555",
      INIT_57 => X"AE4E",
      INIT_58 => X"5999",
      INIT_59 => X"0000",
      INIT_5A => X"0000",
      INIT_5B => X"0000",
      INIT_5C => X"5111",
      INIT_5D => X"0000",
      INIT_5E => X"0000",
      INIT_5F => X"0000",
      IS_CONVSTCLK_INVERTED => '0',
      IS_DCLK_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SIM_MONITOR_FILE => "design.txt"
    )
        port map (
      ALM(7 downto 0) => NLW_U0_ALM_UNCONNECTED(7 downto 0),
      BUSY => NLW_U0_BUSY_UNCONNECTED,
      CHANNEL(4 downto 0) => NLW_U0_CHANNEL_UNCONNECTED(4 downto 0),
      CONVST => '0',
      CONVSTCLK => '0',
      DADDR(6 downto 0) => daddr_in(6 downto 0),
      DCLK => dclk_in,
      DEN => den_in,
      DI(15 downto 0) => di_in(15 downto 0),
      DO(15 downto 0) => do_out(15 downto 0),
      DRDY => drdy_out,
      DWE => dwe_in,
      EOC => eoc_out,
      EOS => NLW_U0_EOS_UNCONNECTED,
      JTAGBUSY => NLW_U0_JTAGBUSY_UNCONNECTED,
      JTAGLOCKED => NLW_U0_JTAGLOCKED_UNCONNECTED,
      JTAGMODIFIED => NLW_U0_JTAGMODIFIED_UNCONNECTED,
      MUXADDR(4 downto 0) => NLW_U0_MUXADDR_UNCONNECTED(4 downto 0),
      OT => NLW_U0_OT_UNCONNECTED,
      RESET => '0',
      VAUXN(15 downto 5) => B"00000000000",
      VAUXN(4) => vauxn4,
      VAUXN(3 downto 0) => B"0000",
      VAUXP(15 downto 5) => B"00000000000",
      VAUXP(4) => vauxp4,
      VAUXP(3 downto 0) => B"0000",
      VN => vn_in,
      VP => vp_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC1 is
  port (
    Vaux4_v_n : in STD_LOGIC;
    Vaux4_v_p : in STD_LOGIC;
    dclk_in : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ADC1 : entity is "ADC1.hwdef";
end ADC1;

architecture STRUCTURE of ADC1 is
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of xadc_wiz_0 : label is "c:/Users/axelo/OneDrive/Skrivebord/ADC_AXEL2/ADC_AXEL2.gen/sources_1/bd/ADC1/ip/ADC1_xadc_wiz_0_0/ADC1_xadc_wiz_0_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of xadc_wiz_0 : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of xadc_wiz_0 : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of xadc_wiz_0 : label is "TRUE";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vaux4_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux4 V_N";
  attribute X_INTERFACE_INFO of Vaux4_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux4 V_P";
  attribute X_INTERFACE_INFO of dclk_in : signal is "xilinx.com:signal:clock:1.0 CLK.DCLK_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dclk_in : signal is "XIL_INTERFACENAME CLK.DCLK_IN, CLK_DOMAIN ADC1_dclk_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
xadc_wiz_0: entity work.ADC1_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      daddr_in(6 downto 0) => B"0000000",
      dclk_in => dclk_in,
      den_in => xadc_wiz_0_eoc_out,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => do_out(15 downto 0),
      drdy_out => drdy_out,
      dwe_in => '0',
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      vauxn4 => Vaux4_v_n,
      vauxp4 => Vaux4_v_p,
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC1_wrapper is
  port (
    Vaux4_v_n : in STD_LOGIC;
    Vaux4_v_p : in STD_LOGIC;
    dclk_in : in STD_LOGIC;
    do_out_ADC : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADC1_wrapper : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of ADC1_wrapper : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of ADC1_wrapper : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of ADC1_wrapper : entity is "328e6e15";
end ADC1_wrapper;

architecture STRUCTURE of ADC1_wrapper is
  signal OUTPUT : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Vaux4_v_n_IBUF : STD_LOGIC;
  signal Vaux4_v_p_IBUF : STD_LOGIC;
  signal dclk_in_IBUF : STD_LOGIC;
  signal dclk_in_IBUF_BUFG : STD_LOGIC;
  signal do_out_ADC_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drdy_out_OBUF : STD_LOGIC;
  attribute hw_handoff : string;
  attribute hw_handoff of ADC1_i : label is "ADC1.hwdef";
begin
ADC1_i: entity work.ADC1
     port map (
      Vaux4_v_n => Vaux4_v_n_IBUF,
      Vaux4_v_p => Vaux4_v_p_IBUF,
      dclk_in => dclk_in_IBUF_BUFG,
      do_out(15 downto 0) => OUTPUT(15 downto 0),
      drdy_out => drdy_out_OBUF
    );
Vaux4_v_n_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Vaux4_v_n,
      O => Vaux4_v_n_IBUF
    );
Vaux4_v_p_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Vaux4_v_p,
      O => Vaux4_v_p_IBUF
    );
dclk_in_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => dclk_in_IBUF,
      O => dclk_in_IBUF_BUFG
    );
dclk_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => dclk_in,
      O => dclk_in_IBUF
    );
\do_out_ADC_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(0),
      O => do_out_ADC(0)
    );
\do_out_ADC_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(10),
      O => do_out_ADC(10)
    );
\do_out_ADC_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(11),
      O => do_out_ADC(11)
    );
\do_out_ADC_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(12),
      O => do_out_ADC(12)
    );
\do_out_ADC_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(13),
      O => do_out_ADC(13)
    );
\do_out_ADC_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(14),
      O => do_out_ADC(14)
    );
\do_out_ADC_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(15),
      O => do_out_ADC(15)
    );
\do_out_ADC_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(1),
      O => do_out_ADC(1)
    );
\do_out_ADC_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(2),
      O => do_out_ADC(2)
    );
\do_out_ADC_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(3),
      O => do_out_ADC(3)
    );
\do_out_ADC_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(4),
      O => do_out_ADC(4)
    );
\do_out_ADC_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(5),
      O => do_out_ADC(5)
    );
\do_out_ADC_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(6),
      O => do_out_ADC(6)
    );
\do_out_ADC_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(7),
      O => do_out_ADC(7)
    );
\do_out_ADC_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(8),
      O => do_out_ADC(8)
    );
\do_out_ADC_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => do_out_ADC_OBUF(9),
      O => do_out_ADC(9)
    );
\do_out_ADC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(0),
      Q => do_out_ADC_OBUF(0),
      R => '0'
    );
\do_out_ADC_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(10),
      Q => do_out_ADC_OBUF(10),
      R => '0'
    );
\do_out_ADC_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(11),
      Q => do_out_ADC_OBUF(11),
      R => '0'
    );
\do_out_ADC_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(12),
      Q => do_out_ADC_OBUF(12),
      R => '0'
    );
\do_out_ADC_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(13),
      Q => do_out_ADC_OBUF(13),
      R => '0'
    );
\do_out_ADC_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(14),
      Q => do_out_ADC_OBUF(14),
      R => '0'
    );
\do_out_ADC_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(15),
      Q => do_out_ADC_OBUF(15),
      R => '0'
    );
\do_out_ADC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(1),
      Q => do_out_ADC_OBUF(1),
      R => '0'
    );
\do_out_ADC_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(2),
      Q => do_out_ADC_OBUF(2),
      R => '0'
    );
\do_out_ADC_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(3),
      Q => do_out_ADC_OBUF(3),
      R => '0'
    );
\do_out_ADC_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(4),
      Q => do_out_ADC_OBUF(4),
      R => '0'
    );
\do_out_ADC_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(5),
      Q => do_out_ADC_OBUF(5),
      R => '0'
    );
\do_out_ADC_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(6),
      Q => do_out_ADC_OBUF(6),
      R => '0'
    );
\do_out_ADC_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(7),
      Q => do_out_ADC_OBUF(7),
      R => '0'
    );
\do_out_ADC_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(8),
      Q => do_out_ADC_OBUF(8),
      R => '0'
    );
\do_out_ADC_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dclk_in_IBUF_BUFG,
      CE => '1',
      D => OUTPUT(9),
      Q => do_out_ADC_OBUF(9),
      R => '0'
    );
drdy_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => drdy_out_OBUF,
      O => drdy_out
    );
end STRUCTURE;
