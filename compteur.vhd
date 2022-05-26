library ieee ;
use ieee . std_logic_1164 .all ;
entity compteur is
port (
clk : in std_logic ;
frontM : out integer range 0 to 9
);
end compteur;
architecture behav of compteur is
signal count : integer range 0 to 9;
begin
process (clk)
begin
	if rising_edge (clk) then 
		if count < 9 then
			count <= count + 1;
		else
			count <= 0;
		end if;
	end if;
end process;
frontM <= count ;
end behav;
