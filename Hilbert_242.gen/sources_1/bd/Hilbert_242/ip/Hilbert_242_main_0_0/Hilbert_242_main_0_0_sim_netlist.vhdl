-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Mon Sep 29 11:15:06 2025
-- Host        : mike-NH5xAx running 64-bit Ubuntu 24.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /mnt/de61cc03-ca5c-4d86-98c7-744c0a68fa55/CAS_Mikroelektronik_Digital/Projekte/Hilbert_242/Hilbert_242.gen/sources_1/bd/Hilbert_242/ip/Hilbert_242_main_0_0/Hilbert_242_main_0_0_sim_netlist.vhdl
-- Design      : Hilbert_242_main_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hilbert_242_main_0_0_DA2Component is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    Out_D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \temp1_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \temp2_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    start : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Hilbert_242_main_0_0_DA2Component : entity is "DA2Component";
end Hilbert_242_main_0_0_DA2Component;

architecture STRUCTURE of Hilbert_242_main_0_0_DA2Component is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^out_d\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \clk_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \eqOp__2\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shiftCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal shiftCounter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal temp1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0\ : STD_LOGIC;
  signal \temp1_reg[14]_your_DA2Component_temp1_reg_r_1_n_0\ : STD_LOGIC;
  signal temp1_reg_gate_n_0 : STD_LOGIC;
  signal temp1_reg_r_0_n_0 : STD_LOGIC;
  signal temp1_reg_r_1_n_0 : STD_LOGIC;
  signal temp1_reg_r_n_0 : STD_LOGIC;
  signal temp2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \temp2[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[10]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[11]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp2[9]_i_1_n_0\ : STD_LOGIC;
  signal temp2_0 : STD_LOGIC;
  signal \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0\ : STD_LOGIC;
  signal \temp2_reg[14]_your_DA2Component_temp1_reg_r_1_n_0\ : STD_LOGIC;
  signal temp2_reg_gate_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "shiftout:0010,syncdata:0100,idle:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "shiftout:0010,syncdata:0100,idle:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "shiftout:0010,syncdata:0100,idle:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of \Out_D[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shiftCounter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shiftCounter[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shiftCounter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp1[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp1[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp1[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp1[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp1[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \temp1[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp1[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \temp1[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp1[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \temp1[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp1[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp1[9]_i_1\ : label is "soft_lutpair6";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0\ : label is "U0/\your_DA2Component/temp1_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0\ : label is "U0/\your_DA2Component/temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0 ";
  attribute SOFT_HLUTNM of temp1_reg_gate : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \temp2[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp2[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \temp2[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temp2[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temp2[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \temp2[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \temp2[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp2[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp2[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp2[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp2[9]_i_1\ : label is "soft_lutpair12";
  attribute srl_bus_name of \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0\ : label is "U0/\your_DA2Component/temp2_reg ";
  attribute srl_name of \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0\ : label is "U0/\your_DA2Component/temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0 ";
  attribute SOFT_HLUTNM of temp2_reg_gate : label is "soft_lutpair15";
begin
  Out_D(2 downto 0) <= \^out_d\(2 downto 0);
  Q(0) <= \^q\(0);
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF50575457"
    )
        port map (
      I0 => start,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => \eqOp__2\,
      I5 => reset_in,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCC8EFC8"
    )
        port map (
      I0 => start,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => \eqOp__2\,
      I5 => reset_in,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF20F820"
    )
        port map (
      I0 => start,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => \eqOp__2\,
      I5 => reset_in,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => shiftCounter_reg(1),
      I1 => shiftCounter_reg(0),
      I2 => shiftCounter_reg(2),
      I3 => shiftCounter_reg(3),
      O => \eqOp__2\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^q\(0),
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^q\(0),
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^q\(0),
      CE => '1',
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => '0'
    );
\Out_D[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \^out_d\(0)
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[0]\,
      O => plusOp(0)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_counter_reg_n_0_[0]\,
      I1 => \^q\(0),
      O => plusOp(1)
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset_in,
      D => plusOp(0),
      Q => \clk_counter_reg_n_0_[0]\
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset_in,
      D => plusOp(1),
      Q => \^q\(0)
    );
\shiftCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shiftCounter_reg(0),
      O => \plusOp__0\(0)
    );
\shiftCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shiftCounter_reg(0),
      I1 => shiftCounter_reg(1),
      O => \plusOp__0\(1)
    );
\shiftCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => shiftCounter_reg(1),
      I1 => shiftCounter_reg(0),
      I2 => shiftCounter_reg(2),
      O => \shiftCounter[2]_i_1_n_0\
    );
\shiftCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => shiftCounter_reg(0),
      I1 => shiftCounter_reg(1),
      I2 => shiftCounter_reg(2),
      I3 => shiftCounter_reg(3),
      O => \plusOp__0\(3)
    );
\shiftCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => \plusOp__0\(0),
      Q => shiftCounter_reg(0),
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\shiftCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => \plusOp__0\(1),
      Q => shiftCounter_reg(1),
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\shiftCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => \shiftCounter[2]_i_1_n_0\,
      Q => shiftCounter_reg(2),
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\shiftCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => \plusOp__0\(3),
      Q => shiftCounter_reg(3),
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\temp1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(0),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \^out_d\(1),
      O => p_0_in(0)
    );
\temp1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(10),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(9),
      O => p_0_in(10)
    );
\temp1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => temp2_0
    );
\temp1[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(11),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(10),
      O => p_0_in(11)
    );
\temp1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(0),
      O => p_0_in(1)
    );
\temp1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(2),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(1),
      O => p_0_in(2)
    );
\temp1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(3),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(2),
      O => p_0_in(3)
    );
\temp1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(4),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(3),
      O => p_0_in(4)
    );
\temp1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(5),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(4),
      O => p_0_in(5)
    );
\temp1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(6),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(5),
      O => p_0_in(6)
    );
\temp1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(7),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(6),
      O => p_0_in(7)
    );
\temp1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(8),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(7),
      O => p_0_in(8)
    );
\temp1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp1_reg[11]_0\(9),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp1(8),
      O => p_0_in(9)
    );
\temp1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(0),
      Q => temp1(0),
      R => '0'
    );
\temp1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(10),
      Q => temp1(10),
      R => '0'
    );
\temp1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(11),
      Q => temp1(11),
      R => '0'
    );
\temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      CLK => \^q\(0),
      D => temp1(11),
      Q => \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0\
    );
\temp1_reg[14]_your_DA2Component_temp1_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0\,
      Q => \temp1_reg[14]_your_DA2Component_temp1_reg_r_1_n_0\,
      R => '0'
    );
\temp1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => temp1_reg_gate_n_0,
      Q => \^out_d\(1),
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\temp1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(1),
      Q => temp1(1),
      R => '0'
    );
\temp1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(2),
      Q => temp1(2),
      R => '0'
    );
\temp1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(3),
      Q => temp1(3),
      R => '0'
    );
\temp1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(4),
      Q => temp1(4),
      R => '0'
    );
\temp1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(5),
      Q => temp1(5),
      R => '0'
    );
\temp1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(6),
      Q => temp1(6),
      R => '0'
    );
\temp1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(7),
      Q => temp1(7),
      R => '0'
    );
\temp1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(8),
      Q => temp1(8),
      R => '0'
    );
\temp1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => p_0_in(9),
      Q => temp1(9),
      R => '0'
    );
temp1_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp1_reg[14]_your_DA2Component_temp1_reg_r_1_n_0\,
      I1 => temp1_reg_r_1_n_0,
      O => temp1_reg_gate_n_0
    );
temp1_reg_r: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => '1',
      Q => temp1_reg_r_n_0,
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
temp1_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => temp1_reg_r_n_0,
      Q => temp1_reg_r_0_n_0,
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
temp1_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => temp1_reg_r_0_n_0,
      Q => temp1_reg_r_1_n_0,
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\temp2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(0),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \^out_d\(2),
      O => \temp2[0]_i_1_n_0\
    );
\temp2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(10),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(9),
      O => \temp2[10]_i_1_n_0\
    );
\temp2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(11),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(10),
      O => \temp2[11]_i_1_n_0\
    );
\temp2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(0),
      O => \temp2[1]_i_1_n_0\
    );
\temp2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(2),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(1),
      O => \temp2[2]_i_1_n_0\
    );
\temp2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(3),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(2),
      O => \temp2[3]_i_1_n_0\
    );
\temp2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(4),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(3),
      O => \temp2[4]_i_1_n_0\
    );
\temp2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(5),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(4),
      O => \temp2[5]_i_1_n_0\
    );
\temp2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(6),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(5),
      O => \temp2[6]_i_1_n_0\
    );
