-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Sep 15 15:09:57 2025
-- Host        : SNM_ProBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/PoC/Hilbert_242/Hilbert_242.gen/sources_1/bd/Hilbert_242/ip/Hilbert_242_main_0_0/Hilbert_242_main_0_0_stub.vhdl
-- Design      : Hilbert_242_main_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Hilbert_242_main_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Hilbert_242_main_0_0 : entity is "Hilbert_242_main_0_0,main,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of Hilbert_242_main_0_0 : entity is "Hilbert_242_main_0_0,main,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=main,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Hilbert_242_main_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Hilbert_242_main_0_0 : entity is "module_ref";
end Hilbert_242_main_0_0;

architecture stub of Hilbert_242_main_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,btn,Out_D[7:0],vauxp7,vauxn7,vauxp15,vauxn15,Out_E[7:0],switch1,led1,switch2,led2,adc_data_gpio_1[11:0],adc_data_gpio_2[11:0],eoc_adc_int";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "main,Vivado 2024.2";
begin
end;
