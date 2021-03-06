library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity positive_latch_on_100 is
	port(
		d : in std_logic_vector(31 downto 0);
		enable : in std_logic_vector(2 downto 0);
		q : out std_logic_vector(31 downto 0)
	);
end positive_latch_on_100;

architecture Behavioral of positive_latch_on_100 is

begin
	process(enable,d)
	begin
		if(enable = "100") then
			q <= d;
		end if;
	end process;
end Behavioral;

