-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/08/2024 20:59:58"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Divider_4bit IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	GClock : IN std_logic;
	GReset : IN std_logic;
	Sum : OUT std_logic_vector(7 DOWNTO 0);
	CarryOut : OUT std_logic;
	zeroOut : OUT std_logic;
	OverFlowOut : OUT std_logic
	);
END Divider_4bit;

-- Design Ports Information
-- GReset	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CarryOut	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zeroOut	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OverFlowOut	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divider_4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_Sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CarryOut : std_logic;
SIGNAL ww_zeroOut : std_logic;
SIGNAL ww_OverFlowOut : std_logic;
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \Sum[0]~output_o\ : std_logic;
SIGNAL \Sum[1]~output_o\ : std_logic;
SIGNAL \Sum[2]~output_o\ : std_logic;
SIGNAL \Sum[3]~output_o\ : std_logic;
SIGNAL \Sum[4]~output_o\ : std_logic;
SIGNAL \Sum[5]~output_o\ : std_logic;
SIGNAL \Sum[6]~output_o\ : std_logic;
SIGNAL \Sum[7]~output_o\ : std_logic;
SIGNAL \CarryOut~output_o\ : std_logic;
SIGNAL \zeroOut~output_o\ : std_logic;
SIGNAL \OverFlowOut~output_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_selB|d_out[0]~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_selA|d_out[1]~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_selA|d_out[0]~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_selB|d_out[1]~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|transitorySignal[1]~4_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_selB|d_out[2]~2_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|transitorySignal[2]~6_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|transitoryC[2]~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_selA|d_out[2]~2_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|transitorySignal[3]~5_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|masterLatch|int_q~3_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|masterLatch|int_q~4_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\ : std_logic;
SIGNAL \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|transitoryC~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[0]~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[0]~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[1]~2_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[1]~3_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[2]~4_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[2]~5_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[3]~6_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \mux_2to1_4bit_Remainder|d_out[3]~7_combout\ : std_logic;
SIGNAL \CLA_4bit_inst1|transitorySignal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLA_4bit_inst2|transitorySignal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter_4bit_inst|CLA_4bit_inst|transitorySignal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLA_4bit_inst0|transitorySignal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mux_2to1_4bit_selA|and2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_GClock <= GClock;
ww_GReset <= GReset;
Sum <= ww_Sum;
CarryOut <= ww_CarryOut;
zeroOut <= ww_zeroOut;
OverFlowOut <= ww_OverFlowOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\;
\counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\;
\counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\;
\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\;

