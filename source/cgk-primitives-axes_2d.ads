--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Axis in 2D space.

with CGK.Primitives.Directions_2D;
with CGK.Primitives.Points_2D;

package CGK.Primitives.Axes_2D is

   pragma Pure;

   type Axis_2D is private;

   function Create_Axis_2D
     (Point     : CGK.Primitives.Points_2D.Point_2D;
      Direction : CGK.Primitives.Directions_2D.Direction_2D) return Axis_2D;

private

   type Axis_2D is record
      Location  : CGK.Primitives.Points_2D.Point_2D;
      Direction : CGK.Primitives.Directions_2D.Direction_2D;
   end record;

end CGK.Primitives.Axes_2D;
