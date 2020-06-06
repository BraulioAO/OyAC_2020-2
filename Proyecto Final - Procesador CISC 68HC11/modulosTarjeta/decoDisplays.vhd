-- --------------------------------------------------------------------------
-- Componente: Decodificador BCD a 7 segmentos
--
-- Definicion: Este código define el comportamiento de un decodificador BCD
--             a 7 segmentos para los 6 displays de la tarjeta de desarollo
--             De10-Lite de Terasic.
-- --------------------------------------------------------------------------
-- Autor: Arrieta Ocampo Braulio Enrique
-- Fecha: Octubre de 2018
-- --------------------------------------------------------------------------
-- --------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoDisplays is
	Generic( noDigitos : integer range 1 to 6 := 1 ); -- Número de displays a utilizar
	
	Port( BCD5, BCD4, BCD3, BCD2, BCD1, BCD0 : in std_logic_vector(3 downto 0);
			digit5, digit4, digit3, digit2, digit1, digit0 : out std_logic_vector(7 downto 0) );
end decoDisplays;

architecture Behavioral of decoDisplays is
	type salidas is array(0 to 5) of unsigned(7 downto 0);
	type entradas is array(0 to 5) of unsigned(3 downto 0);
	signal salidasDisp : salidas;
	signal entrada : entradas;

begin
	entrada(5) <= unsigned(BCD5);
	entrada(4) <= unsigned(BCD4);
	entrada(3) <= unsigned(BCD3);
	entrada(2) <= unsigned(BCD2);
	entrada(1) <= unsigned(BCD1);
	entrada(0) <= unsigned(BCD0);

	deco : for i in 0 to 5 generate
		noDecos : if i < noDigitos generate
			with entrada(i) select
				salidasDisp(i) <= "11000000" when "0000", --0
										"11111001" when "0001", --1
										"10100100" when "0010", --2
										"10110000" when "0011", --3
										"10011001" when "0100", --4
										"10010010" when "0101", --5
										"10000010" when "0110", --6
										"11111000" when "0111", --7
										"10000000" when "1000", --8
										"10010000" when "1001", --9
										"10001000" when "1010", --A
										"10000011" when "1011", --B
										"11000110" when "1100", --C
										"10100001" when "1101", --D
										"10000110" when "1110", --E
										"10001110" when "1111", --F
										"11111111" when others;
									  --pgfedcba
		end generate;
		
		noDecos2 : if i >= noDigitos generate
			salidasDisp(i) <= "11111111"; -- Algun signo por defecto
		end generate;
	end generate;
	
	digit5 <= std_logic_vector(salidasDisp(5));
	digit4 <= std_logic_vector(salidasDisp(4));
	digit3 <= std_logic_vector(salidasDisp(3));
	digit2 <= std_logic_vector(salidasDisp(2));
	digit1 <= std_logic_vector(salidasDisp(1));
	digit0 <= std_logic_vector(salidasDisp(0));
	
end Behavioral;
