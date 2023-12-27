-- Copyright (C) 1991-2008 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "03/14/2022 21:17:38"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	shifter_4 IS
    PORT (
	Q0 : OUT std_logic;
	DM : IN std_logic;
	A0 : IN std_logic;
	RM : IN std_logic;
	A1 : IN std_logic;
	LM : IN std_logic;
	LI : IN std_logic;
	Q1 : OUT std_logic;
	A2 : IN std_logic;
	Q2 : OUT std_logic;
	A3 : IN std_logic;
	Q3 : OUT std_logic;
	RI : IN std_logic;
	LO : OUT std_logic;
	RO : OUT std_logic
	);
END shifter_4;

ARCHITECTURE structure OF shifter_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_DM : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_RM : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_LM : std_logic;
SIGNAL ww_LI : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_RI : std_logic;
SIGNAL ww_LO : std_logic;
SIGNAL ww_RO : std_logic;
SIGNAL \RM~combout\ : std_logic;
SIGNAL \A0~combout\ : std_logic;
SIGNAL \LI~combout\ : std_logic;
SIGNAL \DM~combout\ : std_logic;
SIGNAL \inst15~6_combout\ : std_logic;
SIGNAL \A1~combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst11~6_combout\ : std_logic;
SIGNAL \A2~combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \A3~combout\ : std_logic;
SIGNAL \inst7~6_combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst3~6_combout\ : std_logic;
SIGNAL \RI~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \LM~combout\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_DM <= DM;
ww_A0 <= A0;
ww_RM <= RM;
ww_A1 <= A1;
ww_LM <= LM;
ww_LI <= LI;
Q1 <= ww_Q1;
ww_A2 <= A2;
Q2 <= ww_Q2;
ww_A3 <= A3;
Q3 <= ww_Q3;
ww_RI <= RI;
LO <= ww_LO;
RO <= ww_RO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RM,
	combout => \RM~combout\);

\A0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A0,
	combout => \A0~combout\);

\LI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LI,
	combout => \LI~combout\);

\DM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DM,
	combout => \DM~combout\);

\inst15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15~6_combout\ = \LM~combout\ & (\LI~combout\ # \A0~combout\ & \DM~combout\) # !\LM~combout\ & \A0~combout\ & (\DM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \A0~combout\,
	datac => \LI~combout\,
	datad => \DM~combout\,
	combout => \inst15~6_combout\);

\A1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A1,
	combout => \A1~combout\);

inst15 : cycloneii_lcell_comb
-- Equation(s):
-- \inst15~combout\ = \inst15~6_combout\ # \RM~combout\ & \A1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM~combout\,
	datac => \inst15~6_combout\,
	datad => \A1~combout\,
	combout => \inst15~combout\);

\inst11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11~6_combout\ = \LM~combout\ & (\A0~combout\ # \A1~combout\ & \DM~combout\) # !\LM~combout\ & \A1~combout\ & (\DM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \A1~combout\,
	datac => \A0~combout\,
	datad => \DM~combout\,
	combout => \inst11~6_combout\);

\A2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A2,
	combout => \A2~combout\);

inst11 : cycloneii_lcell_comb
-- Equation(s):
-- \inst11~combout\ = \inst11~6_combout\ # \A2~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~6_combout\,
	datac => \A2~combout\,
	datad => \RM~combout\,
	combout => \inst11~combout\);

\A3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A3,
	combout => \A3~combout\);

\inst7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7~6_combout\ = \LM~combout\ & (\A1~combout\ # \A2~combout\ & \DM~combout\) # !\LM~combout\ & (\A2~combout\ & \DM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \A1~combout\,
	datac => \A2~combout\,
	datad => \DM~combout\,
	combout => \inst7~6_combout\);

inst7 : cycloneii_lcell_comb
-- Equation(s):
-- \inst7~combout\ = \inst7~6_combout\ # \A3~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~combout\,
	datac => \inst7~6_combout\,
	datad => \RM~combout\,
	combout => \inst7~combout\);

\inst3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3~6_combout\ = \LM~combout\ & (\A2~combout\ # \A3~combout\ & \DM~combout\) # !\LM~combout\ & \A3~combout\ & (\DM~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LM~combout\,
	datab => \A3~combout\,
	datac => \A2~combout\,
	datad => \DM~combout\,
	combout => \inst3~6_combout\);

\RI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RI,
	combout => \RI~combout\);

inst3 : cycloneii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = \inst3~6_combout\ # \RI~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~6_combout\,
	datac => \RI~combout\,
	datad => \RM~combout\,
	combout => \inst3~combout\);

\LM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_LM,
	combout => \LM~combout\);

inst16 : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~combout\ = \A3~combout\ & \LM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3~combout\,
	datad => \LM~combout\,
	combout => \inst16~combout\);

inst18 : cycloneii_lcell_comb
-- Equation(s):
-- \inst18~combout\ = \A0~combout\ & \RM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0~combout\,
	datad => \RM~combout\,
	combout => \inst18~combout\);

\Q0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q0);

\Q1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1);

\Q2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2);

\Q3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3);

\LO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO);

\RO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RO);
END structure;


