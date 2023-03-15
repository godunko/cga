--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Cartesian coordinate entity in 2D space {X, Y}

with CGK.Reals;

package CGK.Primitives.XYs is

   pragma Pure;

   type XY is private;

   function Create_XY
     (X : CGK.Reals.Real; Y : CGK.Reals.Real) return XY with Inline;

   function X (Self : XY) return CGK.Reals.Real with Inline;
   --  Returns X coordinate.

   function Y (Self : XY) return CGK.Reals.Real with Inline;
   --  Returns Y coordinate.

   function "-" (Self : XY) return XY with Inline;

   function "-" (Left : XY; Right : XY) return XY with Inline;
   --  Subtract components

private

   type XY is record
      X : CGK.Reals.Real := 0.0;
      Y : CGK.Reals.Real := 0.0;
   end record;

end CGK.Primitives.XYs;
