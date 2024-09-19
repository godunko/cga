--
--  Copyright (C) 2023-2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Reals.Elementary_Functions;

package body CGK.Primitives.XYs is

   use CGK.Mathematics.Vectors_2;
   use CGK.Reals;
   use CGK.Reals.Elementary_Functions;

   ---------
   -- "*" --
   ---------

   function "*" (Left : XY; Right : CGK.Reals.Real) return XY is
   begin
      return (Value => Left.Value * Right);
   end "*";

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

   ---------
   -- "/" --
   ---------

   function "/" (Left : XY; Right : CGK.Reals.Real) return XY is
   begin
      return (Value => Left.Value / Right);
   end "/";

   ---------------
   -- Create_XY --
   ---------------

   function Create_XY (X : CGK.Reals.Real; Y : CGK.Reals.Real) return XY is
   begin
      return (Value => [X, Y]);
   end Create_XY;

   -------------------
   -- Cross_Product --
   -------------------

   function Cross_Product
     (Self : XY; Other : XY) return CGK.Reals.Real is
   begin
      return
        Self.Value (0) * Other.Value (1)
          - Self.Value (1) * Other.Value (0);
   end Cross_Product;

   -----------------
   -- Dot_Product --
   -----------------

   function Dot_Product
     (Self : XY; Other : XY) return CGK.Reals.Real is
   begin
      return
        Self.Value (0) * Other.Value (0)
          + Self.Value (1) * Other.Value (1);
   end Dot_Product;

   -------------
   -- Modulus --
   -------------

   function Modulus (Self : XY) return CGK.Reals.Real is
   begin
      return
        Sqrt
          (Self.Value (0) * Self.Value (0) + Self.Value (1) * Self.Value (1));
   end Modulus;

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
