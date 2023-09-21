library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder_2 is 
    port (
        a: in std_ulogic;
        b: in std_ulogic;
        e: in std_ulogic;
        q: out std_logic_vector(3 downto 0)
    );
end decoder_2 ;

architecture bhv of decoder_2 is
begin 
    q(0) <= e and ((not a) and (not b));
    q(1) <= e and (a and (not b));
    q(2) <= e and ((not a) and b);
    q(3) <= e and (a and b);
end bhv;