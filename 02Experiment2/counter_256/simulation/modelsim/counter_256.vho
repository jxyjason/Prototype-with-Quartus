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

-- DATE "03/14/2022 20:50:10"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	counter_256 IS
    PORT (
	Q7 : OUT std_logic;
	CP : IN std_logic;
	PRN : IN std_logic;
	CLRN : IN std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic
	);
END counter_256;

ARCHITECTURE structure OF counter_256 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q7 : std_logic;
SIGNAL ww_CP : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \inst|inst3~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP~combout\ : std_logic;
SIGNAL \CLRN~combout\ : std_logic;
SIGNAL \PRN~combout\ : std_logic;
SIGNAL \inst|inst3~latch_combout\ : std_logic;
SIGNAL \inst|inst3~data_lut_combout\ : std_logic;
SIGNAL \inst|inst3~clear_lut_combout\ : std_logic;
SIGNAL \inst|inst3~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst3~_emulated_regout\ : std_logic;
SIGNAL \inst|inst3~head_lut_combout\ : std_logic;
SIGNAL \inst|inst2~data_lut_combout\ : std_logic;
SIGNAL \inst|inst2~_emulated_regout\ : std_logic;
SIGNAL \inst|inst2~head_lut_combout\ : std_logic;
SIGNAL \inst|inst1~data_lut_combout\ : std_logic;
SIGNAL \inst|inst1~_emulated_regout\ : std_logic;
SIGNAL \inst|inst1~head_lut_combout\ : std_logic;
SIGNAL \inst|inst~data_lut_combout\ : std_logic;
SIGNAL \inst|inst~_emulated_regout\ : std_logic;
SIGNAL \inst|inst~head_lut_combout\ : std_logic;
SIGNAL \inst1|inst3~data_lut_combout\ : std_logic;
SIGNAL \inst1|inst3~_emulated_regout\ : std_logic;
SIGNAL \inst1|inst3~head_lut_combout\ : std_logic;
SIGNAL \inst1|inst2~data_lut_combout\ : std_logic;
SIGNAL \inst1|inst2~_emulated_regout\ : std_logic;
SIGNAL \inst1|inst2~head_lut_combout\ : std_logic;
SIGNAL \inst1|inst1~data_lut_combout\ : std_logic;
SIGNAL \inst1|inst1~_emulated_regout\ : std_logic;
SIGNAL \inst1|inst1~head_lut_combout\ : std_logic;
SIGNAL \inst1|inst~data_lut_combout\ : std_logic;
SIGNAL \inst1|inst~_emulated_regout\ : std_logic;
SIGNAL \inst1|inst~head_lut_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst2~head_lut_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst1~head_lut_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst~head_lut_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~head_lut_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst2~head_lut_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst1~head_lut_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst~head_lut_combout\ : std_logic;

BEGIN

Q7 <= ww_Q7;
ww_CP <= CP;
ww_PRN <= PRN;
ww_CLRN <= CLRN;
Q6 <= ww_Q6;
Q5 <= ww_Q5;
Q4 <= ww_Q4;
Q3 <= ww_Q3;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst3~clear_lutclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst3~clear_lut_combout\);
\inst|ALT_INV_inst2~head_lut_combout\ <= NOT \inst|inst2~head_lut_combout\;
\inst|ALT_INV_inst1~head_lut_combout\ <= NOT \inst|inst1~head_lut_combout\;
\inst|ALT_INV_inst~head_lut_combout\ <= NOT \inst|inst~head_lut_combout\;
\inst1|ALT_INV_inst3~head_lut_combout\ <= NOT \inst1|inst3~head_lut_combout\;
\inst1|ALT_INV_inst2~head_lut_combout\ <= NOT \inst1|inst2~head_lut_combout\;
\inst1|ALT_INV_inst1~head_lut_combout\ <= NOT \inst1|inst1~head_lut_combout\;
\inst1|ALT_INV_inst~head_lut_combout\ <= NOT \inst1|inst~head_lut_combout\;

\CP~I\ : cycloneii_io
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
	padio => ww_CP,
	combout => \CP~combout\);

\CLRN~I\ : cycloneii_io
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
	padio => ww_CLRN,
	combout => \CLRN~combout\);

\PRN~I\ : cycloneii_io
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
	padio => ww_PRN,
	combout => \PRN~combout\);

\inst|inst3~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~latch_combout\ = \CLRN~combout\ & (\inst|inst3~latch_combout\ # !\PRN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PRN~combout\,
	datac => \CLRN~combout\,
	datad => \inst|inst3~latch_combout\,
	combout => \inst|inst3~latch_combout\);

\inst|inst3~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~data_lut_combout\ = \inst|inst3~latch_combout\ $ !\inst|inst3~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~latch_combout\,
	datad => \inst|inst3~head_lut_combout\,
	combout => \inst|inst3~data_lut_combout\);

\inst|inst3~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~clear_lut_combout\ = !\PRN~combout\ # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLRN~combout\,
	datad => \PRN~combout\,
	combout => \inst|inst3~clear_lut_combout\);

