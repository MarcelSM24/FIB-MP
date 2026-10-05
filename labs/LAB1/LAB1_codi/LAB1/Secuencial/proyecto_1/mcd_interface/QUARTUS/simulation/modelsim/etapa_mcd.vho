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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/09/2026 12:55:52"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	etapa_mcd IS
    PORT (
	reloj : IN std_logic;
	pcero : IN std_logic;
	\pet_dv.val\ : IN std_logic;
	\pet_dv.dat_b\ : IN std_logic_vector(7 DOWNTO 0);
	\pet_dv.dat_a\ : IN std_logic_vector(7 DOWNTO 0);
	\pet_l.listo\ : OUT std_logic;
	\resp_dv.val\ : OUT std_logic;
	\resp_dv.dat\ : OUT std_logic_vector(7 DOWNTO 0);
	\resp_l.listo\ : IN std_logic
	);
END etapa_mcd;

-- Design Ports Information
-- pet_l.listo	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.val	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[4]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_dv.dat[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcero	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resp_l.listo	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.val	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[7]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[6]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[5]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[4]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_a[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pet_dv.dat_b[1]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF etapa_mcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_pcero : std_logic;
SIGNAL \ww_pet_dv.val\ : std_logic;
SIGNAL \ww_pet_dv.dat_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_pet_dv.dat_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_pet_l.listo\ : std_logic;
SIGNAL \ww_resp_dv.val\ : std_logic;
SIGNAL \ww_resp_dv.dat\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_resp_l.listo\ : std_logic;
SIGNAL \reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pcero~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pr_mcd|cnt|reg_estado:v_estado.CALC~q\ : std_logic;
SIGNAL \pr_mcd|cnt|pe~0_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.CALC~1_combout\ : std_logic;
SIGNAL \reloj~input_o\ : std_logic;
SIGNAL \reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \pet_l.listo~output_o\ : std_logic;
SIGNAL \resp_dv.val~output_o\ : std_logic;
SIGNAL \resp_dv.dat[0]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[1]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[2]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[3]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[4]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[5]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[6]~output_o\ : std_logic;
SIGNAL \resp_dv.dat[7]~output_o\ : std_logic;
SIGNAL \pcero~input_o\ : std_logic;
SIGNAL \pet_dv.val~input_o\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\ : std_logic;
SIGNAL \pet_dv.dat_b[7]~input_o\ : std_logic;
SIGNAL \pcero~inputclkctrl_outclk\ : std_logic;
SIGNAL \pr_mcd|cnt|mxa~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[0]~8_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[0]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector7~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[0]~9\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[1]~10_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[1]~input_o\ : std_logic;
SIGNAL \pet_dv.dat_b[1]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[1]~1_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[1]~11\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[2]~12_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[2]~input_o\ : std_logic;
SIGNAL \pet_dv.dat_b[2]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[2]~2_combout\ : std_logic;
SIGNAL \pet_dv.dat_b[3]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector4~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[2]~13\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[3]~14_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[3]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[3]~3_combout\ : std_logic;
SIGNAL \pr_mcd|cam|ig_cero|Equal0~0_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|pe~1_combout\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[5]~5_combout\ : std_logic;
SIGNAL \pet_dv.dat_b[5]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[3]~15\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[4]~16_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[4]~input_o\ : std_logic;
SIGNAL \pet_dv.dat_b[4]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[4]~4_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[4]~17\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[5]~18_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[5]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector2~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[5]~19\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[6]~20_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[6]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[6]~6_combout\ : std_logic;
SIGNAL \pet_dv.dat_b[6]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[0]~0_combout\ : std_logic;
SIGNAL \pet_dv.dat_b[0]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~1_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~3_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~5_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~7_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~9_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~11_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~13_cout\ : std_logic;
SIGNAL \pr_mcd|cam|menor|LessThan0~14_combout\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector0~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[6]~21\ : std_logic;
SIGNAL \pr_mcd|cam|rega|s[7]~22_combout\ : std_logic;
SIGNAL \pet_dv.dat_a[7]~input_o\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s[7]~7_combout\ : std_logic;
SIGNAL \pr_mcd|cam|ig_cero|Equal0~1_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0_combout\ : std_logic;
SIGNAL \resp_l.listo~input_o\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~2_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~3_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|reg_estado:v_estado.HECHO~q\ : std_logic;
SIGNAL \pr_mcd|cnt|prx_esta:v_prxestado.ESP~0_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|reg_estado:v_estado.ESP~q\ : std_logic;
SIGNAL \pr_mcd|cnt|desocupada~0_combout\ : std_logic;
SIGNAL \pr_mcd|cnt|finalizada~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector6~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector5~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector3~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|muxa|Selector1~0_combout\ : std_logic;
SIGNAL \pr_mcd|cam|regb|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pr_mcd|cam|rega|s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_pcero~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_reloj <= reloj;
ww_pcero <= pcero;
\ww_pet_dv.val\ <= \pet_dv.val\;
\ww_pet_dv.dat_b\ <= \pet_dv.dat_b\;
\ww_pet_dv.dat_a\ <= \pet_dv.dat_a\;
\pet_l.listo\ <= \ww_pet_l.listo\;
\resp_dv.val\ <= \ww_resp_dv.val\;
\resp_dv.dat\ <= \ww_resp_dv.dat\;
\ww_resp_l.listo\ <= \resp_l.listo\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj~input_o\);

\pcero~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pcero~input_o\);
\ALT_INV_pcero~inputclkctrl_outclk\ <= NOT \pcero~inputclkctrl_outclk\;

