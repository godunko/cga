--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Circle in the 2D space.

--  private with CGK.Axes_2D_2;
with CGK.Primitives.Points_2D;

package CGK.Primitives.Circles_2D is

   pragma Pure;

   type Circle_2D is private;

   function Create_Circle_2D
     (X : CGK.Real; Y : CGK.Real; Radius : CGK.Real) return Circle_2D
        with Inline;

   function Center (Self : Circle_2D) return CGK.Primitives.Points_2D.Point_2D
     with Inline;
   --  Returns the point of the center of the circle.

   function Radius (Self : Circle_2D) return CGK.Real with Inline;
   --  Returns the radius of the circle.

private

   type Circle_2D is record
      --  Position : CGK.Axes_2D_2.Axis_2D_2;
      Center : CGK.Primitives.Points_2D.Point_2D;
      Radius : CGK.Real := CGK.Real'Last;
   end record;

end CGK.Primitives.Circles_2D;
