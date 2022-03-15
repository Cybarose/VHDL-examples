library ieee;
use ieee.std_logic_1164.all;
 
entity FlipFlop is
generic(n : integer := 8);
port(
clk, rst: in std_logic;
D: in std_logic_vector(n-1 downto 0);
q: out std_logic_vector(n-1 downto 0)
);
end entity;
 
architecture flipt of FlipFlop is
begin

process(clk, rst) is
begin 
if (clk'event and clk = '1') then 
if rst = '1' then
   q <= (others => '0');
elsif (clk'event and clk = '1') then   
   q <= D;
end if;
end if;

end process;

end flipt;










