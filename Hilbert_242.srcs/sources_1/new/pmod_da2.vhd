LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

--------------------------------------------------------------------------------
-- Title      : DA1 controller entity
-- Inputs     : 5
-- Outputs    : 5
-- Description: 
-- This is the DA2 controller entity. The input ports are  a 
-- 50 MHz clock and and an asynchronous reset button along with
--	the data to be serially shifted in the 2 DAC121S101 chips on a DA2 Pmod
--  on each clock cycle.There is also a signal to start a conversion.
--  The outputs of this entity are: a output clock signal, two serial
--  output signals D1 and D2, a sync signal to synchronize the data in
--  the DAC121S101 chip, a done signal to tell the user that the chip is 
--  done converting the data and another set of data can be sent.
---------------------------------------------------------------------------------

ENTITY DA2Component IS
    PORT (
        --General usage
        CLK : IN STD_LOGIC;
        RST : IN STD_LOGIC;

        --Pmod interface signals
        D1 : OUT STD_LOGIC;
        D2 : OUT STD_LOGIC;
        CLK_OUT : OUT STD_LOGIC;
        nSYNC : OUT STD_LOGIC;

        --User interface signals
        DATA1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        DATA2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        START : IN STD_LOGIC;
        DONE : OUT STD_LOGIC
    );
END DA2Component;

ARCHITECTURE DA2 OF DA2Component IS
    --      control constant: Normal Operation
    CONSTANT control : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    ------------------------------------------------------------------------------------
    --	Title      : signal assignments
    --
    -- Description: The following signals are enumerated signals for the 
    --              finite state machine,2 temporary vectors to be shifted out to the 
    --              DAC121S101 chips, a divided clock signal to drive the DAC121S101 chips,
    --              a counter to divide the internal 50 MHz clock signal,
    --              a 4-bit counter to be used to shift out the 16-bit register,
    --              and 2 enable signals for the paralel load and shift of the 
    --              shift register.
    -- 
    ------------------------------------------------------------------------------------ 
    TYPE states IS (Idle, ShiftOut, SyncData);
    SIGNAL current_state : states := Idle;
    SIGNAL next_state : states;

    SIGNAL temp1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL temp2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL clk_div : STD_LOGIC;
    SIGNAL clk_counter : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL shiftCounter : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL enShiftCounter : STD_LOGIC;
    SIGNAL enParalelLoad : STD_LOGIC;

BEGIN

    clock_divide : PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            clk_counter <= "0000";
        ELSIF (clk = '1' AND clk'event) THEN
            clk_counter <= clk_counter + '1';
        END IF;
    END PROCESS;

    clk_div <= clk_counter(1);
    clk_out <= clk_counter(1);
    -----------------------------------------------------------------------------------
    --
    -- Title      : counter
    --
    -- Description: This is the process were the temporary registers will be loaded and 
    --              shifted. When the enParalelLoad signal is generated inside the state 
    --              the temp1 and temp2 registers will be loaded with the 4 bits of control
    --			    concatenated with the 12 bits of data. When the enShiftCounter is 
    --              activated, the 16-bits of data inside the temporary registers will be 
    --              shifted. A 4-bit counter is used to keep shifting the data 
    --			    inside temp1 and temp 2 for 16 clock cycles.
    --	
    -----------------------------------------------------------------------------------	

    counter : PROCESS (clk_div, enParalelLoad, enShiftCounter)
    BEGIN
        IF (clk_div'event AND clk_div = '1') THEN
            IF enParalelLoad = '1' THEN
                shiftCounter <= "0000";
                temp1 <= control & DATA1;
                temp2 <= control & DATA2;
            ELSIF (enShiftCounter = '1') THEN
                temp1 <= temp1(14 DOWNTO 0) & temp1(15);
                temp2 <= temp2(14 DOWNTO 0) & temp2(15);
                shiftCounter <= shiftCounter + '1';
            END IF;
        END IF;
    END PROCESS;

    D1 <= temp1(15);
    D2 <= temp2(15);
    ---------------------------------------------------------------------------------
    --
    -- Title      : Finite State Machine
    --
    -- Description: This 3 processes represent the FSM that contains three states. The first 
    --			    state is the Idle state in which a temporary registers are 
    --				assigned the updated value of the input "DATA1" and "DATA2". The next state 
    --				is the ShiftOut state which is the state where the 16-bits of 
    --				temporary registers are shifted out left from the MSB to the two serial outputs,
    --				D1 and D2. Immediately following the second state is the third 
    --				state SyncData. This state drives the output signal sync high for
    --				2 clock signals telling the DAC121S101 to latch the 16-bit data it 
    --				just recieved in the previous state. 
    -- Notes:		The data will change on the upper edge of the clock signal. Their 
    --				is also an asynchronous reset that will reset all signals to their 
    --				original state.
    --
    -----------------------------------------------------------------------------------		

    -----------------------------------------------------------------------------------
    --
    -- Title      : SYNC_PROC
    --
    -- Description: This is the process were the states are changed synchronously. At 
    --              reset the current state becomes Idle state.
    --	
    -----------------------------------------------------------------------------------			
    SYNC_PROC : PROCESS (clk_div, rst)
    BEGIN
        IF (clk_div'event AND clk_div = '1') THEN
            IF (rst = '1') THEN
                current_state <= Idle;
            ELSE
                current_state <= next_state;
            END IF;
        END IF;
    END PROCESS;

    -----------------------------------------------------------------------------------
    --
    -- Title      : OUTPUT_DECODE
    --
    -- Description: This is the process were the output signals are generated
    --              unsynchronously based on the state only (Moore State Machine).
    --	
    -----------------------------------------------------------------------------------		
    OUTPUT_DECODE : PROCESS (current_state)
    BEGIN
        IF current_state = Idle THEN
            enShiftCounter <= '0';
            DONE <= '1';
            nSYNC <= '1';
            enParalelLoad <= '1';
        ELSIF current_state = ShiftOut THEN
            enShiftCounter <= '1';
            DONE <= '0';
            nSYNC <= '0';
            enParalelLoad <= '0';
        ELSIF current_state = SyncData THEN
            enShiftCounter <= '0';
            DONE <= '0';
            nSYNC <= '1';
            enParalelLoad <= '0';
        ELSE
            enShiftCounter <= '0';
            DONE <= '0';
            nSYNC <= '0';
            enParalelLoad <= '0';
        END IF;
    END PROCESS;

    -----------------------------------------------------------------------------------
    --
    -- Title      : NEXT_STATE_DECODE
    --
    -- Description: This is the process were the next state logic is generated 
    --              depending on the current state and the input signals.
    --	
    -----------------------------------------------------------------------------------	
    NEXT_STATE_DECODE : PROCESS (current_state, START, shiftCounter)
    BEGIN
        next_state <= current_state; --default is to stay in current state
        CASE (current_state) IS
            WHEN Idle =>
                IF START = '1' THEN
                    next_state <= ShiftOut;
                END IF;
            WHEN ShiftOut =>
                IF shiftCounter = x"F" THEN
                    next_state <= SyncData;
                END IF;
            WHEN SyncData =>
                IF START = '0' THEN
                    next_state <= Idle;
                END IF;
            WHEN OTHERS =>
                next_state <= Idle;
        END CASE;
    END PROCESS;
END DA2;