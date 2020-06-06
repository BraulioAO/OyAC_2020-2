library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ctrl_interrupciones is
	Port (IRQn : in STD_LOGIC; -- Conectar a boton de interrupciones internas
				XIRQn : in STD_LOGIC; -- Conectar a boton de interrupciones externas
				SET_IRQ : in STD_LOGIC; -- Resetea bandera de IRQ
				SET_XIRQ : in STD_LOGIC; -- Resetea bandera de XIRQ
				I_flag  : in STD_LOGIC; -- I del registro de banderas
				X_flag  : in STD_LOGIC; -- X del registro de banderas
				DINT  : in STD_LOGIC; -- Deshabilita generacion de la linea INT
				HINT  : in STD_LOGIC; -- Habilita generacion de la linea INT
				VECTn  : in STD_LOGIC; -- Linea generada por el secuenciador
				clk : in std_logic;
				RESET : in std_logic;
				INT: out std_logic; -- Indica al secuenciador la existencia de interrupciones
				Y : out STD_LOGIC_VECTOR(11 downto 0)); -- Direccion de la microinstruccion a ejecutar
end ctrl_interrupciones;

architecture Behavioral of ctrl_interrupciones is
constant dir_IRQ : std_logic_vector(11 downto 0) := X"184"; -- Direccion de microprograma de IRQ
constant dir_XIRQ : std_logic_vector(11 downto 0) := X"189"; -- Direccion de microprograma de XIRQ
signal IRQ_flag : std_logic := '0'; -- Indica si hubo interrupcion interna (si hay interrupcion se pone en '0')
signal XIRQ_flag : std_logic := '0'; -- Indica si hubo interrupcion externa (si hay interrupcion se pone en '0')
signal INT_flag : std_logic := '0'; -- Bandera INT
signal aux_IRQ, aux_XIRQ : std_logic;


			
begin
	aux_XIRQ <= X_flag or XIRQ_flag;
	aux_IRQ <= (I_flag or IRQ_flag) or not aux_XIRQ;
	
	INT <= (aux_XIRQ nand aux_IRQ) and INT_flag;

	-- Controla la generacion de la bandera interna IRQ_flag
	CTRL_IRQ : process (clk, RESET)
	begin	
		if RESET = '0' then
			IRQ_flag <= '1';
		elsif falling_edge(clk) then
			if not(IRQn) = '0' and SET_IRQ = '0' then 
				IRQ_flag <= IRQ_flag;
			elsif not(IRQn) = '0' and SET_IRQ = '1' then
				IRQ_flag <= '1';
			elsif not(IRQn) = '1' and SET_IRQ = '0' then
				IRQ_flag <= '0';
			else
				IRQ_flag <= IRQ_flag;
			end if;
		end if;
	end process;
	
	-- Controla la generacion de la bandera interna XIRQ_flag
	CTRL_XIRQ : process (clk, RESET)
	begin		
		if RESET = '0' then
			XIRQ_flag <= '1';
		elsif falling_edge(clk) then
			if not(XIRQn) = '0' and SET_XIRQ = '0' then 
				XIRQ_flag <= XIRQ_flag;
			elsif not(XIRQn) = '0' and SET_XIRQ = '1' then
				XIRQ_flag <= '1';
			elsif not(XIRQn) = '1' and SET_XIRQ = '0' then
				XIRQ_flag <= '0';
			else
				XIRQ_flag <= XIRQ_flag;
			end if;
		end if;
	end process;
	
	-- Controla la generacion de la direccion de la interrupcion
	CTRL_Y : process (VECTn, AUX_IRQ, AUX_XIRQ)
	begin
		if(VECTn = '0') then	
			if aux_IRQ = '0' then --Dirección de la interrupción Interna
				Y <= dir_IRQ;
			elsif aux_XIRQ = '0' then -- Dirección de la interrupción externa
				Y <= dir_XIRQ;
			else 
				Y <= (others => 'Z');
			end if;
		else 
			Y <= (others => 'Z');
		end if;
	end process;
	
	-- Controla la generacion de la bandera INT_flag (Habilita o Deshabilita la linea INT)
	CTRL_INT_DH : process (clk, RESET)
	begin	
		if RESET = '0' then
			INT_flag <= '0';
		elsif falling_edge(clk) then
			if DINT = '0' and HINT = '0' then 
				INT_flag <= INT_flag;
			elsif DINT = '0' and HINT = '1' then 
				INT_flag <= '1';
			elsif DINT = '1' and HINT = '0' then 
				INT_flag <= '0';
			else
				INT_flag <= INT_flag;
			end if;
		end if;
	end process;

-- Otra alternativa al registro anterior	
--	CTRL_INT_DH : process (clk, RESET)
--	begin	
--		if RESET = '0' then
--			INT_flag <= '0';
--		elsif falling_edge(clk) then
--			if (HINT /= DINT) then
--				INT_flag <= HINT;
--			else
--				INT_flag <= INT_flag;
--			end if;
--		end if;
--	end process;

end Behavioral;