--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Point in 2D cartesian space.

private with CGK.Primitives.XYs;

package CGK.Primitives.Points_2D is

   pragma Pure;

   type Point_2D is private;

   function Create_Point_2D
     (X : CGK.Real; Y : CGK.Real) return Point_2D with Inline;

private

   type Point_2D is record
      Coordinates : CGK.Primitives.XYs.XY;
   end record;

end CGK.Primitives.Points_2D;
