--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Routines for Arbitrary Precision Floating-point Arithmetic
--
--  This code is based on the work "Adaptive Precision Floating-Point
--  Arithmetic and Fast Robust Geometric Predicates" by Jonathan Richard
--  Shewchuk, CMU-CS-96-140

with Interfaces;

with CGK.Reals;

package CGK.Internals.Shewchuk_Arithmetic is

   pragma Pure;

   procedure Two_Sum
     (A : CGK.Reals.Real;
      B : CGK.Reals.Real;
      X : out CGK.Reals.Real;
      Y : out CGK.Reals.Real);

   procedure Two_Diff_Tail
     (A : CGK.Reals.Real;
      B : CGK.Reals.Real;
      X : CGK.Reals.Real;
      Y : out CGK.Reals.Real);

   procedure Two_Product
     (A : CGK.Reals.Real;
      B : CGK.Reals.Real;
      X : out CGK.Reals.Real;
      Y : out CGK.Reals.Real);

   procedure Two_Two_Diff
     (A1 : CGK.Reals.Real;
      A0 : CGK.Reals.Real;
      B1 : CGK.Reals.Real;
      B0 : CGK.Reals.Real;
      X3 : out CGK.Reals.Real;
      X2 : out CGK.Reals.Real;
      X1 : out CGK.Reals.Real;
      X0 : out CGK.Reals.Real);

   type Real_Array is
     array (Interfaces.Unsigned_32 range <>) of CGK.Reals.Real;

   function Estimate (E : Real_Array) return CGK.Reals.Real;
   --  Produce a one-word estimate of an expansion's value.

   procedure Fast_Expansion_Sum_Zero_Elim
     (E : Real_Array;
      F : Real_Array;
      H : out Real_Array;
      L : out Interfaces.Unsigned_32);
   --  Sum two expansions, eliminating zero components from the output
   --  expansion.
   --
   --  Sets h = e + f.
   --
   --  h cannot be e or f.
   --
   --  If round-to-even is used (as with IEEE 754), maintains the strongly
   --  nonoverlapping property. (That is, if e is strongly nonoverlapping,
   --  h will be also.) Does NOT maintain the nonoverlapping or nonadjacent
   --  properties.

end CGK.Internals.Shewchuk_Arithmetic;
