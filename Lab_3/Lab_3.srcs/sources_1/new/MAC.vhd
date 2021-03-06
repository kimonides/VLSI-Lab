library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

entity MAC is
    generic(
        data_width :   integer    := 8;
        coeff_width:   integer    := 8;
        min_vector_size: integer  := 8
    );
    Port (
        rom_out: in std_logic_vector(data_width-1 downto 0);
        ram_out: in std_logic_vector(coeff_width-1 downto 0);
        mac_init : in std_logic;
        L: out std_logic_vector((data_width + coeff_width + integer(ceil(log2(real(min_vector_size)))))-1  downto 0);
        clk : in std_logic
    );
end MAC;

architecture Behavioral of MAC is
        signal accumulator : std_logic_vector((data_width + coeff_width + integer(ceil(log2(real(min_vector_size))))) -1 downto 0):= (others => '0') ;               
begin
        process(clk)
            begin 
                 if (rising_edge(clk)) then
                        if mac_init = '1' then
                            accumulator <= (others => '0');
--                            accumulator <= accumulator((data_width + coeff_width + integer(ceil(log2(real(min_vector_size)))))-1 downto coeff_width+data_width)&(ram_out * rom_out);
                              accumulator(data_width + coeff_width-1 downto 0) <= ram_out * rom_out;
                        else 
                            accumulator <= accumulator + (ram_out * rom_out); 
                        end if;
                        L <= accumulator;
                 end if;
        end process;
end Behavioral;
