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

-- DATE "10/08/2024 00:57:51"

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

ENTITY 	Multiplier_4bit IS
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
END Multiplier_4bit;

-- Design Ports Information
-- GReset	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CarryOut	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zeroOut	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OverFlowOut	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multiplier_4bit IS
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
SIGNAL \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[1]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[2]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[0]~1_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~1_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[3]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[3]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[0]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[1]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[2]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[3]~1_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[3]~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[3]~3_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \zeroOut~0_combout\ : std_logic;
SIGNAL \zeroOut~1_combout\ : std_logic;
SIGNAL \zeroOut~2_combout\ : std_logic;
SIGNAL \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal\ : std_logic_vector(7 DOWNTO 0);
SIGNAL shiftedProduct0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;

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
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\;
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\;

-- Location: IOOBUF_X0_Y44_N23
\Sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[0]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\Sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\Sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\Sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\Sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\Sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \Sum[7]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\CarryOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0_combout\,
	devoe => ww_devoe,
	o => \CarryOut~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\zeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zeroOut~2_combout\,
	devoe => ww_devoe,
	o => \zeroOut~output_o\);

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: LCCOMB_X4_Y36_N10
\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X4_Y36_N2
\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y36_N0
\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X4_Y36_N24
\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y36_N12
\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X5_Y36_N2
\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X0_Y46_N22
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X6_Y44_N18
\lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[3]~input_o\)) # 
-- (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N6
\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X0_Y42_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X10_Y43_N26
\lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[3]~input_o\)) # 
-- (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N0
\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X0_Y46_N15
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X9_Y43_N0
\shiftedProduct0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- shiftedProduct0(6) = (\a[3]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => shiftedProduct0(6));

-- Location: LCCOMB_X10_Y43_N20
\lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[3]~input_o\)) # 
-- (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N26
\lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X0_Y44_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X9_Y43_N20
\lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[0]~input_o\)) # 
-- (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \a[0]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N14
\lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y43_N8
\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X7_Y43_N30
\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y43_N24
\CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0_combout\ = (\b[0]~input_o\ & (!\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \a[0]~input_o\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X7_Y43_N26
\CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\ = (\lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (\b[0]~input_o\ & (\a[1]~input_o\ & \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0_combout\))) # 
-- (!\lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0_combout\) # ((\b[0]~input_o\ & \a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X9_Y43_N14
\lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[1]~input_o\)) # 
-- (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \a[1]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N16
\lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y43_N12
\CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\ = (\CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\ & (((\b[0]~input_o\ & \a[2]~input_o\)) # (!\lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))) # 
-- (!\CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\ & (\b[0]~input_o\ & (\a[2]~input_o\ & !\lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[2]~input_o\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\,
	datad => \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X9_Y43_N22
\CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal\(1) = \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ $ (((\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & (shiftedProduct0(6) & 
-- !\CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\)) # (!\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & (!shiftedProduct0(6) & \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datab => shiftedProduct0(6),
	datac => \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal\(1));

-- Location: LCCOMB_X10_Y43_N28
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst1|CLA_4bit_upper|transitorySignal\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal\(1),
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N16
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y43_N6
\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\ = \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\ $ (((\a[3]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\,
	datad => \b[0]~input_o\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\);

-- Location: LCCOMB_X9_Y43_N4
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\ $ (((\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\,
	datab => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N8
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y43_N10
\lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[2]~input_o\) # (!\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N30
\lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y43_N28
\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[2]~2_combout\ = \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (((\a[2]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit1|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \a[2]~input_o\,
	datad => \b[0]~input_o\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X9_Y43_N30
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[2]~2_combout\ $ (\CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[2]~2_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|transitoryC[2]~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N28
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y43_N2
\lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[2]~input_o\)) # 
-- (!\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \b[2]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N10
\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y43_N12
\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[1]~3_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ (((\a[0]~input_o\ & !\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \b[0]~input_o\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[1]~3_combout\);

-- Location: LCCOMB_X8_Y43_N4
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ ((\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit1|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[1]~3_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N6
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N18
\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ = (\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X8_Y43_N12
\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N14
\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y43_N20
\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N16
\lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[1]~input_o\)) # 
-- (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datac => \b[1]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N0
\lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y43_N6
\CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\ = (shiftedProduct0(6) & (((\CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\) # (!\lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)) # 
-- (!\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))) # (!shiftedProduct0(6) & (!\lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & (!\lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shiftedProduct0(6),
	datab => \lshift_8bit1|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst1|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\);

-- Location: LCCOMB_X7_Y43_N14
\CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\ = (\lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (\b[0]~input_o\ & (\a[3]~input_o\ & \CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\))) # 
-- (!\lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\) # ((\b[0]~input_o\ & \a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[3]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\);

-- Location: LCCOMB_X9_Y43_N24
\shiftedProduct0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- shiftedProduct0(0) = (\a[0]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => shiftedProduct0(0));

-- Location: LCCOMB_X9_Y43_N18
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((shiftedProduct0(0) $ (\lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => shiftedProduct0(0),
	datac => \lshift_8bit1|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N22
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y43_N20
\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\ = (\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\ & 
-- !\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)) # (!\lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\) # 
-- (!\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\,
	datad => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X7_Y43_N18
\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0_combout\ = (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\) # 
-- (!\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\))) # (!\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- !\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X7_Y43_N28
\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1_combout\ = (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\) # 
-- (\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0_combout\))) # (!\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1_combout\);

-- Location: LCCOMB_X7_Y43_N10
\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\ = (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & 
-- !\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1_combout\)) # (!\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((!\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1_combout\) # 
-- (!\lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~1_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\);

-- Location: LCCOMB_X6_Y44_N16
\lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[3]~input_o\)) # 
-- (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N2
\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N2
\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\ = (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\ & 
-- !\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)) # (!\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\) # 
-- (!\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\,
	datad => \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\);

-- Location: LCCOMB_X9_Y43_N26
\CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[2]~0_combout\ = \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ $ (((\a[3]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datad => \b[0]~input_o\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[2]~0_combout\);

-- Location: LCCOMB_X9_Y43_N8
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\ $ (((\CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|transitoryC[2]~0_combout\,
	datab => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[2]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N20
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N20
\CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\ = (\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\ & 
-- !\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)) # (!\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\) # 
-- (!\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y43_N28
\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[0]~0_combout\ = \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X2_Y43_N14
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\ $ ((!\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[0]~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N18
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N20
\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y43_N12
\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N22
\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[0]~0_combout\ = \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X2_Y43_N4
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\ $ (((!\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N10
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N30
\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[0]~0_combout\ = \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[0]~0_combout\);

-- Location: IOIBUF_X0_Y45_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X6_Y42_N30
\lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[3]~input_o\)) # 
-- (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datac => \b[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N12
\lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N4
\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[2]~2_combout\ = \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X6_Y44_N30
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\ $ (!\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[2]~3_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[2]~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N14
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N8
\lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[3]~input_o\)) # 
-- (!\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datac => \b[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N20
\lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N10
\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[1]~1_combout\ = \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X6_Y44_N24
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[1]~1_combout\ $ (((!\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[1]~1_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N22
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y43_N0
\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\ = (\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\)) # (!\lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X11_Y43_N10
\CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\ = (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\)) # (!\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\) # 
-- (!\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X8_Y43_N2
\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[0]~0_combout\ = \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit2|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X10_Y43_N10
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\ $ (!\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N18
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N22
\lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[3]~input_o\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datab => \a[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N12
\lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y36_N10
\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ = (\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X5_Y36_N16
\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y43_N22
\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[2]~2_combout\ = \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X11_Y43_N4
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[2]~2_combout\ $ ((!\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[2]~2_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[2]~1_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N12
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y43_N12
\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[1]~1_combout\ = \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X11_Y43_N6
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\ $ (((!\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_lower|transitoryC[1]~0_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[1]~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X8_Y43_N24
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y36_N2
\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ = (\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X7_Y36_N0
\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y43_N16
\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0_combout\ = (\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\) # 
-- (!\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\))) # (!\lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- !\CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_upper|transitoryC[1]~2_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X7_Y43_N22
\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1_combout\ = (\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\) # 
-- (\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0_combout\))) # (!\lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1_combout\);

-- Location: LCCOMB_X7_Y43_N0
\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\ = (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- !\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1_combout\)) # (!\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((!\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1_combout\) # 
-- (!\lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit3|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~1_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\);

-- Location: LCCOMB_X7_Y43_N2
\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\ = (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\)) # (!\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\) # 
-- (!\lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\);

-- Location: LCCOMB_X7_Y43_N4
\CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\ = (\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\)) # (!\lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\) # 
-- (!\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X6_Y43_N24
\CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\ = (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\)) # (!\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\) # 
-- (!\lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X6_Y43_N10
\CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\ = (\lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\)) # (!\lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X6_Y43_N28
\CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\ = (\lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\)) # (!\lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\) # 
-- (!\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y42_N20
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[0]~0_combout\ $ (((!\CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[0]~0_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y42_N0
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N10
\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\ = (\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y43_N0
\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y42_N22
\CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[0]~0_combout\ = \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X2_Y42_N6
\lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[2]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y42_N14
\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N4
\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[2]~2_combout\ = \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit3|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X6_Y43_N26
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\ $ (((!\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[2]~1_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[2]~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N0
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N4
\lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[1]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[1]~input_o\,
	datac => \lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N14
\lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y43_N8
\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[1]~1_combout\ = \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit3|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X6_Y43_N30
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[1]~1_combout\ $ (((!\CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[1]~1_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|transitoryC[1]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N28
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N10
\lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[0]~input_o\) # (!\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datab => \b[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N8
\lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst4|masterLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N20
\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[0]~0_combout\ = \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X6_Y42_N10
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\ $ (!\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N2
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y36_N20
\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ = (\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N14
\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N0
\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[2]~2_combout\ = \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X10_Y43_N30
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\ $ ((!\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[2]~3_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[2]~2_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N2
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y36_N6
\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ = (\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X5_Y36_N0
\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X7_Y44_N0
\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[1]~1_combout\ = \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit3|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X7_Y44_N6
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[1]~1_combout\ $ (!\CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[1]~1_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|transitoryC[1]~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N28
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y43_N16
\CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\ = (\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\)) # (!\lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\) # 
-- (!\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X5_Y43_N6
\CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\ = (\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\)) # (!\lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X5_Y43_N0
\CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\ = (\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\)) # (!\lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\) # 
-- (!\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X5_Y43_N14
\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\ = (\lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\)) # (!\lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\) # 
-- (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X5_Y43_N28
\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\ = (\lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\)) # (!\lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X1_Y42_N4
\CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\ = (\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\)) # (!\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\) # 
-- (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\);

-- Location: LCCOMB_X1_Y42_N28
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[0]~0_combout\ $ (((!\CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[0]~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N8
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N20
\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[0]~1_combout\ = \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[0]~1_combout\);

-- Location: LCCOMB_X5_Y44_N22
\lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[1]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[1]~input_o\,
	datac => \lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N0
\lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit5|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y42_N12
\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[2]~2_combout\ = \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X1_Y42_N2
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\ $ (((!\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[2]~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N10
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N28
\lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[0]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datac => \a[0]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y43_N22
\lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst5|masterLatch|int_q~0_combout\,
	datab => \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N18
\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[1]~1_combout\ = \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X5_Y42_N26
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[1]~1_combout\ $ (!\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[1]~1_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[1]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N12
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N16
\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[0]~0_combout\ = \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X2_Y42_N8
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\ $ (((!\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[0]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N0
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N16
\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\ = (\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N0
\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N10
\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[2]~2_combout\ = \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit4|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X5_Y44_N20
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[2]~2_combout\ $ ((!\CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[2]~2_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[2]~1_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y44_N28
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y36_N2
\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ = (\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N12
\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N20
\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[1]~1_combout\ = \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X5_Y42_N30
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[1]~1_combout\ $ (!\CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[1]~1_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|transitoryC[1]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N18
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N2
\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ = (\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N22
\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N16
\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0_combout\ = (!\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & !\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X1_Y43_N18
\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~1_combout\ = (!\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\) # (!\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~1_combout\);

-- Location: LCCOMB_X5_Y43_N18
\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\ = (\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~1_combout\ & ((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- (!\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\)) # (!\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\) # (!\lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~1_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_upper|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\);

-- Location: LCCOMB_X5_Y43_N12
\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\ = (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0_combout\) # (\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\)))) # (!\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- (((\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0_combout\) # (\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\)) # (!\lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\);

-- Location: LCCOMB_X5_Y43_N10
\CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\ = (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\)) # (!\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\) # 
-- (!\lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X5_Y43_N20
\CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\ = (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\)) # (!\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\) # 
-- (!\lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X5_Y43_N2
\CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\ = (\lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\)) # (!\lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X5_Y43_N4
\CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\ = (\lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\)) # (!\lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\) # 
-- (!\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y42_N30
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[0]~1_combout\ $ (!\CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[0]~1_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N18
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N24
\CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[0]~0_combout\ = \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X4_Y42_N26
\lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[0]~input_o\) # (!\b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datab => \b[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N14
\lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit6|dff_inst|dff_inst6|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N28
\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[2]~2_combout\ = \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit5|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X5_Y43_N30
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[2]~2_combout\ $ (!\CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[2]~2_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[2]~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N16
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N24
\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[1]~1_combout\ = \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit5|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X5_Y43_N24
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[1]~1_combout\ $ (((!\CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[1]~1_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|transitoryC[1]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N8
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y36_N6
\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\ = (\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N24
\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y36_N26
\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\ = (\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\,
	datac => \GClock~input_o\,
	combout => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N16
\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N22
\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[0]~0_combout\ = \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X2_Y43_N8
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[0]~0_combout\ $ (((!\CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[0]~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N26
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N16
\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0_combout\ = (!\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & !\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X3_Y42_N30
\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~1_combout\ = (!\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\) # (!\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~1_combout\);

-- Location: LCCOMB_X3_Y36_N28
\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ = (\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N30
\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y44_N0
\CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[2]~1_combout\ = \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit5|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[2]~1_combout\);

-- Location: LCCOMB_X4_Y44_N26
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[2]~1_combout\ $ (!\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[2]~1_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[2]~3_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y44_N30
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N10
\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ = (\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N26
\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N26
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\ = \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (((\CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\) # 
-- ((!\lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & !\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit5|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|transitoryC[1]~2_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\);

-- Location: LCCOMB_X1_Y43_N8
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (((!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X1_Y43_N2
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y43_N12
\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\ = (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\)) # (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\) # 
-- (!\lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit6|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X4_Y43_N2
\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\ = (\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\)) # (!\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X4_Y43_N24
\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\ = (\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~1_combout\ & ((\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\)) # (!\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\) # (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~1_combout\,
	datab => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\);

-- Location: LCCOMB_X4_Y43_N10
\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\ = (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & (!\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0_combout\) # (\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\)))) # (!\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- (((\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0_combout\) # (\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\)) # (!\lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\);

-- Location: LCCOMB_X4_Y43_N0
\CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\ = (\lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\)) # (!\lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\) # 
-- (!\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\);

-- Location: LCCOMB_X3_Y43_N10
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[0]~0_combout\ $ (!\CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[0]~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N12
\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N20
\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N6
\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[1]~0_combout\ = \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit6|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[1]~0_combout\);

-- Location: LCCOMB_X3_Y43_N6
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[1]~0_combout\ $ (!\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[1]~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[1]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N0
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N12
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (((\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\) # (!\CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\))) # (!\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- (!\CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\ & \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N22
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\,
	datab => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\);

-- Location: LCCOMB_X1_Y44_N24
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|masterLatch|int_q~1_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N16
\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[2]~2_combout\ = \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X3_Y43_N26
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\ $ ((!\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[2]~2_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N14
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y36_N12
\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X4_Y36_N20
\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N6
\CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~0_combout\ = (!\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\) # (!\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~0_combout\);

-- Location: LCCOMB_X4_Y43_N6
\CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\ = (\CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~0_combout\ & ((\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- (!\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\)) # (!\lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\) # (!\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X4_Y43_N26
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~3_combout\ = \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (((\CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\) # 
-- ((!\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & !\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~3_combout\);

-- Location: LCCOMB_X4_Y43_N8
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (((!\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~3_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X1_Y43_N12
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|masterLatch|int_q~2_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y36_N10
\lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N4
\lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N6
\lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ = (\lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N8
\lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N18
\lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ = (\lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N4
\lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N0
\lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[3]~input_o\)) # 
-- (!\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \b[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N14
\lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N22
\lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[2]~input_o\)) # 
-- (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N16
\lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N6
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datab => \lshift_8bit1|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|transitorySignal[3]~4_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N4
\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X9_Y43_N16
\lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[2]~input_o\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datab => \a[1]~input_o\,
	datac => \b[2]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N18
\lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N8
\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[3]~3_combout\ = \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst1|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit2|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X11_Y43_N26
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[3]~3_combout\ $ ((!\CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_lower|transitorySignal[3]~3_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_lower|CarryOut~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X11_Y43_N24
\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X10_Y43_N24
\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[3]~3_combout\ = \lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit3|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X6_Y42_N24
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[3]~3_combout\ $ ((!\CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_lower|transitorySignal[3]~3_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_lower|CarryOut~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N18
\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N28
\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[3]~3_combout\ = \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit4|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst3|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X2_Y42_N14
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\ $ ((!\CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|CarryOut~0_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_lower|transitorySignal[3]~3_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N10
\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N16
\CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[3]~2_combout\ = \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit5|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst4|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[3]~2_combout\);

-- Location: LCCOMB_X2_Y43_N2
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[3]~2_combout\ $ (((!\CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|transitorySignal[3]~2_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N2
\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y36_N18
\lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\ = (\lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GClock~input_o\,
	datad => \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X3_Y36_N0
\lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N26
\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[3]~3_combout\ = \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit6|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X3_Y43_N4
\CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\ = (\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\)) # (!\lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\) # 
-- (!\CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_lower|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X3_Y43_N20
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[3]~3_combout\ $ (((!\CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|transitorySignal[3]~3_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N20
\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N18
\CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[3]~1_combout\ = \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit7|dff_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[3]~1_combout\);

-- Location: LCCOMB_X1_Y43_N24
\CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0_combout\ = (!\lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\ & !\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0_combout\);

-- Location: LCCOMB_X4_Y43_N20
\CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\ = (\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- ((\CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0_combout\) # (\CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\)))) # (!\CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & 
-- (((\CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0_combout\) # (\CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\)) # (!\lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit7|dff_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|transitoryG[1]~0_combout\,
	datad => \CLA_8bit_inst7|CLA_4bit_lower|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\);

-- Location: LCCOMB_X3_Y43_N0
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[3]~1_combout\ $ (((!\CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_lower|transitorySignal[3]~1_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y44_N14
\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N28
\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N24
\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N2
\CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[0]~0_combout\ = \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X3_Y43_N30
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[0]~0_combout\ $ (!\CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[0]~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_lower|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N12
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y42_N24
\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[0]~0_combout\ = \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[0]~0_combout\);

-- Location: LCCOMB_X4_Y43_N30
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[0]~0_combout\ $ (!\CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[0]~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y44_N4
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y36_N6
\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X4_Y36_N22
\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_sSignal~combout\,
	combout => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X3_Y43_N18
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\ = \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ $ (((\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\) # 
-- ((!\lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & !\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datab => \lshift_8bit6|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[1]~2_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\);

-- Location: LCCOMB_X3_Y43_N28
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ $ (((!\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~3_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\);

-- Location: LCCOMB_X4_Y42_N24
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~2_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N6
\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[1]~1_combout\ = \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[1]~1_combout\);

-- Location: LCCOMB_X4_Y43_N14
\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\ = (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & (!\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\)) # (!\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\) # 
-- (!\lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit7|dff_inst|dff_inst4|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst7|CLA_4bit_lower|CarryOut~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\);

-- Location: LCCOMB_X4_Y43_N4
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[1]~1_combout\ $ (((!\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[1]~1_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y44_N26
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y36_N30
\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\ = (\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X2_Y36_N14
\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_sSignal~combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N12
\CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[2]~1_combout\ = \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ $ (\lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit6|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[2]~1_combout\);

-- Location: LCCOMB_X3_Y43_N2
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[2]~1_combout\ $ (((!\CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[2]~1_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|transitoryC[2]~3_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y43_N24
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N4
\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[2]~2_combout\ = \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[2]~2_combout\);

-- Location: LCCOMB_X4_Y43_N16
\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\ = (\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\ & 
-- !\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)) # (!\lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\) # 
-- (!\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit7|dff_inst|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[1]~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\);

-- Location: LCCOMB_X4_Y43_N22
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[2]~2_combout\ $ (!\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[2]~2_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y44_N20
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N4
\lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[0]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[0]~input_o\,
	datac => \lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N22
\lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit7|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N4
\lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[1]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datac => \a[1]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N12
\lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit6|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N2
\lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[3]~input_o\)) # 
-- (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datac => \b[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N22
\lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit3|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datac => \lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N26
\lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\b[1]~input_o\)) # 
-- (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[1]~input_o\,
	datac => \lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N16
\lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit1|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N12
\CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[3]~1_combout\ = \lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ $ (((\b[0]~input_o\ & \a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \a[3]~input_o\,
	datad => \lshift_8bit1|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[3]~1_combout\);

-- Location: LCCOMB_X6_Y44_N22
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[3]~1_combout\ $ ((\CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|transitorySignal[3]~1_combout\,
	datab => \CLA_8bit_inst1|CLA_4bit_upper|CarryOut~2_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N8
\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N14
\lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[3]~input_o\)) # 
-- (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datac => \a[3]~input_o\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N6
\lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit2|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y44_N26
\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[3]~3_combout\ = \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst1|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit2|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X6_Y44_N0
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\ $ (((!\CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|CarryOut~0_combout\,
	datab => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|transitorySignal[3]~3_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X6_Y42_N6
\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N28
\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[3]~3_combout\ = \lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit3|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst2|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X2_Y42_N26
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[3]~3_combout\ $ (!\CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst3|CLA_4bit_upper|transitorySignal[3]~3_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N30
\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N4
\lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[3]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N24
\lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit4|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X2_Y42_N12
\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[3]~3_combout\ = \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst3|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit4|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X1_Y42_N8
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[3]~3_combout\ $ (((!\CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|transitorySignal[3]~3_combout\,
	datab => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y42_N30
\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N26
\lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\)))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & (((!\a[2]~input_o\)) # 
-- (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N24
\lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit5|dff_inst|dff_inst7|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N14
\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[3]~3_combout\ = \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ $ (\lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLA_8bit_inst4|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \lshift_8bit5|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X5_Y43_N26
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\ $ (!\CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst5|CLA_4bit_upper|CarryOut~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|transitorySignal[3]~3_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N18
\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y44_N30
\CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[3]~2_combout\ = \lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lshift_8bit6|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst5|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[3]~2_combout\);

-- Location: LCCOMB_X5_Y43_N8
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[3]~2_combout\ $ (((!\CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|transitorySignal[3]~2_combout\,
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|CarryOut~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X5_Y42_N6
\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) 
-- & (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X4_Y42_N0
\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[3]~3_combout\ = \lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\ $ (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lshift_8bit7|dff_inst|dff_inst7|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[3]~3_combout\);

-- Location: LCCOMB_X4_Y43_N18
\CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0_combout\ = (\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (!\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\ & 
-- \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\)) # (!\CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & ((\CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\) # 
-- (!\lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLA_8bit_inst6|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \lshift_8bit7|dff_inst|dff_inst6|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst7|CLA_4bit_upper|transitoryC[2]~1_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y43_N28
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (((\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)))) # 
-- (!GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[3]~3_combout\ $ (((!\CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|transitorySignal[3]~3_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \CLA_8bit_inst7|CLA_4bit_upper|CarryOut~0_combout\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N22
\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\)) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- ((\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|masterLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \GClock~inputclkctrl_outclk\,
	combout => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y44_N12
\zeroOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \zeroOut~0_combout\ = (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & 
-- (\CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst7|CLA_4bit_lower|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	combout => \zeroOut~0_combout\);

-- Location: LCCOMB_X1_Y44_N2
\zeroOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \zeroOut~1_combout\ = (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\ & (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\ & 
-- (\CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\ & \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst3|slaveLatch|int_q~0_combout\,
	datab => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst1|slaveLatch|int_q~0_combout\,
	datad => \CLA_8bit_inst7|CLA_4bit_upper|dff_8bit_inst|dff_inst2|slaveLatch|int_q~0_combout\,
	combout => \zeroOut~1_combout\);

-- Location: LCCOMB_X1_Y44_N0
\zeroOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \zeroOut~2_combout\ = (\zeroOut~0_combout\ & \zeroOut~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zeroOut~0_combout\,
	datad => \zeroOut~1_combout\,
	combout => \zeroOut~2_combout\);

-- Location: IOIBUF_X1_Y0_N15
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


