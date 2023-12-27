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

-- DATE "03/15/2022 23:46:45"

-- 
-- Device: Altera EP2C8Q208C8 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	counter_8 IS
    PORT (
	Q0 : OUT std_logic;
	CLRN : IN std_logic;
	CP : IN std_logic;
	PRN : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic
	);
END counter_8;

ARCHITECTURE structure OF counter_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_CP : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \inst~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CP~combout\ : std_logic;
SIGNAL \PRN~combout\ : std_logic;
SIGNAL \inst~latch_combout\ : std_logic;
SIGNAL \inst~data_lut_combout\ : std_logic;
SIGNAL \inst~clear_lut_combout\ : std_logic;
SIGNAL \inst~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \inst~_emulated_regout\ : std_logic;
SIGNAL \CLRN~combout\ : std_logic;
SIGNAL \inst~head_lut_combout\ : std_logic;
SIGNAL \inst1~data_lut_combout\ : std_logic;
SIGNAL \inst1~_emulated_regout\ : std_logic;
SIGNAL \inst1~head_lut_combout\ : std_logic;
SIGNAL \inst2~data_lut_combout\ : std_logic;
SIGNAL \inst2~_emulated_regout\ : std_logic;
SIGNAL \inst2~head_lut_combout\ : std_logic;
SIGNAL \ALT_INV_inst~head_lut_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~head_lut_combout\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_CLRN <= CLRN;
ww_CP <= CP;
ww_PRN <= PRN;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst~clear_lutclkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst~clear_lut_combout\);
\ALT_INV_inst~head_lut_combout\ <= NOT \inst~head_lut_combout\;
\ALT_INV_inst1~head_lut_combout\ <= NOT \inst1~head_lut_combout\;

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

\inst~latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~latch_combout\ = \CLRN~combout\ & (\inst~latch_combout\ # !\PRN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~combout\,
	datab => \PRN~combout\,
	datad => \inst~latch_combout\,
	combout => \inst~latch_combout\);

\inst~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~data_lut_combout\ = \inst~latch_combout\ $ \inst~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~latch_combout\,
	datad => \inst~head_lut_combout\,
	combout => \inst~data_lut_combout\);

\inst~clear_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~clear_lut_combout\ = !\PRN~combout\ # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~combout\,
	datad => \PRN~combout\,
	combout => \inst~clear_lut_combout\);

\inst~clear_lutclkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \inst~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst~clear_lutclkctrl_outclk\);

\inst~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CP~combout\,
	datain => \inst~data_lut_combout\,
	aclr => \inst~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst~_emulated_regout\);

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

\inst~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst~head_lut_combout\ = \PRN~combout\ & (\inst~latch_combout\ $ !\inst~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~latch_combout\,
	datab => \PRN~combout\,
	datac => \inst~_emulated_regout\,
	datad => \CLRN~combout\,
	combout => \inst~head_lut_combout\);

\inst1~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~data_lut_combout\ = \inst~latch_combout\ $ \inst1~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~latch_combout\,
	datad => \inst1~head_lut_combout\,
	combout => \inst1~data_lut_combout\);

\inst1~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst~head_lut_combout\,
	datain => \inst1~data_lut_combout\,
	aclr => \inst~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1~_emulated_regout\);

\inst1~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~head_lut_combout\ = \PRN~combout\ & (\inst~latch_combout\ $ !\inst1~_emulated_regout\) # !\CLRN~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~latch_combout\,
	datab => \CLRN~combout\,
	datac => \inst1~_emulated_regout\,
	datad => \PRN~combout\,
	combout => \inst1~head_lut_combout\);

\inst2~data_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~data_lut_combout\ = \inst~latch_combout\ $ !\inst2~head_lut_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~latch_combout\,
	datad => \inst2~head_lut_combout\,
	combout => \inst2~data_lut_combout\);

\inst2~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1~head_lut_combout\,
	datain => \inst2~data_lut_combout\,
	aclr => \inst~clear_lutclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2~_emulated_regout\);

\inst2~head_lut\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~head_lut_combout\ = \CLRN~combout\ & (\inst~latch_combout\ $ \inst2~_emulated_regout\ # !\PRN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~combout\,
	datab => \PRN~combout\,
	datac => \inst~latch_combout\,
	datad => \inst2~_emulated_regout\,
	combout => \inst2~head_lut_combout\);

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
	datain => \ALT_INV_inst~head_lut_combout\,
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
	datain => \ALT_INV_inst1~head_lut_combout\,
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
	datain => \inst2~head_lut_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2);
END structure;


