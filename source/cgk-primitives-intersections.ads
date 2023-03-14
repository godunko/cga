--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Primitives.Circles_2D;
private with CGK.Primitives.Points_2D;

package CGK.Primitives.Intersections is

   pragma Pure;

   type Intersection is private;

   procedure Perform
     (Self     : in out Intersection;
      Circle_1 : CGK.Primitives.Circles_2D.Circle_2D;
      Circle_2 : CGK.Primitives.Circles_2D.Circle_2D);

private

   type Point_2D_Array_4 is
     array (1 .. 4) of CGK.Primitives.Points_2D.Point_2D;

   type Intersection is record
      Identical : Boolean := False;
      Parallel  : Boolean := False;
      Number    : Natural := 0;
      Points    : Point_2D_Array_4;
   end record;

end CGK.Primitives.Intersections;
