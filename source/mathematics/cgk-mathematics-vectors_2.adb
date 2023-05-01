--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Mathematics.Vectors_2 is

   use CGK.Reals;

   ---------
   -- "*" --
   ---------

   function "*" (Left : Vector_2; Right : CGK.Reals.Real) return Vector_2 is
   begin
      return [Left (0) * Right, Left (1) * Right];
   end "*";

   ---------
   -- "*" --
   ---------

   function "*" (Left : CGK.Reals.Real; Right : Vector_2) return Vector_2 is
   begin
      return [Left * Right (0), Left * Right (1)];
   end "*";

   ---------
   -- "*" --
   ---------

   function "*"
     (Left : Vector_2; Right : Vector_2) return Vector_2 is
   begin
      return [Left (0) * Right (0), Left (1) * Right (1)];
   end "*";

   ---------
   -- "+" --
   ---------

   function "+" (Left : Vector_2; Right : Vector_2) return Vector_2 is
   begin
      return [Left (0) + Right (0), Left (1) + Right (1)];
   end "+";

   ---------
   -- "-" --
   ---------

   function "-" (Right : Vector_2) return Vector_2 is
   begin
      return [-Right (0), -Right (1)];
   end "-";

   ---------
   -- "-" --
   ---------

   function "-" (Left : Vector_2; Right : Vector_2) return Vector_2 is
   begin
      return [Left (0) - Right (0), Left (1) - Right (1)];
   end "-";

end CGK.Mathematics.Vectors_2;
