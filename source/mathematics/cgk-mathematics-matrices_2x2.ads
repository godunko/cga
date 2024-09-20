--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Reals;

package CGK.Mathematics.Matrices_2x2
  with Pure
is

   type Matrix_2x2 is array (0 .. 1, 0 .. 1) of CGK.Reals.Real
     with Alignment => CGK.Reals.Real_Vector_2_Alignment;

   procedure Set_Identity (Self : out Matrix_2x2) with Inline;
   --  Initialize matrix to identity.

   function "*"
     (Left : Matrix_2x2; Right : Matrix_2x2) return Matrix_2x2 with Inline;

end CGK.Mathematics.Matrices_2x2;
