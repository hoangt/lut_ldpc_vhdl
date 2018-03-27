library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

package config is

  constant QLLR : integer := 3;
  constant QCh : integer := 3;

  constant VNodeDegree : integer := 6;

	-- Input Types
  subtype ChLLRType is integer range 0 to 2**QCh-1;
  subtype IntLLRSubType is integer range 0 to 2**QLLR-1;
  type IntLLRTypeV is array (0 to VNodeDegree-1) of IntLLRSubType;

  constant LUTInputBits11 : integer := 3*QLLR;
  constant LUTSize11 : integer := 2**(LUTInputBits11);  
  type LUTType11 is array (0 to LUTSize11-1) of integer range 0 to 2**QLLR-1;
  subtype LUTAddr11 is std_logic_vector(0 to LUTInputBits11-1);
  constant LUT11 : LUTType11 := (0,0,1,1,2,3,5,6,0,0,1,2,3,4,5,7,0,0,1,2,3,4,5,7,0,0,1,2,3,4,5,7,0,1,1,2,3,4,5,7,0,1,2,2,3,5,6,7,0,1,2,2,4,5,6,7,0,1,2,3,4,5,6,7,0,0,1,2,3,4,5,7,0,1,1,2,3,4,5,7,0,1,1,2,3,4,5,7,0,1,2,2,3,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,4,5,5,6,7,0,0,1,2,3,4,5,7,0,1,1,2,3,4,5,7,0,1,1,2,3,4,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,3,4,5,5,6,7,0,0,1,2,3,4,5,7,0,1,2,2,3,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,2,3,4,5,6,6,7,0,1,1,2,3,4,5,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,2,3,4,5,6,7,7,0,1,2,2,3,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,3,4,5,6,6,7,0,2,3,4,5,6,6,7,0,2,3,4,5,6,7,7,0,1,2,2,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,2,3,4,5,6,6,7,0,2,3,4,5,6,6,7,0,2,3,4,5,6,7,7,0,1,2,3,4,5,6,7,0,1,2,4,5,5,6,7,0,1,3,4,5,5,6,7,0,2,3,4,5,6,6,7,0,2,3,4,5,6,7,7,0,2,3,4,5,6,7,7,0,2,3,4,5,6,7,7,1,2,4,5,6,6,7,7);

  constant LUTInputBits21 : integer := 2*QLLR;
  constant LUTSize21 : integer := 2**(LUTInputBits21);
  type LUTType21 is array (0 to LUTSize21-1) of integer range 0 to 2**QLLR-1;
  subtype LUTAddr21 is std_logic_vector(0 to LUTInputBits21-1);
  constant LUT21 : LUTType21 := (0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,7,0,0,0,1,2,4,7,7,0,0,1,3,4,5,7,7,0,0,2,4,4,6,7,7,0,0,4,5,6,7,7,7,0,3,7,7,7,7,7,7,3,7,7,7,7,7,7,7);

  constant LUTInputBits22 : integer := 2*QLLR;
  constant LUTSize22 : integer := 2**(LUTInputBits22);
  type LUTType22 is array (0 to LUTSize22-1) of integer range 0 to 2**QLLR-1;
  subtype LUTAddr22 is std_logic_vector(0 to LUTInputBits22-1);
  constant LUT22 : LUTType22 := (0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,7,0,0,0,1,2,4,7,7,0,0,1,3,4,5,7,7,0,0,2,4,4,6,7,7,0,0,4,5,6,7,7,7,0,3,7,7,7,7,7,7,3,7,7,7,7,7,7,7);

  constant LUTInputBits23 : integer := QLLR + QCh;
  constant LUTSize23 : integer := 2**(LUTInputBits23);
  type LUTType23 is array (0 to LUTSize23-1) of integer range 0 to 2**QLLR-1;
  subtype LUTAddr23 is std_logic_vector(0 to LUTInputBits23-1);
  constant LUT23 : LUTType23 := (0,0,0,1,2,3,4,6,0,0,1,2,3,4,5,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,1,2,3,4,5,6,7,0,2,3,4,5,6,7,7,1,3,4,5,6,7,7,7);

  
end config;

package body config is

end config;
