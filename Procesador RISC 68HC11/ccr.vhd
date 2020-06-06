library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ccr is
	Port (  selflags : in STD_LOGIC_vector(3 downto 0);
			  nupa : in STD_LOGIC;
			  zupa : in STD_LOGIC;
			  vupa : in STD_LOGIC;
			  cupa : in STD_LOGIC;
			  hupa : in STD_LOGIC;
			  banderas_in : in STD_LOGIC_VECTOR(5 DOWNTO 0);
			  banderas : out STD_LOGIC_VECTOR(5 downto 0));
end ccr;

architecture Behavioral of ccr is
signal ni, zi, vi, ci, hi, ii : std_logic := '0';

begin
	process (selflags, nupa,zupa,vupa,cupa,hupa, ni, zi, vi, ci, hi, ii, banderas_in)
	begin		
			ni <= banderas_in(5);
			zi <= banderas_in(4);
			vi <= banderas_in(3);
			ci <= banderas_in(2);
			hi <= banderas_in(1);
			ii <= banderas_in(0);
			
		if selflags = "0001" then
			ni <= nupa;
			zi <= zupa;
			vi <= '0';
		elsif selflags = "0010" then
			ni <= nupa;
			zi <= zupa;
			vi <= vupa;
			ci <= cupa;
			hi <= hupa;
		elsif selflags = "0011" then
			ni <= nupa;
			zi <= zupa;
			vi <= vupa;
			ci <= cupa;
		elsif selflags = "0100" then
			zi <= zupa;
		elsif selflags = "0101" then
			ci <= '0';
		elsif selflags = "0110" then
			ii <= '0';
		elsif selflags = "0111" then
			vi <= '0';
		elsif selflags = "1000" then
			ci <= '1';
		elsif selflags = "1001" then
			ii <= '1';
		elsif selflags = "1010" then
			vi <= '1';
		elsif selflags = "1011" then
			ni <= nupa;
			zi <= zupa;
			vi <= '0';
			ci <= '1';
		elsif selflags = "1100" then
			ni <= nupa;
			zi <= zupa;
			vi <= vupa;
		else 
			ni <= banderas_in(5);
			zi <= banderas_in(4);
			vi <= banderas_in(3);
			ci <= banderas_in(2);
			hi <= banderas_in(1);
			ii <= banderas_in(0);
		end if;
	end process;
	
	process (ni,zi,vi,ci,hi,ii)
	begin
		banderas <= ni & zi & vi & ci & hi & ii;  
	end process;
end Behavioral;