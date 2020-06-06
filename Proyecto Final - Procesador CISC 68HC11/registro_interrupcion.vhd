library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.ALL;

entity registro_interrupcion is
	Port( ENA : in std_logic; -- Habilitacion Bus C y D
			nRW : in std_logic; -- Lineas de lectura/escritura
			clk : in std_logic;
			RESET: in std_logic;
			C : inout std_logic_vector(7 downto 0); -- BUS C
			D : inout std_logic_vector(7 downto 0); -- BUS D
			Debug : out std_logic_vector(15 downto 0));
end registro_interrupcion;

architecture Behavioral of registro_interrupcion is
	signal data_out : std_logic_vector(15 downto 0) := X"0000";
	
begin	
	Debug <= data_out;
	
	-- Write Block
	REG_WRITE: process (RESET, nRW, clk, ENA) 
	begin
		if(RESET = '0') then
			data_out <= X"0000";
		elsif (falling_edge(clk)) then
			if (ENA = '0' and nRW = '0') then -- Carga 16 bits
				data_out <= C & D;
			else
				data_out <= data_out;
			end if;
		end if;
	end process;

	TRI_STATE_C_D: process (ENA, nRW, data_out)
	begin
		if (ENA = '0' and nRW = '1') then -- Lectura
			C <= data_out(15 downto 8); -- Parte Alta
			D <= data_out(7 downto 0); -- Parte Baja
		else 
			C <= (others => 'Z');
			D <= (others => 'Z');
		end if;
	end process;

end Behavioral;
