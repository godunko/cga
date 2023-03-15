--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with Ada.Numerics.Generic_Elementary_Functions;
with Interfaces;

package CGK is

   pragma Pure;

   type Real is new Interfaces.IEEE_Float_64;

   function Resolution return Real is (Real'Model_Small);
   --  Tolerance criterion for geometric computations.

   function Epsilon (Value : Real) return Real;
   --  Returns absolute value of difference between given value and and other
   --  nearest value of real type. Nearest value is choosen in direction of
   --  infinity the same sign as given value.

   package Elementary_Functions is
     new Ada.Numerics.Generic_Elementary_Functions (Real);

   Construction_Error  : exception;
   --  Raised when construction can't be done.

   Invalid_State_Error : exception;
   --  Raised when object is not in valid state.

private

   procedure Assert_Construction_Error (Value : Boolean);

   procedure Assert_Invalid_State_Error (Valid : Boolean);

end CGK;
