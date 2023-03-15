--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.Lines_2D is

   use CGK.Primitives.Axes_2D;
   use CGK.Primitives.Directions_2D;
   use CGK.Primitives.Points_2D;
   use CGK.Reals;

   ------------------
   -- Coefficients --
   ------------------

   procedure Coefficients
     (Self : Line_2D;
      A    : out CGK.Reals.Real;
      B    : out CGK.Reals.Real;
      C    : out CGK.Reals.Real) is
   begin
      A := Y (Direction (Self.Position));
      B := -X (Direction (Self.Position));
      C :=
        -(A * X (Location (Self.Position))
            + B * Y (Location (Self.Position)));
   end Coefficients;

   --------------------
   -- Create_Line_2D --
   --------------------

   function Create_Line_2D
     (Point     : CGK.Primitives.Points_2D.Point_2D;
      Direction : CGK.Primitives.Directions_2D.Direction_2D) return Line_2D is
   begin
      return (Position => Create_Axis_2D (Point, Direction));
   end Create_Line_2D;

   ---------------
   -- Direction --
   ---------------

   function Direction
     (Self : Line_2D) return CGK.Primitives.Directions_2D.Direction_2D is
   begin
      return Direction (Self.Position);
   end Direction;

   --------------
   -- Location --
   --------------

   function Location
     (Self : Line_2D) return CGK.Primitives.Points_2D.Point_2D is
   begin
      return Location (Self.Position);
   end Location;

end CGK.Primitives.Lines_2D;