-- Location: FF_X77_Y46_N27
\pr_mcd|cnt|reg_estado:v_estado.CALC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cnt|prx_esta:v_prxestado.CALC~1_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cnt|reg_estado:v_estado.CALC~q\);

-- Location: LCCOMB_X77_Y46_N2
\pr_mcd|cnt|pe~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|pe~0_combout\ = (\pr_mcd|cnt|reg_estado:v_estado.CALC~q\ & !\pcero~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cnt|reg_estado:v_estado.CALC~q\,
	datac => \pcero~input_o\,
	combout => \pr_mcd|cnt|pe~0_combout\);

-- Location: LCCOMB_X77_Y46_N26
\pr_mcd|cnt|prx_esta:v_prxestado.CALC~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.CALC~1_combout\ = (!\pcero~input_o\ & ((\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\ & ((\pr_mcd|cnt|reg_estado:v_estado.CALC~q\) # (!\pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\))) # 
-- (!\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\ & (\pr_mcd|cnt|reg_estado:v_estado.CALC~q\ & !\pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcero~input_o\,
	datab => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\,
	datac => \pr_mcd|cnt|reg_estado:v_estado.CALC~q\,
	datad => \pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.CALC~1_combout\);

-- Location: IOIBUF_X38_Y0_N15
\reloj~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj,
	o => \reloj~input_o\);

-- Location: CLKCTRL_G29
\reloj~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~inputclkctrl_outclk\);

-- Location: IOOBUF_X81_Y49_N9
\pet_l.listo~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cnt|desocupada~0_combout\,
	devoe => ww_devoe,
	o => \pet_l.listo~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\resp_dv.val~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cnt|finalizada~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.val~output_o\);

-- Location: IOOBUF_X81_Y43_N2
\resp_dv.dat[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector7~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[0]~output_o\);

-- Location: IOOBUF_X81_Y44_N2
\resp_dv.dat[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector6~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[1]~output_o\);

-- Location: IOOBUF_X81_Y47_N2
\resp_dv.dat[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector5~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[2]~output_o\);

-- Location: IOOBUF_X81_Y52_N16
\resp_dv.dat[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector4~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[3]~output_o\);

-- Location: IOOBUF_X81_Y46_N9
\resp_dv.dat[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector3~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[4]~output_o\);

-- Location: IOOBUF_X81_Y46_N16
\resp_dv.dat[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector2~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[5]~output_o\);

-- Location: IOOBUF_X81_Y47_N9
\resp_dv.dat[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector1~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[6]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\resp_dv.dat[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pr_mcd|cam|muxa|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \resp_dv.dat[7]~output_o\);

-- Location: IOIBUF_X38_Y0_N22
\pcero~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pcero,
	o => \pcero~input_o\);

-- Location: IOIBUF_X81_Y52_N1
\pet_dv.val~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.val\,
	o => \pet_dv.val~input_o\);

-- Location: LCCOMB_X77_Y46_N14
\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\ = (!\pr_mcd|cnt|reg_estado:v_estado.ESP~q\ & \pet_dv.val~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cnt|reg_estado:v_estado.ESP~q\,
	datad => \pet_dv.val~input_o\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\);

-- Location: IOIBUF_X81_Y42_N8
\pet_dv.dat_b[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(7),
	o => \pet_dv.dat_b[7]~input_o\);

-- Location: CLKCTRL_G28
\pcero~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pcero~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pcero~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y46_N24
\pr_mcd|cnt|mxa~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|mxa~0_combout\ = (\pet_dv.val~input_o\ & (!\pcero~input_o\ & !\pr_mcd|cnt|reg_estado:v_estado.ESP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet_dv.val~input_o\,
	datac => \pcero~input_o\,
	datad => \pr_mcd|cnt|reg_estado:v_estado.ESP~q\,
	combout => \pr_mcd|cnt|mxa~0_combout\);

-- Location: LCCOMB_X78_Y46_N16
\pr_mcd|cam|rega|s[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[0]~8_combout\ = (\pr_mcd|cam|regb|s[0]~0_combout\ & (\pr_mcd|cam|muxa|Selector7~0_combout\ $ (VCC))) # (!\pr_mcd|cam|regb|s[0]~0_combout\ & ((\pr_mcd|cam|muxa|Selector7~0_combout\) # (GND)))
-- \pr_mcd|cam|rega|s[0]~9\ = CARRY((\pr_mcd|cam|muxa|Selector7~0_combout\) # (!\pr_mcd|cam|regb|s[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s[0]~0_combout\,
	datab => \pr_mcd|cam|muxa|Selector7~0_combout\,
	datad => VCC,
	combout => \pr_mcd|cam|rega|s[0]~8_combout\,
	cout => \pr_mcd|cam|rega|s[0]~9\);

-- Location: IOIBUF_X81_Y39_N1
\pet_dv.dat_a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(0),
	o => \pet_dv.dat_a[0]~input_o\);

-- Location: FF_X78_Y46_N17
\pr_mcd|cam|rega|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[0]~8_combout\,
	asdata => \pet_dv.dat_a[0]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(0));

-- Location: LCCOMB_X78_Y46_N4
\pr_mcd|cam|muxa|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector7~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|regb|s\(0))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|rega|s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s\(0),
	datab => \pr_mcd|cam|rega|s\(0),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector7~0_combout\);