\temp2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(7),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(6),
      O => \temp2[7]_i_1_n_0\
    );
\temp2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(8),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(7),
      O => \temp2[8]_i_1_n_0\
    );
\temp2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \temp2_reg[11]_0\(9),
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => temp2(8),
      O => \temp2[9]_i_1_n_0\
    );
\temp2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[0]_i_1_n_0\,
      Q => temp2(0),
      R => '0'
    );
\temp2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[10]_i_1_n_0\,
      Q => temp2(10),
      R => '0'
    );
\temp2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[11]_i_1_n_0\,
      Q => temp2(11),
      R => '0'
    );
\temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      CLK => \^q\(0),
      D => temp2(11),
      Q => \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0\
    );
\temp2_reg[14]_your_DA2Component_temp1_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0\,
      Q => \temp2_reg[14]_your_DA2Component_temp1_reg_r_1_n_0\,
      R => '0'
    );
\temp2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => \FSM_onehot_current_state_reg_n_0_[1]\,
      D => temp2_reg_gate_n_0,
      Q => \^out_d\(2),
      R => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\temp2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[1]_i_1_n_0\,
      Q => temp2(1),
      R => '0'
    );
\temp2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[2]_i_1_n_0\,
      Q => temp2(2),
      R => '0'
    );
\temp2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[3]_i_1_n_0\,
      Q => temp2(3),
      R => '0'
    );
\temp2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[4]_i_1_n_0\,
      Q => temp2(4),
      R => '0'
    );
\temp2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[5]_i_1_n_0\,
      Q => temp2(5),
      R => '0'
    );
\temp2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[6]_i_1_n_0\,
      Q => temp2(6),
      R => '0'
    );
\temp2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[7]_i_1_n_0\,
      Q => temp2(7),
      R => '0'
    );
\temp2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[8]_i_1_n_0\,
      Q => temp2(8),
      R => '0'
    );
\temp2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^q\(0),
      CE => temp2_0,
      D => \temp2[9]_i_1_n_0\,
      Q => temp2(9),
      R => '0'
    );
temp2_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp2_reg[14]_your_DA2Component_temp1_reg_r_1_n_0\,
      I1 => temp1_reg_r_1_n_0,
      O => temp2_reg_gate_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hilbert_242_main_0_0_UART_TX is
  port (
    Out_E : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \r_TX_Data_reg[0]_0\ : in STD_LOGIC;
    tx_data_ready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Hilbert_242_main_0_0_UART_TX : entity is "UART_TX";
end Hilbert_242_main_0_0_UART_TX;

architecture STRUCTURE of Hilbert_242_main_0_0_UART_TX is
  signal \FSM_sequential_r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_2_n_0\ : STD_LOGIC;
  signal \^out_e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal o_TX_Serial_i_1_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_3_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_4_n_0 : STD_LOGIC;
  signal o_TX_Serial_reg_i_2_n_0 : STD_LOGIC;
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal r_Clk_Count : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal r_Clk_Count0 : STD_LOGIC;
  signal \r_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal r_Clk_Count_0 : STD_LOGIC;
  signal r_Clk_Count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r_SM_Main : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_TX_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r_TX_Data_1 : STD_LOGIC;
  signal r_TX_Done_i_1_n_0 : STD_LOGIC;
  signal uart_done : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[2]_i_2\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[0]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[1]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[2]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute SOFT_HLUTNM of o_TX_Serial_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_Bit_Index[2]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_Clk_Count[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_Clk_Count[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_Clk_Count[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_Clk_Count[4]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of r_TX_Done_i_1 : label is "soft_lutpair18";
begin
  Out_E(0) <= \^out_e\(0);
\FSM_onehot_stateUart[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8F8F8F8F8"
    )
        port map (
      I0 => tx_data_ready,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => uart_done,
      O => E(0)
    );
\FSM_sequential_r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0E2C3E2"
    )
        port map (
      I0 => \r_TX_Data_reg[0]_0\,
      I1 => r_SM_Main(0),
      I2 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I3 => r_SM_Main(1),
      I4 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      I5 => r_SM_Main(2),
      O => \FSM_sequential_r_SM_Main[0]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      O => \FSM_sequential_r_SM_Main[0]_i_2_n_0\
    );
\FSM_sequential_r_SM_Main[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I2 => r_SM_Main(1),
      I3 => r_SM_Main(2),
      O => \FSM_sequential_r_SM_Main[1]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I2 => r_SM_Main(1),
      I3 => r_SM_Main(2),
      O => \FSM_sequential_r_SM_Main[2]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => r_Clk_Count_reg(2),
      I1 => r_Clk_Count_reg(3),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(0),
      I4 => r_Clk_Count_reg(4),
      O => \FSM_sequential_r_SM_Main[2]_i_2_n_0\
    );
\FSM_sequential_r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[0]_i_1_n_0\,
      Q => r_SM_Main(0),
      R => '0'
    );
\FSM_sequential_r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[1]_i_1_n_0\,
      Q => r_SM_Main(1),
      R => '0'
    );
\FSM_sequential_r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[2]_i_1_n_0\,
      Q => r_SM_Main(2),
      R => '0'
    );
o_TX_Serial_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8BB88B"
    )
        port map (
      I0 => \^out_e\(0),
      I1 => r_SM_Main(2),
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(1),
      I4 => o_TX_Serial_reg_i_2_n_0,
      O => o_TX_Serial_i_1_n_0
    );
o_TX_Serial_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Data(3),
      I1 => r_TX_Data(2),
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => r_TX_Data(1),
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => r_TX_Data(0),
      O => o_TX_Serial_i_3_n_0
    );
o_TX_Serial_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_TX_Data(7),
      I1 => r_TX_Data(6),
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => r_TX_Data(5),
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => r_TX_Data(4),
      O => o_TX_Serial_i_4_n_0
    );
o_TX_Serial_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_Serial_i_1_n_0,
      Q => \^out_e\(0),
      R => '0'
    );
o_TX_Serial_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => o_TX_Serial_i_3_n_0,
      I1 => o_TX_Serial_i_4_n_0,
      O => o_TX_Serial_reg_i_2_n_0,
      S => \r_Bit_Index_reg_n_0_[2]\
    );
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA98AAAAAA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I2 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      I3 => r_SM_Main(2),
      I4 => r_SM_Main(0),
      I5 => r_SM_Main(1),
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAA00"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index[2]_i_2_n_0\,
      I4 => r_SM_Main(1),
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9AAAAAAA0000"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      I3 => \r_Bit_Index_reg_n_0_[1]\,
      I4 => \r_Bit_Index[2]_i_2_n_0\,
      I5 => r_SM_Main(1),
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(0),
      O => \r_Bit_Index[2]_i_2_n_0\
    );
\r_Bit_Index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[0]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[0]\,
      R => '0'
    );
\r_Bit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[1]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Bit_Index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[2]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[2]\,
      R => '0'
    );
\r_Clk_Count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(3),
      I2 => r_Clk_Count_reg(2),
      I3 => r_Clk_Count_reg(0),
      O => \r_Clk_Count[0]_i_1_n_0\
    );
\r_Clk_Count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1414143C"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(0),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(3),
      I4 => r_Clk_Count_reg(2),
      O => r_Clk_Count(1)
    );
\r_Clk_Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(0),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(2),
      O => r_Clk_Count(2)
    );
\r_Clk_Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15405500"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(0),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(3),
      I4 => r_Clk_Count_reg(2),
      O => r_Clk_Count(3)
    );
\r_Clk_Count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_SM_Main(1),
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(2),
      O => r_Clk_Count0
    );
\r_Clk_Count[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(1),
      I2 => r_SM_Main(0),
      O => r_Clk_Count_0
    );
\r_Clk_Count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000002A"
    )
        port map (
      I0 => r_Clk_Count_reg(4),
      I1 => r_Clk_Count_reg(0),
      I2 => r_Clk_Count_reg(1),
      I3 => r_Clk_Count_reg(3),
      I4 => r_Clk_Count_reg(2),
      O => r_Clk_Count(4)
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_Clk_Count_0,
      D => \r_Clk_Count[0]_i_1_n_0\,
      Q => r_Clk_Count_reg(0),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(1),
      Q => r_Clk_Count_reg(1),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(2),
      Q => r_Clk_Count_reg(2),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(3),
      Q => r_Clk_Count_reg(3),
      R => r_Clk_Count0
    );
\r_Clk_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_Clk_Count_0,
      D => r_Clk_Count(4),
      Q => r_Clk_Count_reg(4),
      R => r_Clk_Count0
    );
\r_TX_Data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_SM_Main(2),
      I2 => \r_TX_Data_reg[0]_0\,
      I3 => r_SM_Main(1),
      O => r_TX_Data_1
    );
