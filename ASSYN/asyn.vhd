----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:45 09/10/2019 
-- Design Name: 
-- Module Name:    asyn - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity asyn is
    port(x1,x2: in STD_LOGIC:='1';
	         y:INOUT STD_LOGIC:='0';
				yout: OUT STD_LOGIC:='0');
				
end asyn;

architecture Behavioral of asyn is
signal count:std_logic_vector(3 downto 0):="0000";

begin
y<=(not (x1 and y) and x2) after 10ns;
yout<=y;
process(y)
begin
if rising_edge(y) then
count<=count+1;
end if;
end process;




end Behavioral;

