library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_display is
	Port (  sel2, sel1, sel0 : in STD_LOGIC;
			  I0_5, I0_4, I0_3, I0_2, I0_1, I0_0 : in STD_LOGIC_VECTOR(7 downto 0);
			  I1_5, I1_4, I1_3, I1_2, I1_1, I1_0 : in STD_LOGIC_VECTOR(7 downto 0);
			  I2_5, I2_4, I2_3, I2_2, I2_1, I2_0 : in STD_LOGIC_VECTOR(7 downto 0);
			  I3_5, I3_4, I3_3, I3_2, I3_1, I3_0 : in STD_LOGIC_VECTOR(7 downto 0);
			  I4_5, I4_4, I4_3, I4_2, I4_1, I4_0 : in STD_LOGIC_VECTOR(7 downto 0);			  
			  O5, O4, O3, O2, O1, O0 : out STD_LOGIC_VECTOR(7 downto 0));
end mux_display;

architecture Behavioral of mux_display is
	signal selector : std_logic_vector(2 downto 0);
begin
	selector <= sel2&sel1&sel0;
	
	process (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5,
				I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5,
				I4_5, I4_4, I4_3, I4_2, I4_1, I4_0, selector)
	begin		
		if selector = "000" then 
			O0 <= I0_0;
			O1 <= I0_1;
			O2 <= I0_2;
			O3 <= I0_3;
			O4 <= I0_4;
			O5 <= I0_5;
		elsif selector = "001" then 
			O0 <= I1_0;
			O1 <= I1_1;
			O2 <= I1_2;
			O3 <= I1_3;
			O4 <= I1_4;
			O5 <= I1_5;
		elsif selector = "010" then 
			O0 <= I2_0;
			O1 <= I2_1;
			O2 <= I2_2;
			O3 <= I2_3;
			O4 <= I2_4;
			O5 <= I2_5;
		elsif selector = "011" then
			O0 <= I3_0;
			O1 <= I3_1;
			O2 <= I3_2;
			O3 <= I3_3;
			O4 <= I3_4;
			O5 <= I3_5;
		else
			O0 <= I4_0;
			O1 <= I4_1;
			O2 <= I4_2;
			O3 <= I4_3;
			O4 <= I4_4;
			O5 <= I4_5;
		
		end if;
	end process;
end Behavioral;