\r_TX_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(0),
      Q => r_TX_Data(0),
      R => '0'
    );
\r_TX_Data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(1),
      Q => r_TX_Data(1),
      R => '0'
    );
\r_TX_Data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(2),
      Q => r_TX_Data(2),
      R => '0'
    );
\r_TX_Data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(3),
      Q => r_TX_Data(3),
      R => '0'
    );
\r_TX_Data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(4),
      Q => r_TX_Data(4),
      R => '0'
    );
\r_TX_Data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(5),
      Q => r_TX_Data(5),
      R => '0'
    );
\r_TX_Data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(6),
      Q => r_TX_Data(6),
      R => '0'
    );
\r_TX_Data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data_1,
      D => D(7),
      Q => r_TX_Data(7),
      R => '0'
    );
r_TX_Done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFA100A"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I2 => r_SM_Main(0),
      I3 => r_SM_Main(1),
      I4 => uart_done,
      O => r_TX_Done_i_1_n_0
    );
r_TX_Done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => r_TX_Done_i_1_n_0,
      Q => uart_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hilbert_242_main_0_0_main is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    Out_D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vauxp7 : in STD_LOGIC;
    vauxn7 : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    Out_E : out STD_LOGIC_VECTOR ( 7 downto 0 );
    switch1 : in STD_LOGIC;
    led1 : out STD_LOGIC;
    switch2 : in STD_LOGIC;
    led2 : out STD_LOGIC;
    adc_data_gpio_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_gpio_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    eoc_adc_int : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Hilbert_242_main_0_0_main : entity is "main";
end Hilbert_242_main_0_0_main;

