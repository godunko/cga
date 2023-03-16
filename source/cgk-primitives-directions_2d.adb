--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Reals.Elementary_Functions;

package body CGK.Primitives.Directions_2D is

   use CGK.Primitives.XYs;
   use CGK.Reals;

   -------------------------
   -- Create_Direction_2D --
   -------------------------

   function Create_Direction_2D
     (X : CGK.Reals.Real; Y : CGK.Reals.Real) return Direction_2D
   is
      D : constant Real := Elementary_Functions.Sqrt (X * X + Y * Y);

   begin
      Assert_Construction_Error (D > Resolution);

      return
        (Coordinates => CGK.Primitives.XYs.Create_XY (X => X / D, Y => Y / D));
   end Create_Direction_2D;

   -------------------------
   -- Create_Direction_2D --
   -------------------------

   function Create_Direction_2D
     (XY : CGK.Primitives.XYs.XY) return Direction_2D is
   begin
      return Create_Direction_2D (X (XY), Y (XY));
   end Create_Direction_2D;

   -------
   -- X --
   -------

   function X (Self : Direction_2D) return CGK.Reals.Real is
   begin
      return X (Self.Coordinates);
   end X;

   --------
   -- XY --
   --------

   function XY (Self : Direction_2D) return CGK.Primitives.XYs.XY is
   begin
      return Self.Coordinates;
   end XY;

   -------
   -- Y --
   -------

   function Y (Self : Direction_2D) return CGK.Reals.Real is
   begin
      return Y (Self.Coordinates);
   end Y;

end CGK.Primitives.Directions_2D;
