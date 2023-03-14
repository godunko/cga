--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.Circles_2D is

   ----------------------
   -- Create_Circle_2D --
   ----------------------

   function Create_Circle_2D
     (X : CGK.Real; Y : CGK.Real; Radius : CGK.Real) return Circle_2D is
   begin
      return
        (Position => CGK.Primitives.Points_2D.Create_Point_2D (X, Y),
         Radius   => Radius);
   end Create_Circle_2D;

end CGK.Primitives.Circles_2D;
