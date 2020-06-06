-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/30/2020 02:45:36"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin_BCD IS
    PORT (
	BIN : IN std_logic_vector(7 DOWNTO 0);
	CM : OUT std_logic_vector(3 DOWNTO 0);
	DM : OUT std_logic_vector(3 DOWNTO 0);
	UM : OUT std_logic_vector(3 DOWNTO 0);
	Cen : OUT std_logic_vector(3 DOWNTO 0);
	Dec : OUT std_logic_vector(3 DOWNTO 0);
	Unid : OUT std_logic_vector(3 DOWNTO 0)
	);
END bin_BCD;

ARCHITECTURE structure OF bin_BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_UM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cen : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Unid : std_logic_vector(3 DOWNTO 0);
SIGNAL \CM[0]~output_o\ : std_logic;
SIGNAL \CM[1]~output_o\ : std_logic;
SIGNAL \CM[2]~output_o\ : std_logic;
SIGNAL \CM[3]~output_o\ : std_logic;
SIGNAL \DM[0]~output_o\ : std_logic;
SIGNAL \DM[1]~output_o\ : std_logic;
SIGNAL \DM[2]~output_o\ : std_logic;
SIGNAL \DM[3]~output_o\ : std_logic;
SIGNAL \UM[0]~output_o\ : std_logic;
SIGNAL \UM[1]~output_o\ : std_logic;
SIGNAL \UM[2]~output_o\ : std_logic;
SIGNAL \UM[3]~output_o\ : std_logic;
SIGNAL \Cen[0]~output_o\ : std_logic;
SIGNAL \Cen[1]~output_o\ : std_logic;
SIGNAL \Cen[2]~output_o\ : std_logic;
SIGNAL \Cen[3]~output_o\ : std_logic;
SIGNAL \Dec[0]~output_o\ : std_logic;
SIGNAL \Dec[1]~output_o\ : std_logic;
SIGNAL \Dec[2]~output_o\ : std_logic;
SIGNAL \Dec[3]~output_o\ : std_logic;
SIGNAL \Unid[0]~output_o\ : std_logic;
SIGNAL \Unid[1]~output_o\ : std_logic;
SIGNAL \Unid[2]~output_o\ : std_logic;
SIGNAL \Unid[3]~output_o\ : std_logic;
SIGNAL \BIN[7]~input_o\ : std_logic;
SIGNAL \BIN[4]~input_o\ : std_logic;
SIGNAL \BIN[6]~input_o\ : std_logic;
SIGNAL \BIN[5]~input_o\ : std_logic;
SIGNAL \registro~10_combout\ : std_logic;
SIGNAL \BIN[3]~input_o\ : std_logic;
SIGNAL \registro~11_combout\ : std_logic;
SIGNAL \registro~12_combout\ : std_logic;
SIGNAL \registro~29_combout\ : std_logic;
SIGNAL \registro~13_combout\ : std_logic;
SIGNAL \registro~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \registro~15_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \registro~16_combout\ : std_logic;
SIGNAL \BIN[2]~input_o\ : std_logic;
SIGNAL \registro~17_combout\ : std_logic;
SIGNAL \registro~18_combout\ : std_logic;
SIGNAL \registro~30_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \registro~19_combout\ : std_logic;
SIGNAL \registro~20_combout\ : std_logic;
SIGNAL \BIN[1]~input_o\ : std_logic;
SIGNAL \registro~21_combout\ : std_logic;
SIGNAL \registro~22_combout\ : std_logic;
SIGNAL \registro~23_combout\ : std_logic;
SIGNAL \registro~24_combout\ : std_logic;
SIGNAL \registro~6_combout\ : std_logic;
SIGNAL \registro~4_combout\ : std_logic;
SIGNAL \registro~3_combout\ : std_logic;
SIGNAL \registro~8_combout\ : std_logic;
SIGNAL \registro~7_combout\ : std_logic;
SIGNAL \registro~9_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \registro~25_combout\ : std_logic;
SIGNAL \BIN[0]~input_o\ : std_logic;
SIGNAL \registro~26_combout\ : std_logic;
SIGNAL \registro~27_combout\ : std_logic;
SIGNAL \registro~28_combout\ : std_logic;
SIGNAL \ALT_INV_registro~26_combout\ : std_logic;
SIGNAL \ALT_INV_registro~23_combout\ : std_logic;
SIGNAL \ALT_INV_registro~19_combout\ : std_logic;

