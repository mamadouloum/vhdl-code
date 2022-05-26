library ieee ;
use ieee . std_logic_1164 .all ;
entity gen_pulse is
port ( 
clokMam : in std_logic;
pul : out std_logic
);
end gen_pulse;
architecture behavioral of gen_pulse is 
	signal pulse: std_logic :='0' ;
	signal count : integer range 0 to 50000000 := 0 ;

	begin
	counter : process (clokMam)
		begin
			if rising_edge (clokMam) then
				if count = 49999999 then
				count <= 0;
				pulse <= not pulse;
				else
				count <= count + 1;
				end if;
			end if;
			end process;
			pul <= pulse;
end behavioral;
			