architecture STRUCTURE of Hilbert_242_main_0_0_main is
  component Hilbert_242_main_0_0_fir_compiler_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Hilbert_242_main_0_0_fir_compiler_0;
  component Hilbert_242_main_0_0_fir_compiler_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Hilbert_242_main_0_0_fir_compiler_1;
  component Hilbert_242_main_0_0_xadc_wiz_0 is
  port (
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    convst_in : in STD_LOGIC;
    vauxp7 : in STD_LOGIC;
    vauxn7 : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    muxaddr_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );
  end component Hilbert_242_main_0_0_xadc_wiz_0;
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_onehot_stateUart_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_stateUart_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_stateUart_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_stateUart_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^out_d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^adc_data_gpio_1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^adc_data_gpio_2\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal convst_in : STD_LOGIC;
  signal dac_data_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal dac_data_10 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \dac_data_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[10]_i_3_n_0\ : STD_LOGIC;
  signal \dac_data_1[10]_i_4_n_0\ : STD_LOGIC;
  signal \dac_data_1[10]_i_5_n_0\ : STD_LOGIC;
  signal \dac_data_1[10]_i_6_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_10_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_11_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_12_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_15_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_16_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_17_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_18_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_19_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_2_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_5_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_6_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_7_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_8_n_0\ : STD_LOGIC;
  signal \dac_data_1[11]_i_9_n_0\ : STD_LOGIC;
  signal \dac_data_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[2]_i_3_n_0\ : STD_LOGIC;
  signal \dac_data_1[2]_i_4_n_0\ : STD_LOGIC;
  signal \dac_data_1[2]_i_5_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_10_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_11_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_12_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_6_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_7_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_8_n_0\ : STD_LOGIC;
  signal \dac_data_1[3]_i_9_n_0\ : STD_LOGIC;
  signal \dac_data_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[6]_i_3_n_0\ : STD_LOGIC;
  signal \dac_data_1[6]_i_4_n_0\ : STD_LOGIC;
  signal \dac_data_1[6]_i_5_n_0\ : STD_LOGIC;
  signal \dac_data_1[6]_i_6_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_10_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_12_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_13_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_14_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_15_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_3_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_4_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_5_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_6_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_7_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_8_n_0\ : STD_LOGIC;
  signal \dac_data_1[7]_i_9_n_0\ : STD_LOGIC;
  signal \dac_data_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1[9]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_4\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_5\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_6\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_13_n_7\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_14_n_7\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \dac_data_1_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \dac_data_1_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_4\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_5\ : STD_LOGIC;
  signal \dac_data_1_reg[3]_i_5_n_6\ : STD_LOGIC;
  signal \dac_data_1_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_4\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_5\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_6\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_11_n_7\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \dac_data_1_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \dac_data_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2[9]_i_1_n_0\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[10]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[11]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[7]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[8]\ : STD_LOGIC;
  signal \dac_data_2_reg_n_0_[9]\ : STD_LOGIC;
  signal daddr_in : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \daddr_in[3]_i_1_n_0\ : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal \data2[15]_i_1_n_0\ : STD_LOGIC;
  signal den_i_1_n_0 : STD_LOGIC;
  signal den_in : STD_LOGIC;
  signal do_out_adc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drdy : STD_LOGIC;
  signal \^eoc_adc_int\ : STD_LOGIC;
  signal eoc_out : STD_LOGIC;
  signal eoc_out_latched_i_1_n_0 : STD_LOGIC;
  signal fir_data_2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^led2\ : STD_LOGIC;
  signal led2_i_1_n_0 : STD_LOGIC;
  signal m_axis_data_tdata : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reset_in : STD_LOGIC;
  signal samplerate_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \samplerate_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \samplerate_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \samplerate_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \samplerate_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \samplerate_count[9]_i_5_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal strb1 : STD_LOGIC;
  signal tx_data_ready : STD_LOGIC;
  signal \uart_tx_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \uart_tx_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \uart_tx_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \uart_tx_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal uart_tx_data_buffer : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal uart_tx_data_ready_i_1_n_0 : STD_LOGIC;
  signal uart_tx_data_ready_reg_n_0 : STD_LOGIC;
  signal your_uart_tx_n_1 : STD_LOGIC;
  signal \NLW_dac_data_1_reg[11]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dac_data_1_reg[11]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dac_data_1_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dac_data_1_reg[11]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dac_data_1_reg[11]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dac_data_1_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dac_data_1_reg[3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_your_fir_filter1_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_your_fir_filter1_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal NLW_your_fir_filter2_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_your_fir_filter2_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_your_fir_filter2_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal NLW_your_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_your_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_your_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_your_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_your_xadc_wiz_0_muxaddr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_stateUart_reg[0]\ : label is "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stateUart_reg[1]\ : label is "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stateUart_reg[2]\ : label is "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stateUart_reg[3]\ : label is "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "read1:01,read2:11,idle:00,tempo:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "read1:01,read2:11,idle:00,tempo:10";
  attribute SOFT_HLUTNM of \dac_data_1[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dac_data_1[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dac_data_1[11]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dac_data_1[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dac_data_1[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dac_data_1[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dac_data_1[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dac_data_1[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dac_data_1[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dac_data_1[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \dac_data_1[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dac_data_1[9]_i_1\ : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[10]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[11]_i_13\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[11]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[11]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[2]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[3]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[6]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[7]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \dac_data_1_reg[7]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \dac_data_2[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dac_data_2[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dac_data_2[11]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dac_data_2[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dac_data_2[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dac_data_2[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dac_data_2[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dac_data_2[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dac_data_2[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dac_data_2[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dac_data_2[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dac_data_2[9]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \daddr_in[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of eoc_out_latched_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of led2_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \samplerate_count[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \samplerate_count[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \samplerate_count[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \samplerate_count[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \samplerate_count[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \samplerate_count[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \samplerate_count[9]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \samplerate_count[9]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of start_i_1 : label is "soft_lutpair26";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of your_fir_filter1 : label is "fir_compiler_0,fir_compiler_v7_2_23,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of your_fir_filter1 : label is "yes";
  attribute syn_black_box : string;
  attribute syn_black_box of your_fir_filter1 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of your_fir_filter1 : label is "fir_compiler_v7_2_23,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of your_fir_filter2 : label is "fir_compiler_1,fir_compiler_v7_2_23,{}";
  attribute downgradeipidentifiedwarnings of your_fir_filter2 : label is "yes";
  attribute syn_black_box of your_fir_filter2 : label is "TRUE";
  attribute x_core_info of your_fir_filter2 : label is "fir_compiler_v7_2_23,Vivado 2024.2";
  attribute syn_black_box of your_xadc_wiz_0 : label is "TRUE";
begin
  Out_D(7) <= \<const0>\;
  Out_D(6) <= \<const0>\;
  Out_D(5) <= \<const0>\;
  Out_D(4) <= \<const0>\;
  Out_D(3 downto 0) <= \^out_d\(3 downto 0);
  Out_E(7) <= \<const0>\;
  Out_E(6) <= \<const0>\;
  Out_E(5) <= \<const0>\;
  Out_E(4) <= \<const0>\;
  Out_E(3) <= \<const0>\;
  Out_E(2) <= \<const0>\;
  Out_E(1) <= \<const0>\;
  Out_E(0) <= \^out_e\(0);
  adc_data_gpio_1(11 downto 0) <= \^adc_data_gpio_1\(11 downto 0);
  adc_data_gpio_2(11 downto 0) <= \^adc_data_gpio_2\(11 downto 0);
  eoc_adc_int <= \^eoc_adc_int\;
  led2 <= \^led2\;
\FSM_onehot_stateUart_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => your_uart_tx_n_1,
      D => \FSM_onehot_stateUart_reg_n_0_[3]\,
      Q => \FSM_onehot_stateUart_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_stateUart_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => your_uart_tx_n_1,
      D => \FSM_onehot_stateUart_reg_n_0_[0]\,
      Q => \FSM_onehot_stateUart_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_stateUart_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => your_uart_tx_n_1,
      D => \FSM_onehot_stateUart_reg_n_0_[1]\,
      Q => \FSM_onehot_stateUart_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_stateUart_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => your_uart_tx_n_1,
      D => \FSM_onehot_stateUart_reg_n_0_[2]\,
      Q => \FSM_onehot_stateUart_reg_n_0_[3]\,
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45FC"
    )
        port map (
      I0 => drdy,
      I1 => state(1),
      I2 => eoc_out,
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1CCC"
    )
        port map (
      I0 => eoc_out,
      I1 => state(1),
      I2 => state(0),
      I3 => drdy,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
convst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \samplerate_count[9]_i_1_n_0\,
      Q => convst_in,
      R => '0'
    );
\dac_data_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_2_n_7\,
      I1 => switch2,
      I2 => dac_data_10(1),
      O => \dac_data_1[0]_i_1_n_0\
    );
\dac_data_1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_3_n_5\,
      I1 => switch2,
      I2 => dac_data_10(11),
      O => \dac_data_1[10]_i_1_n_0\
    );
\dac_data_1[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(10),
      I1 => fir_data_2(10),
      O => \dac_data_1[10]_i_3_n_0\
    );
\dac_data_1[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(9),
      I1 => fir_data_2(9),
      O => \dac_data_1[10]_i_4_n_0\
    );
\dac_data_1[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(8),
      I1 => fir_data_2(8),
      O => \dac_data_1[10]_i_5_n_0\
    );
\dac_data_1[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(7),
      I1 => fir_data_2(7),
      O => \dac_data_1[10]_i_6_n_0\
    );
\dac_data_1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => btn,
      I1 => strb1,
      O => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1[11]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_13_n_6\,
      I1 => m_axis_data_tdata(8),
      I2 => \dac_data_1_reg[11]_i_13_n_5\,
      I3 => m_axis_data_tdata(9),
      O => \dac_data_1[11]_i_10_n_0\
    );
\dac_data_1[11]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_13_n_7\,
      I1 => m_axis_data_tdata(7),
      I2 => \dac_data_1_reg[11]_i_13_n_6\,
      I3 => m_axis_data_tdata(8),
      O => \dac_data_1[11]_i_11_n_0\
    );
\dac_data_1[11]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(11),
      I1 => fir_data_2(11),
      O => \dac_data_1[11]_i_12_n_0\
    );
\dac_data_1[11]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(10),
      O => \dac_data_1[11]_i_15_n_0\
    );
\dac_data_1[11]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(9),
      O => \dac_data_1[11]_i_16_n_0\
    );
\dac_data_1[11]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(8),
      O => \dac_data_1[11]_i_17_n_0\
    );
\dac_data_1[11]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(7),
      O => \dac_data_1[11]_i_18_n_0\
    );
\dac_data_1[11]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(11),
      O => \dac_data_1[11]_i_19_n_0\
    );
\dac_data_1[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_3_n_4\,
      I1 => switch2,
      I2 => dac_data_10(12),
      O => \dac_data_1[11]_i_2_n_0\
    );
\dac_data_1[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_13_n_5\,
      I1 => m_axis_data_tdata(9),
      O => \dac_data_1[11]_i_5_n_0\
    );
\dac_data_1[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(8),
      I1 => \dac_data_1_reg[11]_i_13_n_6\,
      O => \dac_data_1[11]_i_6_n_0\
    );
\dac_data_1[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(7),
      I1 => \dac_data_1_reg[11]_i_13_n_7\,
      O => \dac_data_1[11]_i_7_n_0\
    );
\dac_data_1[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => m_axis_data_tdata(10),
      I1 => \dac_data_1_reg[11]_i_13_n_4\,
      I2 => \dac_data_1_reg[11]_i_14_n_7\,
      I3 => m_axis_data_tdata(11),
      O => \dac_data_1[11]_i_8_n_0\
    );
\dac_data_1[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => m_axis_data_tdata(9),
      I1 => \dac_data_1_reg[11]_i_13_n_5\,
      I2 => \dac_data_1_reg[11]_i_13_n_4\,
      I3 => m_axis_data_tdata(10),
      O => \dac_data_1[11]_i_9_n_0\
    );
\dac_data_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_2_n_6\,
      I1 => switch2,
      I2 => dac_data_10(2),
      O => \dac_data_1[1]_i_1_n_0\
    );
\dac_data_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_2_n_5\,
      I1 => switch2,
      I2 => dac_data_10(3),
      O => \dac_data_1[2]_i_1_n_0\
    );
\dac_data_1[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(2),
      I1 => fir_data_2(2),
      O => \dac_data_1[2]_i_3_n_0\
    );
\dac_data_1[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(1),
      I1 => fir_data_2(1),
      O => \dac_data_1[2]_i_4_n_0\
    );
\dac_data_1[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(0),
      I1 => fir_data_2(0),
      O => \dac_data_1[2]_i_5_n_0\
    );
\dac_data_1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_2_n_4\,
      I1 => switch2,
      I2 => dac_data_10(4),
      O => \dac_data_1[3]_i_1_n_0\
    );
\dac_data_1[3]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(0),
      O => \dac_data_1[3]_i_10_n_0\
    );
\dac_data_1[3]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(2),
      O => \dac_data_1[3]_i_11_n_0\
    );
\dac_data_1[3]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(1),
      O => \dac_data_1[3]_i_12_n_0\
    );
\dac_data_1[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(2),
      I1 => \dac_data_1_reg[3]_i_5_n_4\,
      O => \dac_data_1[3]_i_3_n_0\
    );
\dac_data_1[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(1),
      I1 => \dac_data_1_reg[3]_i_5_n_5\,
      O => \dac_data_1[3]_i_4_n_0\
    );
\dac_data_1[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_5_n_4\,
      I1 => m_axis_data_tdata(2),
      I2 => \dac_data_1_reg[7]_i_11_n_7\,
      I3 => m_axis_data_tdata(3),
      O => \dac_data_1[3]_i_6_n_0\
    );
\dac_data_1[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_5_n_5\,
      I1 => m_axis_data_tdata(1),
      I2 => \dac_data_1_reg[3]_i_5_n_4\,
      I3 => m_axis_data_tdata(2),
      O => \dac_data_1[3]_i_7_n_0\
    );
\dac_data_1[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_5_n_5\,
      I1 => m_axis_data_tdata(1),
      I2 => \dac_data_1_reg[3]_i_5_n_6\,
      O => \dac_data_1[3]_i_8_n_0\
    );
\dac_data_1[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dac_data_1_reg[3]_i_5_n_6\,
      I1 => m_axis_data_tdata(0),
      O => \dac_data_1[3]_i_9_n_0\
    );
\dac_data_1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_2_n_7\,
      I1 => switch2,
      I2 => dac_data_10(5),
      O => \dac_data_1[4]_i_1_n_0\
    );
\dac_data_1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_2_n_6\,
      I1 => switch2,
      I2 => dac_data_10(6),
      O => \dac_data_1[5]_i_1_n_0\
    );
\dac_data_1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_2_n_5\,
      I1 => switch2,
      I2 => dac_data_10(7),
      O => \dac_data_1[6]_i_1_n_0\
    );
\dac_data_1[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(6),
      I1 => fir_data_2(6),
      O => \dac_data_1[6]_i_3_n_0\
    );
\dac_data_1[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(5),
      I1 => fir_data_2(5),
      O => \dac_data_1[6]_i_4_n_0\
    );
\dac_data_1[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(4),
      I1 => fir_data_2(4),
      O => \dac_data_1[6]_i_5_n_0\
    );
\dac_data_1[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => m_axis_data_tdata(3),
      I1 => fir_data_2(3),
      O => \dac_data_1[6]_i_6_n_0\
    );
\dac_data_1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_2_n_4\,
      I1 => switch2,
      I2 => dac_data_10(8),
      O => \dac_data_1[7]_i_1_n_0\
    );
\dac_data_1[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_11_n_7\,
      I1 => m_axis_data_tdata(3),
      I2 => \dac_data_1_reg[7]_i_11_n_6\,
      I3 => m_axis_data_tdata(4),
      O => \dac_data_1[7]_i_10_n_0\
    );
\dac_data_1[7]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(6),
      O => \dac_data_1[7]_i_12_n_0\
    );
\dac_data_1[7]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(5),
      O => \dac_data_1[7]_i_13_n_0\
    );
\dac_data_1[7]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(4),
      O => \dac_data_1[7]_i_14_n_0\
    );
\dac_data_1[7]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fir_data_2(3),
      O => \dac_data_1[7]_i_15_n_0\
    );
\dac_data_1[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(6),
      I1 => \dac_data_1_reg[7]_i_11_n_4\,
      O => \dac_data_1[7]_i_3_n_0\
    );
\dac_data_1[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(5),
      I1 => \dac_data_1_reg[7]_i_11_n_5\,
      O => \dac_data_1[7]_i_4_n_0\
    );
\dac_data_1[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(4),
      I1 => \dac_data_1_reg[7]_i_11_n_6\,
      O => \dac_data_1[7]_i_5_n_0\
    );
\dac_data_1[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_data_tdata(3),
      I1 => \dac_data_1_reg[7]_i_11_n_7\,
      O => \dac_data_1[7]_i_6_n_0\
    );
\dac_data_1[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_11_n_4\,
      I1 => m_axis_data_tdata(6),
      I2 => \dac_data_1_reg[11]_i_13_n_7\,
      I3 => m_axis_data_tdata(7),
      O => \dac_data_1[7]_i_7_n_0\
    );
\dac_data_1[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_11_n_5\,
      I1 => m_axis_data_tdata(5),
      I2 => \dac_data_1_reg[7]_i_11_n_4\,
      I3 => m_axis_data_tdata(6),
      O => \dac_data_1[7]_i_8_n_0\
    );
\dac_data_1[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \dac_data_1_reg[7]_i_11_n_6\,
      I1 => m_axis_data_tdata(4),
      I2 => \dac_data_1_reg[7]_i_11_n_5\,
      I3 => m_axis_data_tdata(5),
      O => \dac_data_1[7]_i_9_n_0\
    );
\dac_data_1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_3_n_7\,
      I1 => switch2,
      I2 => dac_data_10(9),
      O => \dac_data_1[8]_i_1_n_0\
    );
\dac_data_1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \dac_data_1_reg[11]_i_3_n_6\,
      I1 => switch2,
      I2 => dac_data_10(10),
      O => \dac_data_1[9]_i_1_n_0\
    );
\dac_data_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[0]_i_1_n_0\,
      Q => dac_data_1(0),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[10]_i_1_n_0\,
      Q => dac_data_1(10),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[6]_i_2_n_0\,
      CO(3) => \dac_data_1_reg[10]_i_2_n_0\,
      CO(2) => \dac_data_1_reg[10]_i_2_n_1\,
      CO(1) => \dac_data_1_reg[10]_i_2_n_2\,
      CO(0) => \dac_data_1_reg[10]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => m_axis_data_tdata(10 downto 7),
      O(3 downto 0) => dac_data_10(11 downto 8),
      S(3) => \dac_data_1[10]_i_3_n_0\,
      S(2) => \dac_data_1[10]_i_4_n_0\,
      S(1) => \dac_data_1[10]_i_5_n_0\,
      S(0) => \dac_data_1[10]_i_6_n_0\
    );
