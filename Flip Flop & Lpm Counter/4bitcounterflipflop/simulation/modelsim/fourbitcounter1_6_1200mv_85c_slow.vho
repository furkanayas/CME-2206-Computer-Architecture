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

-- DATE "02/25/2018 14:59:47"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fourbitcounter1 IS
    PORT (
	q0 : OUT std_logic;
	d0 : IN std_logic;
	count : IN std_logic;
	load : IN std_logic;
	clk : IN std_logic;
	q1 : OUT std_logic;
	d1 : IN std_logic;
	q2 : OUT std_logic;
	d2 : IN std_logic;
	q3 : OUT std_logic;
	d3 : IN std_logic;
	carryoutput : OUT std_logic
	);
END fourbitcounter1;

-- Design Ports Information
-- q0	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q3	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryoutput	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourbitcounter1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q0 : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_count : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_q2 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_q3 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_carryoutput : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \load~input_o\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \q0~output_o\ : std_logic;
SIGNAL \q1~output_o\ : std_logic;
SIGNAL \q2~output_o\ : std_logic;
SIGNAL \q3~output_o\ : std_logic;
SIGNAL \carryoutput~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count~input_o\ : std_logic;
SIGNAL \d0~input_o\ : std_logic;
SIGNAL \inst25~0_combout\ : std_logic;
SIGNAL \inst25~q\ : std_logic;
SIGNAL \inst26~1_combout\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \d1~input_o\ : std_logic;
SIGNAL \inst26~q\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \inst27~q\ : std_logic;
SIGNAL \d3~input_o\ : std_logic;
SIGNAL \inst28~0_combout\ : std_logic;
SIGNAL \inst28~1_combout\ : std_logic;
SIGNAL \inst28~q\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;

BEGIN

q0 <= ww_q0;
ww_d0 <= d0;
ww_count <= count;
ww_load <= load;
ww_clk <= clk;
q1 <= ww_q1;
ww_d1 <= d1;
q2 <= ww_q2;
ww_d2 <= d2;
q3 <= ww_q3;
ww_d3 <= d3;
carryoutput <= ww_carryoutput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\d2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: IOOBUF_X0_Y26_N2
\q0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~q\,
	devoe => ww_devoe,
	o => \q0~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\q1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~q\,
	devoe => ww_devoe,
	o => \q1~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\q2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~q\,
	devoe => ww_devoe,
	o => \q2~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\q3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~q\,
	devoe => ww_devoe,
	o => \q3~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\carryoutput~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~combout\,
	devoe => ww_devoe,
	o => \carryoutput~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y27_N1
\count~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count,
	o => \count~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\d0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0,
	o => \d0~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst25~0_combout\ = (\count~input_o\ & (((\d0~input_o\)))) # (!\count~input_o\ & (\load~input_o\ $ ((\inst25~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \count~input_o\,
	datac => \inst25~q\,
	datad => \d0~input_o\,
	combout => \inst25~0_combout\);

-- Location: FF_X1_Y26_N23
inst25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25~q\);

-- Location: LCCOMB_X1_Y26_N28
\inst26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26~1_combout\ = \load~input_o\ $ (\inst26~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => \inst26~q\,
	combout => \inst26~1_combout\);

-- Location: LCCOMB_X1_Y26_N16
\inst26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = (\inst25~q\ & ((\inst26~1_combout\))) # (!\inst25~q\ & (\inst26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~q\,
	datac => \inst26~q\,
	datad => \inst26~1_combout\,
	combout => \inst26~0_combout\);

-- Location: IOIBUF_X0_Y26_N22
\d1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1,
	o => \d1~input_o\);

-- Location: FF_X1_Y26_N17
inst26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst26~0_combout\,
	asdata => \d1~input_o\,
	sload => \count~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26~q\);

-- Location: LCCOMB_X1_Y26_N12
\inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (\load~input_o\ & (!\count~input_o\ & (\inst25~q\ & \inst26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \count~input_o\,
	datac => \inst25~q\,
	datad => \inst26~q\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\inst27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = (\inst15~0_combout\ & (((!\inst27~q\)))) # (!\inst15~0_combout\ & ((\count~input_o\ & (\d2~input_o\)) # (!\count~input_o\ & ((\inst27~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2~input_o\,
	datab => \count~input_o\,
	datac => \inst27~q\,
	datad => \inst15~0_combout\,
	combout => \inst27~0_combout\);

-- Location: FF_X1_Y26_N25
inst27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27~q\);

-- Location: IOIBUF_X0_Y25_N1
\d3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3,
	o => \d3~input_o\);

-- Location: LCCOMB_X1_Y26_N14
\inst28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28~0_combout\ = (\count~input_o\ & (\d3~input_o\)) # (!\count~input_o\ & ((\inst28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~input_o\,
	datac => \d3~input_o\,
	datad => \inst28~q\,
	combout => \inst28~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\inst28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28~1_combout\ = (\inst27~q\ & ((\inst15~0_combout\ & ((!\inst28~q\))) # (!\inst15~0_combout\ & (\inst28~0_combout\)))) # (!\inst27~q\ & (\inst28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \inst28~0_combout\,
	datac => \inst28~q\,
	datad => \inst15~0_combout\,
	combout => \inst28~1_combout\);

-- Location: FF_X1_Y26_N11
inst28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28~q\);

-- Location: LCCOMB_X1_Y26_N30
inst29 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst29~combout\ = (\inst28~q\) # ((\inst27~q\ & \inst15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28~q\,
	datab => \inst27~q\,
	datad => \inst15~0_combout\,
	combout => \inst29~combout\);

ww_q0 <= \q0~output_o\;

ww_q1 <= \q1~output_o\;

ww_q2 <= \q2~output_o\;

ww_q3 <= \q3~output_o\;

ww_carryoutput <= \carryoutput~output_o\;
END structure;


