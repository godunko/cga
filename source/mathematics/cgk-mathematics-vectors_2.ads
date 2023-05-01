--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Reals;

package CGK.Mathematics.Vectors_2 is

   pragma Pure;

   type Vector_2 is array (0 .. 1) of CGK.Reals.Real
     with Alignment => 16;
   pragma Machine_Attribute (Vector_2, "vector_type");
   pragma Machine_Attribute (Vector_2, "may_alias");

   function "-" (Right : Vector_2) return Vector_2 with Inline;

   function "+"
     (Left : Vector_2; Right : Vector_2) return Vector_2 with Inline;

   function "-"
     (Left : Vector_2; Right : Vector_2) return Vector_2 with Inline;

   function "*"
     (Left : Vector_2; Right : CGK.Reals.Real) return Vector_2 with Inline;

   function "*"
     (Left : CGK.Reals.Real; Right : Vector_2) return Vector_2 with Inline;

   function "*"
     (Left : Vector_2; Right : Vector_2) return Vector_2 with Inline;

end CGK.Mathematics.Vectors_2;
