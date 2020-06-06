library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity deco_regw is
	Port (  selregw : in STD_LOGIC_VECTOR(2 downto 0);
			  ACCA : out STD_LOGIC;
			  ACCB : out STD_LOGIC;
			  IX : out STD_LOGIC;
			  IY : out STD_LOGIC;
			  SP : out STD_LOGIC;
			  AUX  : out STD_LOGIC);
end deco_regw;

architecture Behavioral of deco_regw is
begin
	process (selregw)
	begin		
		case selregw is
		when "001" =>
			ACCA <= '1';
			ACCB <= '0';
			IX <= '0';
			IY <= '0';
			SP <= '0';
			AUX <= '0';
		when "010" =>
			ACCA <= '0';
			ACCB <= '0';
			IX <= '1';
			IY <= '0';
			SP <= '0';
			AUX <= '0';
		when "011" =>
			ACCA <= '0';
			ACCB <= '0';
			IX <= '0';
			IY <= '1';
			SP <= '0';
			AUX <= '0';
		when "100" =>
			ACCA <= '0';
			ACCB <= '1';
			IX <= '0';
			IY <= '0';
			SP <= '0';
			AUX <= '0';
		when "101" =>
			ACCA <= '0';
			ACCB <= '0';
			IX <= '0';
			IY <= '0';
			SP <= '0';
			AUX <= '1';
		when "110" =>
			ACCA <= '0';
			ACCB <= '0';
			IX <= '0';
			IY <= '0';
			SP <= '1';
			AUX <= '0';
		when others =>
			ACCA <= '0';
			ACCB <= '0';
			IX <= '0';
			IY <= '0';
			SP <= '0';
			AUX <= '0';
		end case;
	end process;
end Behavioral;