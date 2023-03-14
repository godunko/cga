--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.Points_2D is

   ---------------------
   -- Create_Point_2D --
   ---------------------

   function Create_Point_2D (X : CGK.Real; Y : CGK.Real) return Point_2D is
   begin
      return (Coordinates => CGK.Primitives.XYs.Create_XY (X, Y));
   end Create_Point_2D;

end CGK.Primitives.Points_2D;
