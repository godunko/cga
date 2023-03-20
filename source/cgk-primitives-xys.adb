--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK.Primitives.XYs is

   use CGK.Mathematics.Vectors_2;
   use CGK.Reals;

   ---------
   -- "*" --
   ---------

   function "*" (Left : CGK.Reals.Real; Right : XY) return XY is
   begin
      return (Value => Left * Right.Value);
   end "*";

   ---------
   -- "+" --
   ---------

   function "+" (Left : XY; Right : XY) return XY is
   begin
      return (Value => Left.Value + Right.Value);
   end "+";

   ---------
   -- "-" --
   ---------

   function "-" (Self : XY) return XY is
   begin
      return (Value => -Self.Value);
   end "-";

   ---------
   -- "-" --
   ---------

   function "-" (Left : XY; Right : XY) return XY is
   begin
      return (Value => Left.Value - Right.Value);
   end "-";

   ---------------
   -- Create_XY --
   ---------------

   function Create_XY (X : CGK.Reals.Real; Y : CGK.Reals.Real) return XY is
   begin
      return (Value => [X, Y]);
   end Create_XY;

   -------
   -- X --
   -------

   function X (Self : XY) return CGK.Reals.Real is
   begin
      return Self.Value (0);
   end X;

   -------
   -- Y --
   -------

   function Y (Self : XY) return CGK.Reals.Real is
   begin
      return Self.Value (1);
   end Y;

end CGK.Primitives.XYs;
