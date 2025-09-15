// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 15 10:28:30 2025
// Host        : SNM_ProBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PoC/Hilbert242C/Hilbert_242.gen/sources_1/bd/Hilbert_242/ip/Hilbert_242_main_0_0/Hilbert_242_main_0_0_sim_netlist.v
// Design      : Hilbert_242_main_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Hilbert_242_main_0_0,main,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "main,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module Hilbert_242_main_0_0
   (clk,
    btn,
    Out_D,
    vauxp7,
    vauxn7,
    vauxp15,
    vauxn15,
    Out_E,
    switch1,
    led1,
    switch2,
    led2,
    adc_data_gpio_1,
    adc_data_gpio_2,
    eoc_adc_int);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input btn;
  output [7:0]Out_D;
  input vauxp7;
  input vauxn7;
  input vauxp15;
  input vauxn15;
  output [7:0]Out_E;
  input switch1;
  output led1;
  input switch2;
  output led2;
  output [11:0]adc_data_gpio_1;
  output [11:0]adc_data_gpio_2;
  output eoc_adc_int;

  wire \<const0> ;
  wire [3:0]\^Out_D ;
  wire [0:0]\^Out_E ;
  wire [11:0]adc_data_gpio_1;
  wire [11:0]adc_data_gpio_2;
  wire btn;
  wire clk;
  wire eoc_adc_int;
  wire led1;
  wire led2;
  wire switch1;
  wire switch2;
  wire vauxn15;
  wire vauxn7;
  wire vauxp15;
  wire vauxp7;
  wire [7:4]NLW_U0_Out_D_UNCONNECTED;
  wire [7:1]NLW_U0_Out_E_UNCONNECTED;

  assign Out_D[7] = \<const0> ;
  assign Out_D[6] = \<const0> ;
  assign Out_D[5] = \<const0> ;
  assign Out_D[4] = \<const0> ;
  assign Out_D[3:0] = \^Out_D [3:0];
  assign Out_E[7] = \<const0> ;
  assign Out_E[6] = \<const0> ;
  assign Out_E[5] = \<const0> ;
  assign Out_E[4] = \<const0> ;
  assign Out_E[3] = \<const0> ;
  assign Out_E[2] = \<const0> ;
  assign Out_E[1] = \<const0> ;
  assign Out_E[0] = \^Out_E [0];
  GND GND
       (.G(\<const0> ));
  Hilbert_242_main_0_0_main U0
       (.Out_D({NLW_U0_Out_D_UNCONNECTED[7:4],\^Out_D }),
        .Out_E({NLW_U0_Out_E_UNCONNECTED[7:1],\^Out_E }),
        .adc_data_gpio_1(adc_data_gpio_1),
        .adc_data_gpio_2(adc_data_gpio_2),
        .btn(btn),
        .clk(clk),
        .eoc_adc_int(eoc_adc_int),
        .led1(led1),
        .led2(led2),
        .switch1(switch1),
        .switch2(switch2),
        .vauxn15(vauxn15),
        .vauxn7(vauxn7),
        .vauxp15(vauxp15),
        .vauxp7(vauxp7));
endmodule

