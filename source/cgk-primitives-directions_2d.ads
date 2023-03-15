--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Direction - unit vector in the 2D space.

with CGK.Primitives.XYs;
with CGK.Reals;

package CGK.Primitives.Directions_2D is

   pragma Pure;

   type Direction_2D is private;

   function Create_Direction_2D
     (X : CGK.Reals.Real; Y : CGK.Reals.Real) return Direction_2D;

   function Create_Direction_2D
     (XY : CGK.Primitives.XYs.XY) return Direction_2D;

private

   type Direction_2D is record
      Coordinates : CGK.Primitives.XYs.XY :=
        CGK.Primitives.XYs.Create_XY (1.0, 0.0);
   end record;

end CGK.Primitives.Directions_2D;