-- Location: LCCOMB_X78_Y46_N18
\pr_mcd|cam|rega|s[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[1]~10_combout\ = (\pr_mcd|cam|muxa|Selector6~0_combout\ & ((\pr_mcd|cam|regb|s[1]~1_combout\ & (!\pr_mcd|cam|rega|s[0]~9\)) # (!\pr_mcd|cam|regb|s[1]~1_combout\ & (\pr_mcd|cam|rega|s[0]~9\ & VCC)))) # 
-- (!\pr_mcd|cam|muxa|Selector6~0_combout\ & ((\pr_mcd|cam|regb|s[1]~1_combout\ & ((\pr_mcd|cam|rega|s[0]~9\) # (GND))) # (!\pr_mcd|cam|regb|s[1]~1_combout\ & (!\pr_mcd|cam|rega|s[0]~9\))))
-- \pr_mcd|cam|rega|s[1]~11\ = CARRY((\pr_mcd|cam|muxa|Selector6~0_combout\ & (\pr_mcd|cam|regb|s[1]~1_combout\ & !\pr_mcd|cam|rega|s[0]~9\)) # (!\pr_mcd|cam|muxa|Selector6~0_combout\ & ((\pr_mcd|cam|regb|s[1]~1_combout\) # (!\pr_mcd|cam|rega|s[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|muxa|Selector6~0_combout\,
	datab => \pr_mcd|cam|regb|s[1]~1_combout\,
	datad => VCC,
	cin => \pr_mcd|cam|rega|s[0]~9\,
	combout => \pr_mcd|cam|rega|s[1]~10_combout\,
	cout => \pr_mcd|cam|rega|s[1]~11\);

-- Location: IOIBUF_X81_Y50_N1
\pet_dv.dat_a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(1),
	o => \pet_dv.dat_a[1]~input_o\);

-- Location: FF_X78_Y46_N19
\pr_mcd|cam|rega|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[1]~10_combout\,
	asdata => \pet_dv.dat_a[1]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(1));

-- Location: IOIBUF_X81_Y26_N8
\pet_dv.dat_b[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(1),
	o => \pet_dv.dat_b[1]~input_o\);

-- Location: FF_X78_Y46_N15
\pr_mcd|cam|regb|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[1]~1_combout\,
	asdata => \pet_dv.dat_b[1]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(1));

-- Location: LCCOMB_X78_Y46_N14
\pr_mcd|cam|regb|s[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[1]~1_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(1))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(1),
	datac => \pr_mcd|cam|regb|s\(1),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[1]~1_combout\);

-- Location: LCCOMB_X78_Y46_N20
\pr_mcd|cam|rega|s[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[2]~12_combout\ = ((\pr_mcd|cam|muxa|Selector5~0_combout\ $ (\pr_mcd|cam|regb|s[2]~2_combout\ $ (\pr_mcd|cam|rega|s[1]~11\)))) # (GND)
-- \pr_mcd|cam|rega|s[2]~13\ = CARRY((\pr_mcd|cam|muxa|Selector5~0_combout\ & ((!\pr_mcd|cam|rega|s[1]~11\) # (!\pr_mcd|cam|regb|s[2]~2_combout\))) # (!\pr_mcd|cam|muxa|Selector5~0_combout\ & (!\pr_mcd|cam|regb|s[2]~2_combout\ & !\pr_mcd|cam|rega|s[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|muxa|Selector5~0_combout\,
	datab => \pr_mcd|cam|regb|s[2]~2_combout\,
	datad => VCC,
	cin => \pr_mcd|cam|rega|s[1]~11\,
	combout => \pr_mcd|cam|rega|s[2]~12_combout\,
	cout => \pr_mcd|cam|rega|s[2]~13\);

-- Location: IOIBUF_X81_Y49_N15
\pet_dv.dat_a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(2),
	o => \pet_dv.dat_a[2]~input_o\);

-- Location: FF_X78_Y46_N21
\pr_mcd|cam|rega|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[2]~12_combout\,
	asdata => \pet_dv.dat_a[2]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(2));

-- Location: IOIBUF_X81_Y42_N1
\pet_dv.dat_b[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(2),
	o => \pet_dv.dat_b[2]~input_o\);

-- Location: FF_X78_Y46_N1
\pr_mcd|cam|regb|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[2]~2_combout\,
	asdata => \pet_dv.dat_b[2]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(2));

-- Location: LCCOMB_X78_Y46_N0
\pr_mcd|cam|regb|s[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[2]~2_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(2))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(2),
	datac => \pr_mcd|cam|regb|s\(2),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[2]~2_combout\);

-- Location: IOIBUF_X81_Y25_N8
\pet_dv.dat_b[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(3),
	o => \pet_dv.dat_b[3]~input_o\);

-- Location: FF_X79_Y46_N31
\pr_mcd|cam|regb|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[3]~3_combout\,
	asdata => \pet_dv.dat_b[3]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(3));

-- Location: LCCOMB_X77_Y46_N6
\pr_mcd|cam|muxa|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector4~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|regb|s\(3))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|rega|s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|regb|s\(3),
	datac => \pr_mcd|cam|rega|s\(3),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector4~0_combout\);

