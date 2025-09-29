LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.std_logic_arith.all;

ENTITY main IS
    PORT (
        clk : IN STD_LOGIC;
        btn : IN STD_LOGIC;
        Out_D : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --for DA2 PMod
        --In_A: in std_logic_vector(7 downto 0);
        vauxp7 : IN STD_LOGIC; -- Auxiliary Channel 7
        vauxn7 : IN STD_LOGIC;
        vauxp15 : IN STD_LOGIC; -- Auxiliary Channel 15
        vauxn15 : IN STD_LOGIC;
        Out_E : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --for UART Tx
        switch1 : IN STD_LOGIC;
        led1 : OUT STD_LOGIC;
        switch2 : IN STD_LOGIC;
        led2 : OUT STD_LOGIC;
        adc_data_gpio_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        adc_data_gpio_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        eoc_adc_int : OUT STD_LOGIC);

END main;

ARCHITECTURE Behavioral OF main IS

    COMPONENT xadc_wiz_0
        PORT (
            di_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            daddr_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
            den_in : IN STD_LOGIC;
            dwe_in : IN STD_LOGIC;
            drdy_out : OUT STD_LOGIC;
            do_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            dclk_in : IN STD_LOGIC;
            reset_in : IN STD_LOGIC;
            convst_in : IN STD_LOGIC;
            vp_in : IN STD_LOGIC;
            vn_in : IN STD_LOGIC;
            vauxp7 : IN STD_LOGIC; -- Auxiliary Channel 7
            vauxn7 : IN STD_LOGIC;
            vauxp15 : IN STD_LOGIC; -- Auxiliary Channel 15
            vauxn15 : IN STD_LOGIC;
            channel_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
            muxaddr_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
            eoc_out : OUT STD_LOGIC;
            alarm_out : OUT STD_LOGIC;
            eos_out : OUT STD_LOGIC;
            busy_out : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT DA2Component
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
    END COMPONENT;

    COMPONENT fir_compiler_0
        PORT (
            aclk : IN STD_LOGIC;
            s_axis_data_tvalid : IN STD_LOGIC;
            s_axis_data_tready : OUT STD_LOGIC;
            s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            m_axis_data_tvalid : OUT STD_LOGIC;
            m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT fir_compiler_1
        PORT (
            aclk : IN STD_LOGIC;
            s_axis_data_tvalid : IN STD_LOGIC;
            s_axis_data_tready : OUT STD_LOGIC;
            s_axis_data_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            m_axis_data_tvalid : OUT STD_LOGIC;
            m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT UART_TX
        PORT (
            i_Clk : IN STD_LOGIC;
            i_TX_DV : IN STD_LOGIC;
            i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_TX_Active : OUT STD_LOGIC;
            o_TX_Serial : OUT STD_LOGIC;
            o_TX_Done : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL reset_sync : STD_LOGIC;

    SIGNAL dac_data_1 : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL dac_data_2 : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL adc_data_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL adc_data_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);

    SIGNAL start : STD_LOGIC;
    SIGNAL done : STD_LOGIC;
    SIGNAL count : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL D1, D2, nSYNC, CLK_OUT : STD_LOGIC;

    SIGNAL channel_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL daddr_in : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL eoc_out, eoc_out_latched : STD_LOGIC;
    SIGNAL do_out_adc : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL convst, drdy : STD_LOGIC;
    SIGNAL samplerate_count, wait_count : INTEGER RANGE 0 TO 999;
    SIGNAL x, y : STD_LOGIC_VECTOR(11 DOWNTO 0);

    SIGNAL fir_data_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL fir_data_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL strb1, strb2 : STD_LOGIC;

    TYPE enumstate IS(idle, read1, read2, tempo);
    SIGNAL state : enumstate;
    SIGNAL den : STD_LOGIC;
    SIGNAL data1, data2 : STD_LOGIC_VECTOR(15 DOWNTO 0);

    SIGNAL tx_data_ready, uart_tx_data_ready, uart_out_data, uart_done, tx_active : STD_LOGIC;
    SIGNAL uart_tx_byte, lsb_tx_byte, msb_tx_byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
    TYPE enumstateUart IS (idle, firstByte, load, waitOnce, secondByte);
    SIGNAL stateUart : enumstateUart := idle;
    SIGNAL uart_tx_data_buffer : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
    adc_data_1 <= "0000" & data1(15 DOWNTO 4);
    adc_data_2 <= "0000" & data2(15 DOWNTO 4);
    adc_data_gpio_1 <= data1(15 DOWNTO 4);
    adc_data_gpio_2 <= data2(15 DOWNTO 4);
    eoc_adc_int <= eoc_out_latched;

    --vauxp7 <= vauxp7;
    --vauxn7 <= vauxn7;
    --vauxp15 <= vauxp15;
    --vauxn15 <= vauxn15;

    Out_D(1) <= D1;
    Out_D(2) <= D2;
    Out_D(3) <= CLK_OUT;
    Out_D(0) <= nSYNC;

    Out_E(0) <= uart_out_data;

    your_xadc_wiz_0 : xadc_wiz_0
    PORT MAP(
        di_in => "0000000000000000",
        daddr_in => daddr_in,
        den_in => den,
        dwe_in => '0',
        drdy_out => drdy,
        do_out => do_out_adc,
        dclk_in => clk,
        reset_in => reset_sync,
        convst_in => convst,
        vp_in => '0',
        vn_in => '0',
        vauxp7 => vauxp7,
        vauxn7 => vauxn7,
        vauxp15 => vauxp15,
        vauxn15 => vauxn15,
        channel_out => channel_out,
        muxaddr_out => OPEN,
        eoc_out => eoc_out,
        alarm_out => OPEN,
        eos_out => OPEN,
        busy_out => OPEN
    );

    your_DA2Component : DA2Component
    PORT MAP(
        CLK => clk,
        RST => reset_sync,
        D1 => D1,
        D2 => D2,
        CLK_OUT => CLK_OUT,
        nSYNC => nSYNC,
        DATA1 => dac_data_1,
        DATA2 => dac_data_2,
        START => start,
        DONE => done
    );

    your_fir_filter1 : fir_compiler_0
    PORT MAP(
        aclk => clk,
        s_axis_data_tvalid => eoc_out_latched,
        s_axis_data_tready => OPEN,
        s_axis_data_tdata => adc_data_1,
        m_axis_data_tvalid => strb1,
        m_axis_data_tdata => fir_data_1
    );

    your_fir_filter2 : fir_compiler_1
    PORT MAP(
        aclk => clk,
        s_axis_data_tvalid => eoc_out_latched,
        s_axis_data_tready => OPEN,
        s_axis_data_tdata => adc_data_2,
        m_axis_data_tvalid => strb2, --strobe1 and strobe2 are in sync
        m_axis_data_tdata => fir_data_2
    );

    your_uart_tx : UART_TX
    PORT MAP(
        i_Clk => clk,
        i_TX_DV => uart_tx_data_ready,
        i_TX_Byte => uart_tx_byte,
        o_TX_Active => tx_active,
        o_TX_Serial => uart_out_data,
        o_TX_Done => uart_done
    );

    PROCESS (clk, btn)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF (btn = '1') THEN
                reset_sync <= '1';
            ELSE
                reset_sync <= '0';
            END IF;
        END IF;
    END PROCESS;

    PROCESS (eoc_out_latched, clk) -- get tx bytes for UART ready
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF eoc_out_latched = '1' THEN
                uart_tx_data_buffer <= "0000" & data1(15 DOWNTO 4);
                -- uart_tx_data_buffer <= "0000111111110000";
                tx_data_ready <= '1';
            ELSE
                tx_data_ready <= '0';
            END IF;
        END IF;
    END PROCESS;

    PROCESS (tx_data_ready, clk, uart_done) -- clock out bytes to UART
    BEGIN
        IF clk'event AND clk = '1' THEN
            CASE stateUart IS
                WHEN idle =>
                    IF tx_data_ready = '1' THEN
                        uart_tx_data_ready <= '1';
                        uart_tx_byte <= uart_tx_data_buffer(7 DOWNTO 0);
                        stateUart <= firstByte;
                    END IF;
                WHEN firstByte =>
                    uart_tx_data_ready <= '0';
                    IF uart_done = '1' THEN
                        stateUart <= load;
                    END IF;
                WHEN waitOnce =>
                    wait_count <= wait_count + 1;
                    IF wait_count = 1 THEN --999 means 100ksps
                        wait_count <= 0;
                        stateUart <= load;
                    END IF;
                WHEN load =>
                    uart_tx_data_ready <= '1';
                    uart_tx_byte <= "0000" & uart_tx_data_buffer (11 DOWNTO 8);
                    stateUart <= secondByte;
                WHEN secondByte =>
                    uart_tx_data_ready <= '0';
                    IF uart_done = '1' THEN
                        stateUart <= idle;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;

    PROCESS (strb1, switch2, clk, btn) -- select LSB or USB and send audio data to DAC
        VARIABLE tempA, tempB : unsigned(15 DOWNTO 0);
        VARIABLE ssb_data : unsigned(31 DOWNTO 0);
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF btn = '1' THEN
                dac_data_1 <= "000000000000";
                dac_data_2 <= "000000000000";
                start <= '0';
            ELSE
                IF switch2 = '0' THEN
                    IF strb1 = '1' THEN
                        tempA := unsigned(fir_data_1);
                        tempB := unsigned(fir_data_2);
                        ssb_data := (2 * tempA) + (2 * tempB);
                        --tempC := ssb_data;
                        dac_data_1 <= STD_LOGIC_VECTOR(ssb_data(12 DOWNTO 1));
                        dac_data_2 <= fir_data_1(11 DOWNTO 0);
                        start <= strb1;
                    ELSE
                        dac_data_1 <= "000000000000";
                        dac_data_2 <= "000000000000";
                        start <= '0';
                    END IF;
                    led2 <= '0';
                ELSE
                    IF strb1 = '1' THEN
                        tempA := unsigned(fir_data_1);
                        tempB := unsigned(fir_data_2);
                        ssb_data := 1023 + (2 * tempA) - (2 * tempB);
                        --tempC := ssb_data;
                        dac_data_1 <= STD_LOGIC_VECTOR(ssb_data(12 DOWNTO 1));
                        dac_data_2 <= fir_data_2(11 DOWNTO 0);
                        start <= strb1;
                    ELSE
                        dac_data_1 <= "000000000000";
                        dac_data_2 <= "000000000000";
                        start <= '0';
                    END IF;
                    led2 <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    PROCESS (clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF switch1 = '0' THEN
                -- whatever
                led1 <= '0';
            ELSE
                -- whatever
                led1 <= '1';
            END IF;
        END IF;
    END PROCESS;

    PROCESS (clk) --read out ADC data 
    BEGIN
        IF clk'event AND clk = '1' THEN
            CASE state IS
                WHEN idle => -- waiting for eoc
                    den <= '0';
                    eoc_out_latched <= '0';
                    daddr_in <= "0010111"; -- Vaux7
                    IF eoc_out = '1' THEN
                        state <= read1; -- read the first data
                        den <= '1';
                    END IF;
                WHEN read1 =>
                    den <= '0';
                    IF drdy = '1' THEN
                        data1 <= do_out_adc;
                        daddr_in <= "0011111"; -- vaux15
                        state <= tempo;
                    END IF;
                    IF eoc_out = '1' THEN -- normally it never happens
                        state <= idle; -- but better to put it
                    END IF;
                WHEN tempo =>
                    den <= '1';
                    state <= read2;
                WHEN read2 =>
                    IF drdy = '1' THEN
                        data2 <= do_out_adc;
                        state <= idle;
                        eoc_out_latched <= '1';
                    END IF;
            END CASE;
        END IF;
    END PROCESS;

    PROCESS (clk) -- generate clk for sampling rate ADC 
    BEGIN
        IF clk'event AND clk = '1' THEN
            samplerate_count <= samplerate_count + 1;
            convst <= '0';
            IF samplerate_count = 999 THEN --999 means 100ksps
                samplerate_count <= 0;
                convst <= '1';
            END IF;
        END IF;
    END PROCESS;
END Behavioral;