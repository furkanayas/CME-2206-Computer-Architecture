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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/27/2018 16:58:23"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AluFinal IS
    PORT (
	overflow : OUT std_logic;
	Po : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	ground : IN std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic;
	Aluout : OUT std_logic_vector(3 DOWNTO 0);
	p1p2 : IN std_logic_vector(1 DOWNTO 0)
	);
END AluFinal;

-- Design Ports Information
-- overflow	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluout[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluout[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluout[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluout[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ground[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Po	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ground[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ground[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ground[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1p2[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1p2[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AluFinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_Po : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ground : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_Aluout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p1p2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \ground[3]~input_o\ : std_logic;
SIGNAL \ground[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \ground[0]~input_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \Aluout[3]~output_o\ : std_logic;
SIGNAL \Aluout[2]~output_o\ : std_logic;
SIGNAL \Aluout[1]~output_o\ : std_logic;
SIGNAL \Aluout[0]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ground[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \p1p2[1]~input_o\ : std_logic;
SIGNAL \Po~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \p1p2[0]~input_o\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \inst54|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;

BEGIN

overflow <= ww_overflow;
ww_Po <= Po;
ww_A <= A;
ww_B <= B;
ww_ground <= ground;
cout <= ww_cout;
Aluout <= ww_Aluout;
ww_p1p2 <= p1p2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y2_N4
\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ $ (\A[1]~input_o\ $ (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & ((\A[1]~input_o\) # (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # 
-- (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ & (\A[1]~input_o\ & !\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X1_Y2_N6
\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ & (\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # 
-- (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ & (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # (!\A[2]~input_o\ & ((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ & 
-- (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ & ((\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ & !\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\A[2]~input_o\ & ((!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	datad => VCC,
	cin => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X1_Y3_N8
\inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\Po~input_o\ & (\ground[3]~input_o\)) # (!\Po~input_o\ & ((\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ground[3]~input_o\,
	datab => \Po~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X1_Y3_N2
\inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\Po~input_o\ & ((\ground[1]~input_o\))) # (!\Po~input_o\ & (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \Po~input_o\,
	datad => \ground[1]~input_o\,
	combout => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X1_Y2_N22
\inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\Po~input_o\ & (\ground[0]~input_o\)) # (!\Po~input_o\ & ((\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ground[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \Po~input_o\,
	combout => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: IOIBUF_X0_Y4_N1
\ground[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ground(3),
	o => \ground[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\ground[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ground(1),
	o => \ground[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\ground[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ground(0),
	o => \ground[0]~input_o\);

-- Location: IOOBUF_X0_Y5_N2
\overflow~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\Aluout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	devoe => ww_devoe,
	o => \Aluout[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\Aluout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	devoe => ww_devoe,
	o => \Aluout[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\Aluout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|LPM_MUX_component|auto_generated|result_node[1]~11_combout\,
	devoe => ww_devoe,
	o => \Aluout[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\Aluout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	devoe => ww_devoe,
	o => \Aluout[0]~output_o\);

-- Location: IOIBUF_X1_Y0_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\ground[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ground(2),
	o => \ground[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y2_N20
\inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ = (\Po~input_o\ & (\ground[2]~input_o\)) # (!\Po~input_o\ & ((\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Po~input_o\,
	datab => \ground[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[2]~1_combout\);

-- Location: IOIBUF_X0_Y4_N8
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y2_N0
\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\Po~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Po~input_o\,
	datad => VCC,
	cout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X1_Y2_N2
\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ & ((\A[0]~input_o\ & (\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)) 
-- # (!\A[0]~input_o\ & (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)))) # (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ & ((\A[0]~input_o\ & 
-- (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ & (!\A[0]~input_o\ & !\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ & ((!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X1_Y2_N8
\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ $ (\A[3]~input_o\ $ (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & ((\A[3]~input_o\) # (!\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\))) # 
-- (!\inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & (\A[3]~input_o\ & !\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst52|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X1_Y2_N10
\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\);

-- Location: IOIBUF_X0_Y6_N1
\p1p2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1p2(1),
	o => \p1p2[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\Po~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Po,
	o => \Po~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y3_N0
\inst54|LPM_MUX_component|auto_generated|result_node[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ = (\Po~input_o\ & (\A[0]~input_o\)) # (!\Po~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Po~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[3]~2_combout\);

-- Location: IOIBUF_X1_Y0_N15
\p1p2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p1p2(0),
	o => \p1p2[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y3_N28
\inst54|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\Po~input_o\ & (\B[3]~input_o\ & ((\A[3]~input_o\) # (\p1p2[0]~input_o\)))) # (!\Po~input_o\ & (\A[3]~input_o\ $ (((!\p1p2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Po~input_o\,
	datac => \B[3]~input_o\,
	datad => \p1p2[0]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X1_Y3_N6
\inst54|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\p1p2[1]~input_o\ & (((\inst54|LPM_MUX_component|auto_generated|result_node[3]~0_combout\)))) # (!\p1p2[1]~input_o\ & (\p1p2[0]~input_o\ & 
-- (\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1p2[1]~input_o\,
	datab => \p1p2[0]~input_o\,
	datac => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X1_Y3_N18
\inst54|LPM_MUX_component|auto_generated|result_node[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (\inst54|LPM_MUX_component|auto_generated|result_node[3]~1_combout\) # ((!\p1p2[1]~input_o\ & (\inst54|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & !\p1p2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1p2[1]~input_o\,
	datab => \inst54|LPM_MUX_component|auto_generated|result_node[3]~2_combout\,
	datac => \p1p2[0]~input_o\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X1_Y2_N16
\inst54|LPM_MUX_component|auto_generated|result_node[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[2]~4_combout\ = (\Po~input_o\ & (\B[2]~input_o\ & ((\A[2]~input_o\) # (\p1p2[0]~input_o\)))) # (!\Po~input_o\ & (\A[2]~input_o\ $ (((!\p1p2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Po~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \p1p2[0]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X1_Y2_N18
\inst54|LPM_MUX_component|auto_generated|result_node[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = (\p1p2[1]~input_o\ & (((\inst54|LPM_MUX_component|auto_generated|result_node[2]~4_combout\)))) # (!\p1p2[1]~input_o\ & 
-- (\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ & (\p1p2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	datab => \p1p2[0]~input_o\,
	datac => \p1p2[1]~input_o\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[2]~4_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X1_Y2_N12
\inst54|LPM_MUX_component|auto_generated|result_node[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ = (\Po~input_o\ & (\A[3]~input_o\)) # (!\Po~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Po~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[2]~6_combout\);

-- Location: LCCOMB_X1_Y2_N14
\inst54|LPM_MUX_component|auto_generated|result_node[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ = (\inst54|LPM_MUX_component|auto_generated|result_node[2]~5_combout\) # ((!\p1p2[1]~input_o\ & (!\p1p2[0]~input_o\ & \inst54|LPM_MUX_component|auto_generated|result_node[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1p2[1]~input_o\,
	datab => \inst54|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	datac => \p1p2[0]~input_o\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[2]~6_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[2]~7_combout\);

-- Location: LCCOMB_X1_Y3_N12
\inst54|LPM_MUX_component|auto_generated|result_node[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ = (\Po~input_o\ & (\B[1]~input_o\ & ((\A[1]~input_o\) # (\p1p2[0]~input_o\)))) # (!\Po~input_o\ & ((\A[1]~input_o\ $ (!\p1p2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Po~input_o\,
	datac => \A[1]~input_o\,
	datad => \p1p2[0]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[1]~8_combout\);

-- Location: LCCOMB_X1_Y3_N22
\inst54|LPM_MUX_component|auto_generated|result_node[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ = (\p1p2[1]~input_o\ & (((\inst54|LPM_MUX_component|auto_generated|result_node[1]~8_combout\)))) # (!\p1p2[1]~input_o\ & 
-- (\inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ & (\p1p2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	datab => \p1p2[0]~input_o\,
	datac => \p1p2[1]~input_o\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[1]~8_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[1]~9_combout\);

-- Location: LCCOMB_X1_Y3_N24
\inst54|LPM_MUX_component|auto_generated|result_node[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[1]~10_combout\ = (\Po~input_o\ & ((\A[2]~input_o\))) # (!\Po~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \Po~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[1]~10_combout\);

-- Location: LCCOMB_X1_Y3_N26
\inst54|LPM_MUX_component|auto_generated|result_node[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[1]~11_combout\ = (\inst54|LPM_MUX_component|auto_generated|result_node[1]~9_combout\) # ((!\p1p2[1]~input_o\ & (!\p1p2[0]~input_o\ & 
-- \inst54|LPM_MUX_component|auto_generated|result_node[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1p2[1]~input_o\,
	datab => \p1p2[0]~input_o\,
	datac => \inst54|LPM_MUX_component|auto_generated|result_node[1]~9_combout\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[1]~10_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[1]~11_combout\);

-- Location: IOIBUF_X1_Y0_N29
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y2_N24
\inst54|LPM_MUX_component|auto_generated|result_node[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ = (\Po~input_o\ & (\B[0]~input_o\ & ((\p1p2[0]~input_o\) # (\A[0]~input_o\)))) # (!\Po~input_o\ & (\p1p2[0]~input_o\ $ ((!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Po~input_o\,
	datab => \p1p2[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X1_Y2_N26
\inst54|LPM_MUX_component|auto_generated|result_node[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ = (\p1p2[1]~input_o\ & (\inst54|LPM_MUX_component|auto_generated|result_node[0]~12_combout\)) # (!\p1p2[1]~input_o\ & (((\p1p2[0]~input_o\ & 
-- \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1p2[1]~input_o\,
	datab => \inst54|LPM_MUX_component|auto_generated|result_node[0]~12_combout\,
	datac => \p1p2[0]~input_o\,
	datad => \inst4|inst51|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X1_Y2_N28
\inst54|LPM_MUX_component|auto_generated|result_node[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ = (\Po~input_o\ & ((\A[1]~input_o\))) # (!\Po~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Po~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X1_Y2_N30
\inst54|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst54|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (\inst54|LPM_MUX_component|auto_generated|result_node[0]~13_combout\) # ((!\p1p2[1]~input_o\ & (!\p1p2[0]~input_o\ & 
-- \inst54|LPM_MUX_component|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1p2[1]~input_o\,
	datab => \p1p2[0]~input_o\,
	datac => \inst54|LPM_MUX_component|auto_generated|result_node[0]~13_combout\,
	datad => \inst54|LPM_MUX_component|auto_generated|result_node[0]~14_combout\,
	combout => \inst54|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

ww_overflow <= \overflow~output_o\;

ww_cout <= \cout~output_o\;

ww_Aluout(3) <= \Aluout[3]~output_o\;

ww_Aluout(2) <= \Aluout[2]~output_o\;

ww_Aluout(1) <= \Aluout[1]~output_o\;

ww_Aluout(0) <= \Aluout[0]~output_o\;
END structure;


