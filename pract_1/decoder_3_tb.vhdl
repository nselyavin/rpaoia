library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder_3_tb is 
end decoder_3_tb;

architecture test of decoder_3_tb is
    component decoder_3 
        port (
            d3_a: in std_ulogic;
            d3_b: in std_ulogic;
            d3_c: in std_ulogic;
            d3_e: in std_ulogic;
            d3_q: out std_logic_vector(7 downto 0)
        );
    end component;

    signal a, b, c, e : std_ulogic;
    signal q : std_logic_vector(7 downto 0);

begin 
    decode_map : decoder_3 port map (d3_a => a, d3_b => b, d3_c => c, d3_e => e, d3_q(7 downto 0) => q(7 downto 0));
    process  begin
        
        e <= '0';
        a <= '0';
        b <= '0';
        c <= '0';
        wait for 1 ns;

        e <= '1';
        a <= '0';
        b <= '0';
        c <= '0';
        wait for 1 ns;

        a <= '1';
        b <= '0';
        c <= '0';
        wait for 1 ns;

        a <= '0';
        b <= '1';
        c <= '0';
        wait for 1 ns;

        a <= '1';
        b <= '1';
        c <= '0';
        wait for 1 ns;

        -- c = 1 
        a <= '0';
        b <= '0';
        c <= '1';
        wait for 1 ns;

        a <= '1';
        b <= '0';
        wait for 1 ns;

        a <= '0';
        b <= '1';
        wait for 1 ns;

        a <= '1';
        b <= '1';
        wait for 1 ns;

        assert false report "reached end of tests!";
        wait;
    end process;

end test;