library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder_2_tb is 
end decoder_2_tb;

architecture test of decoder_2_tb is
    component decoder_2 
        port(
            a: in std_ulogic;
            b: in std_ulogic;
            e: in std_ulogic;
            q: out std_logic_vector(3 downto 0)
        );
    end component;

    signal a, b, e : std_ulogic;
    signal q : std_logic_vector(3 downto 0);

begin 
    decode_map : decoder_2 port map (a => a, b => b, e => e, q => q);
    
    process begin

        e <= '0';
        a <= '0';
        b <= '0';
        wait for 1 ns;

        e <= '1';
        a <= '0';
        b <= '0';

        wait for 1 ns;

        e <= '1';
        a <= '1';
        b <= '0';

        wait for 1 ns;

        e <= '1';
        a <= '0';
        b <= '1';

        wait for 1 ns;

        e <= '1';
        a <= '1';
        b <= '1';

        wait for 1 ns;

        assert false report "reached end of tests!";
        wait;
    end process;

end test;