(* ORIG_REF_NAME = "DA2Component" *) 
module Hilbert_242_main_0_0_DA2Component
   (Q,
    Out_D,
    \temp1_reg[11]_0 ,
    \temp2_reg[11]_0 ,
    start,
    reset_in,
    clk);
  output [0:0]Q;
  output [2:0]Out_D;
  input [11:0]\temp1_reg[11]_0 ;
  input [11:0]\temp2_reg[11]_0 ;
  input start;
  input reset_in;
  input clk;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire [2:0]Out_D;
  wire [0:0]Q;
  wire clk;
  wire \clk_counter_reg_n_0_[0] ;
  wire eqOp__2;
  wire [11:0]p_0_in;
  wire [1:0]plusOp;
  wire [3:0]plusOp__0;
  wire reset_in;
  wire \shiftCounter[2]_i_1_n_0 ;
  wire [3:0]shiftCounter_reg;
  wire start;
  wire [11:0]temp1;
  wire [11:0]\temp1_reg[11]_0 ;
  wire \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0 ;
  wire \temp1_reg[14]_your_DA2Component_temp1_reg_r_1_n_0 ;
  wire temp1_reg_gate_n_0;
  wire temp1_reg_r_0_n_0;
  wire temp1_reg_r_1_n_0;
  wire temp1_reg_r_n_0;
  wire [11:0]temp2;
  wire \temp2[0]_i_1_n_0 ;
  wire \temp2[10]_i_1_n_0 ;
  wire \temp2[11]_i_1_n_0 ;
  wire \temp2[1]_i_1_n_0 ;
  wire \temp2[2]_i_1_n_0 ;
  wire \temp2[3]_i_1_n_0 ;
  wire \temp2[4]_i_1_n_0 ;
  wire \temp2[5]_i_1_n_0 ;
  wire \temp2[6]_i_1_n_0 ;
  wire \temp2[7]_i_1_n_0 ;
  wire \temp2[8]_i_1_n_0 ;
  wire \temp2[9]_i_1_n_0 ;
  wire temp2_0;
  wire [11:0]\temp2_reg[11]_0 ;
  wire \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0 ;
  wire \temp2_reg[14]_your_DA2Component_temp1_reg_r_1_n_0 ;
  wire temp2_reg_gate_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFF50575457)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(start),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp__2),
        .I5(reset_in),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCC8EFC8)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(start),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp__2),
        .I5(reset_in),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF20F820)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(start),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(eqOp__2),
        .I5(reset_in),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(shiftCounter_reg[1]),
        .I1(shiftCounter_reg[0]),
        .I2(shiftCounter_reg[2]),
        .I3(shiftCounter_reg[3]),
        .O(eqOp__2));
  (* FSM_ENCODED_STATES = "shiftout:0010,syncdata:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(Q),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shiftout:0010,syncdata:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(Q),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "shiftout:0010,syncdata:0100,idle:0001,iSTATE:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(Q),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Out_D[0]_INST_0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(Out_D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_counter[1]_i_1 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .I1(Q),
        .O(plusOp[1]));
  FDCE \clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_in),
        .D(plusOp[0]),
        .Q(\clk_counter_reg_n_0_[0] ));
  FDCE \clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_in),
        .D(plusOp[1]),
        .Q(Q));
  LUT1 #(
    .INIT(2'h1)) 
    \shiftCounter[0]_i_1 
       (.I0(shiftCounter_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shiftCounter[1]_i_1 
       (.I0(shiftCounter_reg[0]),
        .I1(shiftCounter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \shiftCounter[2]_i_1 
       (.I0(shiftCounter_reg[1]),
        .I1(shiftCounter_reg[0]),
        .I2(shiftCounter_reg[2]),
        .O(\shiftCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \shiftCounter[3]_i_1 
       (.I0(shiftCounter_reg[0]),
        .I1(shiftCounter_reg[1]),
        .I2(shiftCounter_reg[2]),
        .I3(shiftCounter_reg[3]),
        .O(plusOp__0[3]));
  FDRE \shiftCounter_reg[0] 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(plusOp__0[0]),
        .Q(shiftCounter_reg[0]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE \shiftCounter_reg[1] 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(plusOp__0[1]),
        .Q(shiftCounter_reg[1]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE \shiftCounter_reg[2] 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(\shiftCounter[2]_i_1_n_0 ),
        .Q(shiftCounter_reg[2]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE \shiftCounter_reg[3] 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(plusOp__0[3]),
        .Q(shiftCounter_reg[3]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[0]_i_1 
       (.I0(\temp1_reg[11]_0 [0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(Out_D[1]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[10]_i_1 
       (.I0(\temp1_reg[11]_0 [10]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[9]),
        .O(p_0_in[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \temp1[11]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(temp2_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[11]_i_2 
       (.I0(\temp1_reg[11]_0 [11]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[10]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[1]_i_1 
       (.I0(\temp1_reg[11]_0 [1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[2]_i_1 
       (.I0(\temp1_reg[11]_0 [2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[3]_i_1 
       (.I0(\temp1_reg[11]_0 [3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[4]_i_1 
       (.I0(\temp1_reg[11]_0 [4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[3]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[5]_i_1 
       (.I0(\temp1_reg[11]_0 [5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[6]_i_1 
       (.I0(\temp1_reg[11]_0 [6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[7]_i_1 
       (.I0(\temp1_reg[11]_0 [7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[8]_i_1 
       (.I0(\temp1_reg[11]_0 [8]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp1[9]_i_1 
       (.I0(\temp1_reg[11]_0 [9]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp1[8]),
        .O(p_0_in[9]));
  FDRE \temp1_reg[0] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[0]),
        .Q(temp1[0]),
        .R(1'b0));
  FDRE \temp1_reg[10] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[10]),
        .Q(temp1[10]),
        .R(1'b0));
  FDRE \temp1_reg[11] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[11]),
        .Q(temp1[11]),
        .R(1'b0));
  (* srl_bus_name = "U0/\\your_DA2Component/temp1_reg " *) 
  (* srl_name = "U0/\\your_DA2Component/temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0 " *) 
  SRL16E \temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .CLK(Q),
        .D(temp1[11]),
        .Q(\temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0 ));
  FDRE \temp1_reg[14]_your_DA2Component_temp1_reg_r_1 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(\temp1_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0 ),
        .Q(\temp1_reg[14]_your_DA2Component_temp1_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \temp1_reg[15] 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(temp1_reg_gate_n_0),
        .Q(Out_D[1]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE \temp1_reg[1] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[1]),
        .Q(temp1[1]),
        .R(1'b0));
  FDRE \temp1_reg[2] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[2]),
        .Q(temp1[2]),
        .R(1'b0));
  FDRE \temp1_reg[3] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[3]),
        .Q(temp1[3]),
        .R(1'b0));
  FDRE \temp1_reg[4] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[4]),
        .Q(temp1[4]),
        .R(1'b0));
  FDRE \temp1_reg[5] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[5]),
        .Q(temp1[5]),
        .R(1'b0));
  FDRE \temp1_reg[6] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[6]),
        .Q(temp1[6]),
        .R(1'b0));
  FDRE \temp1_reg[7] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[7]),
        .Q(temp1[7]),
        .R(1'b0));
  FDRE \temp1_reg[8] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[8]),
        .Q(temp1[8]),
        .R(1'b0));
  FDRE \temp1_reg[9] 
       (.C(Q),
        .CE(temp2_0),
        .D(p_0_in[9]),
        .Q(temp1[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    temp1_reg_gate
       (.I0(\temp1_reg[14]_your_DA2Component_temp1_reg_r_1_n_0 ),
        .I1(temp1_reg_r_1_n_0),
        .O(temp1_reg_gate_n_0));
  FDRE temp1_reg_r
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(1'b1),
        .Q(temp1_reg_r_n_0),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE temp1_reg_r_0
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(temp1_reg_r_n_0),
        .Q(temp1_reg_r_0_n_0),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE temp1_reg_r_1
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(temp1_reg_r_0_n_0),
        .Q(temp1_reg_r_1_n_0),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[0]_i_1 
       (.I0(\temp2_reg[11]_0 [0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(Out_D[2]),
        .O(\temp2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[10]_i_1 
       (.I0(\temp2_reg[11]_0 [10]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[9]),
        .O(\temp2[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[11]_i_1 
       (.I0(\temp2_reg[11]_0 [11]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[10]),
        .O(\temp2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[1]_i_1 
       (.I0(\temp2_reg[11]_0 [1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[0]),
        .O(\temp2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[2]_i_1 
       (.I0(\temp2_reg[11]_0 [2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[1]),
        .O(\temp2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[3]_i_1 
       (.I0(\temp2_reg[11]_0 [3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[2]),
        .O(\temp2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[4]_i_1 
       (.I0(\temp2_reg[11]_0 [4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[3]),
        .O(\temp2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[5]_i_1 
       (.I0(\temp2_reg[11]_0 [5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[4]),
        .O(\temp2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[6]_i_1 
       (.I0(\temp2_reg[11]_0 [6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[5]),
        .O(\temp2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[7]_i_1 
       (.I0(\temp2_reg[11]_0 [7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[6]),
        .O(\temp2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[8]_i_1 
       (.I0(\temp2_reg[11]_0 [8]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[7]),
        .O(\temp2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp2[9]_i_1 
       (.I0(\temp2_reg[11]_0 [9]),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(temp2[8]),
        .O(\temp2[9]_i_1_n_0 ));
  FDRE \temp2_reg[0] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[0]_i_1_n_0 ),
        .Q(temp2[0]),
        .R(1'b0));
  FDRE \temp2_reg[10] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[10]_i_1_n_0 ),
        .Q(temp2[10]),
        .R(1'b0));
  FDRE \temp2_reg[11] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[11]_i_1_n_0 ),
        .Q(temp2[11]),
        .R(1'b0));
  (* srl_bus_name = "U0/\\your_DA2Component/temp2_reg " *) 
  (* srl_name = "U0/\\your_DA2Component/temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0 " *) 
  SRL16E \temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .CLK(Q),
        .D(temp2[11]),
        .Q(\temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0 ));
  FDRE \temp2_reg[14]_your_DA2Component_temp1_reg_r_1 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(\temp2_reg[13]_srl2___your_DA2Component_temp1_reg_r_0_n_0 ),
        .Q(\temp2_reg[14]_your_DA2Component_temp1_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \temp2_reg[15] 
       (.C(Q),
        .CE(\FSM_onehot_current_state_reg_n_0_[1] ),
        .D(temp2_reg_gate_n_0),
        .Q(Out_D[2]),
        .R(\FSM_onehot_current_state_reg_n_0_[0] ));
  FDRE \temp2_reg[1] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[1]_i_1_n_0 ),
        .Q(temp2[1]),
        .R(1'b0));
  FDRE \temp2_reg[2] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[2]_i_1_n_0 ),
        .Q(temp2[2]),
        .R(1'b0));
  FDRE \temp2_reg[3] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[3]_i_1_n_0 ),
        .Q(temp2[3]),
        .R(1'b0));
  FDRE \temp2_reg[4] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[4]_i_1_n_0 ),
        .Q(temp2[4]),
        .R(1'b0));
  FDRE \temp2_reg[5] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[5]_i_1_n_0 ),
        .Q(temp2[5]),
        .R(1'b0));
  FDRE \temp2_reg[6] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[6]_i_1_n_0 ),
        .Q(temp2[6]),
        .R(1'b0));
  FDRE \temp2_reg[7] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[7]_i_1_n_0 ),
        .Q(temp2[7]),
        .R(1'b0));
  FDRE \temp2_reg[8] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[8]_i_1_n_0 ),
        .Q(temp2[8]),
        .R(1'b0));
  FDRE \temp2_reg[9] 
       (.C(Q),
        .CE(temp2_0),
        .D(\temp2[9]_i_1_n_0 ),
        .Q(temp2[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    temp2_reg_gate
       (.I0(\temp2_reg[14]_your_DA2Component_temp1_reg_r_1_n_0 ),
        .I1(temp1_reg_r_1_n_0),
        .O(temp2_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "UART_TX" *) 
module Hilbert_242_main_0_0_UART_TX
   (Out_E,
    E,
    clk,
    \r_TX_Data_reg[0]_0 ,
    tx_data_ready,
    Q,
    D);
  output [0:0]Out_E;
  output [0:0]E;
  input clk;
  input \r_TX_Data_reg[0]_0 ;
  input tx_data_ready;
  input [3:0]Q;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_r_SM_Main[0]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[0]_i_2_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_2_n_0 ;
  wire [0:0]Out_E;
  wire [3:0]Q;
  wire clk;
  wire o_TX_Serial_i_1_n_0;
  wire o_TX_Serial_i_3_n_0;
  wire o_TX_Serial_i_4_n_0;
  wire o_TX_Serial_reg_i_2_n_0;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_2_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  wire [4:1]r_Clk_Count;
  wire r_Clk_Count0;
  wire \r_Clk_Count[0]_i_1_n_0 ;
  wire r_Clk_Count_0;
  wire [4:0]r_Clk_Count_reg;
  wire [2:0]r_SM_Main;
  wire [7:0]r_TX_Data;
  wire r_TX_Data_1;
  wire \r_TX_Data_reg[0]_0 ;
  wire r_TX_Done_i_1_n_0;
  wire tx_data_ready;
  wire uart_done;

  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8F8F8)) 
    \FSM_onehot_stateUart[3]_i_1 
       (.I0(tx_data_ready),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(uart_done),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000C0E2C3E2)) 
    \FSM_sequential_r_SM_Main[0]_i_1 
       (.I0(\r_TX_Data_reg[0]_0 ),
        .I1(r_SM_Main[0]),
        .I2(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I3(r_SM_Main[1]),
        .I4(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ),
        .I5(r_SM_Main[2]),
        .O(\FSM_sequential_r_SM_Main[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_r_SM_Main[0]_i_2 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\r_Bit_Index_reg_n_0_[1] ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .O(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00D2)) 
    \FSM_sequential_r_SM_Main[1]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[2]),
        .O(\FSM_sequential_r_SM_Main[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_sequential_r_SM_Main[2]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[2]),
        .O(\FSM_sequential_r_SM_Main[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    \FSM_sequential_r_SM_Main[2]_i_2 
       (.I0(r_Clk_Count_reg[2]),
        .I1(r_Clk_Count_reg[3]),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[0]),
        .I4(r_Clk_Count_reg[4]),
        .O(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[0]_i_1_n_0 ),
        .Q(r_SM_Main[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[1]_i_1_n_0 ),
        .Q(r_SM_Main[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[2]_i_1_n_0 ),
        .Q(r_SM_Main[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hBB8BB88B)) 
    o_TX_Serial_i_1
       (.I0(Out_E),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .I4(o_TX_Serial_reg_i_2_n_0),
        .O(o_TX_Serial_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_TX_Serial_i_3
       (.I0(r_TX_Data[3]),
        .I1(r_TX_Data[2]),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(r_TX_Data[1]),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(r_TX_Data[0]),
        .O(o_TX_Serial_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_TX_Serial_i_4
       (.I0(r_TX_Data[7]),
        .I1(r_TX_Data[6]),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(r_TX_Data[5]),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(r_TX_Data[4]),
        .O(o_TX_Serial_i_4_n_0));
  FDRE o_TX_Serial_reg
       (.C(clk),
        .CE(1'b1),
        .D(o_TX_Serial_i_1_n_0),
        .Q(Out_E),
        .R(1'b0));
  MUXF7 o_TX_Serial_reg_i_2
       (.I0(o_TX_Serial_i_3_n_0),
        .I1(o_TX_Serial_i_4_n_0),
        .O(o_TX_Serial_reg_i_2_n_0),
        .S(\r_Bit_Index_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAAAAAA98AAAAAA00)) 
    \r_Bit_Index[0]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[0] ),
        .I1(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I2(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ),
        .I3(r_SM_Main[2]),
        .I4(r_SM_Main[0]),
        .I5(r_SM_Main[1]),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA9AAA00)) 
    \r_Bit_Index[1]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[1] ),
        .I1(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_Bit_Index[2]_i_2_n_0 ),
        .I4(r_SM_Main[1]),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9AAAAAAA0000)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I2(\r_Bit_Index_reg_n_0_[0] ),
        .I3(\r_Bit_Index_reg_n_0_[1] ),
        .I4(\r_Bit_Index[2]_i_2_n_0 ),
        .I5(r_SM_Main[1]),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_Bit_Index[2]_i_2 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[0]),
        .O(\r_Bit_Index[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \r_Clk_Count[0]_i_1 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[3]),
        .I2(r_Clk_Count_reg[2]),
        .I3(r_Clk_Count_reg[0]),
        .O(\r_Clk_Count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h1414143C)) 
    \r_Clk_Count[1]_i_1 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[0]),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[3]),
        .I4(r_Clk_Count_reg[2]),
        .O(r_Clk_Count[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \r_Clk_Count[2]_i_1 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[0]),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[2]),
        .O(r_Clk_Count[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h15405500)) 
    \r_Clk_Count[3]_i_1 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[0]),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[3]),
        .I4(r_Clk_Count_reg[2]),
        .O(r_Clk_Count[3]));
  LUT3 #(
    .INIT(8'h01)) 
    \r_Clk_Count[4]_i_1 
       (.I0(r_SM_Main[1]),
        .I1(r_SM_Main[0]),
        .I2(r_SM_Main[2]),
        .O(r_Clk_Count0));
  LUT3 #(
    .INIT(8'h54)) 
    \r_Clk_Count[4]_i_2 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[1]),
        .I2(r_SM_Main[0]),
        .O(r_Clk_Count_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h4000002A)) 
    \r_Clk_Count[4]_i_3 
       (.I0(r_Clk_Count_reg[4]),
        .I1(r_Clk_Count_reg[0]),
        .I2(r_Clk_Count_reg[1]),
        .I3(r_Clk_Count_reg[3]),
        .I4(r_Clk_Count_reg[2]),
        .O(r_Clk_Count[4]));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(clk),
        .CE(r_Clk_Count_0),
        .D(\r_Clk_Count[0]_i_1_n_0 ),
        .Q(r_Clk_Count_reg[0]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(clk),
        .CE(r_Clk_Count_0),
        .D(r_Clk_Count[1]),
        .Q(r_Clk_Count_reg[1]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(clk),
        .CE(r_Clk_Count_0),
        .D(r_Clk_Count[2]),
        .Q(r_Clk_Count_reg[2]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(clk),
        .CE(r_Clk_Count_0),
        .D(r_Clk_Count[3]),
        .Q(r_Clk_Count_reg[3]),
        .R(r_Clk_Count0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(clk),
        .CE(r_Clk_Count_0),
        .D(r_Clk_Count[4]),
        .Q(r_Clk_Count_reg[4]),
        .R(r_Clk_Count0));
  LUT4 #(
    .INIT(16'h0010)) 
    \r_TX_Data[7]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[2]),
        .I2(\r_TX_Data_reg[0]_0 ),
        .I3(r_SM_Main[1]),
        .O(r_TX_Data_1));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[0] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[0]),
        .Q(r_TX_Data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[1] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[1]),
        .Q(r_TX_Data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[2] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[2]),
        .Q(r_TX_Data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[3] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[3]),
        .Q(r_TX_Data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[4] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[4]),
        .Q(r_TX_Data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[5] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[5]),
        .Q(r_TX_Data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[6] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[6]),
        .Q(r_TX_Data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[7] 
       (.C(clk),
        .CE(r_TX_Data_1),
        .D(D[7]),
        .Q(r_TX_Data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFA100A)) 
    r_TX_Done_i_1
       (.I0(r_SM_Main[2]),
        .I1(\FSM_sequential_r_SM_Main[2]_i_2_n_0 ),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .I4(uart_done),
        .O(r_TX_Done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_TX_Done_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_TX_Done_i_1_n_0),
        .Q(uart_done),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fir_compiler_0,fir_compiler_v7_2_23,{}" *) (* ORIG_REF_NAME = "fir_compiler_0" *) 
module Hilbert_242_main_0_0_fir_compiler_0
   (aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input [15:0]s_axis_data_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_compiler_1,fir_compiler_v7_2_23,{}" *) (* ORIG_REF_NAME = "fir_compiler_1" *) 
module Hilbert_242_main_0_0_fir_compiler_1
   (aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input [15:0]s_axis_data_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "main" *) 
module Hilbert_242_main_0_0_main
   (clk,
    btn,
    Out_D,
    vauxp7,
    vauxn7,
    vauxp15,
    vauxn15,
    Out_E,
    switch1,
    led1,
    switch2,
    led2,
    adc_data_gpio_1,
    adc_data_gpio_2,
    eoc_adc_int);
  input clk;
  input btn;
  output [7:0]Out_D;
  input vauxp7;
  input vauxn7;
  input vauxp15;
  input vauxn15;
  output [7:0]Out_E;
  input switch1;
  output led1;
  input switch2;
  output led2;
  output [11:0]adc_data_gpio_1;
  output [11:0]adc_data_gpio_2;
  output eoc_adc_int;

  wire \<const0> ;
  wire \FSM_onehot_stateUart_reg_n_0_[0] ;
  wire \FSM_onehot_stateUart_reg_n_0_[1] ;
  wire \FSM_onehot_stateUart_reg_n_0_[2] ;
  wire \FSM_onehot_stateUart_reg_n_0_[3] ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [3:0]\^Out_D ;
  wire [0:0]\^Out_E ;
  wire [11:0]adc_data_gpio_1;
  wire [11:0]adc_data_gpio_2;
  wire btn;
  wire clk;
  wire convst_in;
  wire [11:0]dac_data_1;
  wire [12:1]dac_data_10;
  wire \dac_data_1[0]_i_1_n_0 ;
  wire \dac_data_1[10]_i_1_n_0 ;
  wire \dac_data_1[10]_i_3_n_0 ;
  wire \dac_data_1[10]_i_4_n_0 ;
  wire \dac_data_1[10]_i_5_n_0 ;
  wire \dac_data_1[10]_i_6_n_0 ;
  wire \dac_data_1[11]_i_10_n_0 ;
  wire \dac_data_1[11]_i_11_n_0 ;
  wire \dac_data_1[11]_i_12_n_0 ;
  wire \dac_data_1[11]_i_15_n_0 ;
  wire \dac_data_1[11]_i_16_n_0 ;
  wire \dac_data_1[11]_i_17_n_0 ;
  wire \dac_data_1[11]_i_18_n_0 ;
  wire \dac_data_1[11]_i_19_n_0 ;
  wire \dac_data_1[11]_i_1_n_0 ;
  wire \dac_data_1[11]_i_2_n_0 ;
  wire \dac_data_1[11]_i_5_n_0 ;
  wire \dac_data_1[11]_i_6_n_0 ;
  wire \dac_data_1[11]_i_7_n_0 ;
  wire \dac_data_1[11]_i_8_n_0 ;
  wire \dac_data_1[11]_i_9_n_0 ;
  wire \dac_data_1[1]_i_1_n_0 ;
  wire \dac_data_1[2]_i_1_n_0 ;
  wire \dac_data_1[2]_i_3_n_0 ;
  wire \dac_data_1[2]_i_4_n_0 ;
  wire \dac_data_1[2]_i_5_n_0 ;
  wire \dac_data_1[3]_i_10_n_0 ;
  wire \dac_data_1[3]_i_11_n_0 ;
  wire \dac_data_1[3]_i_12_n_0 ;
  wire \dac_data_1[3]_i_1_n_0 ;
  wire \dac_data_1[3]_i_3_n_0 ;
  wire \dac_data_1[3]_i_4_n_0 ;
  wire \dac_data_1[3]_i_6_n_0 ;
  wire \dac_data_1[3]_i_7_n_0 ;
  wire \dac_data_1[3]_i_8_n_0 ;
  wire \dac_data_1[3]_i_9_n_0 ;
  wire \dac_data_1[4]_i_1_n_0 ;
  wire \dac_data_1[5]_i_1_n_0 ;
  wire \dac_data_1[6]_i_1_n_0 ;
  wire \dac_data_1[6]_i_3_n_0 ;
  wire \dac_data_1[6]_i_4_n_0 ;
  wire \dac_data_1[6]_i_5_n_0 ;
  wire \dac_data_1[6]_i_6_n_0 ;
  wire \dac_data_1[7]_i_10_n_0 ;
  wire \dac_data_1[7]_i_12_n_0 ;
  wire \dac_data_1[7]_i_13_n_0 ;
  wire \dac_data_1[7]_i_14_n_0 ;
  wire \dac_data_1[7]_i_15_n_0 ;
  wire \dac_data_1[7]_i_1_n_0 ;
  wire \dac_data_1[7]_i_3_n_0 ;
  wire \dac_data_1[7]_i_4_n_0 ;
  wire \dac_data_1[7]_i_5_n_0 ;
  wire \dac_data_1[7]_i_6_n_0 ;
  wire \dac_data_1[7]_i_7_n_0 ;
  wire \dac_data_1[7]_i_8_n_0 ;
  wire \dac_data_1[7]_i_9_n_0 ;
  wire \dac_data_1[8]_i_1_n_0 ;
  wire \dac_data_1[9]_i_1_n_0 ;
  wire \dac_data_1_reg[10]_i_2_n_0 ;
  wire \dac_data_1_reg[10]_i_2_n_1 ;
  wire \dac_data_1_reg[10]_i_2_n_2 ;
  wire \dac_data_1_reg[10]_i_2_n_3 ;
  wire \dac_data_1_reg[11]_i_13_n_0 ;
  wire \dac_data_1_reg[11]_i_13_n_1 ;
  wire \dac_data_1_reg[11]_i_13_n_2 ;
  wire \dac_data_1_reg[11]_i_13_n_3 ;
  wire \dac_data_1_reg[11]_i_13_n_4 ;
  wire \dac_data_1_reg[11]_i_13_n_5 ;
  wire \dac_data_1_reg[11]_i_13_n_6 ;
  wire \dac_data_1_reg[11]_i_13_n_7 ;
  wire \dac_data_1_reg[11]_i_14_n_7 ;
  wire \dac_data_1_reg[11]_i_3_n_1 ;
  wire \dac_data_1_reg[11]_i_3_n_2 ;
  wire \dac_data_1_reg[11]_i_3_n_3 ;
  wire \dac_data_1_reg[11]_i_3_n_4 ;
  wire \dac_data_1_reg[11]_i_3_n_5 ;
  wire \dac_data_1_reg[11]_i_3_n_6 ;
  wire \dac_data_1_reg[11]_i_3_n_7 ;
  wire \dac_data_1_reg[2]_i_2_n_0 ;
  wire \dac_data_1_reg[2]_i_2_n_1 ;
  wire \dac_data_1_reg[2]_i_2_n_2 ;
  wire \dac_data_1_reg[2]_i_2_n_3 ;
  wire \dac_data_1_reg[3]_i_2_n_0 ;
  wire \dac_data_1_reg[3]_i_2_n_1 ;
  wire \dac_data_1_reg[3]_i_2_n_2 ;
  wire \dac_data_1_reg[3]_i_2_n_3 ;
  wire \dac_data_1_reg[3]_i_2_n_4 ;
  wire \dac_data_1_reg[3]_i_2_n_5 ;
  wire \dac_data_1_reg[3]_i_2_n_6 ;
  wire \dac_data_1_reg[3]_i_2_n_7 ;
  wire \dac_data_1_reg[3]_i_5_n_0 ;
  wire \dac_data_1_reg[3]_i_5_n_1 ;
  wire \dac_data_1_reg[3]_i_5_n_2 ;
  wire \dac_data_1_reg[3]_i_5_n_3 ;
  wire \dac_data_1_reg[3]_i_5_n_4 ;
  wire \dac_data_1_reg[3]_i_5_n_5 ;
  wire \dac_data_1_reg[3]_i_5_n_6 ;
  wire \dac_data_1_reg[6]_i_2_n_0 ;
  wire \dac_data_1_reg[6]_i_2_n_1 ;
  wire \dac_data_1_reg[6]_i_2_n_2 ;
  wire \dac_data_1_reg[6]_i_2_n_3 ;
  wire \dac_data_1_reg[7]_i_11_n_0 ;
  wire \dac_data_1_reg[7]_i_11_n_1 ;
  wire \dac_data_1_reg[7]_i_11_n_2 ;
  wire \dac_data_1_reg[7]_i_11_n_3 ;
  wire \dac_data_1_reg[7]_i_11_n_4 ;
  wire \dac_data_1_reg[7]_i_11_n_5 ;
  wire \dac_data_1_reg[7]_i_11_n_6 ;
  wire \dac_data_1_reg[7]_i_11_n_7 ;
  wire \dac_data_1_reg[7]_i_2_n_0 ;
  wire \dac_data_1_reg[7]_i_2_n_1 ;
  wire \dac_data_1_reg[7]_i_2_n_2 ;
  wire \dac_data_1_reg[7]_i_2_n_3 ;
  wire \dac_data_1_reg[7]_i_2_n_4 ;
  wire \dac_data_1_reg[7]_i_2_n_5 ;
  wire \dac_data_1_reg[7]_i_2_n_6 ;
  wire \dac_data_1_reg[7]_i_2_n_7 ;
  wire \dac_data_2[0]_i_1_n_0 ;
  wire \dac_data_2[10]_i_1_n_0 ;
  wire \dac_data_2[11]_i_1_n_0 ;
  wire \dac_data_2[1]_i_1_n_0 ;
  wire \dac_data_2[2]_i_1_n_0 ;
  wire \dac_data_2[3]_i_1_n_0 ;
  wire \dac_data_2[4]_i_1_n_0 ;
  wire \dac_data_2[5]_i_1_n_0 ;
  wire \dac_data_2[6]_i_1_n_0 ;
  wire \dac_data_2[7]_i_1_n_0 ;
  wire \dac_data_2[8]_i_1_n_0 ;
  wire \dac_data_2[9]_i_1_n_0 ;
  wire \dac_data_2_reg_n_0_[0] ;
  wire \dac_data_2_reg_n_0_[10] ;
  wire \dac_data_2_reg_n_0_[11] ;
  wire \dac_data_2_reg_n_0_[1] ;
  wire \dac_data_2_reg_n_0_[2] ;
  wire \dac_data_2_reg_n_0_[3] ;
  wire \dac_data_2_reg_n_0_[4] ;
  wire \dac_data_2_reg_n_0_[5] ;
  wire \dac_data_2_reg_n_0_[6] ;
  wire \dac_data_2_reg_n_0_[7] ;
  wire \dac_data_2_reg_n_0_[8] ;
  wire \dac_data_2_reg_n_0_[9] ;
  wire [3:3]daddr_in;
  wire \daddr_in[3]_i_1_n_0 ;
  wire data1;
  wire \data2[15]_i_1_n_0 ;
  wire den_i_1_n_0;
  wire den_in;
  wire [15:0]do_out_adc;
  wire drdy;
  wire eoc_adc_int;
  wire eoc_out;
  wire eoc_out_latched_i_1_n_0;
  wire [12:0]fir_data_2;
  wire led1;
  wire led2;
  wire led2_i_1_n_0;
  wire [12:0]m_axis_data_tdata;
  wire [9:0]p_1_in;
  wire reset_in;
  wire [9:0]samplerate_count;
  wire \samplerate_count[3]_i_1_n_0 ;
  wire \samplerate_count[9]_i_1_n_0 ;
  wire \samplerate_count[9]_i_3_n_0 ;
  wire \samplerate_count[9]_i_4_n_0 ;
  wire \samplerate_count[9]_i_5_n_0 ;
  wire start;
  wire start_i_1_n_0;
  wire [1:0]state;
  wire strb1;
  wire switch1;
  wire switch2;
  wire tx_data_ready;
  wire \uart_tx_byte[0]_i_1_n_0 ;
  wire \uart_tx_byte[1]_i_1_n_0 ;
  wire \uart_tx_byte[2]_i_1_n_0 ;
  wire \uart_tx_byte[3]_i_1_n_0 ;
  wire \uart_tx_byte[3]_i_2_n_0 ;
  wire \uart_tx_byte[7]_i_1_n_0 ;
  wire \uart_tx_byte[7]_i_2_n_0 ;
  wire \uart_tx_byte_reg_n_0_[0] ;
  wire \uart_tx_byte_reg_n_0_[1] ;
  wire \uart_tx_byte_reg_n_0_[2] ;
  wire \uart_tx_byte_reg_n_0_[3] ;
  wire \uart_tx_byte_reg_n_0_[4] ;
  wire \uart_tx_byte_reg_n_0_[5] ;
  wire \uart_tx_byte_reg_n_0_[6] ;
  wire \uart_tx_byte_reg_n_0_[7] ;
  wire [11:0]uart_tx_data_buffer;
  wire uart_tx_data_ready_i_1_n_0;
  wire uart_tx_data_ready_reg_n_0;
  wire vauxn15;
  wire vauxn7;
  wire vauxp15;
  wire vauxp7;
  wire your_uart_tx_n_1;
  wire [3:0]\NLW_dac_data_1_reg[11]_i_14_CO_UNCONNECTED ;
  wire [3:1]\NLW_dac_data_1_reg[11]_i_14_O_UNCONNECTED ;
  wire [3:3]\NLW_dac_data_1_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_dac_data_1_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_dac_data_1_reg[11]_i_4_O_UNCONNECTED ;
  wire [0:0]\NLW_dac_data_1_reg[2]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_dac_data_1_reg[3]_i_5_O_UNCONNECTED ;
  wire NLW_your_fir_filter1_s_axis_data_tready_UNCONNECTED;
  wire [15:13]NLW_your_fir_filter1_m_axis_data_tdata_UNCONNECTED;
  wire NLW_your_fir_filter2_m_axis_data_tvalid_UNCONNECTED;
  wire NLW_your_fir_filter2_s_axis_data_tready_UNCONNECTED;
  wire [15:13]NLW_your_fir_filter2_m_axis_data_tdata_UNCONNECTED;
  wire NLW_your_xadc_wiz_0_alarm_out_UNCONNECTED;
  wire NLW_your_xadc_wiz_0_busy_out_UNCONNECTED;
  wire NLW_your_xadc_wiz_0_eos_out_UNCONNECTED;
  wire [4:0]NLW_your_xadc_wiz_0_channel_out_UNCONNECTED;
  wire [4:0]NLW_your_xadc_wiz_0_muxaddr_out_UNCONNECTED;

  assign Out_D[7] = \<const0> ;
  assign Out_D[6] = \<const0> ;
  assign Out_D[5] = \<const0> ;
  assign Out_D[4] = \<const0> ;
  assign Out_D[3:0] = \^Out_D [3:0];
  assign Out_E[7] = \<const0> ;
  assign Out_E[6] = \<const0> ;
  assign Out_E[5] = \<const0> ;
  assign Out_E[4] = \<const0> ;
  assign Out_E[3] = \<const0> ;
  assign Out_E[2] = \<const0> ;
  assign Out_E[1] = \<const0> ;
  assign Out_E[0] = \^Out_E [0];
  (* FSM_ENCODED_STATES = "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_stateUart_reg[0] 
       (.C(clk),
        .CE(your_uart_tx_n_1),
        .D(\FSM_onehot_stateUart_reg_n_0_[3] ),
        .Q(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stateUart_reg[1] 
       (.C(clk),
        .CE(your_uart_tx_n_1),
        .D(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .Q(\FSM_onehot_stateUart_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stateUart_reg[2] 
       (.C(clk),
        .CE(your_uart_tx_n_1),
        .D(\FSM_onehot_stateUart_reg_n_0_[1] ),
        .Q(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:0001,firstbyte:0010,waitonce:011,load:0100,secondbyte:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_stateUart_reg[3] 
       (.C(clk),
        .CE(your_uart_tx_n_1),
        .D(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .Q(\FSM_onehot_stateUart_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h45FC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(drdy),
        .I1(state[1]),
        .I2(eoc_out),
        .I3(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1CCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(eoc_out),
        .I1(state[1]),
        .I2(state[0]),
        .I3(drdy),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "read1:01,read2:11,idle:00,tempo:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "read1:01,read2:11,idle:00,tempo:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
  FDRE convst_reg
       (.C(clk),
        .CE(1'b1),
        .D(\samplerate_count[9]_i_1_n_0 ),
        .Q(convst_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[0]_i_1 
       (.I0(\dac_data_1_reg[3]_i_2_n_7 ),
        .I1(switch2),
        .I2(dac_data_10[1]),
        .O(\dac_data_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[10]_i_1 
       (.I0(\dac_data_1_reg[11]_i_3_n_5 ),
        .I1(switch2),
        .I2(dac_data_10[11]),
        .O(\dac_data_1[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[10]_i_3 
       (.I0(m_axis_data_tdata[10]),
        .I1(fir_data_2[10]),
        .O(\dac_data_1[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[10]_i_4 
       (.I0(m_axis_data_tdata[9]),
        .I1(fir_data_2[9]),
        .O(\dac_data_1[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[10]_i_5 
       (.I0(m_axis_data_tdata[8]),
        .I1(fir_data_2[8]),
        .O(\dac_data_1[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[10]_i_6 
       (.I0(m_axis_data_tdata[7]),
        .I1(fir_data_2[7]),
        .O(\dac_data_1[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \dac_data_1[11]_i_1 
       (.I0(btn),
        .I1(strb1),
        .O(\dac_data_1[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE11E)) 
    \dac_data_1[11]_i_10 
       (.I0(\dac_data_1_reg[11]_i_13_n_6 ),
        .I1(m_axis_data_tdata[8]),
        .I2(\dac_data_1_reg[11]_i_13_n_5 ),
        .I3(m_axis_data_tdata[9]),
        .O(\dac_data_1[11]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[11]_i_11 
       (.I0(\dac_data_1_reg[11]_i_13_n_7 ),
        .I1(m_axis_data_tdata[7]),
        .I2(\dac_data_1_reg[11]_i_13_n_6 ),
        .I3(m_axis_data_tdata[8]),
        .O(\dac_data_1[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[11]_i_12 
       (.I0(m_axis_data_tdata[11]),
        .I1(fir_data_2[11]),
        .O(\dac_data_1[11]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[11]_i_15 
       (.I0(fir_data_2[10]),
        .O(\dac_data_1[11]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[11]_i_16 
       (.I0(fir_data_2[9]),
        .O(\dac_data_1[11]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[11]_i_17 
       (.I0(fir_data_2[8]),
        .O(\dac_data_1[11]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[11]_i_18 
       (.I0(fir_data_2[7]),
        .O(\dac_data_1[11]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[11]_i_19 
       (.I0(fir_data_2[11]),
        .O(\dac_data_1[11]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[11]_i_2 
       (.I0(\dac_data_1_reg[11]_i_3_n_4 ),
        .I1(switch2),
        .I2(dac_data_10[12]),
        .O(\dac_data_1[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dac_data_1[11]_i_5 
       (.I0(\dac_data_1_reg[11]_i_13_n_5 ),
        .I1(m_axis_data_tdata[9]),
        .O(\dac_data_1[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[11]_i_6 
       (.I0(m_axis_data_tdata[8]),
        .I1(\dac_data_1_reg[11]_i_13_n_6 ),
        .O(\dac_data_1[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[11]_i_7 
       (.I0(m_axis_data_tdata[7]),
        .I1(\dac_data_1_reg[11]_i_13_n_7 ),
        .O(\dac_data_1[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \dac_data_1[11]_i_8 
       (.I0(m_axis_data_tdata[10]),
        .I1(\dac_data_1_reg[11]_i_13_n_4 ),
        .I2(\dac_data_1_reg[11]_i_14_n_7 ),
        .I3(m_axis_data_tdata[11]),
        .O(\dac_data_1[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \dac_data_1[11]_i_9 
       (.I0(m_axis_data_tdata[9]),
        .I1(\dac_data_1_reg[11]_i_13_n_5 ),
        .I2(\dac_data_1_reg[11]_i_13_n_4 ),
        .I3(m_axis_data_tdata[10]),
        .O(\dac_data_1[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[1]_i_1 
       (.I0(\dac_data_1_reg[3]_i_2_n_6 ),
        .I1(switch2),
        .I2(dac_data_10[2]),
        .O(\dac_data_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[2]_i_1 
       (.I0(\dac_data_1_reg[3]_i_2_n_5 ),
        .I1(switch2),
        .I2(dac_data_10[3]),
        .O(\dac_data_1[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[2]_i_3 
       (.I0(m_axis_data_tdata[2]),
        .I1(fir_data_2[2]),
        .O(\dac_data_1[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[2]_i_4 
       (.I0(m_axis_data_tdata[1]),
        .I1(fir_data_2[1]),
        .O(\dac_data_1[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[2]_i_5 
       (.I0(m_axis_data_tdata[0]),
        .I1(fir_data_2[0]),
        .O(\dac_data_1[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[3]_i_1 
       (.I0(\dac_data_1_reg[3]_i_2_n_4 ),
        .I1(switch2),
        .I2(dac_data_10[4]),
        .O(\dac_data_1[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[3]_i_10 
       (.I0(fir_data_2[0]),
        .O(\dac_data_1[3]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[3]_i_11 
       (.I0(fir_data_2[2]),
        .O(\dac_data_1[3]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[3]_i_12 
       (.I0(fir_data_2[1]),
        .O(\dac_data_1[3]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[3]_i_3 
       (.I0(m_axis_data_tdata[2]),
        .I1(\dac_data_1_reg[3]_i_5_n_4 ),
        .O(\dac_data_1[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[3]_i_4 
       (.I0(m_axis_data_tdata[1]),
        .I1(\dac_data_1_reg[3]_i_5_n_5 ),
        .O(\dac_data_1[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[3]_i_6 
       (.I0(\dac_data_1_reg[3]_i_5_n_4 ),
        .I1(m_axis_data_tdata[2]),
        .I2(\dac_data_1_reg[7]_i_11_n_7 ),
        .I3(m_axis_data_tdata[3]),
        .O(\dac_data_1[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[3]_i_7 
       (.I0(\dac_data_1_reg[3]_i_5_n_5 ),
        .I1(m_axis_data_tdata[1]),
        .I2(\dac_data_1_reg[3]_i_5_n_4 ),
        .I3(m_axis_data_tdata[2]),
        .O(\dac_data_1[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dac_data_1[3]_i_8 
       (.I0(\dac_data_1_reg[3]_i_5_n_5 ),
        .I1(m_axis_data_tdata[1]),
        .I2(\dac_data_1_reg[3]_i_5_n_6 ),
        .O(\dac_data_1[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dac_data_1[3]_i_9 
       (.I0(\dac_data_1_reg[3]_i_5_n_6 ),
        .I1(m_axis_data_tdata[0]),
        .O(\dac_data_1[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[4]_i_1 
       (.I0(\dac_data_1_reg[7]_i_2_n_7 ),
        .I1(switch2),
        .I2(dac_data_10[5]),
        .O(\dac_data_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[5]_i_1 
       (.I0(\dac_data_1_reg[7]_i_2_n_6 ),
        .I1(switch2),
        .I2(dac_data_10[6]),
        .O(\dac_data_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[6]_i_1 
       (.I0(\dac_data_1_reg[7]_i_2_n_5 ),
        .I1(switch2),
        .I2(dac_data_10[7]),
        .O(\dac_data_1[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[6]_i_3 
       (.I0(m_axis_data_tdata[6]),
        .I1(fir_data_2[6]),
        .O(\dac_data_1[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[6]_i_4 
       (.I0(m_axis_data_tdata[5]),
        .I1(fir_data_2[5]),
        .O(\dac_data_1[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[6]_i_5 
       (.I0(m_axis_data_tdata[4]),
        .I1(fir_data_2[4]),
        .O(\dac_data_1[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dac_data_1[6]_i_6 
       (.I0(m_axis_data_tdata[3]),
        .I1(fir_data_2[3]),
        .O(\dac_data_1[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[7]_i_1 
       (.I0(\dac_data_1_reg[7]_i_2_n_4 ),
        .I1(switch2),
        .I2(dac_data_10[8]),
        .O(\dac_data_1[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[7]_i_10 
       (.I0(\dac_data_1_reg[7]_i_11_n_7 ),
        .I1(m_axis_data_tdata[3]),
        .I2(\dac_data_1_reg[7]_i_11_n_6 ),
        .I3(m_axis_data_tdata[4]),
        .O(\dac_data_1[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[7]_i_12 
       (.I0(fir_data_2[6]),
        .O(\dac_data_1[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[7]_i_13 
       (.I0(fir_data_2[5]),
        .O(\dac_data_1[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[7]_i_14 
       (.I0(fir_data_2[4]),
        .O(\dac_data_1[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_data_1[7]_i_15 
       (.I0(fir_data_2[3]),
        .O(\dac_data_1[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[7]_i_3 
       (.I0(m_axis_data_tdata[6]),
        .I1(\dac_data_1_reg[7]_i_11_n_4 ),
        .O(\dac_data_1[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[7]_i_4 
       (.I0(m_axis_data_tdata[5]),
        .I1(\dac_data_1_reg[7]_i_11_n_5 ),
        .O(\dac_data_1[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[7]_i_5 
       (.I0(m_axis_data_tdata[4]),
        .I1(\dac_data_1_reg[7]_i_11_n_6 ),
        .O(\dac_data_1[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dac_data_1[7]_i_6 
       (.I0(m_axis_data_tdata[3]),
        .I1(\dac_data_1_reg[7]_i_11_n_7 ),
        .O(\dac_data_1[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[7]_i_7 
       (.I0(\dac_data_1_reg[7]_i_11_n_4 ),
        .I1(m_axis_data_tdata[6]),
        .I2(\dac_data_1_reg[11]_i_13_n_7 ),
        .I3(m_axis_data_tdata[7]),
        .O(\dac_data_1[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[7]_i_8 
       (.I0(\dac_data_1_reg[7]_i_11_n_5 ),
        .I1(m_axis_data_tdata[5]),
        .I2(\dac_data_1_reg[7]_i_11_n_4 ),
        .I3(m_axis_data_tdata[6]),
        .O(\dac_data_1[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1EE1)) 
    \dac_data_1[7]_i_9 
       (.I0(\dac_data_1_reg[7]_i_11_n_6 ),
        .I1(m_axis_data_tdata[4]),
        .I2(\dac_data_1_reg[7]_i_11_n_5 ),
        .I3(m_axis_data_tdata[5]),
        .O(\dac_data_1[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[8]_i_1 
       (.I0(\dac_data_1_reg[11]_i_3_n_7 ),
        .I1(switch2),
        .I2(dac_data_10[9]),
        .O(\dac_data_1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac_data_1[9]_i_1 
       (.I0(\dac_data_1_reg[11]_i_3_n_6 ),
        .I1(switch2),
        .I2(dac_data_10[10]),
        .O(\dac_data_1[9]_i_1_n_0 ));
  FDRE \dac_data_1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[0]_i_1_n_0 ),
        .Q(dac_data_1[0]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[10]_i_1_n_0 ),
        .Q(dac_data_1[10]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[10]_i_2 
       (.CI(\dac_data_1_reg[6]_i_2_n_0 ),
        .CO({\dac_data_1_reg[10]_i_2_n_0 ,\dac_data_1_reg[10]_i_2_n_1 ,\dac_data_1_reg[10]_i_2_n_2 ,\dac_data_1_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axis_data_tdata[10:7]),
        .O(dac_data_10[11:8]),
        .S({\dac_data_1[10]_i_3_n_0 ,\dac_data_1[10]_i_4_n_0 ,\dac_data_1[10]_i_5_n_0 ,\dac_data_1[10]_i_6_n_0 }));
  FDRE \dac_data_1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[11]_i_2_n_0 ),
        .Q(dac_data_1[11]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[11]_i_13 
       (.CI(\dac_data_1_reg[7]_i_11_n_0 ),
        .CO({\dac_data_1_reg[11]_i_13_n_0 ,\dac_data_1_reg[11]_i_13_n_1 ,\dac_data_1_reg[11]_i_13_n_2 ,\dac_data_1_reg[11]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dac_data_1_reg[11]_i_13_n_4 ,\dac_data_1_reg[11]_i_13_n_5 ,\dac_data_1_reg[11]_i_13_n_6 ,\dac_data_1_reg[11]_i_13_n_7 }),
        .S({\dac_data_1[11]_i_15_n_0 ,\dac_data_1[11]_i_16_n_0 ,\dac_data_1[11]_i_17_n_0 ,\dac_data_1[11]_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[11]_i_14 
       (.CI(\dac_data_1_reg[11]_i_13_n_0 ),
        .CO(\NLW_dac_data_1_reg[11]_i_14_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dac_data_1_reg[11]_i_14_O_UNCONNECTED [3:1],\dac_data_1_reg[11]_i_14_n_7 }),
        .S({1'b0,1'b0,1'b0,\dac_data_1[11]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[11]_i_3 
       (.CI(\dac_data_1_reg[7]_i_2_n_0 ),
        .CO({\NLW_dac_data_1_reg[11]_i_3_CO_UNCONNECTED [3],\dac_data_1_reg[11]_i_3_n_1 ,\dac_data_1_reg[11]_i_3_n_2 ,\dac_data_1_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\dac_data_1[11]_i_5_n_0 ,\dac_data_1[11]_i_6_n_0 ,\dac_data_1[11]_i_7_n_0 }),
        .O({\dac_data_1_reg[11]_i_3_n_4 ,\dac_data_1_reg[11]_i_3_n_5 ,\dac_data_1_reg[11]_i_3_n_6 ,\dac_data_1_reg[11]_i_3_n_7 }),
        .S({\dac_data_1[11]_i_8_n_0 ,\dac_data_1[11]_i_9_n_0 ,\dac_data_1[11]_i_10_n_0 ,\dac_data_1[11]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[11]_i_4 
       (.CI(\dac_data_1_reg[10]_i_2_n_0 ),
        .CO(\NLW_dac_data_1_reg[11]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_dac_data_1_reg[11]_i_4_O_UNCONNECTED [3:1],dac_data_10[12]}),
        .S({1'b0,1'b0,1'b0,\dac_data_1[11]_i_12_n_0 }));
  FDRE \dac_data_1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[1]_i_1_n_0 ),
        .Q(dac_data_1[1]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[2]_i_1_n_0 ),
        .Q(dac_data_1[2]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\dac_data_1_reg[2]_i_2_n_0 ,\dac_data_1_reg[2]_i_2_n_1 ,\dac_data_1_reg[2]_i_2_n_2 ,\dac_data_1_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({m_axis_data_tdata[2:0],1'b0}),
        .O({dac_data_10[3:1],\NLW_dac_data_1_reg[2]_i_2_O_UNCONNECTED [0]}),
        .S({\dac_data_1[2]_i_3_n_0 ,\dac_data_1[2]_i_4_n_0 ,\dac_data_1[2]_i_5_n_0 ,1'b0}));
  FDRE \dac_data_1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[3]_i_1_n_0 ),
        .Q(dac_data_1[3]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\dac_data_1_reg[3]_i_2_n_0 ,\dac_data_1_reg[3]_i_2_n_1 ,\dac_data_1_reg[3]_i_2_n_2 ,\dac_data_1_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_data_1[3]_i_3_n_0 ,\dac_data_1[3]_i_4_n_0 ,\dac_data_1_reg[3]_i_5_n_6 ,m_axis_data_tdata[0]}),
        .O({\dac_data_1_reg[3]_i_2_n_4 ,\dac_data_1_reg[3]_i_2_n_5 ,\dac_data_1_reg[3]_i_2_n_6 ,\dac_data_1_reg[3]_i_2_n_7 }),
        .S({\dac_data_1[3]_i_6_n_0 ,\dac_data_1[3]_i_7_n_0 ,\dac_data_1[3]_i_8_n_0 ,\dac_data_1[3]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\dac_data_1_reg[3]_i_5_n_0 ,\dac_data_1_reg[3]_i_5_n_1 ,\dac_data_1_reg[3]_i_5_n_2 ,\dac_data_1_reg[3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\dac_data_1[3]_i_10_n_0 ,1'b0}),
        .O({\dac_data_1_reg[3]_i_5_n_4 ,\dac_data_1_reg[3]_i_5_n_5 ,\dac_data_1_reg[3]_i_5_n_6 ,\NLW_dac_data_1_reg[3]_i_5_O_UNCONNECTED [0]}),
        .S({\dac_data_1[3]_i_11_n_0 ,\dac_data_1[3]_i_12_n_0 ,fir_data_2[0],1'b0}));
  FDRE \dac_data_1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[4]_i_1_n_0 ),
        .Q(dac_data_1[4]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[5]_i_1_n_0 ),
        .Q(dac_data_1[5]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[6]_i_1_n_0 ),
        .Q(dac_data_1[6]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[6]_i_2 
       (.CI(\dac_data_1_reg[2]_i_2_n_0 ),
        .CO({\dac_data_1_reg[6]_i_2_n_0 ,\dac_data_1_reg[6]_i_2_n_1 ,\dac_data_1_reg[6]_i_2_n_2 ,\dac_data_1_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axis_data_tdata[6:3]),
        .O(dac_data_10[7:4]),
        .S({\dac_data_1[6]_i_3_n_0 ,\dac_data_1[6]_i_4_n_0 ,\dac_data_1[6]_i_5_n_0 ,\dac_data_1[6]_i_6_n_0 }));
  FDRE \dac_data_1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[7]_i_1_n_0 ),
        .Q(dac_data_1[7]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[7]_i_11 
       (.CI(\dac_data_1_reg[3]_i_5_n_0 ),
        .CO({\dac_data_1_reg[7]_i_11_n_0 ,\dac_data_1_reg[7]_i_11_n_1 ,\dac_data_1_reg[7]_i_11_n_2 ,\dac_data_1_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\dac_data_1_reg[7]_i_11_n_4 ,\dac_data_1_reg[7]_i_11_n_5 ,\dac_data_1_reg[7]_i_11_n_6 ,\dac_data_1_reg[7]_i_11_n_7 }),
        .S({\dac_data_1[7]_i_12_n_0 ,\dac_data_1[7]_i_13_n_0 ,\dac_data_1[7]_i_14_n_0 ,\dac_data_1[7]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dac_data_1_reg[7]_i_2 
       (.CI(\dac_data_1_reg[3]_i_2_n_0 ),
        .CO({\dac_data_1_reg[7]_i_2_n_0 ,\dac_data_1_reg[7]_i_2_n_1 ,\dac_data_1_reg[7]_i_2_n_2 ,\dac_data_1_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\dac_data_1[7]_i_3_n_0 ,\dac_data_1[7]_i_4_n_0 ,\dac_data_1[7]_i_5_n_0 ,\dac_data_1[7]_i_6_n_0 }),
        .O({\dac_data_1_reg[7]_i_2_n_4 ,\dac_data_1_reg[7]_i_2_n_5 ,\dac_data_1_reg[7]_i_2_n_6 ,\dac_data_1_reg[7]_i_2_n_7 }),
        .S({\dac_data_1[7]_i_7_n_0 ,\dac_data_1[7]_i_8_n_0 ,\dac_data_1[7]_i_9_n_0 ,\dac_data_1[7]_i_10_n_0 }));
  FDRE \dac_data_1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[8]_i_1_n_0 ),
        .Q(dac_data_1[8]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_1[9]_i_1_n_0 ),
        .Q(dac_data_1[9]),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[0]_i_1 
       (.I0(fir_data_2[0]),
        .I1(m_axis_data_tdata[0]),
        .I2(switch2),
        .O(\dac_data_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[10]_i_1 
       (.I0(fir_data_2[10]),
        .I1(m_axis_data_tdata[10]),
        .I2(switch2),
        .O(\dac_data_2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[11]_i_1 
       (.I0(fir_data_2[11]),
        .I1(m_axis_data_tdata[11]),
        .I2(switch2),
        .O(\dac_data_2[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[1]_i_1 
       (.I0(fir_data_2[1]),
        .I1(m_axis_data_tdata[1]),
        .I2(switch2),
        .O(\dac_data_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[2]_i_1 
       (.I0(fir_data_2[2]),
        .I1(m_axis_data_tdata[2]),
        .I2(switch2),
        .O(\dac_data_2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[3]_i_1 
       (.I0(fir_data_2[3]),
        .I1(m_axis_data_tdata[3]),
        .I2(switch2),
        .O(\dac_data_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[4]_i_1 
       (.I0(fir_data_2[4]),
        .I1(m_axis_data_tdata[4]),
        .I2(switch2),
        .O(\dac_data_2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[5]_i_1 
       (.I0(fir_data_2[5]),
        .I1(m_axis_data_tdata[5]),
        .I2(switch2),
        .O(\dac_data_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[6]_i_1 
       (.I0(fir_data_2[6]),
        .I1(m_axis_data_tdata[6]),
        .I2(switch2),
        .O(\dac_data_2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[7]_i_1 
       (.I0(fir_data_2[7]),
        .I1(m_axis_data_tdata[7]),
        .I2(switch2),
        .O(\dac_data_2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[8]_i_1 
       (.I0(fir_data_2[8]),
        .I1(m_axis_data_tdata[8]),
        .I2(switch2),
        .O(\dac_data_2[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dac_data_2[9]_i_1 
       (.I0(fir_data_2[9]),
        .I1(m_axis_data_tdata[9]),
        .I2(switch2),
        .O(\dac_data_2[9]_i_1_n_0 ));
  FDRE \dac_data_2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[0]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[0] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[10]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[10] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[11]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[11] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[1]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[1] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[2]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[2] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[3]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[3] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[4]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[4] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[5]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[5] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[6]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[6] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[7]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[7] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[8]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[8] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  FDRE \dac_data_2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\dac_data_2[9]_i_1_n_0 ),
        .Q(\dac_data_2_reg_n_0_[9] ),
        .R(\dac_data_1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAEA0)) 
    \daddr_in[3]_i_1 
       (.I0(daddr_in),
        .I1(drdy),
        .I2(state[1]),
        .I3(state[0]),
        .O(\daddr_in[3]_i_1_n_0 ));
  FDRE \daddr_in_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\daddr_in[3]_i_1_n_0 ),
        .Q(daddr_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \data1[15]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(drdy),
        .O(data1));
  FDRE \data1_reg[10] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[10]),
        .Q(adc_data_gpio_1[6]),
        .R(1'b0));
  FDRE \data1_reg[11] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[11]),
        .Q(adc_data_gpio_1[7]),
        .R(1'b0));
  FDRE \data1_reg[12] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[12]),
        .Q(adc_data_gpio_1[8]),
        .R(1'b0));
  FDRE \data1_reg[13] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[13]),
        .Q(adc_data_gpio_1[9]),
        .R(1'b0));
  FDRE \data1_reg[14] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[14]),
        .Q(adc_data_gpio_1[10]),
        .R(1'b0));
  FDRE \data1_reg[15] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[15]),
        .Q(adc_data_gpio_1[11]),
        .R(1'b0));
  FDRE \data1_reg[4] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[4]),
        .Q(adc_data_gpio_1[0]),
        .R(1'b0));
  FDRE \data1_reg[5] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[5]),
        .Q(adc_data_gpio_1[1]),
        .R(1'b0));
  FDRE \data1_reg[6] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[6]),
        .Q(adc_data_gpio_1[2]),
        .R(1'b0));
  FDRE \data1_reg[7] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[7]),
        .Q(adc_data_gpio_1[3]),
        .R(1'b0));
  FDRE \data1_reg[8] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[8]),
        .Q(adc_data_gpio_1[4]),
        .R(1'b0));
  FDRE \data1_reg[9] 
       (.C(clk),
        .CE(data1),
        .D(do_out_adc[9]),
        .Q(adc_data_gpio_1[5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \data2[15]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(drdy),
        .O(\data2[15]_i_1_n_0 ));
  FDRE \data2_reg[10] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[10]),
        .Q(adc_data_gpio_2[6]),
        .R(1'b0));
  FDRE \data2_reg[11] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[11]),
        .Q(adc_data_gpio_2[7]),
        .R(1'b0));
  FDRE \data2_reg[12] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[12]),
        .Q(adc_data_gpio_2[8]),
        .R(1'b0));
  FDRE \data2_reg[13] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[13]),
        .Q(adc_data_gpio_2[9]),
        .R(1'b0));
  FDRE \data2_reg[14] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[14]),
        .Q(adc_data_gpio_2[10]),
        .R(1'b0));
  FDRE \data2_reg[15] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[15]),
        .Q(adc_data_gpio_2[11]),
        .R(1'b0));
  FDRE \data2_reg[4] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[4]),
        .Q(adc_data_gpio_2[0]),
        .R(1'b0));
  FDRE \data2_reg[5] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[5]),
        .Q(adc_data_gpio_2[1]),
        .R(1'b0));
  FDRE \data2_reg[6] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[6]),
        .Q(adc_data_gpio_2[2]),
        .R(1'b0));
  FDRE \data2_reg[7] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[7]),
        .Q(adc_data_gpio_2[3]),
        .R(1'b0));
  FDRE \data2_reg[8] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[8]),
        .Q(adc_data_gpio_2[4]),
        .R(1'b0));
  FDRE \data2_reg[9] 
       (.C(clk),
        .CE(\data2[15]_i_1_n_0 ),
        .D(do_out_adc[9]),
        .Q(adc_data_gpio_2[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF232)) 
    den_i_1
       (.I0(eoc_out),
        .I1(state[0]),
        .I2(state[1]),
        .I3(den_in),
        .O(den_i_1_n_0));
  FDRE den_reg
       (.C(clk),
        .CE(1'b1),
        .D(den_i_1_n_0),
        .Q(den_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEAA0)) 
    eoc_out_latched_i_1
       (.I0(eoc_adc_int),
        .I1(drdy),
        .I2(state[1]),
        .I3(state[0]),
        .O(eoc_out_latched_i_1_n_0));
  FDRE eoc_out_latched_reg
       (.C(clk),
        .CE(1'b1),
        .D(eoc_out_latched_i_1_n_0),
        .Q(eoc_adc_int),
        .R(1'b0));
  FDRE led1_reg
       (.C(clk),
        .CE(1'b1),
        .D(switch1),
        .Q(led1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    led2_i_1
       (.I0(led2),
        .I1(btn),
        .I2(switch2),
        .O(led2_i_1_n_0));
  FDRE led2_reg
       (.C(clk),
        .CE(1'b1),
        .D(led2_i_1_n_0),
        .Q(led2),
        .R(1'b0));
  FDRE reset_sync_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn),
        .Q(reset_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \samplerate_count[0]_i_1 
       (.I0(samplerate_count[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \samplerate_count[1]_i_1 
       (.I0(samplerate_count[1]),
        .I1(samplerate_count[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \samplerate_count[2]_i_1 
       (.I0(samplerate_count[2]),
        .I1(samplerate_count[1]),
        .I2(samplerate_count[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \samplerate_count[3]_i_1 
       (.I0(samplerate_count[3]),
        .I1(samplerate_count[2]),
        .I2(samplerate_count[1]),
        .I3(samplerate_count[0]),
        .O(\samplerate_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \samplerate_count[4]_i_1 
       (.I0(samplerate_count[4]),
        .I1(samplerate_count[0]),
        .I2(samplerate_count[1]),
        .I3(samplerate_count[2]),
        .I4(samplerate_count[3]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \samplerate_count[5]_i_1 
       (.I0(samplerate_count[5]),
        .I1(samplerate_count[3]),
        .I2(samplerate_count[2]),
        .I3(samplerate_count[1]),
        .I4(samplerate_count[0]),
        .I5(samplerate_count[4]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \samplerate_count[6]_i_1 
       (.I0(samplerate_count[6]),
        .I1(samplerate_count[4]),
        .I2(\samplerate_count[9]_i_3_n_0 ),
        .I3(samplerate_count[3]),
        .I4(samplerate_count[5]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \samplerate_count[7]_i_1 
       (.I0(samplerate_count[7]),
        .I1(samplerate_count[5]),
        .I2(samplerate_count[3]),
        .I3(\samplerate_count[9]_i_3_n_0 ),
        .I4(samplerate_count[4]),
        .I5(samplerate_count[6]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \samplerate_count[8]_i_1 
       (.I0(samplerate_count[8]),
        .I1(samplerate_count[6]),
        .I2(samplerate_count[7]),
        .I3(\samplerate_count[9]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \samplerate_count[9]_i_1 
       (.I0(\samplerate_count[9]_i_3_n_0 ),
        .I1(\samplerate_count[9]_i_4_n_0 ),
        .I2(samplerate_count[3]),
        .I3(samplerate_count[8]),
        .I4(samplerate_count[4]),
        .O(\samplerate_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \samplerate_count[9]_i_2 
       (.I0(samplerate_count[9]),
        .I1(\samplerate_count[9]_i_5_n_0 ),
        .I2(samplerate_count[7]),
        .I3(samplerate_count[6]),
        .I4(samplerate_count[8]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \samplerate_count[9]_i_3 
       (.I0(samplerate_count[0]),
        .I1(samplerate_count[1]),
        .I2(samplerate_count[2]),
        .O(\samplerate_count[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \samplerate_count[9]_i_4 
       (.I0(samplerate_count[7]),
        .I1(samplerate_count[6]),
        .I2(samplerate_count[9]),
        .I3(samplerate_count[5]),
        .O(\samplerate_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \samplerate_count[9]_i_5 
       (.I0(samplerate_count[5]),
        .I1(samplerate_count[3]),
        .I2(samplerate_count[2]),
        .I3(samplerate_count[1]),
        .I4(samplerate_count[0]),
        .I5(samplerate_count[4]),
        .O(\samplerate_count[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(samplerate_count[0]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(samplerate_count[1]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(samplerate_count[2]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\samplerate_count[3]_i_1_n_0 ),
        .Q(samplerate_count[3]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(samplerate_count[4]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(samplerate_count[5]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(samplerate_count[6]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(samplerate_count[7]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(samplerate_count[8]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplerate_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(samplerate_count[9]),
        .R(\samplerate_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    start_i_1
       (.I0(strb1),
        .I1(btn),
        .O(start_i_1_n_0));
  FDRE start_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start),
        .R(1'b0));
  FDRE tx_data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(eoc_adc_int),
        .Q(tx_data_ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \uart_tx_byte[0]_i_1 
       (.I0(uart_tx_data_buffer[0]),
        .I1(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .I2(uart_tx_data_buffer[8]),
        .I3(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .O(\uart_tx_byte[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \uart_tx_byte[1]_i_1 
       (.I0(uart_tx_data_buffer[1]),
        .I1(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .I2(uart_tx_data_buffer[9]),
        .I3(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .O(\uart_tx_byte[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \uart_tx_byte[2]_i_1 
       (.I0(uart_tx_data_buffer[2]),
        .I1(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .I2(uart_tx_data_buffer[10]),
        .I3(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .O(\uart_tx_byte[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \uart_tx_byte[3]_i_1 
       (.I0(\FSM_onehot_stateUart_reg_n_0_[1] ),
        .I1(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .I2(tx_data_ready),
        .I3(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .O(\uart_tx_byte[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \uart_tx_byte[3]_i_2 
       (.I0(uart_tx_data_buffer[3]),
        .I1(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .I2(uart_tx_data_buffer[11]),
        .I3(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .O(\uart_tx_byte[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \uart_tx_byte[7]_i_1 
       (.I0(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .I1(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .O(\uart_tx_byte[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \uart_tx_byte[7]_i_2 
       (.I0(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .I1(tx_data_ready),
        .I2(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .O(\uart_tx_byte[7]_i_2_n_0 ));
  FDSE \uart_tx_byte_reg[0] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(\uart_tx_byte[0]_i_1_n_0 ),
        .Q(\uart_tx_byte_reg_n_0_[0] ),
        .S(\uart_tx_byte[3]_i_1_n_0 ));
  FDSE \uart_tx_byte_reg[1] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(\uart_tx_byte[1]_i_1_n_0 ),
        .Q(\uart_tx_byte_reg_n_0_[1] ),
        .S(\uart_tx_byte[3]_i_1_n_0 ));
  FDSE \uart_tx_byte_reg[2] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(\uart_tx_byte[2]_i_1_n_0 ),
        .Q(\uart_tx_byte_reg_n_0_[2] ),
        .S(\uart_tx_byte[3]_i_1_n_0 ));
  FDSE \uart_tx_byte_reg[3] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(\uart_tx_byte[3]_i_2_n_0 ),
        .Q(\uart_tx_byte_reg_n_0_[3] ),
        .S(\uart_tx_byte[3]_i_1_n_0 ));
  FDRE \uart_tx_byte_reg[4] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(uart_tx_data_buffer[4]),
        .Q(\uart_tx_byte_reg_n_0_[4] ),
        .R(\uart_tx_byte[7]_i_1_n_0 ));
  FDRE \uart_tx_byte_reg[5] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(uart_tx_data_buffer[5]),
        .Q(\uart_tx_byte_reg_n_0_[5] ),
        .R(\uart_tx_byte[7]_i_1_n_0 ));
  FDRE \uart_tx_byte_reg[6] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(uart_tx_data_buffer[6]),
        .Q(\uart_tx_byte_reg_n_0_[6] ),
        .R(\uart_tx_byte[7]_i_1_n_0 ));
  FDRE \uart_tx_byte_reg[7] 
       (.C(clk),
        .CE(\uart_tx_byte[7]_i_2_n_0 ),
        .D(uart_tx_data_buffer[7]),
        .Q(\uart_tx_byte_reg_n_0_[7] ),
        .R(\uart_tx_byte[7]_i_1_n_0 ));
  FDRE \uart_tx_data_buffer_reg[0] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[0]),
        .Q(uart_tx_data_buffer[0]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[10] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[10]),
        .Q(uart_tx_data_buffer[10]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[11] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[11]),
        .Q(uart_tx_data_buffer[11]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[1] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[1]),
        .Q(uart_tx_data_buffer[1]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[2] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[2]),
        .Q(uart_tx_data_buffer[2]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[3] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[3]),
        .Q(uart_tx_data_buffer[3]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[4] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[4]),
        .Q(uart_tx_data_buffer[4]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[5] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[5]),
        .Q(uart_tx_data_buffer[5]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[6] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[6]),
        .Q(uart_tx_data_buffer[6]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[7] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[7]),
        .Q(uart_tx_data_buffer[7]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[8] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[8]),
        .Q(uart_tx_data_buffer[8]),
        .R(1'b0));
  FDRE \uart_tx_data_buffer_reg[9] 
       (.C(clk),
        .CE(eoc_adc_int),
        .D(adc_data_gpio_1[9]),
        .Q(uart_tx_data_buffer[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFAAAFBBBFAAAFAAA)) 
    uart_tx_data_ready_i_1
       (.I0(\FSM_onehot_stateUart_reg_n_0_[2] ),
        .I1(\FSM_onehot_stateUart_reg_n_0_[3] ),
        .I2(\FSM_onehot_stateUart_reg_n_0_[0] ),
        .I3(tx_data_ready),
        .I4(\FSM_onehot_stateUart_reg_n_0_[1] ),
        .I5(uart_tx_data_ready_reg_n_0),
        .O(uart_tx_data_ready_i_1_n_0));
  FDRE uart_tx_data_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_tx_data_ready_i_1_n_0),
        .Q(uart_tx_data_ready_reg_n_0),
        .R(1'b0));
  Hilbert_242_main_0_0_DA2Component your_DA2Component
       (.Out_D(\^Out_D [2:0]),
        .Q(\^Out_D [3]),
        .clk(clk),
        .reset_in(reset_in),
        .start(start),
        .\temp1_reg[11]_0 (dac_data_1),
        .\temp2_reg[11]_0 ({\dac_data_2_reg_n_0_[11] ,\dac_data_2_reg_n_0_[10] ,\dac_data_2_reg_n_0_[9] ,\dac_data_2_reg_n_0_[8] ,\dac_data_2_reg_n_0_[7] ,\dac_data_2_reg_n_0_[6] ,\dac_data_2_reg_n_0_[5] ,\dac_data_2_reg_n_0_[4] ,\dac_data_2_reg_n_0_[3] ,\dac_data_2_reg_n_0_[2] ,\dac_data_2_reg_n_0_[1] ,\dac_data_2_reg_n_0_[0] }));
  (* CHECK_LICENSE_TYPE = "fir_compiler_0,fir_compiler_v7_2_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
  Hilbert_242_main_0_0_fir_compiler_0 your_fir_filter1
       (.aclk(clk),
        .m_axis_data_tdata({NLW_your_fir_filter1_m_axis_data_tdata_UNCONNECTED[15:13],m_axis_data_tdata}),
        .m_axis_data_tvalid(strb1),
        .s_axis_data_tdata({1'b0,1'b0,1'b0,1'b0,adc_data_gpio_1}),
        .s_axis_data_tready(NLW_your_fir_filter1_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(eoc_adc_int));
  (* CHECK_LICENSE_TYPE = "fir_compiler_1,fir_compiler_v7_2_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fir_compiler_v7_2_23,Vivado 2024.2" *) 
  Hilbert_242_main_0_0_fir_compiler_1 your_fir_filter2
       (.aclk(clk),
        .m_axis_data_tdata({NLW_your_fir_filter2_m_axis_data_tdata_UNCONNECTED[15:13],fir_data_2}),
        .m_axis_data_tvalid(NLW_your_fir_filter2_m_axis_data_tvalid_UNCONNECTED),
        .s_axis_data_tdata({1'b0,1'b0,1'b0,1'b0,adc_data_gpio_2}),
        .s_axis_data_tready(NLW_your_fir_filter2_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(eoc_adc_int));
  Hilbert_242_main_0_0_UART_TX your_uart_tx
       (.D({\uart_tx_byte_reg_n_0_[7] ,\uart_tx_byte_reg_n_0_[6] ,\uart_tx_byte_reg_n_0_[5] ,\uart_tx_byte_reg_n_0_[4] ,\uart_tx_byte_reg_n_0_[3] ,\uart_tx_byte_reg_n_0_[2] ,\uart_tx_byte_reg_n_0_[1] ,\uart_tx_byte_reg_n_0_[0] }),
        .E(your_uart_tx_n_1),
        .Out_E(\^Out_E ),
        .Q({\FSM_onehot_stateUart_reg_n_0_[3] ,\FSM_onehot_stateUart_reg_n_0_[2] ,\FSM_onehot_stateUart_reg_n_0_[1] ,\FSM_onehot_stateUart_reg_n_0_[0] }),
        .clk(clk),
        .\r_TX_Data_reg[0]_0 (uart_tx_data_ready_reg_n_0),
        .tx_data_ready(tx_data_ready));
  (* syn_black_box = "TRUE" *) 
  Hilbert_242_main_0_0_xadc_wiz_0 your_xadc_wiz_0
       (.alarm_out(NLW_your_xadc_wiz_0_alarm_out_UNCONNECTED),
        .busy_out(NLW_your_xadc_wiz_0_busy_out_UNCONNECTED),
        .channel_out(NLW_your_xadc_wiz_0_channel_out_UNCONNECTED[4:0]),
        .convst_in(convst_in),
        .daddr_in({1'b0,1'b0,1'b1,daddr_in,1'b1,1'b1,1'b1}),
        .dclk_in(clk),
        .den_in(den_in),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out(do_out_adc),
        .drdy_out(drdy),
        .dwe_in(1'b0),
        .eoc_out(eoc_out),
        .eos_out(NLW_your_xadc_wiz_0_eos_out_UNCONNECTED),
        .muxaddr_out(NLW_your_xadc_wiz_0_muxaddr_out_UNCONNECTED[4:0]),
        .reset_in(reset_in),
        .vauxn15(vauxn15),
        .vauxn7(vauxn7),
        .vauxp15(vauxp15),
        .vauxp7(vauxp7),
        .vn_in(1'b0),
        .vp_in(1'b0));
endmodule

(* ORIG_REF_NAME = "xadc_wiz_0" *) 
module Hilbert_242_main_0_0_xadc_wiz_0
   (daddr_in,
    den_in,
    di_in,
    dwe_in,
    do_out,
    drdy_out,
    dclk_in,
    reset_in,
    convst_in,
    vauxp7,
    vauxn7,
    vauxp15,
    vauxn15,
    busy_out,
    channel_out,
    eoc_out,
    eos_out,
    alarm_out,
    muxaddr_out,
    vp_in,
    vn_in);
  input [6:0]daddr_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  output [15:0]do_out;
  output drdy_out;
  input dclk_in;
  input reset_in;
  input convst_in;
  input vauxp7;
  input vauxn7;
  input vauxp15;
  input vauxn15;
  output busy_out;
  output [4:0]channel_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  output [4:0]muxaddr_out;
  input vp_in;
  input vn_in;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
