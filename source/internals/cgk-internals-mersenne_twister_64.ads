--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Implementation of the MT19937-64 pseudorandom number generator. It is
--  based on work:
--
--     A C-program for MT19937-64 (2004/9/29 version).
--     Coded by Takuji Nishimura and Makoto Matsumoto.
--
--  http://www.math.sci.hiroshima-u.ac.jp/m-mat/MT/VERSIONS/C-LANG/mt19937-64.c

with Interfaces;

package CGK.Internals.Mersenne_Twister_64 is

   pragma Pure;

   type Generator is private;

   procedure Initialize
     (Self : in out Generator;
      Seed : Interfaces.Unsigned_64);

   function Generate (Self : in out Generator) return Interfaces.Unsigned_64;
   --  Generates a random number on [0, 2^64-1] interval.

   function Generate (Self : in out Generator) return Interfaces.Integer_64;
   --  Generates a random number on [0, 2^63-1] interval.

   function Generate_II
     (Self : in out Generator) return Interfaces.IEEE_Float_64;
   --  Generates a random number on [0,1] interval.

   function Generate_IE
     (Self : in out Generator) return Interfaces.IEEE_Float_64;
   --  Generates a random number on [0,1) interval.

   function Generate_EE
     (Self : in out Generator) return Interfaces.IEEE_Float_64;
   --  Generates a random number on (0,1) interval.

private

   use Interfaces;

   NN : constant := 312;

   type Unsigned_64_Array is array (Natural range 0 .. NN - 1) of Unsigned_64;

   type Generator is record
      MT  : Unsigned_64_Array;
      MTI : Natural := NN + 1;
   end record;

end CGK.Internals.Mersenne_Twister_64;
