-----------------------------------------------------
-- Project : system
-----------------------------------------------------
-- File    : TB_UART_TX.vhd
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

entity TB_UART_TX is
end TB_UART_TX;

architecture sim of TB_UART_TX is

    signal  i_Clk       : STD_LOGIC := '0';
    signal  i_TX_DV     : STD_LOGIC := '0';
    signal  i_TX_Byte   : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal  o_TX_Active : STD_LOGIC;
    signal  o_TX_Serial : STD_LOGIC;
    signal  o_TX_Done   : STD_LOGIC;

    
    signal      Test_done   : BOOLEAN := FALSE;
    constant    c_cycle     : time := 8 ns;    -- 125 MHz

begin

    p_clk : process
    begin
             
        -- Clock Erzeugung
        while (not Test_done) loop
            i_Clk <= '1' after c_cycle/2,
                '0' after c_cycle;
            wait for c_cycle;
        end loop;
        
        -- Prozess beenden
        report "Clock Prozess beendet";
        wait for 200 ns;
        wait;
    end process p_clk;


    p_TX : process
        variable TX_Count : INTEGER := 1;
    begin

        while TX_Count < 50 loop
            wait until rising_edge (i_Clk);     -- synchronisiere auf Clock    
            i_TX_Byte <= STD_LOGIC_VECTOR (to_unsigned(TX_Count, 8));
            i_TX_DV <= '1';
            wait until rising_edge (i_Clk);
            wait for 2 * c_cycle;
            i_TX_DV <= '0';
            wait until o_TX_Done = '1';
            TX_Count := TX_Count + 1;
        end loop;
            Test_done <= TRUE;
            report "TX Prozess beendet";
        wait for 200 ns;
        wait;
    end process;

    -- DUV Instanzierung
    UART_TX_Inst : entity work.UART_TX
        generic map (
                    g_CLKS_PER_BIT => 20
                    )

        port map    (
                    i_Clk       => i_Clk,      
                    i_TX_DV     => i_TX_DV,
                    i_TX_Byte   => i_TX_Byte,
                    o_TX_Active => o_TX_Active,
                    o_TX_Serial => o_TX_Serial,
                    o_TX_Done   => o_TX_Done         
                    );                    

end architecture sim;