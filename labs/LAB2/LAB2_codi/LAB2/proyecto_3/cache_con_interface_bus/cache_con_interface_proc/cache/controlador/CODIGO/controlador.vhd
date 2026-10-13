--
-- Copyright (c) 2017 XXXX, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.param_disenyo_pkg.all;
use work.controlador_pkg.all;
use work.retardos_controlador_pkg.all;
use work.acciones_pkg.all;
use work.procedimientos_controlador_pkg.all;
--! @image html controlador.png 

entity controlador is
port (reloj, pcero: in std_logic;
		pet: in tp_contro_e;
		s_estado: in tp_contro_cam_estado;
		s_control: out tp_contro_cam_cntl;
		resp: out tp_contro_s;
		resp_m: in tp_cntl_memoria_e;
		pet_m: out tp_cntl_memoria_s);
end;
  
architecture compor of controlador is

--type tipoestado is (DES0, DES, CMPETIQ, INI, ESCINI, LEC, PML, PMEA, PMEF, ESPL, ESPEA, ESPEF, ESB, ESCP, HECHOL, HECHOE);
signal estado, prxestado: tipoestado;

signal derechos_acceso: std_logic;
      
begin
-- determinacion de los derechos de acceso al bloque
derechos_acceso <= '1' when (s_estado.AF and s_estado.EST) = '1' else '0';


-- registro de estado
reg_estado: process (reloj, pcero)
variable v_estado: tipoestado;
begin
	if pcero = puesta_cero then
		v_estado := DES0;
	elsif rising_edge(reloj) then
		v_estado := prxestado;
	end if;
	estado <= v_estado after retardo_estado;
end process;
 
-- logica de proximo estado
prx_esta: process(estado, pet, derechos_acceso, resp_m, pcero)
variable v_prxestado: tipoestado;
begin
	v_prxestado := estado;
	if (pcero = not puesta_cero) then
		case estado is
			when DES0 =>
				if hay_peticion_ini_procesador(pet) then
					v_prxestado := INI;
				end if;
			when INI =>
				v_prxestado := ESCINI;
			when ESCINI =>
				v_prxestado := DES;
			when DES =>
				if hay_peticion_procesador(pet) then
					v_prxestado := CMPETIQ;
				end if;
			when CMPETIQ =>
				if es_acierto_lectura(pet, derechos_acceso) then
					v_prxestado := DES;
				elsif es_fallo_lectura(pet, derechos_acceso) then
					v_prxestado := ESPL;
				elsif es_acierto_escritura(pet, derechos_acceso) then
					v_prxestado := ESPEA;
				elsif es_fallo_escritura(pet, derechos_acceso) then
					v_prxestado := ESPEF;
				end if;
			when ESPL =>
				if hay_respuesta_memoria(resp_m) then
					v_prxestado := ESB;
				end if;
			when ESB =>
				-- LEC eliminado en fallo de lectura
				v_prxestado := DES;
			when ESPEA =>
				if hay_respuesta_memoria(resp_m) then
					v_prxestado := ESCP;
				end if;
			when ESCP =>
				v_prxestado := DES;
			when ESPEF =>
				if hay_respuesta_memoria(resp_m) then
					v_prxestado := DES;
				end if;
		end case;
	else
		v_prxestado := DES0;
	end if;
	prxestado <= v_prxestado after retardo_logica_prx_estado;
end process;
 
-- logica de control y salida
logi_sal: process(estado, pet, derechos_acceso, resp_m, pcero)
variable v_s_control: tp_contro_cam_cntl;
variable v_pet_m: tp_cntl_memoria_s;
variable v_resp: tp_contro_s;
begin
	-- por_defecto deja muxE = '0' y muxL = '0'
	por_defecto(v_s_control, v_pet_m, v_resp);
	if (pcero = not puesta_cero) then
		case estado is
			when DES0 =>
				interfaces_DES(v_resp);
			when INI =>
				interfaces_en_CURSO(v_resp);
				actualizar_etiqueta(v_s_control);
				actualizar_estado(v_s_control, contenedor_valido);
				actualizar_dato(v_s_control);
			when ESCINI =>
				interfaces_HECHOE(v_resp);
			when DES =>
				interfaces_DES(v_resp);
				if hay_peticion_procesador(pet) then
					lectura_etiq_estado(v_s_control);
					-- lectura especulativa del campo de datos (acierto de lectura)
					lectura_datos(v_s_control);
				end if;
			when CMPETIQ =>
				if es_acierto_lectura(pet, derechos_acceso) then
					interfaces_HECHOL(v_resp);
				elsif es_fallo_lectura(pet, derechos_acceso) then
					interfaces_en_CURSO(v_resp);
					peticion_memoria_lectura(v_pet_m);
				elsif es_acierto_escritura(pet, derechos_acceso) or es_fallo_escritura(pet, derechos_acceso) then
					interfaces_en_CURSO(v_resp);
					peticion_memoria_escritura(v_pet_m);
				else
					interfaces_en_CURSO(v_resp);
				end if;
			when ESPL =>
				interfaces_en_CURSO(v_resp);
				if hay_respuesta_memoria(resp_m) then
					actu_datos_desde_bus(v_s_control);
					actualizar_etiqueta(v_s_control);
					actualizar_estado(v_s_control, contenedor_valido);
					actualizar_dato(v_s_control);
				end if;
			when ESB =>
				-- absorbe LEC + HECHOL: el dato se entrega al consumidor por el bypass muxL
				-- (dato del bus) mientras la cache termina de actualizarse
				interfaces_HECHOL(v_resp);
				v_s_control.muxL := '1';
			when ESPEA =>
				interfaces_en_CURSO(v_resp);
				if hay_respuesta_memoria(resp_m) then
					actualizar_dato(v_s_control);
				end if;
			when ESCP =>
				interfaces_HECHOE(v_resp);
			when ESPEF =>
				if hay_respuesta_memoria(resp_m) then
					interfaces_HECHOE(v_resp);
				else
					interfaces_en_CURSO(v_resp);
				end if;
		end case;
	end if;
 
	s_control <= v_s_control after retardo_logica_salida;
	pet_m <= v_pet_m after retardo_logica_salida;
	resp <= v_resp after retardo_logica_salida;
end process;
	
end;
