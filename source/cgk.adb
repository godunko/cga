--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package body CGK is

   -------------------------------
   -- Assert_Construction_Error --
   -------------------------------

   procedure Assert_Construction_Error (Value : Boolean) is
   begin
      if not Value then
         raise Construction_Error;
      end if;
   end Assert_Construction_Error;

end CGK;
