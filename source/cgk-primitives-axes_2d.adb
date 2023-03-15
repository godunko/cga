--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.Axes_2D is

   --------------------
   -- Create_Axis_2D --
   --------------------

   function Create_Axis_2D
     (Point     : CGK.Primitives.Points_2D.Point_2D;
      Direction : CGK.Primitives.Directions_2D.Direction_2D) return Axis_2D is
   begin
      return (Location => Point, Direction => Direction);
   end Create_Axis_2D;

end CGK.Primitives.Axes_2D;
