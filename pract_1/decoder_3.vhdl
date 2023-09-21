library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder_3 is 
    port (
        d3_a: in std_ulogic;
        d3_b: in std_ulogic;
        d3_c: in std_ulogic;
        d3_e: in std_ulogic;
        d3_q: out std_logic_vector(7 downto 0)
    );
end decoder_3;

architecture bhv of decoder_3 is
    component decoder_2 
        port (
            a: in std_ulogic;
            b: in std_ulogic;
            e: in std_ulogic;
            q: out std_logic_vector(3 downto 0)
        );
    end component;

    -- signal dec2_e: std_ulogic;
    signal X1 : std_logic_vector(3 downto 0);

begin 
    decode_map : decoder_2 port map (a => d3_a, b => d3_b, e => d3_e, q(3 downto 0) => X1(3 downto 0));
    
    -- dec2_e <= '1';

    d3_q(0) <= d3_e and (X1(0) and (not d3_c));
    d3_q(1) <= d3_e and (X1(1) and (not d3_c));
    d3_q(2) <= d3_e and (X1(2) and (not d3_c));
    d3_q(3) <= d3_e and (X1(3) and (not d3_c));
    
    d3_q(4) <= d3_e and (X1(0) and d3_c);
    d3_q(5) <= d3_e and (X1(1) and d3_c);
    d3_q(6) <= d3_e and (X1(2) and d3_c);
    d3_q(7) <= d3_e and (X1(3) and d3_c);

end bhv;