-- Location: IOOBUF_X5_Y0_N16
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_4bit_Remainder|d_out[0]~1_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_4bit_Remainder|d_out[1]~3_combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\Sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_4bit_Remainder|d_out[2]~5_combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2to1_4bit_Remainder|d_out[3]~7_combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\CarryOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CarryOut~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\zeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \zeroOut~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\OverFlowOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OverFlowOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y0_N22
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X11_Y1_N20
\CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & ((!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \b[0]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N18
\CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N30
\mux_2to1_4bit_selB|d_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selB|d_out[0]~0_combout\ = (\b[3]~input_o\ & ((!\CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))) # (!\b[3]~input_o\ & (\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \b[0]~input_o\,
	datad => \CLA_4bit_inst1|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selB|d_out[0]~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X12_Y1_N20
\CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\a[0]~input_o\ $ 
-- (((!\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \a[1]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N28
\CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N2
\mux_2to1_4bit_selA|d_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selA|d_out[1]~1_combout\ = (\a[3]~input_o\ & ((!\CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))) # (!\a[3]~input_o\ & (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \CLA_4bit_inst0|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selA|d_out[1]~1_combout\);

-- Location: LCCOMB_X11_Y1_N26
\CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & ((!\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \a[0]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N18
\CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N8
\mux_2to1_4bit_selA|d_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selA|d_out[0]~0_combout\ = (\a[3]~input_o\ & ((!\CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))) # (!\a[3]~input_o\ & (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \CLA_4bit_inst0|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selA|d_out[0]~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X9_Y1_N14
\CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\b[0]~input_o\ $ 
-- (((!\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \b[1]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N16
\CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N20
\mux_2to1_4bit_selB|d_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selB|d_out[1]~1_combout\ = (\b[3]~input_o\ & ((!\CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))) # (!\b[3]~input_o\ & (\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \b[1]~input_o\,
	datad => \CLA_4bit_inst1|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selB|d_out[1]~1_combout\);

-- Location: LCCOMB_X9_Y1_N4
\CLA_4bit_inst2|transitorySignal[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|transitorySignal[1]~4_combout\ = \mux_2to1_4bit_selA|d_out[1]~1_combout\ $ (\mux_2to1_4bit_selB|d_out[1]~1_combout\ $ (((\mux_2to1_4bit_selA|d_out[0]~0_combout\) # (!\mux_2to1_4bit_selB|d_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_4bit_selB|d_out[0]~0_combout\,
	datab => \mux_2to1_4bit_selA|d_out[1]~1_combout\,
	datac => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datad => \mux_2to1_4bit_selB|d_out[1]~1_combout\,
	combout => \CLA_4bit_inst2|transitorySignal[1]~4_combout\);

-- Location: LCCOMB_X9_Y1_N30
\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_4bit_inst2|transitorySignal[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst2|transitorySignal[1]~4_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N16
\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N22
\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\mux_2to1_4bit_selA|d_out[0]~0_combout\ $ (!\mux_2to1_4bit_selB|d_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datac => \mux_2to1_4bit_selB|d_out[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N6
\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N26
\Comparator_4bit_inst|dff_inst|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|masterLatch|int_q~0_combout\ = (\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\mux_2to1_4bit_selB|d_out[1]~1_combout\ & ((!\mux_2to1_4bit_selB|d_out[0]~0_combout\) # 
-- (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))) # (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (((!\mux_2to1_4bit_selB|d_out[1]~1_combout\) # (!\mux_2to1_4bit_selB|d_out[0]~0_combout\)) # 
-- (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \mux_2to1_4bit_selB|d_out[0]~0_combout\,
	datad => \mux_2to1_4bit_selB|d_out[1]~1_combout\,
	combout => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~0_combout\);

-- Location: IOIBUF_X11_Y0_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X12_Y1_N2
\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (!\GClock~input_o\ & (\a[2]~input_o\ $ (((\a[1]~input_o\) # (\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \GClock~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X12_Y1_N8
\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\ = (!\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ & ((\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\) # (!\GClock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \GClock~input_o\,
	datad => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X11_Y1_N6
\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X13_Y0_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X12_Y1_N22
\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (!\GClock~input_o\ & (\b[2]~input_o\ $ (((\b[1]~input_o\) # (\b[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \GClock~input_o\,
	datad => \b[2]~input_o\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X12_Y1_N12
\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\ = (!\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ & ((\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\) # (!\GClock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \GClock~input_o\,
	datad => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X11_Y1_N10
\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N0
\mux_2to1_4bit_selB|d_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selB|d_out[2]~2_combout\ = (\b[3]~input_o\ & ((!\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))) # (!\b[3]~input_o\ & (\b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[3]~input_o\,
	datad => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selB|d_out[2]~2_combout\);

-- Location: LCCOMB_X11_Y1_N22
\CLA_4bit_inst2|transitorySignal[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|transitorySignal[2]~6_combout\ = \mux_2to1_4bit_selB|d_out[2]~2_combout\ $ (((\a[3]~input_o\ & (!\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)) # (!\a[3]~input_o\ & ((\a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datab => \a[2]~input_o\,
	datac => \a[3]~input_o\,
	datad => \mux_2to1_4bit_selB|d_out[2]~2_combout\,
	combout => \CLA_4bit_inst2|transitorySignal[2]~6_combout\);

-- Location: LCCOMB_X10_Y1_N14
\CLA_4bit_inst2|transitoryC[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|transitoryC[2]~0_combout\ = (\mux_2to1_4bit_selB|d_out[1]~1_combout\ & (\mux_2to1_4bit_selA|d_out[1]~1_combout\ & ((\mux_2to1_4bit_selA|d_out[0]~0_combout\) # (!\mux_2to1_4bit_selB|d_out[0]~0_combout\)))) # 
-- (!\mux_2to1_4bit_selB|d_out[1]~1_combout\ & (((\mux_2to1_4bit_selA|d_out[0]~0_combout\) # (\mux_2to1_4bit_selA|d_out[1]~1_combout\)) # (!\mux_2to1_4bit_selB|d_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_4bit_selB|d_out[0]~0_combout\,
	datab => \mux_2to1_4bit_selB|d_out[1]~1_combout\,
	datac => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datad => \mux_2to1_4bit_selA|d_out[1]~1_combout\,
	combout => \CLA_4bit_inst2|transitoryC[2]~0_combout\);

-- Location: LCCOMB_X11_Y1_N30
\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst2|transitorySignal[2]~6_combout\ $ (((\CLA_4bit_inst2|transitoryC[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|transitorySignal[2]~6_combout\,
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_4bit_inst2|transitoryC[2]~0_combout\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N12
\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N4
\mux_2to1_4bit_selA|d_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selA|d_out[2]~2_combout\ = (\a[3]~input_o\ & ((!\CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))) # (!\a[3]~input_o\ & (\a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \a[3]~input_o\,
	datad => \CLA_4bit_inst0|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selA|d_out[2]~2_combout\);

-- Location: LCCOMB_X11_Y1_N14
\CLA_4bit_inst1|transitorySignal[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|transitorySignal\(3) = \b[3]~input_o\ $ (((\b[2]~input_o\) # ((\b[1]~input_o\) # (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[3]~input_o\,
	combout => \CLA_4bit_inst1|transitorySignal\(3));

-- Location: LCCOMB_X11_Y1_N24
\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((!\CLA_4bit_inst1|transitorySignal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst1|transitorySignal\(3),
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N6
\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N16
\CLA_4bit_inst0|transitorySignal[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|transitorySignal\(3) = \a[3]~input_o\ $ (((\a[1]~input_o\) # ((\a[0]~input_o\) # (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[2]~input_o\,
	combout => \CLA_4bit_inst0|transitorySignal\(3));

-- Location: LCCOMB_X9_Y1_N26
\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (!\CLA_4bit_inst0|transitorySignal\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|transitorySignal\(3),
	datac => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N12
\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N0
\CLA_4bit_inst2|transitorySignal[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|transitorySignal[3]~5_combout\ = (\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (((\a[3]~input_o\ & !\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))) # 
-- (!\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (\b[3]~input_o\ $ (((\a[3]~input_o\ & !\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_4bit_inst2|transitorySignal[3]~5_combout\);

-- Location: LCCOMB_X10_Y1_N22
\CLA_4bit_inst2|transitorySignal[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|transitorySignal\(3) = \CLA_4bit_inst2|transitorySignal[3]~5_combout\ $ (((\mux_2to1_4bit_selA|d_out[2]~2_combout\ & ((\CLA_4bit_inst2|transitoryC[2]~0_combout\) # (!\mux_2to1_4bit_selB|d_out[2]~2_combout\))) # 
-- (!\mux_2to1_4bit_selA|d_out[2]~2_combout\ & (!\mux_2to1_4bit_selB|d_out[2]~2_combout\ & \CLA_4bit_inst2|transitoryC[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_4bit_selA|d_out[2]~2_combout\,
	datab => \mux_2to1_4bit_selB|d_out[2]~2_combout\,
	datac => \CLA_4bit_inst2|transitoryC[2]~0_combout\,
	datad => \CLA_4bit_inst2|transitorySignal[3]~5_combout\,
	combout => \CLA_4bit_inst2|transitorySignal\(3));

-- Location: LCCOMB_X10_Y1_N8
\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_4bit_inst2|transitorySignal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst2|transitorySignal\(3),
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N24
\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N28
\Comparator_4bit_inst|dff_inst|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\ = (\b[3]~input_o\ & ((\CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))) # (!\b[3]~input_o\ & (\b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \b[2]~input_o\,
	datad => \CLA_4bit_inst1|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X10_Y1_N4
\Comparator_4bit_inst|dff_inst|masterLatch|int_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|masterLatch|int_q~3_combout\ = (\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (\b[3]~input_o\ $ 
-- (\Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\)))) # (!\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\ & 
-- ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))) # (!\Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\ & (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\,
	combout => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~3_combout\);

-- Location: LCCOMB_X10_Y1_N10
\Comparator_4bit_inst|dff_inst|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|masterLatch|int_q~2_combout\ = (\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (((\b[3]~input_o\ & \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)) # 
-- (!\Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\))) # (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (\b[3]~input_o\ & (\CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- !\Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst1|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~1_combout\,
	combout => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X10_Y1_N2
\Comparator_4bit_inst|dff_inst|masterLatch|int_q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|masterLatch|int_q~4_combout\ = (\Comparator_4bit_inst|dff_inst|masterLatch|int_q~0_combout\ & (\Comparator_4bit_inst|dff_inst|masterLatch|int_q~3_combout\ & 
-- ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\) # (\Comparator_4bit_inst|dff_inst|masterLatch|int_q~2_combout\)))) # (!\Comparator_4bit_inst|dff_inst|masterLatch|int_q~0_combout\ & 
-- ((\Comparator_4bit_inst|dff_inst|masterLatch|int_q~3_combout\) # ((\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & \Comparator_4bit_inst|dff_inst|masterLatch|int_q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~0_combout\,
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~3_combout\,
	datad => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~2_combout\,
	combout => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~4_combout\);

-- Location: LCCOMB_X10_Y1_N12
\Comparator_4bit_inst|dff_inst|masterLatch|int_q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\Comparator_4bit_inst|dff_inst|masterLatch|int_q~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~4_combout\,
	combout => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\);

-- Location: LCCOMB_X9_Y1_N24
\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \Comparator_4bit_inst|dff_inst|masterLatch|int_q~5_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N14
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ ((!\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N12
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N22
\counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\) # ((\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N0
\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N16
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (!\GClock~input_o\ & (\counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ 
-- (((\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\) # (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~input_o\,
	datad => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N18
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\ = (!\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ & 
-- ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\) # (!\GClock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\,
	datac => \GClock~input_o\,
	datad => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X5_Y1_N2
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N4
\counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\) # ((\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N10
\counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N20
\counter_4bit_inst|CLA_4bit_inst|transitorySignal[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|transitorySignal\(2) = \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (((\counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\) # 
-- ((\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\) # (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	combout => \counter_4bit_inst|CLA_4bit_inst|transitorySignal\(2));

-- Location: LCCOMB_X5_Y1_N30
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (!\counter_4bit_inst|CLA_4bit_inst|transitorySignal\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|CLA_4bit_inst|transitorySignal\(2),
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N24
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N26
\counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (((\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\) # (\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N28
\counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y1_N8
\counter_4bit_inst|CLA_4bit_inst|transitoryC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|transitoryC~0_combout\ = (\counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\) # ((\counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\) # 
-- ((\counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\) # (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	combout => \counter_4bit_inst|CLA_4bit_inst|transitoryC~0_combout\);

-- Location: LCCOMB_X5_Y1_N6
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (!\counter_4bit_inst|CLA_4bit_inst|transitoryC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|transitoryC~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y1_N0
\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y1_N26
\counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (((\counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\) # (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datab => \counter_4bit_inst|CLA_4bit_inst|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y1_N24
\counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \counter_4bit_inst|register_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \counter_4bit_inst|register_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y1_N30
\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((!\mux_2to1_4bit_selA|d_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y1_N12
\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N28
\mux_2to1_4bit_Remainder|d_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[0]~0_combout\ = (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & ((\mux_2to1_4bit_selA|d_out[0]~0_combout\))) # (!\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & 
-- (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst2|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datad => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_Remainder|d_out[0]~0_combout\);

-- Location: LCCOMB_X8_Y1_N28
\mux_2to1_4bit_Remainder|d_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[0]~1_combout\ = (\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (\mux_2to1_4bit_Remainder|d_out[0]~0_combout\ & (\b[3]~input_o\ $ (!\a[3]~input_o\)))) # 
-- (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\mux_2to1_4bit_Remainder|d_out[0]~0_combout\) # (\b[3]~input_o\ $ (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst3|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datab => \b[3]~input_o\,
	datac => \mux_2to1_4bit_Remainder|d_out[0]~0_combout\,
	datad => \a[3]~input_o\,
	combout => \mux_2to1_4bit_Remainder|d_out[0]~1_combout\);

-- Location: LCCOMB_X9_Y1_N8
\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\mux_2to1_4bit_selA|d_out[1]~1_combout\ $ (!\mux_2to1_4bit_selA|d_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \mux_2to1_4bit_selA|d_out[1]~1_combout\,
	datac => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N18
\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y1_N10
\mux_2to1_4bit_Remainder|d_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[1]~2_combout\ = (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & ((\mux_2to1_4bit_selA|d_out[1]~1_combout\))) # (!\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & 
-- (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst2|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \mux_2to1_4bit_selA|d_out[1]~1_combout\,
	datad => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_Remainder|d_out[1]~2_combout\);

-- Location: LCCOMB_X9_Y1_N20
\mux_2to1_4bit_Remainder|d_out[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[1]~3_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & ((\mux_2to1_4bit_Remainder|d_out[1]~2_combout\))) # (!\a[3]~input_o\ & (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))) # (!\b[3]~input_o\ & 
-- ((\a[3]~input_o\ & (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)) # (!\a[3]~input_o\ & ((\mux_2to1_4bit_Remainder|d_out[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \CLA_4bit_inst3|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \mux_2to1_4bit_Remainder|d_out[1]~2_combout\,
	combout => \mux_2to1_4bit_Remainder|d_out[1]~3_combout\);

-- Location: LCCOMB_X8_Y1_N10
\mux_2to1_4bit_Remainder|d_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[2]~4_combout\ = (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & ((\mux_2to1_4bit_selA|d_out[2]~2_combout\))) # (!\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & 
-- (!\CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst2|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \mux_2to1_4bit_selA|d_out[2]~2_combout\,
	combout => \mux_2to1_4bit_Remainder|d_out[2]~4_combout\);

-- Location: LCCOMB_X8_Y1_N0
\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (!\GClock~input_o\ & (\mux_2to1_4bit_selA|d_out[2]~2_combout\ $ (((\mux_2to1_4bit_selA|d_out[0]~0_combout\) # (\mux_2to1_4bit_selA|d_out[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datab => \mux_2to1_4bit_selA|d_out[1]~1_combout\,
	datac => \GClock~input_o\,
	datad => \mux_2to1_4bit_selA|d_out[2]~2_combout\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y1_N18
\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\ = (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ & ((\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\) # (!\GClock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \GClock~input_o\,
	datad => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X8_Y1_N26
\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|masterLatch|int_q~1_combout\,
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y1_N20
\mux_2to1_4bit_Remainder|d_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[2]~5_combout\ = (\mux_2to1_4bit_Remainder|d_out[2]~4_combout\ & ((\a[3]~input_o\ $ (!\b[3]~input_o\)) # (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))) # 
-- (!\mux_2to1_4bit_Remainder|d_out[2]~4_combout\ & (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (\a[3]~input_o\ $ (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_4bit_Remainder|d_out[2]~4_combout\,
	datab => \a[3]~input_o\,
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \b[3]~input_o\,
	combout => \mux_2to1_4bit_Remainder|d_out[2]~5_combout\);

-- Location: LCCOMB_X9_Y1_N2
\mux_2to1_4bit_Remainder|d_out[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[3]~6_combout\ = (\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & (!\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (\a[3]~input_o\))) # 
-- (!\Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\ & (((!\CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datab => \Comparator_4bit_inst|dff_inst|slaveLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \CLA_4bit_inst2|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_Remainder|d_out[3]~6_combout\);

-- Location: LCCOMB_X9_Y1_N0
\mux_2to1_4bit_selA|and2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_selA|and2\(3) = (\a[3]~input_o\ & !\CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[3]~input_o\,
	datad => \CLA_4bit_inst0|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \mux_2to1_4bit_selA|and2\(3));

-- Location: LCCOMB_X8_Y1_N4
\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (!\mux_2to1_4bit_selA|d_out[1]~1_combout\ & (!\mux_2to1_4bit_selA|d_out[0]~0_combout\ & !\mux_2to1_4bit_selA|d_out[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_2to1_4bit_selA|d_out[1]~1_combout\,
	datac => \mux_2to1_4bit_selA|d_out[0]~0_combout\,
	datad => \mux_2to1_4bit_selA|d_out[2]~2_combout\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y1_N22
\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\mux_2to1_4bit_selA|and2\(3) $ (\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\,
	datab => \mux_2to1_4bit_selA|and2\(3),
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X8_Y1_N8
\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|masterLatch|int_q~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y1_N2
\mux_2to1_4bit_Remainder|d_out[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2to1_4bit_Remainder|d_out[3]~7_combout\ = (\mux_2to1_4bit_Remainder|d_out[3]~6_combout\ & ((\a[3]~input_o\ $ (!\b[3]~input_o\)) # (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))) # 
-- (!\mux_2to1_4bit_Remainder|d_out[3]~6_combout\ & (!\CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (\a[3]~input_o\ $ (\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2to1_4bit_Remainder|d_out[3]~6_combout\,
	datab => \a[3]~input_o\,
	datac => \CLA_4bit_inst3|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \b[3]~input_o\,
	combout => \mux_2to1_4bit_Remainder|d_out[3]~7_combout\);

-- Location: IOIBUF_X42_Y73_N8
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

ww_Sum(0) <= \Sum[0]~output_o\;

ww_Sum(1) <= \Sum[1]~output_o\;

ww_Sum(2) <= \Sum[2]~output_o\;

ww_Sum(3) <= \Sum[3]~output_o\;

ww_Sum(4) <= \Sum[4]~output_o\;

ww_Sum(5) <= \Sum[5]~output_o\;

ww_Sum(6) <= \Sum[6]~output_o\;

ww_Sum(7) <= \Sum[7]~output_o\;

ww_CarryOut <= \CarryOut~output_o\;

ww_zeroOut <= \zeroOut~output_o\;

ww_OverFlowOut <= \OverFlowOut~output_o\;
END structure;