BEGIN

ww_BIN <= BIN;
CM <= ww_CM;
DM <= ww_DM;
UM <= ww_UM;
Cen <= ww_Cen;
Dec <= ww_Dec;
Unid <= ww_Unid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_registro~26_combout\ <= NOT \registro~26_combout\;
\ALT_INV_registro~23_combout\ <= NOT \registro~23_combout\;
\ALT_INV_registro~19_combout\ <= NOT \registro~19_combout\;

\CM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CM[0]~output_o\);

\CM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CM[1]~output_o\);

\CM[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CM[2]~output_o\);

\CM[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CM[3]~output_o\);

\DM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DM[0]~output_o\);

\DM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DM[1]~output_o\);

\DM[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DM[2]~output_o\);

\DM[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DM[3]~output_o\);

\UM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UM[0]~output_o\);

\UM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UM[1]~output_o\);

\UM[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UM[2]~output_o\);

\UM[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UM[3]~output_o\);

\Cen[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_registro~19_combout\,
	devoe => ww_devoe,
	o => \Cen[0]~output_o\);

\Cen[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan3~1_combout\,
	devoe => ww_devoe,
	o => \Cen[1]~output_o\);

\Cen[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cen[2]~output_o\);

\Cen[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Cen[3]~output_o\);

\Dec[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_registro~23_combout\,
	devoe => ww_devoe,
	o => \Dec[0]~output_o\);

\Dec[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro~24_combout\,
	devoe => ww_devoe,
	o => \Dec[1]~output_o\);

\Dec[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro~9_combout\,
	devoe => ww_devoe,
	o => \Dec[2]~output_o\);

\Dec[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro~25_combout\,
	devoe => ww_devoe,
	o => \Dec[3]~output_o\);

\Unid[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BIN[0]~input_o\,
	devoe => ww_devoe,
	o => \Unid[0]~output_o\);

\Unid[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_registro~26_combout\,
	devoe => ww_devoe,
	o => \Unid[1]~output_o\);

\Unid[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro~27_combout\,
	devoe => ww_devoe,
	o => \Unid[2]~output_o\);

\Unid[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro~28_combout\,
	devoe => ww_devoe,
	o => \Unid[3]~output_o\);

\BIN[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(7),
	o => \BIN[7]~input_o\);

\BIN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(4),
	o => \BIN[4]~input_o\);

\BIN[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(6),
	o => \BIN[6]~input_o\);

\BIN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(5),
	o => \BIN[5]~input_o\);

\registro~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~10_combout\ = (\BIN[7]~input_o\ & (!\BIN[5]~input_o\ & ((\BIN[6]~input_o\) # (!\BIN[4]~input_o\)))) # (!\BIN[7]~input_o\ & (\BIN[5]~input_o\ & ((\BIN[4]~input_o\) # (!\BIN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[4]~input_o\,
	datab => \BIN[6]~input_o\,
	datac => \BIN[7]~input_o\,
	datad => \BIN[5]~input_o\,
	combout => \registro~10_combout\);

\BIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(3),
	o => \BIN[3]~input_o\);

\registro~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~11_combout\ = (\BIN[6]~input_o\ & (!\BIN[4]~input_o\ & (\BIN[7]~input_o\ $ (!\BIN[5]~input_o\)))) # (!\BIN[6]~input_o\ & (\BIN[7]~input_o\ & (!\BIN[5]~input_o\ & \BIN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[7]~input_o\,
	datab => \BIN[6]~input_o\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[4]~input_o\,
	combout => \registro~11_combout\);

