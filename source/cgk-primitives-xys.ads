--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Cartesian coordinate entity in 2D space {X, Y}

package CGK.Primitives.XYs is

   pragma Pure;

   type XY is private;

   function Create_XY (X : CGK.Real; Y : CGK.Real) return XY with Inline;

private

   type XY is record
      X : CGK.Real := 0.0;
      Y : CGK.Real := 0.0;
   end record;

end CGK.Primitives.XYs;
