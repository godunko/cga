--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Advanced algorithms to create Line_2D.

with CGK.Primitives.Points_2D;

package CGK.Primitives.Lines_2D.Builders is

   pragma Pure;

   type Line_2D_Builder is private;

   procedure Make
     (Self    : in out Line_2D_Builder;
      Point_1 : CGK.Primitives.Points_2D.Point_2D;
      Point_2 : CGK.Primitives.Points_2D.Point_2D);
   --  Make Line_2D that passing through two Point_2D.

private

   type State_Kind is (Invalid, Valid, Confused_Points_Error);

   type Line_2D_Builder is record
      State : State_Kind := Invalid;
      Line  : Line_2D;
   end record;

end CGK.Primitives.Lines_2D.Builders;
