library ieee;
use ieee.std_logic_1164.all;

entity tb_half_adder is   
end tb_half_adder;

architecture TB of tb_half_adder is

signal A, B, sum, carry: std_logic;             

component half_adder 
port(A,B: in std_logic;
     sum,carry: out std_logic);
end component;
  
begin                                        

HA: half_adder port map(A => A, B => B, sum => sum, carry => carry);

tb: process begin
wait for 10 ns; 
A<= '1';        
wait for 10 ns;
B<= '0';
wait for 10 ns;
A<= '0';
wait for 10 ns;
B<= '1';
wait for 10 ns;
A<= '1';
wait for 10 ns;
B<= '1';
wait for 10 ns;
A<= '0';
wait for 10 ns;
B<= '0';
wait for 10 ns;  
 
end process tb;

end TB;


 


 








