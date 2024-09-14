--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Vector in 2D space.

with CGK.Primitives.Points_2D;
private with CGK.Primitives.XYs;
with CGK.Reals;

package CGK.Primitives.Vectors_2D is

   pragma Pure;

   type Vector_2D is private;

   function Create_Vector_2D
     (X : CGK.Reals.Real; Y : CGK.Reals.Real) return Vector_2D;

   function Create_Vector_2D
     (Point_1 : CGK.Primitives.Points_2D.Point_2D;
      Point_2 : CGK.Primitives.Points_2D.Point_2D) return Vector_2D;
   --  Creates a vector from two points.

   function X (Self : Vector_2D) return CGK.Reals.Real with Inline;
   --  Returns X coordinate.

   function Y (Self : Vector_2D) return CGK.Reals.Real with Inline;
   --  Returns Y coordinate.

   function "-" (Self : Vector_2D) return Vector_2D with Inline;

   function Magnitude (Self : Vector_2D) return CGk.Reals.Real with Inline;
   --  Returns magnitude of the vector.

private

   type Vector_2D is record
      Coordinates : CGK.Primitives.XYs.XY;
   end record;

end CGK.Primitives.Vectors_2D;