\dac_data_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[11]_i_2_n_0\,
      Q => dac_data_1(11),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[11]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[7]_i_11_n_0\,
      CO(3) => \dac_data_1_reg[11]_i_13_n_0\,
      CO(2) => \dac_data_1_reg[11]_i_13_n_1\,
      CO(1) => \dac_data_1_reg[11]_i_13_n_2\,
      CO(0) => \dac_data_1_reg[11]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dac_data_1_reg[11]_i_13_n_4\,
      O(2) => \dac_data_1_reg[11]_i_13_n_5\,
      O(1) => \dac_data_1_reg[11]_i_13_n_6\,
      O(0) => \dac_data_1_reg[11]_i_13_n_7\,
      S(3) => \dac_data_1[11]_i_15_n_0\,
      S(2) => \dac_data_1[11]_i_16_n_0\,
      S(1) => \dac_data_1[11]_i_17_n_0\,
      S(0) => \dac_data_1[11]_i_18_n_0\
    );
\dac_data_1_reg[11]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[11]_i_13_n_0\,
      CO(3 downto 0) => \NLW_dac_data_1_reg[11]_i_14_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_dac_data_1_reg[11]_i_14_O_UNCONNECTED\(3 downto 1),
      O(0) => \dac_data_1_reg[11]_i_14_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \dac_data_1[11]_i_19_n_0\
    );
\dac_data_1_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[7]_i_2_n_0\,
      CO(3) => \NLW_dac_data_1_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \dac_data_1_reg[11]_i_3_n_1\,
      CO(1) => \dac_data_1_reg[11]_i_3_n_2\,
      CO(0) => \dac_data_1_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \dac_data_1[11]_i_5_n_0\,
      DI(1) => \dac_data_1[11]_i_6_n_0\,
      DI(0) => \dac_data_1[11]_i_7_n_0\,
      O(3) => \dac_data_1_reg[11]_i_3_n_4\,
      O(2) => \dac_data_1_reg[11]_i_3_n_5\,
      O(1) => \dac_data_1_reg[11]_i_3_n_6\,
      O(0) => \dac_data_1_reg[11]_i_3_n_7\,
      S(3) => \dac_data_1[11]_i_8_n_0\,
      S(2) => \dac_data_1[11]_i_9_n_0\,
      S(1) => \dac_data_1[11]_i_10_n_0\,
      S(0) => \dac_data_1[11]_i_11_n_0\
    );
\dac_data_1_reg[11]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[10]_i_2_n_0\,
      CO(3 downto 0) => \NLW_dac_data_1_reg[11]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_dac_data_1_reg[11]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => dac_data_10(12),
      S(3 downto 1) => B"000",
      S(0) => \dac_data_1[11]_i_12_n_0\
    );
\dac_data_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[1]_i_1_n_0\,
      Q => dac_data_1(1),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[2]_i_1_n_0\,
      Q => dac_data_1(2),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dac_data_1_reg[2]_i_2_n_0\,
      CO(2) => \dac_data_1_reg[2]_i_2_n_1\,
      CO(1) => \dac_data_1_reg[2]_i_2_n_2\,
      CO(0) => \dac_data_1_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => m_axis_data_tdata(2 downto 0),
      DI(0) => '0',
      O(3 downto 1) => dac_data_10(3 downto 1),
      O(0) => \NLW_dac_data_1_reg[2]_i_2_O_UNCONNECTED\(0),
      S(3) => \dac_data_1[2]_i_3_n_0\,
      S(2) => \dac_data_1[2]_i_4_n_0\,
      S(1) => \dac_data_1[2]_i_5_n_0\,
      S(0) => '0'
    );
\dac_data_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[3]_i_1_n_0\,
      Q => dac_data_1(3),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dac_data_1_reg[3]_i_2_n_0\,
      CO(2) => \dac_data_1_reg[3]_i_2_n_1\,
      CO(1) => \dac_data_1_reg[3]_i_2_n_2\,
      CO(0) => \dac_data_1_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \dac_data_1[3]_i_3_n_0\,
      DI(2) => \dac_data_1[3]_i_4_n_0\,
      DI(1) => \dac_data_1_reg[3]_i_5_n_6\,
      DI(0) => m_axis_data_tdata(0),
      O(3) => \dac_data_1_reg[3]_i_2_n_4\,
      O(2) => \dac_data_1_reg[3]_i_2_n_5\,
      O(1) => \dac_data_1_reg[3]_i_2_n_6\,
      O(0) => \dac_data_1_reg[3]_i_2_n_7\,
      S(3) => \dac_data_1[3]_i_6_n_0\,
      S(2) => \dac_data_1[3]_i_7_n_0\,
      S(1) => \dac_data_1[3]_i_8_n_0\,
      S(0) => \dac_data_1[3]_i_9_n_0\
    );
\dac_data_1_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dac_data_1_reg[3]_i_5_n_0\,
      CO(2) => \dac_data_1_reg[3]_i_5_n_1\,
      CO(1) => \dac_data_1_reg[3]_i_5_n_2\,
      CO(0) => \dac_data_1_reg[3]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \dac_data_1[3]_i_10_n_0\,
      DI(0) => '0',
      O(3) => \dac_data_1_reg[3]_i_5_n_4\,
      O(2) => \dac_data_1_reg[3]_i_5_n_5\,
      O(1) => \dac_data_1_reg[3]_i_5_n_6\,
      O(0) => \NLW_dac_data_1_reg[3]_i_5_O_UNCONNECTED\(0),
      S(3) => \dac_data_1[3]_i_11_n_0\,
      S(2) => \dac_data_1[3]_i_12_n_0\,
      S(1) => fir_data_2(0),
      S(0) => '0'
    );