\inst|inst3~clear_lutclkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst3~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst3~clear_lutclkctrl_outclk\);

\inst|inst3~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2~head_lut_combout\,
	datain => \inst|inst3~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3~_emulated_regout\);

\inst|inst3~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3~head_lut_combout\ = \CLRN~combout\ & (\inst|inst3~latch_combout\ $ \inst|inst3~_emulated_regout\ # !\PRN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~combout\,
	datab => \PRN~combout\,
	datac => \inst|inst3~latch_combout\,
	datad => \inst|inst3~_emulated_regout\,
	combout => \inst|inst3~head_lut_combout\);

\inst|inst2~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst|inst2~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~latch_combout\,
	datad => \inst|inst2~head_lut_combout\,
	combout => \inst|inst2~data_lut_combout\);

\inst|inst2~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst1~head_lut_combout\,
	datain => \inst|inst2~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2~_emulated_regout\);

\inst|inst2~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst|inst2~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \PRN~combout\,
	datac => \CLRN~combout\,
	datad => \inst|inst2~_emulated_regout\,
	combout => \inst|inst2~head_lut_combout\);

\inst|inst1~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst|inst1~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3~latch_combout\,
	datad => \inst|inst1~head_lut_combout\,
	combout => \inst|inst1~data_lut_combout\);

\inst|inst1~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst~head_lut_combout\,
	datain => \inst|inst1~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst1~_emulated_regout\);

\inst|inst1~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst|inst1~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \PRN~combout\,
	datac => \CLRN~combout\,
	datad => \inst|inst1~_emulated_regout\,
	combout => \inst|inst1~head_lut_combout\);

\inst|inst~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst|inst~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3~latch_combout\,
	datad => \inst|inst~head_lut_combout\,
	combout => \inst|inst~data_lut_combout\);

\inst|inst~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst3~head_lut_combout\,
	datain => \inst|inst~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst~_emulated_regout\);

\inst|inst~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst|inst~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \PRN~combout\,
	datac => \CLRN~combout\,
	datad => \inst|inst~_emulated_regout\,
	combout => \inst|inst~head_lut_combout\);

\inst1|inst3~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst1|inst3~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~latch_combout\,
	datad => \inst1|inst3~head_lut_combout\,
	combout => \inst1|inst3~data_lut_combout\);

\inst1|inst3~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2~head_lut_combout\,
	datain => \inst1|inst3~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3~_emulated_regout\);

\inst1|inst3~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst1|inst3~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \CLRN~combout\,
	datac => \inst1|inst3~_emulated_regout\,
	datad => \PRN~combout\,
	combout => \inst1|inst3~head_lut_combout\);

\inst1|inst2~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst1|inst2~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~latch_combout\,
	datad => \inst1|inst2~head_lut_combout\,
	combout => \inst1|inst2~data_lut_combout\);

\inst1|inst2~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst1~head_lut_combout\,
	datain => \inst1|inst2~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2~_emulated_regout\);

\inst1|inst2~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst1|inst2~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \PRN~combout\,
	datac => \CLRN~combout\,
	datad => \inst1|inst2~_emulated_regout\,
	combout => \inst1|inst2~head_lut_combout\);

\inst1|inst1~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst1|inst1~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3~latch_combout\,
	datad => \inst1|inst1~head_lut_combout\,
	combout => \inst1|inst1~data_lut_combout\);

\inst1|inst1~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst~head_lut_combout\,
	datain => \inst1|inst1~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1~_emulated_regout\);

\inst1|inst1~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst1~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst1|inst1~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \PRN~combout\,
	datac => \CLRN~combout\,
	datad => \inst1|inst1~_emulated_regout\,
	combout => \inst1|inst1~head_lut_combout\);

\inst1|inst~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst~data_lut_combout\ = \inst|inst3~latch_combout\ $ \inst1|inst~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3~latch_combout\,
	datad => \inst1|inst~head_lut_combout\,
	combout => \inst1|inst~data_lut_combout\);

\inst1|inst~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CP~combout\,
	datain => \inst1|inst~data_lut_combout\,
	aclr => \inst|inst3~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst~_emulated_regout\);

\inst1|inst~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst~head_lut_combout\ = \PRN~combout\ & (\inst|inst3~latch_combout\ $ !\inst1|inst~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~latch_combout\,
	datab => \CLRN~combout\,
	datac => \inst1|inst~_emulated_regout\,
	datad => \PRN~combout\,
	combout => \inst1|inst~head_lut_combout\);

\Q7~I\ : cycloneii_io
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
	datain => \inst|inst3~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q7);

\Q6~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_inst2~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q6);

\Q5~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_inst1~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q5);

\Q4~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_inst~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q4);

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
	datain => \inst1|ALT_INV_inst3~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3);

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
	datain => \inst1|ALT_INV_inst2~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2);

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
	datain => \inst1|ALT_INV_inst1~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1);

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
	datain => \inst1|ALT_INV_inst~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q0);
END structure;


