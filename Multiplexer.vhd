library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multiplexer is
generic(n: integer := 4);
port(s: in std_logic_vector(2 downto 0);
     a,b: in signed(n-1 downto 0);           
     o: out signed(n-1 downto 0));    
end Multiplexer;

architecture behaviour of Multiplexer is
begin
with s select
o <= a when"000",
     a when"001",
b when others;

end behaviour;



