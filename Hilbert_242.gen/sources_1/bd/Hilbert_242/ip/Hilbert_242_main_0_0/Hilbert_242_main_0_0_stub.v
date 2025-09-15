// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Sep 15 10:28:30 2025
// Host        : SNM_ProBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/PoC/Hilbert242C/Hilbert_242.gen/sources_1/bd/Hilbert_242/ip/Hilbert_242_main_0_0/Hilbert_242_main_0_0_stub.v
// Design      : Hilbert_242_main_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Hilbert_242_main_0_0,main,{}" *) (* core_generation_info = "Hilbert_242_main_0_0,main,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=main,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "main,Vivado 2024.2" *) 
module Hilbert_242_main_0_0(clk, btn, Out_D, vauxp7, vauxn7, vauxp15, vauxn15, 
  Out_E, switch1, led1, switch2, led2, adc_data_gpio_1, adc_data_gpio_2, eoc_adc_int)
/* synthesis syn_black_box black_box_pad_pin="btn,Out_D[7:0],vauxp7,vauxn7,vauxp15,vauxn15,Out_E[7:0],switch1,led1,switch2,led2,adc_data_gpio_1[11:0],adc_data_gpio_2[11:0],eoc_adc_int" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
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
endmodule
