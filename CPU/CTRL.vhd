----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:40:37 11/19/2018 
-- Design Name: 
-- Module Name:    CTRL - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use WORK.DEFINES.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CTRL is
    Port ( rst : in  STD_LOGIC;
           stallreq_from_id : in  STD_LOGIC;
           stall : out  STD_LOGIC_VECTOR (5 downto 0));
end CTRL;

architecture Behavioral of CTRL is

begin
	main:	process(rst, stallreq_from_id)
			begin
				if (rst = RstEnable) then
					stall <= "000000";
				elsif (stallreq_from_id = Stop) then
					stall <= "000000";
				else
					stall <= "000000";
				end if;
			end process;

end Behavioral;

