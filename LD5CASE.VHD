library ieee;
use ieee.std_logic_1164.all;

entity IR is
port (
i_bit0 : in std_logic;
i_bit1 : in std_logic;
i_bit2 : in std_logic;
o_bit1 : out std_logic
);
end IR;

architecture rtl of IR is
begin

process (i_bit0, i_bit1, i_bit2) is
begin
 case (i_bit0 and not i_bit1) or
      (not i_bit0 and not i_bit2) is

 when '1' => o_bit1 <= '1';
 when '0' => o_bit1 <= '0';
 when others => NULL;
 
 end case;
 end process;
 end rtl;
	