\registro~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~12_combout\ = (\BIN[6]~input_o\ & ((\BIN[5]~input_o\ & ((\BIN[7]~input_o\) # (\BIN[4]~input_o\))) # (!\BIN[5]~input_o\ & ((!\BIN[4]~input_o\) # (!\BIN[7]~input_o\))))) # (!\BIN[6]~input_o\ & (\BIN[4]~input_o\ $ (((\BIN[5]~input_o\) # 
-- (!\BIN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[6]~input_o\,
	datab => \BIN[5]~input_o\,
	datac => \BIN[7]~input_o\,
	datad => \BIN[4]~input_o\,
	combout => \registro~12_combout\);

\registro~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~29_combout\ = \registro~11_combout\ $ ((((!\BIN[3]~input_o\ & \registro~12_combout\)) # (!\registro~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~10_combout\,
	datab => \BIN[3]~input_o\,
	datac => \registro~11_combout\,
	datad => \registro~12_combout\,
	combout => \registro~29_combout\);

\registro~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~13_combout\ = (\BIN[7]~input_o\ & (\registro~29_combout\ & ((\BIN[5]~input_o\) # (\BIN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[7]~input_o\,
	datab => \registro~29_combout\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[6]~input_o\,
	combout => \registro~13_combout\);

\registro~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~14_combout\ = (\BIN[6]~input_o\ & ((\BIN[4]~input_o\ & ((\BIN[5]~input_o\) # (!\BIN[7]~input_o\))) # (!\BIN[4]~input_o\ & (\BIN[5]~input_o\ & !\BIN[7]~input_o\)))) # (!\BIN[6]~input_o\ & (((!\BIN[5]~input_o\ & \BIN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[4]~input_o\,
	datab => \BIN[6]~input_o\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[7]~input_o\,
	combout => \registro~14_combout\);

\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\BIN[5]~input_o\) # (\BIN[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[5]~input_o\,
	datab => \BIN[6]~input_o\,
	combout => \LessThan0~0_combout\);

\registro~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~15_combout\ = (\registro~14_combout\ & (((!\registro~29_combout\) # (!\LessThan0~0_combout\)) # (!\BIN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~14_combout\,
	datab => \BIN[7]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \registro~29_combout\,
	combout => \registro~15_combout\);

\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\BIN[7]~input_o\ & \BIN[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[7]~input_o\,
	datab => \BIN[6]~input_o\,
	combout => \LessThan3~0_combout\);

\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\LessThan3~0_combout\ & ((\BIN[3]~input_o\) # ((\BIN[4]~input_o\) # (\BIN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \BIN[3]~input_o\,
	datac => \BIN[4]~input_o\,
	datad => \BIN[5]~input_o\,
	combout => \LessThan3~1_combout\);

\registro~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~16_combout\ = (\registro~11_combout\ & ((\BIN[3]~input_o\ $ (\registro~12_combout\)))) # (!\registro~11_combout\ & (!\registro~12_combout\ & ((\BIN[3]~input_o\) # (!\registro~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~11_combout\,
	datab => \registro~10_combout\,
	datac => \BIN[3]~input_o\,
	datad => \registro~12_combout\,
	combout => \registro~16_combout\);

\BIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(2),
	o => \BIN[2]~input_o\);

\registro~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~17_combout\ = (\registro~10_combout\ & (((\registro~12_combout\ & !\BIN[3]~input_o\)))) # (!\registro~10_combout\ & (\registro~11_combout\ & ((\BIN[3]~input_o\) # (!\registro~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~11_combout\,
	datab => \registro~12_combout\,
	datac => \registro~10_combout\,
	datad => \BIN[3]~input_o\,
	combout => \registro~17_combout\);

\registro~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~18_combout\ = (\BIN[3]~input_o\ & ((\registro~10_combout\) # ((\registro~11_combout\)))) # (!\BIN[3]~input_o\ & (!\registro~11_combout\ & ((\registro~12_combout\) # (!\registro~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[3]~input_o\,
	datab => \registro~10_combout\,
	datac => \registro~12_combout\,
	datad => \registro~11_combout\,
	combout => \registro~18_combout\);

\registro~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~30_combout\ = \registro~17_combout\ $ ((((!\BIN[2]~input_o\ & \registro~18_combout\)) # (!\registro~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~16_combout\,
	datab => \BIN[2]~input_o\,
	datac => \registro~17_combout\,
	datad => \registro~18_combout\,
	combout => \registro~30_combout\);

\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\registro~15_combout\ & ((\registro~29_combout\ $ (!\LessThan3~1_combout\)) # (!\registro~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~15_combout\,
	datab => \registro~29_combout\,
	datac => \LessThan3~1_combout\,
	datad => \registro~30_combout\,
	combout => \Add5~0_combout\);

\registro~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~19_combout\ = \Add5~0_combout\ $ (((\registro~14_combout\) # (!\registro~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~13_combout\,
	datac => \registro~14_combout\,
	datad => \Add5~0_combout\,
	combout => \registro~19_combout\);

\registro~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~20_combout\ = (\registro~17_combout\ & ((\BIN[2]~input_o\ $ (\registro~18_combout\)))) # (!\registro~17_combout\ & (!\registro~18_combout\ & ((\BIN[2]~input_o\) # (!\registro~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~17_combout\,
	datab => \registro~16_combout\,
	datac => \BIN[2]~input_o\,
	datad => \registro~18_combout\,
	combout => \registro~20_combout\);

\BIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(1),
	o => \BIN[1]~input_o\);

\registro~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~21_combout\ = (\registro~16_combout\ & (((\registro~18_combout\ & !\BIN[2]~input_o\)))) # (!\registro~16_combout\ & (\registro~17_combout\ & ((\BIN[2]~input_o\) # (!\registro~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~17_combout\,
	datab => \registro~18_combout\,
	datac => \registro~16_combout\,
	datad => \BIN[2]~input_o\,
	combout => \registro~21_combout\);

\registro~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~22_combout\ = (\BIN[2]~input_o\ & ((\registro~16_combout\) # ((\registro~17_combout\)))) # (!\BIN[2]~input_o\ & (!\registro~17_combout\ & ((\registro~18_combout\) # (!\registro~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[2]~input_o\,
	datab => \registro~16_combout\,
	datac => \registro~18_combout\,
	datad => \registro~17_combout\,
	combout => \registro~22_combout\);

\registro~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~23_combout\ = \registro~21_combout\ $ ((((!\BIN[1]~input_o\ & \registro~22_combout\)) # (!\registro~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~20_combout\,
	datab => \BIN[1]~input_o\,
	datac => \registro~21_combout\,
	datad => \registro~22_combout\,
	combout => \registro~23_combout\);

\registro~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~24_combout\ = \registro~30_combout\ $ (((!\Add5~0_combout\ & ((\registro~14_combout\) # (!\registro~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~30_combout\,
	datab => \Add5~0_combout\,
	datac => \registro~13_combout\,
	datad => \registro~14_combout\,
	combout => \registro~24_combout\);

\registro~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~6_combout\ = (\BIN[4]~input_o\ & ((\BIN[7]~input_o\ & (\BIN[5]~input_o\ $ (!\BIN[6]~input_o\))) # (!\BIN[7]~input_o\ & (\BIN[5]~input_o\ & !\BIN[6]~input_o\)))) # (!\BIN[4]~input_o\ & ((\BIN[7]~input_o\ & (\BIN[5]~input_o\ & !\BIN[6]~input_o\)) 
-- # (!\BIN[7]~input_o\ & (!\BIN[5]~input_o\ & \BIN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[4]~input_o\,
	datab => \BIN[7]~input_o\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[6]~input_o\,
	combout => \registro~6_combout\);

\registro~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~4_combout\ = (\BIN[5]~input_o\ & (\BIN[6]~input_o\ $ (((!\BIN[7]~input_o\) # (!\BIN[4]~input_o\))))) # (!\BIN[5]~input_o\ & ((\BIN[4]~input_o\ & (\BIN[7]~input_o\ & !\BIN[6]~input_o\)) # (!\BIN[4]~input_o\ & (!\BIN[7]~input_o\ & 
-- \BIN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[4]~input_o\,
	datab => \BIN[7]~input_o\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[6]~input_o\,
	combout => \registro~4_combout\);

\registro~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~3_combout\ = (\BIN[4]~input_o\ & ((\BIN[7]~input_o\ & ((\BIN[5]~input_o\) # (!\BIN[6]~input_o\))) # (!\BIN[7]~input_o\ & (\BIN[5]~input_o\ & !\BIN[6]~input_o\)))) # (!\BIN[4]~input_o\ & ((\BIN[7]~input_o\ & (\BIN[5]~input_o\ & 
-- !\BIN[6]~input_o\)) # (!\BIN[7]~input_o\ & (!\BIN[5]~input_o\ & \BIN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[4]~input_o\,
	datab => \BIN[7]~input_o\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[6]~input_o\,
	combout => \registro~3_combout\);

\registro~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~8_combout\ = (\BIN[2]~input_o\ & (((\BIN[3]~input_o\)))) # (!\BIN[2]~input_o\ & ((\BIN[3]~input_o\ & (\registro~4_combout\)) # (!\BIN[3]~input_o\ & ((\registro~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[2]~input_o\,
	datab => \registro~4_combout\,
	datac => \BIN[3]~input_o\,
	datad => \registro~3_combout\,
	combout => \registro~8_combout\);

\registro~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~7_combout\ = (\BIN[7]~input_o\ & (\BIN[6]~input_o\ $ (((!\BIN[5]~input_o\) # (!\BIN[4]~input_o\))))) # (!\BIN[7]~input_o\ & ((\BIN[5]~input_o\ & ((!\BIN[6]~input_o\))) # (!\BIN[5]~input_o\ & (!\BIN[4]~input_o\ & \BIN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[4]~input_o\,
	datab => \BIN[7]~input_o\,
	datac => \BIN[5]~input_o\,
	datad => \BIN[6]~input_o\,
	combout => \registro~7_combout\);

\registro~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~9_combout\ = (\BIN[2]~input_o\ & ((\registro~8_combout\ & ((\registro~7_combout\))) # (!\registro~8_combout\ & (\registro~6_combout\)))) # (!\BIN[2]~input_o\ & (((\registro~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~6_combout\,
	datab => \BIN[2]~input_o\,
	datac => \registro~8_combout\,
	datad => \registro~7_combout\,
	combout => \registro~9_combout\);

\Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = (\registro~29_combout\ $ (!\LessThan3~1_combout\)) # (!\registro~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~29_combout\,
	datab => \LessThan3~1_combout\,
	datad => \registro~30_combout\,
	combout => \Add5~1_combout\);

\registro~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~25_combout\ = (\registro~15_combout\ & (((!\Add5~1_combout\)))) # (!\registro~15_combout\ & (\registro~13_combout\ & (!\registro~14_combout\ & \Add5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~13_combout\,
	datab => \registro~15_combout\,
	datac => \registro~14_combout\,
	datad => \Add5~1_combout\,
	combout => \registro~25_combout\);

\BIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIN(0),
	o => \BIN[0]~input_o\);

\registro~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~26_combout\ = (\BIN[1]~input_o\ & ((\registro~20_combout\) # ((\registro~21_combout\)))) # (!\BIN[1]~input_o\ & (!\registro~21_combout\ & ((\registro~22_combout\) # (!\registro~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BIN[1]~input_o\,
	datab => \registro~20_combout\,
	datac => \registro~22_combout\,
	datad => \registro~21_combout\,
	combout => \registro~26_combout\);

\registro~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~27_combout\ = (\registro~21_combout\ & ((\BIN[1]~input_o\ $ (\registro~22_combout\)))) # (!\registro~21_combout\ & (!\registro~22_combout\ & ((\BIN[1]~input_o\) # (!\registro~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~21_combout\,
	datab => \registro~20_combout\,
	datac => \BIN[1]~input_o\,
	datad => \registro~22_combout\,
	combout => \registro~27_combout\);

\registro~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \registro~28_combout\ = (\registro~20_combout\ & (((\registro~22_combout\ & !\BIN[1]~input_o\)))) # (!\registro~20_combout\ & (\registro~21_combout\ & ((\BIN[1]~input_o\) # (!\registro~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registro~21_combout\,
	datab => \registro~22_combout\,
	datac => \registro~20_combout\,
	datad => \BIN[1]~input_o\,
	combout => \registro~28_combout\);

ww_CM(0) <= \CM[0]~output_o\;

ww_CM(1) <= \CM[1]~output_o\;

ww_CM(2) <= \CM[2]~output_o\;

ww_CM(3) <= \CM[3]~output_o\;

ww_DM(0) <= \DM[0]~output_o\;

ww_DM(1) <= \DM[1]~output_o\;

ww_DM(2) <= \DM[2]~output_o\;

ww_DM(3) <= \DM[3]~output_o\;

ww_UM(0) <= \UM[0]~output_o\;

ww_UM(1) <= \UM[1]~output_o\;

ww_UM(2) <= \UM[2]~output_o\;

ww_UM(3) <= \UM[3]~output_o\;

ww_Cen(0) <= \Cen[0]~output_o\;

ww_Cen(1) <= \Cen[1]~output_o\;

ww_Cen(2) <= \Cen[2]~output_o\;

ww_Cen(3) <= \Cen[3]~output_o\;

ww_Dec(0) <= \Dec[0]~output_o\;

ww_Dec(1) <= \Dec[1]~output_o\;

ww_Dec(2) <= \Dec[2]~output_o\;

ww_Dec(3) <= \Dec[3]~output_o\;

ww_Unid(0) <= \Unid[0]~output_o\;

ww_Unid(1) <= \Unid[1]~output_o\;

ww_Unid(2) <= \Unid[2]~output_o\;

ww_Unid(3) <= \Unid[3]~output_o\;
END structure;