-- Location: LCCOMB_X78_Y46_N22
\pr_mcd|cam|rega|s[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[3]~14_combout\ = (\pr_mcd|cam|regb|s[3]~3_combout\ & ((\pr_mcd|cam|muxa|Selector4~0_combout\ & (!\pr_mcd|cam|rega|s[2]~13\)) # (!\pr_mcd|cam|muxa|Selector4~0_combout\ & ((\pr_mcd|cam|rega|s[2]~13\) # (GND))))) # 
-- (!\pr_mcd|cam|regb|s[3]~3_combout\ & ((\pr_mcd|cam|muxa|Selector4~0_combout\ & (\pr_mcd|cam|rega|s[2]~13\ & VCC)) # (!\pr_mcd|cam|muxa|Selector4~0_combout\ & (!\pr_mcd|cam|rega|s[2]~13\))))
-- \pr_mcd|cam|rega|s[3]~15\ = CARRY((\pr_mcd|cam|regb|s[3]~3_combout\ & ((!\pr_mcd|cam|rega|s[2]~13\) # (!\pr_mcd|cam|muxa|Selector4~0_combout\))) # (!\pr_mcd|cam|regb|s[3]~3_combout\ & (!\pr_mcd|cam|muxa|Selector4~0_combout\ & !\pr_mcd|cam|rega|s[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s[3]~3_combout\,
	datab => \pr_mcd|cam|muxa|Selector4~0_combout\,
	datad => VCC,
	cin => \pr_mcd|cam|rega|s[2]~13\,
	combout => \pr_mcd|cam|rega|s[3]~14_combout\,
	cout => \pr_mcd|cam|rega|s[3]~15\);

-- Location: IOIBUF_X81_Y41_N1
\pet_dv.dat_a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(3),
	o => \pet_dv.dat_a[3]~input_o\);

-- Location: FF_X78_Y46_N23
\pr_mcd|cam|rega|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[3]~14_combout\,
	asdata => \pet_dv.dat_a[3]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(3));

-- Location: LCCOMB_X79_Y46_N30
\pr_mcd|cam|regb|s[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[3]~3_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(3))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(3),
	datac => \pr_mcd|cam|regb|s\(3),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[3]~3_combout\);

-- Location: LCCOMB_X78_Y46_N10
\pr_mcd|cam|ig_cero|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|ig_cero|Equal0~0_combout\ = (!\pr_mcd|cam|regb|s[0]~0_combout\ & (!\pr_mcd|cam|regb|s[2]~2_combout\ & (!\pr_mcd|cam|regb|s[1]~1_combout\ & !\pr_mcd|cam|regb|s[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s[0]~0_combout\,
	datab => \pr_mcd|cam|regb|s[2]~2_combout\,
	datac => \pr_mcd|cam|regb|s[1]~1_combout\,
	datad => \pr_mcd|cam|regb|s[3]~3_combout\,
	combout => \pr_mcd|cam|ig_cero|Equal0~0_combout\);

-- Location: LCCOMB_X78_Y46_N6
\pr_mcd|cnt|pe~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|pe~1_combout\ = (\pr_mcd|cnt|mxa~0_combout\) # ((\pr_mcd|cnt|pe~0_combout\ & ((!\pr_mcd|cam|ig_cero|Equal0~0_combout\) # (!\pr_mcd|cam|ig_cero|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cnt|pe~0_combout\,
	datab => \pr_mcd|cnt|mxa~0_combout\,
	datac => \pr_mcd|cam|ig_cero|Equal0~1_combout\,
	datad => \pr_mcd|cam|ig_cero|Equal0~0_combout\,
	combout => \pr_mcd|cnt|pe~1_combout\);

-- Location: FF_X78_Y46_N3
\pr_mcd|cam|regb|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[7]~7_combout\,
	asdata => \pet_dv.dat_b[7]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(7));

-- Location: LCCOMB_X79_Y46_N2
\pr_mcd|cam|regb|s[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[5]~5_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(5))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|rega|s\(5),
	datac => \pr_mcd|cam|regb|s\(5),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[5]~5_combout\);

-- Location: IOIBUF_X81_Y52_N8
\pet_dv.dat_b[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(5),
	o => \pet_dv.dat_b[5]~input_o\);

-- Location: FF_X79_Y46_N3
\pr_mcd|cam|regb|s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[5]~5_combout\,
	asdata => \pet_dv.dat_b[5]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(5));

-- Location: LCCOMB_X78_Y46_N24
\pr_mcd|cam|rega|s[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[4]~16_combout\ = ((\pr_mcd|cam|muxa|Selector3~0_combout\ $ (\pr_mcd|cam|regb|s[4]~4_combout\ $ (\pr_mcd|cam|rega|s[3]~15\)))) # (GND)
-- \pr_mcd|cam|rega|s[4]~17\ = CARRY((\pr_mcd|cam|muxa|Selector3~0_combout\ & ((!\pr_mcd|cam|rega|s[3]~15\) # (!\pr_mcd|cam|regb|s[4]~4_combout\))) # (!\pr_mcd|cam|muxa|Selector3~0_combout\ & (!\pr_mcd|cam|regb|s[4]~4_combout\ & !\pr_mcd|cam|rega|s[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|muxa|Selector3~0_combout\,
	datab => \pr_mcd|cam|regb|s[4]~4_combout\,
	datad => VCC,
	cin => \pr_mcd|cam|rega|s[3]~15\,
	combout => \pr_mcd|cam|rega|s[4]~16_combout\,
	cout => \pr_mcd|cam|rega|s[4]~17\);

-- Location: IOIBUF_X81_Y53_N8
\pet_dv.dat_a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(4),
	o => \pet_dv.dat_a[4]~input_o\);

-- Location: FF_X78_Y46_N25
\pr_mcd|cam|rega|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[4]~16_combout\,
	asdata => \pet_dv.dat_a[4]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(4));

-- Location: IOIBUF_X81_Y49_N1
\pet_dv.dat_b[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(4),
	o => \pet_dv.dat_b[4]~input_o\);

-- Location: FF_X79_Y46_N1
\pr_mcd|cam|regb|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[4]~4_combout\,
	asdata => \pet_dv.dat_b[4]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(4));

-- Location: LCCOMB_X79_Y46_N0
\pr_mcd|cam|regb|s[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[4]~4_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(4))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(4),
	datac => \pr_mcd|cam|regb|s\(4),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[4]~4_combout\);

-- Location: LCCOMB_X78_Y46_N26
\pr_mcd|cam|rega|s[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[5]~18_combout\ = (\pr_mcd|cam|regb|s[5]~5_combout\ & ((\pr_mcd|cam|muxa|Selector2~0_combout\ & (!\pr_mcd|cam|rega|s[4]~17\)) # (!\pr_mcd|cam|muxa|Selector2~0_combout\ & ((\pr_mcd|cam|rega|s[4]~17\) # (GND))))) # 
-- (!\pr_mcd|cam|regb|s[5]~5_combout\ & ((\pr_mcd|cam|muxa|Selector2~0_combout\ & (\pr_mcd|cam|rega|s[4]~17\ & VCC)) # (!\pr_mcd|cam|muxa|Selector2~0_combout\ & (!\pr_mcd|cam|rega|s[4]~17\))))
-- \pr_mcd|cam|rega|s[5]~19\ = CARRY((\pr_mcd|cam|regb|s[5]~5_combout\ & ((!\pr_mcd|cam|rega|s[4]~17\) # (!\pr_mcd|cam|muxa|Selector2~0_combout\))) # (!\pr_mcd|cam|regb|s[5]~5_combout\ & (!\pr_mcd|cam|muxa|Selector2~0_combout\ & !\pr_mcd|cam|rega|s[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s[5]~5_combout\,
	datab => \pr_mcd|cam|muxa|Selector2~0_combout\,
	datad => VCC,
	cin => \pr_mcd|cam|rega|s[4]~17\,
	combout => \pr_mcd|cam|rega|s[5]~18_combout\,
	cout => \pr_mcd|cam|rega|s[5]~19\);

-- Location: IOIBUF_X81_Y53_N1
\pet_dv.dat_a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(5),
	o => \pet_dv.dat_a[5]~input_o\);

-- Location: FF_X78_Y46_N27
\pr_mcd|cam|rega|s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[5]~18_combout\,
	asdata => \pet_dv.dat_a[5]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(5));

-- Location: LCCOMB_X79_Y46_N24
\pr_mcd|cam|muxa|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector2~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|regb|s\(5))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|rega|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|regb|s\(5),
	datac => \pr_mcd|cam|rega|s\(5),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector2~0_combout\);

-- Location: LCCOMB_X78_Y46_N28
\pr_mcd|cam|rega|s[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[6]~20_combout\ = ((\pr_mcd|cam|muxa|Selector1~0_combout\ $ (\pr_mcd|cam|regb|s[6]~6_combout\ $ (\pr_mcd|cam|rega|s[5]~19\)))) # (GND)
-- \pr_mcd|cam|rega|s[6]~21\ = CARRY((\pr_mcd|cam|muxa|Selector1~0_combout\ & ((!\pr_mcd|cam|rega|s[5]~19\) # (!\pr_mcd|cam|regb|s[6]~6_combout\))) # (!\pr_mcd|cam|muxa|Selector1~0_combout\ & (!\pr_mcd|cam|regb|s[6]~6_combout\ & !\pr_mcd|cam|rega|s[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|muxa|Selector1~0_combout\,
	datab => \pr_mcd|cam|regb|s[6]~6_combout\,
	datad => VCC,
	cin => \pr_mcd|cam|rega|s[5]~19\,
	combout => \pr_mcd|cam|rega|s[6]~20_combout\,
	cout => \pr_mcd|cam|rega|s[6]~21\);

-- Location: IOIBUF_X81_Y50_N8
\pet_dv.dat_a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(6),
	o => \pet_dv.dat_a[6]~input_o\);

-- Location: FF_X78_Y46_N29
\pr_mcd|cam|rega|s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[6]~20_combout\,
	asdata => \pet_dv.dat_a[6]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(6));

-- Location: LCCOMB_X79_Y46_N28
\pr_mcd|cam|regb|s[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[6]~6_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(6))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(6),
	datac => \pr_mcd|cam|regb|s\(6),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[6]~6_combout\);

-- Location: IOIBUF_X81_Y39_N8
\pet_dv.dat_b[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(6),
	o => \pet_dv.dat_b[6]~input_o\);

-- Location: FF_X79_Y46_N29
\pr_mcd|cam|regb|s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[6]~6_combout\,
	asdata => \pet_dv.dat_b[6]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(6));

-- Location: LCCOMB_X78_Y46_N12
\pr_mcd|cam|regb|s[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[0]~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(0))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(0),
	datac => \pr_mcd|cam|regb|s\(0),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[0]~0_combout\);

-- Location: IOIBUF_X81_Y44_N8
\pet_dv.dat_b[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_b\(0),
	o => \pet_dv.dat_b[0]~input_o\);

-- Location: FF_X78_Y46_N13
\pr_mcd|cam|regb|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|regb|s[0]~0_combout\,
	asdata => \pet_dv.dat_b[0]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|regb|s\(0));

-- Location: LCCOMB_X79_Y46_N4
\pr_mcd|cam|menor|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~1_cout\ = CARRY((!\pr_mcd|cam|rega|s\(0) & \pr_mcd|cam|regb|s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|rega|s\(0),
	datab => \pr_mcd|cam|regb|s\(0),
	datad => VCC,
	cout => \pr_mcd|cam|menor|LessThan0~1_cout\);

-- Location: LCCOMB_X79_Y46_N6
\pr_mcd|cam|menor|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~3_cout\ = CARRY((\pr_mcd|cam|regb|s\(1) & (\pr_mcd|cam|rega|s\(1) & !\pr_mcd|cam|menor|LessThan0~1_cout\)) # (!\pr_mcd|cam|regb|s\(1) & ((\pr_mcd|cam|rega|s\(1)) # (!\pr_mcd|cam|menor|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s\(1),
	datab => \pr_mcd|cam|rega|s\(1),
	datad => VCC,
	cin => \pr_mcd|cam|menor|LessThan0~1_cout\,
	cout => \pr_mcd|cam|menor|LessThan0~3_cout\);

-- Location: LCCOMB_X79_Y46_N8
\pr_mcd|cam|menor|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~5_cout\ = CARRY((\pr_mcd|cam|regb|s\(2) & ((!\pr_mcd|cam|menor|LessThan0~3_cout\) # (!\pr_mcd|cam|rega|s\(2)))) # (!\pr_mcd|cam|regb|s\(2) & (!\pr_mcd|cam|rega|s\(2) & !\pr_mcd|cam|menor|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s\(2),
	datab => \pr_mcd|cam|rega|s\(2),
	datad => VCC,
	cin => \pr_mcd|cam|menor|LessThan0~3_cout\,
	cout => \pr_mcd|cam|menor|LessThan0~5_cout\);

-- Location: LCCOMB_X79_Y46_N10
\pr_mcd|cam|menor|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~7_cout\ = CARRY((\pr_mcd|cam|regb|s\(3) & (\pr_mcd|cam|rega|s\(3) & !\pr_mcd|cam|menor|LessThan0~5_cout\)) # (!\pr_mcd|cam|regb|s\(3) & ((\pr_mcd|cam|rega|s\(3)) # (!\pr_mcd|cam|menor|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s\(3),
	datab => \pr_mcd|cam|rega|s\(3),
	datad => VCC,
	cin => \pr_mcd|cam|menor|LessThan0~5_cout\,
	cout => \pr_mcd|cam|menor|LessThan0~7_cout\);

-- Location: LCCOMB_X79_Y46_N12
\pr_mcd|cam|menor|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~9_cout\ = CARRY((\pr_mcd|cam|rega|s\(4) & (\pr_mcd|cam|regb|s\(4) & !\pr_mcd|cam|menor|LessThan0~7_cout\)) # (!\pr_mcd|cam|rega|s\(4) & ((\pr_mcd|cam|regb|s\(4)) # (!\pr_mcd|cam|menor|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|rega|s\(4),
	datab => \pr_mcd|cam|regb|s\(4),
	datad => VCC,
	cin => \pr_mcd|cam|menor|LessThan0~7_cout\,
	cout => \pr_mcd|cam|menor|LessThan0~9_cout\);

-- Location: LCCOMB_X79_Y46_N14
\pr_mcd|cam|menor|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~11_cout\ = CARRY((\pr_mcd|cam|rega|s\(5) & ((!\pr_mcd|cam|menor|LessThan0~9_cout\) # (!\pr_mcd|cam|regb|s\(5)))) # (!\pr_mcd|cam|rega|s\(5) & (!\pr_mcd|cam|regb|s\(5) & !\pr_mcd|cam|menor|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|rega|s\(5),
	datab => \pr_mcd|cam|regb|s\(5),
	datad => VCC,
	cin => \pr_mcd|cam|menor|LessThan0~9_cout\,
	cout => \pr_mcd|cam|menor|LessThan0~11_cout\);

-- Location: LCCOMB_X79_Y46_N16
\pr_mcd|cam|menor|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~13_cout\ = CARRY((\pr_mcd|cam|rega|s\(6) & (\pr_mcd|cam|regb|s\(6) & !\pr_mcd|cam|menor|LessThan0~11_cout\)) # (!\pr_mcd|cam|rega|s\(6) & ((\pr_mcd|cam|regb|s\(6)) # (!\pr_mcd|cam|menor|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|rega|s\(6),
	datab => \pr_mcd|cam|regb|s\(6),
	datad => VCC,
	cin => \pr_mcd|cam|menor|LessThan0~11_cout\,
	cout => \pr_mcd|cam|menor|LessThan0~13_cout\);

-- Location: LCCOMB_X79_Y46_N18
\pr_mcd|cam|menor|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|menor|LessThan0~14_combout\ = (\pr_mcd|cam|rega|s\(7) & (\pr_mcd|cam|menor|LessThan0~13_cout\ & \pr_mcd|cam|regb|s\(7))) # (!\pr_mcd|cam|rega|s\(7) & ((\pr_mcd|cam|menor|LessThan0~13_cout\) # (\pr_mcd|cam|regb|s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(7),
	datad => \pr_mcd|cam|regb|s\(7),
	cin => \pr_mcd|cam|menor|LessThan0~13_cout\,
	combout => \pr_mcd|cam|menor|LessThan0~14_combout\);

-- Location: LCCOMB_X79_Y46_N22
\pr_mcd|cam|muxa|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector0~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|regb|s\(7))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|rega|s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s\(7),
	datab => \pr_mcd|cam|rega|s\(7),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector0~0_combout\);

-- Location: LCCOMB_X78_Y46_N30
\pr_mcd|cam|rega|s[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|rega|s[7]~22_combout\ = \pr_mcd|cam|regb|s[7]~7_combout\ $ (\pr_mcd|cam|rega|s[6]~21\ $ (!\pr_mcd|cam|muxa|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|regb|s[7]~7_combout\,
	datad => \pr_mcd|cam|muxa|Selector0~0_combout\,
	cin => \pr_mcd|cam|rega|s[6]~21\,
	combout => \pr_mcd|cam|rega|s[7]~22_combout\);

-- Location: IOIBUF_X81_Y26_N1
\pet_dv.dat_a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_pet_dv.dat_a\(7),
	o => \pet_dv.dat_a[7]~input_o\);

-- Location: FF_X78_Y46_N31
\pr_mcd|cam|rega|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cam|rega|s[7]~22_combout\,
	asdata => \pet_dv.dat_a[7]~input_o\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	sload => \pr_mcd|cnt|mxa~0_combout\,
	ena => \pr_mcd|cnt|pe~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cam|rega|s\(7));

-- Location: LCCOMB_X78_Y46_N2
\pr_mcd|cam|regb|s[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|regb|s[7]~7_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(7))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(7),
	datac => \pr_mcd|cam|regb|s\(7),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|regb|s[7]~7_combout\);

-- Location: LCCOMB_X78_Y46_N8
\pr_mcd|cam|ig_cero|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|ig_cero|Equal0~1_combout\ = (!\pr_mcd|cam|regb|s[5]~5_combout\ & (!\pr_mcd|cam|regb|s[7]~7_combout\ & (!\pr_mcd|cam|regb|s[4]~4_combout\ & !\pr_mcd|cam|regb|s[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cam|regb|s[5]~5_combout\,
	datab => \pr_mcd|cam|regb|s[7]~7_combout\,
	datac => \pr_mcd|cam|regb|s[4]~4_combout\,
	datad => \pr_mcd|cam|regb|s[6]~6_combout\,
	combout => \pr_mcd|cam|ig_cero|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y46_N8
\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0_combout\ = (\pr_mcd|cnt|reg_estado:v_estado.CALC~q\ & (!\pcero~input_o\ & (\pr_mcd|cam|ig_cero|Equal0~1_combout\ & \pr_mcd|cam|ig_cero|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cnt|reg_estado:v_estado.CALC~q\,
	datab => \pcero~input_o\,
	datac => \pr_mcd|cam|ig_cero|Equal0~1_combout\,
	datad => \pr_mcd|cam|ig_cero|Equal0~0_combout\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0_combout\);

-- Location: IOIBUF_X81_Y55_N1
\resp_l.listo~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_resp_l.listo\,
	o => \resp_l.listo~input_o\);

-- Location: LCCOMB_X77_Y46_N28
\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~2_combout\ = (\pr_mcd|cnt|reg_estado:v_estado.HECHO~q\ & \resp_l.listo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pr_mcd|cnt|reg_estado:v_estado.HECHO~q\,
	datad => \resp_l.listo~input_o\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~2_combout\);

-- Location: LCCOMB_X77_Y46_N10
\pr_mcd|cnt|prx_esta:v_prxestado.CALC~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\ = \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~2_combout\ $ (((\pr_mcd|cnt|reg_estado:v_estado.CALC~q\ & (\pr_mcd|cam|ig_cero|Equal0~1_combout\ & \pr_mcd|cam|ig_cero|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cnt|reg_estado:v_estado.CALC~q\,
	datab => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~2_combout\,
	datac => \pr_mcd|cam|ig_cero|Equal0~1_combout\,
	datad => \pr_mcd|cam|ig_cero|Equal0~0_combout\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\);

-- Location: LCCOMB_X77_Y46_N4
\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~3_combout\ = (\pr_mcd|cnt|finalizada~0_combout\ & ((\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0_combout\) # (\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\ $ (!\pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\)))) # 
-- (!\pr_mcd|cnt|finalizada~0_combout\ & (\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0_combout\ & (\pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\ $ (\pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pr_mcd|cnt|finalizada~0_combout\,
	datab => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~1_combout\,
	datac => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~0_combout\,
	datad => \pr_mcd|cnt|prx_esta:v_prxestado.CALC~0_combout\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~3_combout\);

-- Location: FF_X77_Y46_N5
\pr_mcd|cnt|reg_estado:v_estado.HECHO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cnt|prx_esta:v_prxestado.HECHO~3_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cnt|reg_estado:v_estado.HECHO~q\);

-- Location: LCCOMB_X77_Y46_N20
\pr_mcd|cnt|prx_esta:v_prxestado.ESP~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|prx_esta:v_prxestado.ESP~0_combout\ = (\pet_dv.val~input_o\ & (((!\resp_l.listo~input_o\)) # (!\pr_mcd|cnt|reg_estado:v_estado.HECHO~q\))) # (!\pet_dv.val~input_o\ & (\pr_mcd|cnt|reg_estado:v_estado.ESP~q\ & ((!\resp_l.listo~input_o\) # 
-- (!\pr_mcd|cnt|reg_estado:v_estado.HECHO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pet_dv.val~input_o\,
	datab => \pr_mcd|cnt|reg_estado:v_estado.HECHO~q\,
	datac => \pr_mcd|cnt|reg_estado:v_estado.ESP~q\,
	datad => \resp_l.listo~input_o\,
	combout => \pr_mcd|cnt|prx_esta:v_prxestado.ESP~0_combout\);

-- Location: FF_X77_Y46_N21
\pr_mcd|cnt|reg_estado:v_estado.ESP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj~inputclkctrl_outclk\,
	d => \pr_mcd|cnt|prx_esta:v_prxestado.ESP~0_combout\,
	clrn => \ALT_INV_pcero~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_mcd|cnt|reg_estado:v_estado.ESP~q\);

-- Location: LCCOMB_X77_Y46_N30
\pr_mcd|cnt|desocupada~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|desocupada~0_combout\ = (\pcero~input_o\) # (!\pr_mcd|cnt|reg_estado:v_estado.ESP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pcero~input_o\,
	datad => \pr_mcd|cnt|reg_estado:v_estado.ESP~q\,
	combout => \pr_mcd|cnt|desocupada~0_combout\);

-- Location: LCCOMB_X77_Y46_N22
\pr_mcd|cnt|finalizada~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cnt|finalizada~0_combout\ = (\pr_mcd|cnt|reg_estado:v_estado.HECHO~q\ & !\pcero~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cnt|reg_estado:v_estado.HECHO~q\,
	datac => \pcero~input_o\,
	combout => \pr_mcd|cnt|finalizada~0_combout\);

-- Location: LCCOMB_X77_Y46_N16
\pr_mcd|cam|muxa|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector6~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(1)))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(1),
	datac => \pr_mcd|cam|regb|s\(1),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector6~0_combout\);

-- Location: LCCOMB_X79_Y46_N20
\pr_mcd|cam|muxa|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector5~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(2)))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(2),
	datac => \pr_mcd|cam|regb|s\(2),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector5~0_combout\);

-- Location: LCCOMB_X79_Y46_N26
\pr_mcd|cam|muxa|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector3~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|regb|s\(4))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|rega|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|regb|s\(4),
	datac => \pr_mcd|cam|rega|s\(4),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector3~0_combout\);

-- Location: LCCOMB_X77_Y46_N12
\pr_mcd|cam|muxa|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pr_mcd|cam|muxa|Selector1~0_combout\ = (\pr_mcd|cam|menor|LessThan0~14_combout\ & ((\pr_mcd|cam|regb|s\(6)))) # (!\pr_mcd|cam|menor|LessThan0~14_combout\ & (\pr_mcd|cam|rega|s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pr_mcd|cam|rega|s\(6),
	datac => \pr_mcd|cam|regb|s\(6),
	datad => \pr_mcd|cam|menor|LessThan0~14_combout\,
	combout => \pr_mcd|cam|muxa|Selector1~0_combout\);

\ww_pet_l.listo\ <= \pet_l.listo~output_o\;

\ww_resp_dv.val\ <= \resp_dv.val~output_o\;

\ww_resp_dv.dat\(0) <= \resp_dv.dat[0]~output_o\;

\ww_resp_dv.dat\(1) <= \resp_dv.dat[1]~output_o\;

\ww_resp_dv.dat\(2) <= \resp_dv.dat[2]~output_o\;

\ww_resp_dv.dat\(3) <= \resp_dv.dat[3]~output_o\;

\ww_resp_dv.dat\(4) <= \resp_dv.dat[4]~output_o\;

\ww_resp_dv.dat\(5) <= \resp_dv.dat[5]~output_o\;

\ww_resp_dv.dat\(6) <= \resp_dv.dat[6]~output_o\;

\ww_resp_dv.dat\(7) <= \resp_dv.dat[7]~output_o\;
END structure;


