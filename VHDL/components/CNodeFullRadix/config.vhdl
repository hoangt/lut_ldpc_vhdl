library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library work;

package config is

  -- LLR bit-widths
  constant QLLR : integer := 3;

  -- Check node degree
  constant CNodeDegree : integer := 32;

  -- Internal LLR
  subtype IntLLRSubType is integer range 0 to 2**QLLR-1;
  type IntLLRTypeC is array (0 to CNodeDegree-1) of IntLLRSubType;

  -- Absolute values of internal LLRs
  subtype IntAbsLLRSubType is std_logic_vector(QLLR-2 downto 0);
  type IntAbsLLRTypeC is array (0 to CNodeDegree-1) of IntAbsLLRSubType;

  -- Comparator output type
  type CompType is array (0 to CNodeDegree-1) of std_logic_vector(0 to CNodeDegree-1);
  type OneHotType is array (0 to 1) of std_logic_vector(0 to CNodeDegree-1);

  -- Minmum output type
  type MinType is array (0 to 1) of std_logic_vector(QLLR-2 downto 0);

  
end config;

package body config is

end config;
