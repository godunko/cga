--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.Vectors_2D is

   use CGK.Primitives.XYs;

   ---------
   -- "-" --
   ---------

   function "-" (Self : Vector_2D) return Vector_2D is
   begin
      return (Coordinates => -Self.Coordinates);
   end "-";

   ----------------------
   -- Create_Vector_2D --
   ----------------------

   function Create_Vector_2D (X : CGK.Real; Y : CGK.Real) return Vector_2D is
   begin
      return (Coordinates => Create_XY (X, Y));
   end Create_Vector_2D;

   ----------------------
   -- Create_Vector_2D --
   ----------------------

   function Create_Vector_2D
     (Point_1 : CGK.Primitives.Points_2D.Point_2D;
      Point_2 : CGK.Primitives.Points_2D.Point_2D) return Vector_2D is
   begin
      return
        (Coordinates => Points_2D.XY (Point_2) - Points_2D.XY (Point_1));
   end Create_Vector_2D;

   -------
   -- X --
   -------

   function X (Self : Vector_2D) return CGK.Real is
   begin
      return X (Self.Coordinates);
   end X;

   -------
   -- Y --
   -------

   function Y (Self : Vector_2D) return CGK.Real is
   begin
      return Y (Self.Coordinates);
   end Y;

end CGK.Primitives.Vectors_2D;
