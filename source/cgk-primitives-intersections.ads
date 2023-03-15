--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Primitives.Circles_2D;
with CGK.Primitives.Points_2D;

package CGK.Primitives.Intersections is

   pragma Pure;

   type Intersection is private;

   function Create_Intersection
     (Circle_1 : CGK.Primitives.Circles_2D.Circle_2D;
      Circle_2 : CGK.Primitives.Circles_2D.Circle_2D) return Intersection;

   procedure Perform
     (Self     : in out Intersection;
      Circle_1 : CGK.Primitives.Circles_2D.Circle_2D;
      Circle_2 : CGK.Primitives.Circles_2D.Circle_2D);

   function Is_Valid (Self : Intersection) return Boolean with Inline;
   --  Returns True when object contains valid data.

   function Is_Identical_Elements
     (Self : Intersection) return Boolean with Inline;
   --  Returns True when elements are identical.
   --
   --  @exception Invalid_State_Error

   function Is_Parallel_Elements
     (Self : Intersection) return Boolean with Inline;
   --  Returns True when elements are parallel.
   --
   --  @exception Invalid_State_Error

   function Length (Self : Intersection) return Natural with Inline;
   --  Returns the number of intersection points.
   --
   --  @exception Invalid_State_Error

   function Point
     (Self : Intersection; Index : Positive)
      return CGK.Primitives.Points_2D.Point_2D with Inline;
   --  Returns the intersection point of given Index.
   --
   --  @exception Constraint_Error
   --  @exception Invalid_State_Error

   function Points
     (Self : Intersection) return CGK.Primitives.Points_2D.Point_2D_Array;
   --  Returns array of intersection points.
   --
   --  @exception Invalid_State_Error

private

   type Intersection is record
      Valid     : Boolean := False;
      Identical : Boolean := False;
      Parallel  : Boolean := False;
      Length    : Natural := 0;
      Points    : CGK.Primitives.Points_2D.Point_2D_Array (1 .. 4);
   end record;

end CGK.Primitives.Intersections;
