--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK is

   function Next_After (X : Real; Y: Real) return Real;

   -------------------------------
   -- Assert_Construction_Error --
   -------------------------------

   procedure Assert_Construction_Error (Value : Boolean) is
   begin
      if not Value then
         raise Construction_Error;
      end if;
   end Assert_Construction_Error;

   -------------
   -- Epsilon --
   -------------

   function Epsilon (Value : Real) return Real is
   begin
      if Value >= 0.0 then
         return Next_After (Value, Real'Last) - Value;

      else
         return Value - Next_After (Value, Real'First);
      end if;
   end Epsilon;

   ----------------
   -- Next_After --
   ----------------

   function Next_After (X : Real; Y : Real) return Real is
      use type Interfaces.Unsigned_64;

      R : Real := X;
      U : Interfaces.Unsigned_64 with Address => R'Address;

   begin
      if X = 0.0 then
         return Real'Model_Small;

      elsif X = Y then
         return X;

      elsif (X < Y and X >= 0.0) or (X > Y and X < 0.0) then
         U := @ + 1;

      elsif U = 0 then
         U := 16#8000_0000_0000_0001#;

      else
         U := @ - 1;
      end if;

      return R;
   end Next_After;

end CGK;
