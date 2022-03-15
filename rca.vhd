library ieee;
use ieee.std_logic_1164.all;
 
entity rca is
generic(n: integer:= 4);
port(a,b: in std_logic_vector(n-1 downto 0);
     cin: in std_logic;
     s: out std_logic_vector(n-1 downto 0);
     cout: out std_logic);
end rca;
 
architecture behaviour of rca is 

component fulladder
port(A,B,c_in: in std_logic;                             
     sum, c_out: out std_logic);
end component;
 
signal carry: std_logic_vector(n downto 0);

begin

carry(0) <= cin;

gen: for i in 0 to n-1 generate
FAi: fulladder port map(A => a(i), B => b(i), c_in => carry(i), sum => s(i), c_out => carry(i+1));
end generate gen;

cout <= carry(n);

end behaviour;