\dac_data_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[4]_i_1_n_0\,
      Q => dac_data_1(4),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[5]_i_1_n_0\,
      Q => dac_data_1(5),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[6]_i_1_n_0\,
      Q => dac_data_1(6),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[2]_i_2_n_0\,
      CO(3) => \dac_data_1_reg[6]_i_2_n_0\,
      CO(2) => \dac_data_1_reg[6]_i_2_n_1\,
      CO(1) => \dac_data_1_reg[6]_i_2_n_2\,
      CO(0) => \dac_data_1_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => m_axis_data_tdata(6 downto 3),
      O(3 downto 0) => dac_data_10(7 downto 4),
      S(3) => \dac_data_1[6]_i_3_n_0\,
      S(2) => \dac_data_1[6]_i_4_n_0\,
      S(1) => \dac_data_1[6]_i_5_n_0\,
      S(0) => \dac_data_1[6]_i_6_n_0\
    );
\dac_data_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[7]_i_1_n_0\,
      Q => dac_data_1(7),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[7]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[3]_i_5_n_0\,
      CO(3) => \dac_data_1_reg[7]_i_11_n_0\,
      CO(2) => \dac_data_1_reg[7]_i_11_n_1\,
      CO(1) => \dac_data_1_reg[7]_i_11_n_2\,
      CO(0) => \dac_data_1_reg[7]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \dac_data_1_reg[7]_i_11_n_4\,
      O(2) => \dac_data_1_reg[7]_i_11_n_5\,
      O(1) => \dac_data_1_reg[7]_i_11_n_6\,
      O(0) => \dac_data_1_reg[7]_i_11_n_7\,
      S(3) => \dac_data_1[7]_i_12_n_0\,
      S(2) => \dac_data_1[7]_i_13_n_0\,
      S(1) => \dac_data_1[7]_i_14_n_0\,
      S(0) => \dac_data_1[7]_i_15_n_0\
    );
\dac_data_1_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dac_data_1_reg[3]_i_2_n_0\,
      CO(3) => \dac_data_1_reg[7]_i_2_n_0\,
      CO(2) => \dac_data_1_reg[7]_i_2_n_1\,
      CO(1) => \dac_data_1_reg[7]_i_2_n_2\,
      CO(0) => \dac_data_1_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \dac_data_1[7]_i_3_n_0\,
      DI(2) => \dac_data_1[7]_i_4_n_0\,
      DI(1) => \dac_data_1[7]_i_5_n_0\,
      DI(0) => \dac_data_1[7]_i_6_n_0\,
      O(3) => \dac_data_1_reg[7]_i_2_n_4\,
      O(2) => \dac_data_1_reg[7]_i_2_n_5\,
      O(1) => \dac_data_1_reg[7]_i_2_n_6\,
      O(0) => \dac_data_1_reg[7]_i_2_n_7\,
      S(3) => \dac_data_1[7]_i_7_n_0\,
      S(2) => \dac_data_1[7]_i_8_n_0\,
      S(1) => \dac_data_1[7]_i_9_n_0\,
      S(0) => \dac_data_1[7]_i_10_n_0\
    );
\dac_data_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[8]_i_1_n_0\,
      Q => dac_data_1(8),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_1[9]_i_1_n_0\,
      Q => dac_data_1(9),
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(0),
      I1 => m_axis_data_tdata(0),
      I2 => switch2,
      O => \dac_data_2[0]_i_1_n_0\
    );
\dac_data_2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(10),
      I1 => m_axis_data_tdata(10),
      I2 => switch2,
      O => \dac_data_2[10]_i_1_n_0\
    );
\dac_data_2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(11),
      I1 => m_axis_data_tdata(11),
      I2 => switch2,
      O => \dac_data_2[11]_i_1_n_0\
    );
\dac_data_2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(1),
      I1 => m_axis_data_tdata(1),
      I2 => switch2,
      O => \dac_data_2[1]_i_1_n_0\
    );
\dac_data_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(2),
      I1 => m_axis_data_tdata(2),
      I2 => switch2,
      O => \dac_data_2[2]_i_1_n_0\
    );
\dac_data_2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(3),
      I1 => m_axis_data_tdata(3),
      I2 => switch2,
      O => \dac_data_2[3]_i_1_n_0\
    );
\dac_data_2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(4),
      I1 => m_axis_data_tdata(4),
      I2 => switch2,
      O => \dac_data_2[4]_i_1_n_0\
    );
\dac_data_2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(5),
      I1 => m_axis_data_tdata(5),
      I2 => switch2,
      O => \dac_data_2[5]_i_1_n_0\
    );
\dac_data_2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(6),
      I1 => m_axis_data_tdata(6),
      I2 => switch2,
      O => \dac_data_2[6]_i_1_n_0\
    );
\dac_data_2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(7),
      I1 => m_axis_data_tdata(7),
      I2 => switch2,
      O => \dac_data_2[7]_i_1_n_0\
    );
\dac_data_2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(8),
      I1 => m_axis_data_tdata(8),
      I2 => switch2,
      O => \dac_data_2[8]_i_1_n_0\
    );
\dac_data_2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => fir_data_2(9),
      I1 => m_axis_data_tdata(9),
      I2 => switch2,
      O => \dac_data_2[9]_i_1_n_0\
    );
\dac_data_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[0]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[0]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[10]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[10]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[11]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[11]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[1]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[1]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[2]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[2]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[3]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[3]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[4]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[4]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[5]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[5]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[6]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[6]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[7]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[7]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[8]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[8]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\dac_data_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dac_data_2[9]_i_1_n_0\,
      Q => \dac_data_2_reg_n_0_[9]\,
      R => \dac_data_1[11]_i_1_n_0\
    );
\daddr_in[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEA0"
    )
        port map (
      I0 => daddr_in(3),
      I1 => drdy,
      I2 => state(1),
      I3 => state(0),
      O => \daddr_in[3]_i_1_n_0\
    );
\daddr_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \daddr_in[3]_i_1_n_0\,
      Q => daddr_in(3),
      R => '0'
    );
\data1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => drdy,
      O => data1
    );
\data1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(10),
      Q => \^adc_data_gpio_1\(6),
      R => '0'
    );
\data1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(11),
      Q => \^adc_data_gpio_1\(7),
      R => '0'
    );
\data1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(12),
      Q => \^adc_data_gpio_1\(8),
      R => '0'
    );
\data1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(13),
      Q => \^adc_data_gpio_1\(9),
      R => '0'
    );
\data1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(14),
      Q => \^adc_data_gpio_1\(10),
      R => '0'
    );
\data1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(15),
      Q => \^adc_data_gpio_1\(11),
      R => '0'
    );
\data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(4),
      Q => \^adc_data_gpio_1\(0),
      R => '0'
    );
\data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(5),
      Q => \^adc_data_gpio_1\(1),
      R => '0'
    );
\data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(6),
      Q => \^adc_data_gpio_1\(2),
      R => '0'
    );
\data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(7),
      Q => \^adc_data_gpio_1\(3),
      R => '0'
    );
\data1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(8),
      Q => \^adc_data_gpio_1\(4),
      R => '0'
    );
\data1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data1,
      D => do_out_adc(9),
      Q => \^adc_data_gpio_1\(5),
      R => '0'
    );
\data2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => drdy,
      O => \data2[15]_i_1_n_0\
    );
\data2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(10),
      Q => \^adc_data_gpio_2\(6),
      R => '0'
    );
\data2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(11),
      Q => \^adc_data_gpio_2\(7),
      R => '0'
    );
\data2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(12),
      Q => \^adc_data_gpio_2\(8),
      R => '0'
    );
\data2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(13),
      Q => \^adc_data_gpio_2\(9),
      R => '0'
    );
\data2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(14),
      Q => \^adc_data_gpio_2\(10),
      R => '0'
    );
\data2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(15),
      Q => \^adc_data_gpio_2\(11),
      R => '0'
    );
\data2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(4),
      Q => \^adc_data_gpio_2\(0),
      R => '0'
    );
\data2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(5),
      Q => \^adc_data_gpio_2\(1),
      R => '0'
    );
\data2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(6),
      Q => \^adc_data_gpio_2\(2),
      R => '0'
    );
\data2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(7),
      Q => \^adc_data_gpio_2\(3),
      R => '0'
    );
\data2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(8),
      Q => \^adc_data_gpio_2\(4),
      R => '0'
    );
