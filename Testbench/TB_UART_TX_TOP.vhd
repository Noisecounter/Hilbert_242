-----------------------------------------------------
-- Project : system
-----------------------------------------------------
-- File    : TB_UART_TX_TOP.vhd
-- Library : 
-- Author  : Michael Rast
-- Company : 
-- Copyright(C)
-----------------------------------------------------
-- Description :
-----------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;
-- use ieee.std_logic_textio.all;

entity TB_UART_TX_TOP is

end TB_UART_TX_TOP;

architecture struct of TB_UART_TX_TOP is

    -- Internal signal declarations
      
    signal i_Clk        : STD_LOGIC;
    signal i_TX_DV      : STD_LOGIC;
    signal i_TX_Byte    : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal o_TX_Active  : STD_LOGIC;
    signal o_TX_Serial  : STD_LOGIC;
    signal o_TX_Done    : STD_LOGIC;
    
 begin 
    
    -- Instance port mappings
    
    entity work.TB_UART_TX
    port map    (
                i_Clk => i_Clk,
                i_TX_DV => i_TX_DV,
                i_TX_Byte => i_TX_Byte,
                o_TX_Active => o_TX_Active,
                o_TX_Serial => o_TX_Serial,
                o_TX_Done   => o_TX_Done
                );

end architecture struct;