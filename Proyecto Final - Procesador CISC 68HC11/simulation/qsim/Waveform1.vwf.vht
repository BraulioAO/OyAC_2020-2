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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/30/2020 02:45:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin_BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin_BCD_vhd_vec_tst IS
END bin_BCD_vhd_vec_tst;
ARCHITECTURE bin_BCD_arch OF bin_BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cen : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CM : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Dec : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DM : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL UM : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Unid : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT bin_BCD
	PORT (
	BIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Dec : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	UM : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Unid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bin_BCD
	PORT MAP (
-- list connections between master ports and signals
	BIN => BIN,
	Cen => Cen,
	CM => CM,
	Dec => Dec,
	DM => DM,
	UM => UM,
	Unid => Unid
	);
-- BIN[7]
t_prcs_BIN_7: PROCESS
BEGIN
	BIN(7) <= '0';
	WAIT FOR 100000 ps;
	BIN(7) <= '1';
	WAIT FOR 100000 ps;
	BIN(7) <= '0';
	WAIT FOR 100000 ps;
	BIN(7) <= '1';
	WAIT FOR 50000 ps;
	BIN(7) <= '0';
	WAIT FOR 50000 ps;
	BIN(7) <= '1';
	WAIT FOR 100000 ps;
	BIN(7) <= '0';
	WAIT FOR 50000 ps;
	BIN(7) <= '1';
	WAIT FOR 50000 ps;
	BIN(7) <= '0';
	WAIT FOR 100000 ps;
	BIN(7) <= '1';
	WAIT FOR 50000 ps;
	BIN(7) <= '0';
	WAIT FOR 50000 ps;
	BIN(7) <= '1';
	WAIT FOR 50000 ps;
	BIN(7) <= '0';
WAIT;
END PROCESS t_prcs_BIN_7;
-- BIN[6]
t_prcs_BIN_6: PROCESS
BEGIN
	BIN(6) <= '1';
	WAIT FOR 150000 ps;
	BIN(6) <= '0';
	WAIT FOR 50000 ps;
	BIN(6) <= '1';
	WAIT FOR 150000 ps;
	BIN(6) <= '0';
	WAIT FOR 50000 ps;
	BIN(6) <= '1';
	WAIT FOR 50000 ps;
	BIN(6) <= '0';
	WAIT FOR 100000 ps;
	BIN(6) <= '1';
	WAIT FOR 100000 ps;
	BIN(6) <= '0';
	WAIT FOR 50000 ps;
	BIN(6) <= '1';
	WAIT FOR 50000 ps;
	BIN(6) <= '0';
	WAIT FOR 50000 ps;
	BIN(6) <= '1';
	WAIT FOR 150000 ps;
	BIN(6) <= '0';
WAIT;
END PROCESS t_prcs_BIN_6;
-- BIN[5]
t_prcs_BIN_5: PROCESS
BEGIN
	BIN(5) <= '0';
	WAIT FOR 50000 ps;
	BIN(5) <= '1';
	WAIT FOR 300000 ps;
	BIN(5) <= '0';
	WAIT FOR 50000 ps;
	BIN(5) <= '1';
	WAIT FOR 100000 ps;
	BIN(5) <= '0';
	WAIT FOR 50000 ps;
	BIN(5) <= '1';
	WAIT FOR 100000 ps;
	BIN(5) <= '0';
	WAIT FOR 200000 ps;
	BIN(5) <= '1';
	WAIT FOR 50000 ps;
	BIN(5) <= '0';
WAIT;
END PROCESS t_prcs_BIN_5;
-- BIN[4]
t_prcs_BIN_4: PROCESS
BEGIN
	BIN(4) <= '1';
	WAIT FOR 100000 ps;
	BIN(4) <= '0';
	WAIT FOR 100000 ps;
	BIN(4) <= '1';
	WAIT FOR 150000 ps;
	BIN(4) <= '0';
	WAIT FOR 50000 ps;
	BIN(4) <= '1';
	WAIT FOR 400000 ps;
	BIN(4) <= '0';
	WAIT FOR 50000 ps;
	BIN(4) <= '1';
	WAIT FOR 100000 ps;
	BIN(4) <= '0';
WAIT;
END PROCESS t_prcs_BIN_4;
-- BIN[3]
t_prcs_BIN_3: PROCESS
BEGIN
	BIN(3) <= '0';
	WAIT FOR 50000 ps;
	BIN(3) <= '1';
	WAIT FOR 200000 ps;
	BIN(3) <= '0';
	WAIT FOR 50000 ps;
	BIN(3) <= '1';
	WAIT FOR 50000 ps;
	BIN(3) <= '0';
	WAIT FOR 200000 ps;
	BIN(3) <= '1';
	WAIT FOR 100000 ps;
	BIN(3) <= '0';
	WAIT FOR 150000 ps;
	BIN(3) <= '1';
	WAIT FOR 50000 ps;
	BIN(3) <= '0';
	WAIT FOR 100000 ps;
	BIN(3) <= '1';
WAIT;
END PROCESS t_prcs_BIN_3;
-- BIN[2]
t_prcs_BIN_2: PROCESS
BEGIN
	BIN(2) <= '1';
	WAIT FOR 50000 ps;
	BIN(2) <= '0';
	WAIT FOR 100000 ps;
	BIN(2) <= '1';
	WAIT FOR 50000 ps;
	BIN(2) <= '0';
	WAIT FOR 50000 ps;
	BIN(2) <= '1';
	WAIT FOR 100000 ps;
	BIN(2) <= '0';
	WAIT FOR 150000 ps;
	BIN(2) <= '1';
	WAIT FOR 150000 ps;
	BIN(2) <= '0';
	WAIT FOR 100000 ps;
	BIN(2) <= '1';
	WAIT FOR 50000 ps;
	BIN(2) <= '0';
	WAIT FOR 50000 ps;
	BIN(2) <= '1';
WAIT;
END PROCESS t_prcs_BIN_2;
-- BIN[1]
t_prcs_BIN_1: PROCESS
BEGIN
	BIN(1) <= '1';
	WAIT FOR 50000 ps;
	BIN(1) <= '0';
	WAIT FOR 150000 ps;
	BIN(1) <= '1';
	WAIT FOR 50000 ps;
	BIN(1) <= '0';
	WAIT FOR 150000 ps;
	BIN(1) <= '1';
	WAIT FOR 100000 ps;
	BIN(1) <= '0';
	WAIT FOR 50000 ps;
	BIN(1) <= '1';
	WAIT FOR 50000 ps;
	BIN(1) <= '0';
	WAIT FOR 150000 ps;
	BIN(1) <= '1';
	WAIT FOR 50000 ps;
	BIN(1) <= '0';
	WAIT FOR 50000 ps;
	BIN(1) <= '1';
	WAIT FOR 100000 ps;
	BIN(1) <= '0';
WAIT;
END PROCESS t_prcs_BIN_1;
-- BIN[0]
t_prcs_BIN_0: PROCESS
BEGIN
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 200000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 200000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 50000 ps;
	BIN(0) <= '0';
	WAIT FOR 50000 ps;
	BIN(0) <= '1';
	WAIT FOR 100000 ps;
	BIN(0) <= '0';
WAIT;
END PROCESS t_prcs_BIN_0;
END bin_BCD_arch;
