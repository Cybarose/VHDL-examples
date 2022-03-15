library ieee;
use ieee.std_logic_1164.all;

entity fulladder is                             
port(A,B,c_in: in std_logic;                             
     sum,c_out: out std_logic);
end fulladder;                             

architecture behaviour of fulladder is 

component half_adder is                               
port(A,B: in std_logic;
     sum,carry: out std_logic);
end component;

signal carry0, carry1, s: std_logic;

begin
 
HA1: half_adder port map(A => A, B => B, sum => s, carry => carry0);

HA2: half_adder port map(A => s, B => c_in, sum => sum, carry => carry1);

c_out <= carry0 or carry1;

end behaviour;
  


