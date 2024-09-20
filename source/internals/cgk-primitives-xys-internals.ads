--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Internal utilities. Should not be used by applications.

with CGK.Mathematics.Vectors_2;

package CGK.Primitives.XYs.Internals
  with Pure
is

   function To_XY (Vector : CGK.Mathematics.Vectors_2.Vector_2) return XY
     with Inline_Always;

   function To_Vector_2 (XY : XYs.XY) return CGK.Mathematics.Vectors_2.Vector_2
     with Inline_Always;

end CGK.Primitives.XYs.Internals;
