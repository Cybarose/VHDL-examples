library ieee;
use ieee.std_logic_1164.all;
 
entity tb_rca is
end tb_rca;
  
architecture TB of tb_rca is
component rca is
generic(n: integer:= 4);
port(a,b: in std_logic_vector(n-1 downto 0);
     cin: in std_logic;
     s: out std_logic_vector(n-1 downto 0);
     cout: out std_logic);
end component rca;

constant n : integer := 4;
signal a,b,s: std_logic_vector(n-1 downto 0);
signal cin, cout: std_logic;

begin
rippleca: rca
generic map(n => n)
port map(a => a, b => b, cin => cin, cout => cout, s => s);
   
tb: process begin
a <= "0110";
b <= "1100";
cin <= '0';
wait for 10 ns;
a <= "1111";
b <= "1100";
cin <= '0';
wait for 10 ns;
a <= "0110";
b <= "0111";
cin <= '0';
wait for 10 ns;
a <= "0110";
b <= "1110";
cin <= '0';
wait for 10 ns;
a <= "1111";
b <= "1111";
cin <= '0';
wait for 10 ns;

a <= "0110";
b <= "1100";
cin <= '1';
wait for 10 ns;
a <= "1111";
b <= "1100";
cin <= '1';
wait for 10 ns;
a <= "0110";
b <= "0111";
cin <= '1';
wait for 10 ns;
a <= "0110";
b <= "1110";
cin <= '1';
wait for 10 ns;
a <= "1111";
b <= "1111";
cin <= '1';
wait for 10 ns;
end process;

end TB;