\data2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data2[15]_i_1_n_0\,
      D => do_out_adc(9),
      Q => \^adc_data_gpio_2\(5),
      R => '0'
    );
den_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F232"
    )
        port map (
      I0 => eoc_out,
      I1 => state(0),
      I2 => state(1),
      I3 => den_in,
      O => den_i_1_n_0
    );
den_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => den_i_1_n_0,
      Q => den_in,
      R => '0'
    );
eoc_out_latched_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA0"
    )
        port map (
      I0 => \^eoc_adc_int\,
      I1 => drdy,
      I2 => state(1),
      I3 => state(0),
      O => eoc_out_latched_i_1_n_0
    );
eoc_out_latched_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => eoc_out_latched_i_1_n_0,
      Q => \^eoc_adc_int\,
      R => '0'
    );
led1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => switch1,
      Q => led1,
      R => '0'
    );
led2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^led2\,
      I1 => btn,
      I2 => switch2,
      O => led2_i_1_n_0
    );
led2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => led2_i_1_n_0,
      Q => \^led2\,
      R => '0'
    );
reset_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn,
      Q => reset_in,
      R => '0'
    );
\samplerate_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => samplerate_count(0),
      O => p_1_in(0)
    );
\samplerate_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => samplerate_count(1),
      I1 => samplerate_count(0),
      O => p_1_in(1)
    );
\samplerate_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => samplerate_count(2),
      I1 => samplerate_count(1),
      I2 => samplerate_count(0),
      O => p_1_in(2)
    );
\samplerate_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => samplerate_count(3),
      I1 => samplerate_count(2),
      I2 => samplerate_count(1),
      I3 => samplerate_count(0),
      O => \samplerate_count[3]_i_1_n_0\
    );
\samplerate_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => samplerate_count(4),
      I1 => samplerate_count(0),
      I2 => samplerate_count(1),
      I3 => samplerate_count(2),
      I4 => samplerate_count(3),
      O => p_1_in(4)
    );
\samplerate_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => samplerate_count(5),
      I1 => samplerate_count(3),
      I2 => samplerate_count(2),
      I3 => samplerate_count(1),
      I4 => samplerate_count(0),
      I5 => samplerate_count(4),
      O => p_1_in(5)
    );
\samplerate_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => samplerate_count(6),
      I1 => samplerate_count(4),
      I2 => \samplerate_count[9]_i_3_n_0\,
      I3 => samplerate_count(3),
      I4 => samplerate_count(5),
      O => p_1_in(6)
    );
\samplerate_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => samplerate_count(7),
      I1 => samplerate_count(5),
      I2 => samplerate_count(3),
      I3 => \samplerate_count[9]_i_3_n_0\,
      I4 => samplerate_count(4),
      I5 => samplerate_count(6),
      O => p_1_in(7)
    );
\samplerate_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => samplerate_count(8),
      I1 => samplerate_count(6),
      I2 => samplerate_count(7),
      I3 => \samplerate_count[9]_i_5_n_0\,
      O => p_1_in(8)
    );
\samplerate_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \samplerate_count[9]_i_3_n_0\,
      I1 => \samplerate_count[9]_i_4_n_0\,
      I2 => samplerate_count(3),
      I3 => samplerate_count(8),
      I4 => samplerate_count(4),
      O => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => samplerate_count(9),
      I1 => \samplerate_count[9]_i_5_n_0\,
      I2 => samplerate_count(7),
      I3 => samplerate_count(6),
      I4 => samplerate_count(8),
      O => p_1_in(9)
    );
\samplerate_count[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => samplerate_count(0),
      I1 => samplerate_count(1),
      I2 => samplerate_count(2),
      O => \samplerate_count[9]_i_3_n_0\
    );
\samplerate_count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => samplerate_count(7),
      I1 => samplerate_count(6),
      I2 => samplerate_count(9),
      I3 => samplerate_count(5),
      O => \samplerate_count[9]_i_4_n_0\
    );
\samplerate_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => samplerate_count(5),
      I1 => samplerate_count(3),
      I2 => samplerate_count(2),
      I3 => samplerate_count(1),
      I4 => samplerate_count(0),
      I5 => samplerate_count(4),
      O => \samplerate_count[9]_i_5_n_0\
    );
\samplerate_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => samplerate_count(0),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => samplerate_count(1),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => samplerate_count(2),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \samplerate_count[3]_i_1_n_0\,
      Q => samplerate_count(3),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => samplerate_count(4),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => samplerate_count(5),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => samplerate_count(6),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => samplerate_count(7),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => samplerate_count(8),
      R => \samplerate_count[9]_i_1_n_0\
    );
\samplerate_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => samplerate_count(9),
      R => \samplerate_count[9]_i_1_n_0\
    );
start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => strb1,
      I1 => btn,
      O => start_i_1_n_0
    );
start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_i_1_n_0,
      Q => start,
      R => '0'
    );
tx_data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^eoc_adc_int\,
      Q => tx_data_ready,
      R => '0'
    );
\uart_tx_byte[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => uart_tx_data_buffer(0),
      I1 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      I2 => uart_tx_data_buffer(8),
      I3 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      O => \uart_tx_byte[0]_i_1_n_0\
    );
\uart_tx_byte[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => uart_tx_data_buffer(1),
      I1 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      I2 => uart_tx_data_buffer(9),
      I3 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      O => \uart_tx_byte[1]_i_1_n_0\
    );
\uart_tx_byte[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => uart_tx_data_buffer(2),
      I1 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      I2 => uart_tx_data_buffer(10),
      I3 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      O => \uart_tx_byte[2]_i_1_n_0\
    );
\uart_tx_byte[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \FSM_onehot_stateUart_reg_n_0_[1]\,
      I1 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      I2 => tx_data_ready,
      I3 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      O => \uart_tx_byte[3]_i_1_n_0\
    );
\uart_tx_byte[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => uart_tx_data_buffer(3),
      I1 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      I2 => uart_tx_data_buffer(11),
      I3 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      O => \uart_tx_byte[3]_i_2_n_0\
    );
\uart_tx_byte[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      I1 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      O => \uart_tx_byte[7]_i_1_n_0\
    );
\uart_tx_byte[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      I1 => tx_data_ready,
      I2 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      O => \uart_tx_byte[7]_i_2_n_0\
    );
\uart_tx_byte_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => \uart_tx_byte[0]_i_1_n_0\,
      Q => \uart_tx_byte_reg_n_0_[0]\,
      S => \uart_tx_byte[3]_i_1_n_0\
    );
\uart_tx_byte_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => \uart_tx_byte[1]_i_1_n_0\,
      Q => \uart_tx_byte_reg_n_0_[1]\,
      S => \uart_tx_byte[3]_i_1_n_0\
    );
\uart_tx_byte_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => \uart_tx_byte[2]_i_1_n_0\,
      Q => \uart_tx_byte_reg_n_0_[2]\,
      S => \uart_tx_byte[3]_i_1_n_0\
    );
\uart_tx_byte_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => \uart_tx_byte[3]_i_2_n_0\,
      Q => \uart_tx_byte_reg_n_0_[3]\,
      S => \uart_tx_byte[3]_i_1_n_0\
    );
\uart_tx_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => uart_tx_data_buffer(4),
      Q => \uart_tx_byte_reg_n_0_[4]\,
      R => \uart_tx_byte[7]_i_1_n_0\
    );
\uart_tx_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => uart_tx_data_buffer(5),
      Q => \uart_tx_byte_reg_n_0_[5]\,
      R => \uart_tx_byte[7]_i_1_n_0\
    );
\uart_tx_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => uart_tx_data_buffer(6),
      Q => \uart_tx_byte_reg_n_0_[6]\,
      R => \uart_tx_byte[7]_i_1_n_0\
    );
\uart_tx_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \uart_tx_byte[7]_i_2_n_0\,
      D => uart_tx_data_buffer(7),
      Q => \uart_tx_byte_reg_n_0_[7]\,
      R => \uart_tx_byte[7]_i_1_n_0\
    );
\uart_tx_data_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(0),
      Q => uart_tx_data_buffer(0),
      R => '0'
    );
\uart_tx_data_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(10),
      Q => uart_tx_data_buffer(10),
      R => '0'
    );
\uart_tx_data_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(11),
      Q => uart_tx_data_buffer(11),
      R => '0'
    );
\uart_tx_data_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(1),
      Q => uart_tx_data_buffer(1),
      R => '0'
    );
\uart_tx_data_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(2),
      Q => uart_tx_data_buffer(2),
      R => '0'
    );
\uart_tx_data_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(3),
      Q => uart_tx_data_buffer(3),
      R => '0'
    );
