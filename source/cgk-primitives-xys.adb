--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.XYs is

   ---------------
   -- Create_XY --
   ---------------

   function Create_XY (X : CGK.Real; Y : CGK.Real) return XY is
   begin
      return (X => X, Y => Y);
   end Create_XY;

end CGK.Primitives.XYs;
