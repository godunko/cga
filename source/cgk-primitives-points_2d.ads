--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Point in 2D cartesian space.

with CGK.Primitives.XYs;
with CGK.Reals;

package CGK.Primitives.Points_2D is

   pragma Pure;

   type Point_2D is private;

   function Create_Point_2D
     (X : CGK.Reals.Real; Y : CGK.Reals.Real) return Point_2D with Inline;

   function Create_Point_2D
     (XY : CGK.Primitives.XYs.XY) return Point_2D with Inline;

   function X (Self : Point_2D) return CGK.Reals.Real with Inline;
   --  Returns X coordinate.

   function Y (Self : Point_2D) return CGK.Reals.Real with Inline;
   --  Returns Y coordinate.

   function XY (Self : Point_2D) return CGK.Primitives.XYs.XY with Inline;
   --  Returns two coordinates as pair of numbers.

   function Distance
     (Point_1 : Point_2D;
      Point_2 : Point_2D) return CGK.Reals.Real with Inline;
   --  Computes the distance between two points.

private

   type Point_2D is record
      Coordinates : CGK.Primitives.XYs.XY;
   end record;

end CGK.Primitives.Points_2D;