\uart_tx_data_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(4),
      Q => uart_tx_data_buffer(4),
      R => '0'
    );
\uart_tx_data_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(5),
      Q => uart_tx_data_buffer(5),
      R => '0'
    );
\uart_tx_data_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(6),
      Q => uart_tx_data_buffer(6),
      R => '0'
    );
\uart_tx_data_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(7),
      Q => uart_tx_data_buffer(7),
      R => '0'
    );
\uart_tx_data_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(8),
      Q => uart_tx_data_buffer(8),
      R => '0'
    );
\uart_tx_data_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^eoc_adc_int\,
      D => \^adc_data_gpio_1\(9),
      Q => uart_tx_data_buffer(9),
      R => '0'
    );
uart_tx_data_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAFBBBFAAAFAAA"
    )
        port map (
      I0 => \FSM_onehot_stateUart_reg_n_0_[2]\,
      I1 => \FSM_onehot_stateUart_reg_n_0_[3]\,
      I2 => \FSM_onehot_stateUart_reg_n_0_[0]\,
      I3 => tx_data_ready,
      I4 => \FSM_onehot_stateUart_reg_n_0_[1]\,
      I5 => uart_tx_data_ready_reg_n_0,
      O => uart_tx_data_ready_i_1_n_0
    );
uart_tx_data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_tx_data_ready_i_1_n_0,
      Q => uart_tx_data_ready_reg_n_0,
      R => '0'
    );
your_DA2Component: entity work.Hilbert_242_main_0_0_DA2Component
     port map (
      Out_D(2 downto 0) => \^out_d\(2 downto 0),
      Q(0) => \^out_d\(3),
      clk => clk,
      reset_in => reset_in,
      start => start,
      \temp1_reg[11]_0\(11 downto 0) => dac_data_1(11 downto 0),
      \temp2_reg[11]_0\(11) => \dac_data_2_reg_n_0_[11]\,
      \temp2_reg[11]_0\(10) => \dac_data_2_reg_n_0_[10]\,
      \temp2_reg[11]_0\(9) => \dac_data_2_reg_n_0_[9]\,
      \temp2_reg[11]_0\(8) => \dac_data_2_reg_n_0_[8]\,
      \temp2_reg[11]_0\(7) => \dac_data_2_reg_n_0_[7]\,
      \temp2_reg[11]_0\(6) => \dac_data_2_reg_n_0_[6]\,
      \temp2_reg[11]_0\(5) => \dac_data_2_reg_n_0_[5]\,
      \temp2_reg[11]_0\(4) => \dac_data_2_reg_n_0_[4]\,
      \temp2_reg[11]_0\(3) => \dac_data_2_reg_n_0_[3]\,
      \temp2_reg[11]_0\(2) => \dac_data_2_reg_n_0_[2]\,
      \temp2_reg[11]_0\(1) => \dac_data_2_reg_n_0_[1]\,
      \temp2_reg[11]_0\(0) => \dac_data_2_reg_n_0_[0]\
    );
your_fir_filter1: component Hilbert_242_main_0_0_fir_compiler_0
     port map (
      aclk => clk,
      m_axis_data_tdata(15 downto 13) => NLW_your_fir_filter1_m_axis_data_tdata_UNCONNECTED(15 downto 13),
      m_axis_data_tdata(12 downto 0) => m_axis_data_tdata(12 downto 0),
      m_axis_data_tvalid => strb1,
      s_axis_data_tdata(15 downto 12) => B"0000",
      s_axis_data_tdata(11 downto 0) => \^adc_data_gpio_1\(11 downto 0),
      s_axis_data_tready => NLW_your_fir_filter1_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => \^eoc_adc_int\
    );
your_fir_filter2: component Hilbert_242_main_0_0_fir_compiler_1
     port map (
      aclk => clk,
      m_axis_data_tdata(15 downto 13) => NLW_your_fir_filter2_m_axis_data_tdata_UNCONNECTED(15 downto 13),
      m_axis_data_tdata(12 downto 0) => fir_data_2(12 downto 0),
      m_axis_data_tvalid => NLW_your_fir_filter2_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 12) => B"0000",
      s_axis_data_tdata(11 downto 0) => \^adc_data_gpio_2\(11 downto 0),
      s_axis_data_tready => NLW_your_fir_filter2_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => \^eoc_adc_int\
    );
your_uart_tx: entity work.Hilbert_242_main_0_0_UART_TX
     port map (
      D(7) => \uart_tx_byte_reg_n_0_[7]\,
      D(6) => \uart_tx_byte_reg_n_0_[6]\,
      D(5) => \uart_tx_byte_reg_n_0_[5]\,
      D(4) => \uart_tx_byte_reg_n_0_[4]\,
      D(3) => \uart_tx_byte_reg_n_0_[3]\,
      D(2) => \uart_tx_byte_reg_n_0_[2]\,
      D(1) => \uart_tx_byte_reg_n_0_[1]\,
      D(0) => \uart_tx_byte_reg_n_0_[0]\,
      E(0) => your_uart_tx_n_1,
      Out_E(0) => \^out_e\(0),
      Q(3) => \FSM_onehot_stateUart_reg_n_0_[3]\,
      Q(2) => \FSM_onehot_stateUart_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_stateUart_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_stateUart_reg_n_0_[0]\,
      clk => clk,
      \r_TX_Data_reg[0]_0\ => uart_tx_data_ready_reg_n_0,
      tx_data_ready => tx_data_ready
    );
your_xadc_wiz_0: component Hilbert_242_main_0_0_xadc_wiz_0
     port map (
      alarm_out => NLW_your_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_your_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_your_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      convst_in => convst_in,
      daddr_in(6 downto 4) => B"001",
      daddr_in(3) => daddr_in(3),
      daddr_in(2 downto 0) => B"111",
      dclk_in => clk,
      den_in => den_in,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => do_out_adc(15 downto 0),
      drdy_out => drdy,
      dwe_in => '0',
      eoc_out => eoc_out,
      eos_out => NLW_your_xadc_wiz_0_eos_out_UNCONNECTED,
      muxaddr_out(4 downto 0) => NLW_your_xadc_wiz_0_muxaddr_out_UNCONNECTED(4 downto 0),
      reset_in => reset_in,
      vauxn15 => vauxn15,
      vauxn7 => vauxn7,
      vauxp15 => vauxp15,
      vauxp7 => vauxp7,
      vn_in => '0',
      vp_in => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Hilbert_242_main_0_0 is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    Out_D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vauxp7 : in STD_LOGIC;
    vauxn7 : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    Out_E : out STD_LOGIC_VECTOR ( 7 downto 0 );
    switch1 : in STD_LOGIC;
    led1 : out STD_LOGIC;
    switch2 : in STD_LOGIC;
    led2 : out STD_LOGIC;
    adc_data_gpio_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_data_gpio_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    eoc_adc_int : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Hilbert_242_main_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Hilbert_242_main_0_0 : entity is "Hilbert_242_main_0_0,main,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Hilbert_242_main_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Hilbert_242_main_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Hilbert_242_main_0_0 : entity is "main,Vivado 2024.2";
end Hilbert_242_main_0_0;

architecture STRUCTURE of Hilbert_242_main_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^out_d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_Out_D_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_U0_Out_E_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  Out_D(7) <= \<const0>\;
  Out_D(6) <= \<const0>\;
  Out_D(5) <= \<const0>\;
  Out_D(4) <= \<const0>\;
  Out_D(3 downto 0) <= \^out_d\(3 downto 0);
  Out_E(7) <= \<const0>\;
  Out_E(6) <= \<const0>\;
  Out_E(5) <= \<const0>\;
  Out_E(4) <= \<const0>\;
  Out_E(3) <= \<const0>\;
  Out_E(2) <= \<const0>\;
  Out_E(1) <= \<const0>\;
  Out_E(0) <= \^out_e\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Hilbert_242_main_0_0_main
     port map (
      Out_D(7 downto 4) => NLW_U0_Out_D_UNCONNECTED(7 downto 4),
      Out_D(3 downto 0) => \^out_d\(3 downto 0),
      Out_E(7 downto 1) => NLW_U0_Out_E_UNCONNECTED(7 downto 1),
      Out_E(0) => \^out_e\(0),
      adc_data_gpio_1(11 downto 0) => adc_data_gpio_1(11 downto 0),
      adc_data_gpio_2(11 downto 0) => adc_data_gpio_2(11 downto 0),
      btn => btn,
      clk => clk,
      eoc_adc_int => eoc_adc_int,
      led1 => led1,
      led2 => led2,
      switch1 => switch1,
      switch2 => switch2,
      vauxn15 => vauxn15,
      vauxn7 => vauxn7,
      vauxp15 => vauxp15,
      vauxp7 => vauxp7
    );
end STRUCTURE;
