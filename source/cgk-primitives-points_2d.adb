--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.Points_2D is

   use CGK.Primitives.XYs;

   ---------------------
   -- Create_Point_2D --
   ---------------------

   function Create_Point_2D (X : CGK.Real; Y : CGK.Real) return Point_2D is
   begin
      return (Coordinates => Create_XY (X, Y));
   end Create_Point_2D;

   --------------
   -- Distance --
   --------------

   function Distance
     (Point_1 : Point_2D;
      Point_2 : Point_2D) return CGK.Real
   is
      DX : constant Real := X (Point_1.Coordinates) - X (Point_2.Coordinates);
      DY : constant Real := Y (Point_1.Coordinates) - Y (Point_2.Coordinates);

   begin
      return Elementary_Functions.Sqrt (DX * DX + DY * DY);
   end Distance;

   -------
   -- X --
   -------

   function X (Self : Point_2D) return CGK.Real is
   begin
      return X (Self.Coordinates);
   end X;

   --------
   -- XY --
   --------

   function XY (Self : Point_2D) return CGK.Primitives.XYs.XY is
   begin
      return Self.Coordinates;
   end XY;

   -------
   -- Y --
   -------

   function Y (Self : Point_2D) return CGK.Real is
   begin
      return Y (Self.Coordinates);
   end Y;

end CGK.Primitives.Points_2D;
