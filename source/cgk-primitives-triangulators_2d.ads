--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

--  Triangulation of a polygon in 2D space, without holes.

with CGK.Primitives.Points_2D.Containers;

package CGK.Primitives.Triangulators_2D is

   pragma Preelaborate;

   type Triangulator_2D is private;

   procedure Clear (Self : in out Triangulator_2D);

   procedure Add_Polygon_Point
     (Self  : in out Triangulator_2D;
      Point : CGK.Primitives.Points_2D.Point_2D);

   procedure Triangulate (Self : in out Triangulator_2D);

   function Is_Valid (Self : Triangulator_2D) return Boolean;

   function Length
     (Self : Triangulator_2D)
      return CGK.Primitives.Points_2D.Containers.Point_2D_Array_Count;

   function Point
     (Self : Triangulator_2D;
      Index : CGK.Primitives.Points_2D.Containers.Point_2D_Array_Index)
      return CGK.Primitives.Points_2D.Point_2D;

private

   use CGK.Primitives.Points_2D.Containers;

   type Triangulator_2D is record
      Points : Point_2D_Sequence;
      Valid  : Boolean := False;
      Result : Point_2D_Sequence;
   end record;

end CGK.Primitives.Triangulators_2D;
