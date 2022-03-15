library ieee;
use ieee.std_logic_1164.all;

entity half_adder is                             
port(A,B: in std_logic;
     sum, carry: out std_logic);
end half_adder;                            

architecture behaviour of half_adder is           

begin                                         
carry <= A and B;
sum <= A xor B;

end behaviour;
