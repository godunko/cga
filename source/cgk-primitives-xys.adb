--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.XYs is

   use CGK.Reals;

   ---------
   -- "*" --
   ---------

   function "*" (Left : CGK.Reals.Real; Right : XY) return XY is
   begin
      return (Left * Right.X, Left * Right.Y);
   end "*";

   ---------
   -- "+" --
   ---------

   function "+" (Left : XY; Right : XY) return XY is
   begin
      return (Left.X + Right.X, Left.Y + Right.Y);
   end "+";

   ---------
   -- "-" --
   ---------

   function "-" (Self : XY) return XY is
   begin
      return (-Self.X, -Self.Y);
   end "-";

   ---------
   -- "-" --
   ---------

   function "-" (Left : XY; Right : XY) return XY is
   begin
      return (Left.X - Right.X, Left.Y - Right.Y);
   end "-";

   ---------------
   -- Create_XY --
   ---------------

   function Create_XY (X : CGK.Reals.Real; Y : CGK.Reals.Real) return XY is
   begin
      return (X => X, Y => Y);
   end Create_XY;

   -------
   -- X --
   -------

   function X (Self : XY) return CGK.Reals.Real is
   begin
      return Self.X;
   end X;

   -------
   -- Y --
   -------

   function Y (Self : XY) return CGK.Reals.Real is
   begin
      return Self.Y;
   end Y;

end CGK.Primitives.XYs;
