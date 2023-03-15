--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Line in 2D space.

private with CGK.Primitives.Axes_2D;
with CGK.Primitives.Directions_2D;
with CGK.Primitives.Points_2D;

package CGK.Primitives.Lines_2D is

   pragma Pure;

   type Line_2D is private;

   function Create_Line_2D
     (Point     : CGK.Primitives.Points_2D.Point_2D;
      Direction : CGK.Primitives.Directions_2D.Direction_2D) return Line_2D;

private

   type Line_2D is record
      Position : CGK.Primitives.Axes_2D.Axis_2D;
   end record;

end CGK.Primitives.Lines_2D;
