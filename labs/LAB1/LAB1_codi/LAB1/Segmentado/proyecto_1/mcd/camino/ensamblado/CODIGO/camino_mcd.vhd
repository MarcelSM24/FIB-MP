--
-- Copyright (c) 2017 XXXX, UPC
-- All rights reserved.
-- 

library ieee;		
use ieee.std_logic_1164.all;		
use ieee.numeric_std.all;
use work.param_disenyo_pkg.all;
--! @image html camino_1.png 

entity camino_mcd is
   port (reloj, pcero, pe_a, pe_b: std_logic;
	ini: std_logic;
	a, b: in st_dat;
	s: out st_dat;
	ig, meu: out std_logic);
end camino_mcd;

architecture estruc of camino_mcd is
signal reg_a, reg_b: st_dat;
signal mx_ini_a, mx_ini_b, mx_a, sub: st_dat;
signal menor, cero: std_logic;

begin

sub <= std_logic_vector(unsigned(reg_a) - unsigned(reg_b));
menor <= '1' when unsigned(reg_a) < unsigned(reg_b) else '0';
cero <= '1' when unsigned(reg_b) = 0 else '0';

mx_a <= reg_b when menor = '1' else sub;
mx_ini_a <= a when ini = '1' else mx_a;
mx_ini_b <= b when ini = '1' else reg_a;

registros: process(reloj, pcero)
begin
	if pcero = '1' then
		reg_a <= (others => '0');
		reg_b <= (others => '0');
	elsif rising_edge(reloj) then
		if pe_a = '1' then
			reg_a <= mx_ini_a;
		end if;
		if pe_b = '1' then
			reg_b <= mx_ini_b;
		end if;
	end if;
end process;

s <= reg_a;
ig <= cero;
meu <= menor;

end estruc;
