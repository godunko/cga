--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Containers of Point_2D objects.

package CGK.Primitives.Points_2D.Containers is

   pragma Pure;

   type Point_2D_Array_Offset is new Integer;
   subtype Point_2D_Array_Count is
     Point_2D_Array_Offset range 0 .. Point_2D_Array_Offset'Last;
   subtype Point_2D_Array_Index is
     Point_2D_Array_Offset range 1 .. Point_2D_Array_Offset'Last;

   type Point_2D_Array is array (Point_2D_Array_Index range <>) of Point_2D;

end CGK.Primitives.Points_2D.Containers;
