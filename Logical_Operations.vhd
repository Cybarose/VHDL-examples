library ieee;
use ieee.std_logic_1164.all;

entity Logical_Operations is
generic(n: integer := 4);
port(encoding: in std_logic_vector(2 downto 0);
a,b: in std_logic_vector(n-1 downto 0);
h: out std_logic_vector(n-1 downto 0));   
end Logical_Operations;

architecture behaviour of Logical_Operations is 
begin
process(a,b,encoding) 
begin
case encoding is
when "010" => h <= a OR b;
when "011" => h <= a AND b;
when "100" => h <= a XOR b;
when "101" => h <= a NOR b;
when "110" => h <= a NAND b;
when "111" => h <= NOT b;
when others => null;
end case;
end process;

end behaviour;
