--
-- Copyright (c) 2017 XXXX, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.controlador_Obs_pkg.all;
use work.controlador_pkg.all;
use work.componentes_controlador_cache_multi_pkg.all;

entity controlador_multi is
port (reloj, pcero: in std_logic;
		arb_peticion: out std_logic;
		arb_concesion: in std_logic;
		pet: in tp_contro_e;
		pet_bus: in tp_contro_Obs_e;
		s_estado: in tp_contro_cam_estado;
		s_control: out tp_contro_cam_cntl;
		mxO: out std_logic;
		resp: out tp_contro_s;
		resp_O: out tp_contro_Obs_s;
		resp_m: in tp_cntl_memoria_e;
		pet_m: out tp_cntl_memoria_s);
end;

architecture estruc of controlador_multi is
signal cntl: std_logic;
signal s_control_P, s_control_O: tp_contro_cam_cntl;
signal t_resp_O: tp_contro_Obs_s;

signal observacion:std_logic;

signal trans_bus: std_logic;
begin

-- agente procesador
contro_proc: controlador port map (reloj => reloj, pcero => pcero, arb_pet => arb_peticion, arb_conc => arb_concesion,
					 trans_bus => trans_bus, observacion => observacion, pet => pet, s_estado => s_estado, s_control => s_control_P,
					resp => resp, resp_m => resp_m, pet_m => pet_m);
-- agente observador
contro_obser: observador port map (reloj => reloj, pcero => pcero, pet => pet_bus, s_estado => s_estado, trans_bus => trans_bus,
					observacion => observacion, s_control => s_control_O, resp => t_resp_O);

resp_O <= t_resp_O;

-- control muxO: solo afecta a la direccion de los campos ET y EST
mxO <= observacion and (not trans_bus);

-- control muxC
cntl <= observacion and (not trans_bus);

-- muxC desacoplado: los campos ET y EST se asignan al agente seleccionado (cntl),
-- el campo DAT (y muxE) siempre al agente procesador
s_control <= (ET_acc  => s_control_O.ET_acc,  ET_esc  => s_control_O.ET_esc,
			  EST_acc => s_control_O.EST_acc, EST_esc => s_control_O.EST_esc, EST_DE => s_control_O.EST_DE,
			  DAT_acc => s_control_P.DAT_acc, DAT_esc => s_control_P.DAT_esc, muxE => s_control_P.muxE)
			when cntl = '1' else s_control_P;

end;
