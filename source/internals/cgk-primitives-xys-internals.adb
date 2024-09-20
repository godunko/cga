--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.XYs.Internals
  with Pure
is

   -----------------
   -- To_Vector_2 --
   -----------------

   function To_Vector_2
     (XY : XYs.XY) return CGK.Mathematics.Vectors_2.Vector_2 is
   begin
      return CGK.Mathematics.Vectors_2.Vector_2 (XY);
   end To_Vector_2;

   -----------
   -- To_XY --
   -----------

   function To_XY (Vector : CGK.Mathematics.Vectors_2.Vector_2) return XY is
   begin
      return XY (Vector);
   end To_XY;

end CGK.Primitives.XYs.Internals;
