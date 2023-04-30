--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Routines for Fast Robust Geometric Predicates
--
--  This code is based on the work "Adaptive Precision Floating-Point
--  Arithmetic and Fast Robust Geometric Predicates" by Jonathan Richard
--  Shewchuk, CMU-CS-96-140

with CGK.Mathematics.Vectors_2;
with CGK.Reals;

package CGK.Internals.Shewchuk is

   pragma Pure;

   function Orientation
     (PA : CGK.Mathematics.Vectors_2.Vector_2;
      PB : CGK.Mathematics.Vectors_2.Vector_2;
      PC : CGK.Mathematics.Vectors_2.Vector_2) return CGK.Reals.Real;

end CGK.Internals.Shewchuk;
