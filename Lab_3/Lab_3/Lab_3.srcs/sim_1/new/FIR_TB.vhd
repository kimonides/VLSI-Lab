library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FIR_TB is
    end FIR_TB;

architecture testbench of FIR_TB is

component FIR
    Port ( 
    clk: in std_logic;
    rst: in std_logic;
    valid_in : in std_logic;
    x: in std_logic_vector(7 downto 0);
    y: out std_logic_vector(15  downto 0);
    valid_out : out std_logic
    );
end component;
--Input Signals
signal clk: std_logic:='0';
signal rst: std_logic:='0';
signal valid_in: std_logic:='0';
signal x : std_logic_vector(7 downto 0):=(others=>'0');
signal valid_out: std_logic:='0';

--output signals
signal y : std_logic_vector(15 downto 0):=(others=>'0');

--Clock
constant CLKP : time := 100ps;

begin

clk_proc: 
    process
        begin
            clk <= '0';
            wait for CLKP/2;
            clk <= '1';
            wait for CLKP/2;
    end process;
    
UUT: FIR port map(
     clk => clk,
     rst => rst,
     valid_in => valid_in,
     x => x ,
     y => y,
     valid_out => valid_out
     );
TEST: 
    process
    begin
    wait for CLKP/2;
    x<="00000001";
    valid_in <='1';
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000010";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000011";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    x<="00000000";
    valid_in <='1';
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    valid_in <='1';
    x<="00000000";
    wait for CLKP;
    valid_in <='0';
    wait for 7*CLKP;
    wait for 100*CLKP;   
    end process;

end testbench;
