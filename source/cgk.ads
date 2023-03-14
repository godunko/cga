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

   package Elementary_Functions is
     new Ada.Numerics.Generic_Elementary_Functions (Real);

   Construction_Error : exception;

private

   procedure Assert_Construction_Error (Value : Boolean);

end CGK;
