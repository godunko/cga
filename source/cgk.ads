--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

package CGK is

   pragma Pure;

   Construction_Error  : exception;
   --  Raised when construction can't be done.

   Invalid_State_Error : exception;
   --  Raised when object is not in valid state.

private

   procedure Assert_Construction_Error (Value : Boolean);

   procedure Assert_Invalid_State_Error (Valid : Boolean);

end CGK;
