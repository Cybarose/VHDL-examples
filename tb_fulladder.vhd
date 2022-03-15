library ieee;
use ieee.std_logic_1164.all;

entity tb_fulladder is   
end tb_fulladder;

architecture TB of tb_fulladder is

component fulladder
port(A,B,c_in: in std_logic;                             
     sum,c_out: out std_logic);
end component;

signal A, B, c_in, sum, c_out : std_logic;            
 
begin                                         

VA: fulladder port map(A => A, B => B, c_in => c_in, c_out => c_out, sum => sum);

tb: process begin
wait for 10 ns; 
A <= '1';        
wait for 10 ns;
B <= '0';
wait for 10 ns;
c_in <= '0';
wait for 10 ns;
A <= '1';
wait for 10 ns;
B <= '1';
wait for 10 ns;
c_in<= '0';
wait for 10 ns;
A<= '1';
wait for 10 ns;
B<= '1';
wait for 10 ns;
c_in<= '1';
wait for 10 ns;
A<= '0';
wait for 10 ns;
B<= '0';
wait for 10 ns;
c_in<= '0';
wait for 10 ns; 

end process;

end TB;

