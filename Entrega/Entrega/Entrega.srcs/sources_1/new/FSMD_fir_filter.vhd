----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2017 20:20:06
-- Design Name: 
-- Module Name: FSMD_fir_filter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSMD_fir_filter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           m : out STD_LOGIC_VECTOR (2 downto 0);
            : out STD_LOGIC_VECTOR (2 downto 0)
        );
end FSMD_fir_filter;

architecture Behavioral of FSMD_fir_filter is

begin


end Behavioral;
