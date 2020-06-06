library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro_Banderas is
	Port (  RELOJ : in STD_LOGIC;
			  RESET : in STD_LOGIC;
			  ENTRADA  : in STD_LOGIC_VECTOR(5 downto 0);
			  n, z, v, c, h, i: out std_logic;
			  BANDERAS : OUT STD_LOGIC_VECTOR(5 downto 0));
end registro_Banderas;

architecture Behavioral of registro_Banderas is
signal ni, zi, vi, ci, hi, ii : std_logic := '0';

begin
	process (RELOJ, RESET, ENTRADA)
	begin		
		if RESET = '0' then 
			ni <= '0';
			zi <= '0';
			vi <= '0';
			ci <= '0';
			hi <= '0';
			ii <= '0';
		elsif rising_edge (RELOJ) then
			ni <= ENTRADA(5);
			zi <= ENTRADA(4);
			vi <= ENTRADA(3);
			ci <= ENTRADA(2);
			hi <= ENTRADA(1);
			ii <= ENTRADA(0);
		end if;
	end process;
	
	process (ni, zi, vi, ci, hi, ii)
	begin
		n <= ni;
		z <= zi;
		v <= vi;
		c <= ci;
		h <= hi;
		i <= ii;
		BANDERAS <= ni & zi & vi & ci & hi & ii;  
	end process;
end Behavioral;