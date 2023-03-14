--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with CGK.Primitives.Vectors_2D;

package body CGK.Primitives.Intersections is

   use CGK.Primitives.Circles_2D;
   use CGK.Primitives.Points_2D;
   use CGK.Primitives.Vectors_2D;

   -------------
   -- Perform --
   -------------

   procedure Perform
     (Self     : in out Intersection;
      Circle_1 : CGK.Primitives.Circles_2D.Circle_2D;
      Circle_2 : CGK.Primitives.Circles_2D.Circle_2D)
   is
      Dist : constant Real := Distance (Center (Circle_1), Center (Circle_2));
      R1   : constant Real := Radius (Circle_1);
      R2   : constant Real := Radius (Circle_2);
      Sum  : constant Real := R1 + R2;
      Dif  : constant Real := abs (R1 - R2);

   begin
      if Dist <= Real'Model_Epsilon then
         --  Circles are parallel or identical, no intersection points

         Self.Parallel  := True;
         Self.Identical := Dif <= Real'Model_Epsilon;
         Self.Number    := 0;

      elsif Dist - Sum > Epsilon (Sum) then
         --  Circles are outside of each other, no intersection points

         Self.Parallel  := False;
         Self.Identical := False;
         Self.Number    := 0;

      elsif abs (Dist - Sum) <= Epsilon (Sum) then
         --  Circles are exterious, single tangential point

         declare
            XS : constant Real :=
              (X (Center (Circle_1)) * R2 + X (Center (Circle_2)) * R1) / Sum;
            YS : constant Real :=
              (Y (Center (Circle_1)) * R2 + Y (Center (Circle_2)) * R1) / Sum;

         begin
            Self.Parallel  := False;
            Self.Identical := False;
            Self.Number    := 1;

            Self.Points (1) := Create_Point_2D (XS, YS);
         end;

      elsif (Sum - Dist) > Epsilon (Sum)
               and (Dist - Dif) > Epsilon (Dist + Dif)
      then
         declare
            A   : constant CGK.Primitives.Vectors_2D.Vector_2D :=
              Create_Vector_2D (Center (Circle_1), Center (Circle_2));
            L   : Real;
            H   : Real;
            D   : Real;
            XS1 : Real;
            YS1 : Real;
            XS2 : Real;
            YS2 : Real;

         begin
            Self.Parallel  := False;
            Self.Identical := False;
            Self.Number    := 2;

            L := (Dist * Dist + R1 * R1 - R2 * R2) / (2.0 * Dist);
            D := R1 * R1 - L * L;

            if D < 0.0 then
               D := 0.0;
               L := (if L > 0.0 then R1 else -R1);
            end if;

            H := Elementary_Functions.Sqrt (R1 * R1 + L * L);

            XS1 := X (Center (Circle_1)) + L * X (A) / Dist - H * Y (A) / Dist;
            YS1 := Y (Center (Circle_1)) + L * Y (A) / Dist + H * X (A) / Dist;

            XS2 := X (Center (Circle_1)) + L * X (A) / Dist + H * Y (A) / Dist;
            YS2 := Y (Center (Circle_1)) + L * Y (A) / Dist - H * X (A) / Dist;

            Self.Points (1) := Create_Point_2D (XS1, YS1);
            Self.Points (2) := Create_Point_2D (XS2, YS2);
         end;

      elsif abs (Dist - Dif) <= Epsilon (Sum) then
          declare
            A  : CGK.Primitives.Vectors_2D.Vector_2D :=
              Create_Vector_2D (Center (Circle_1), Center (Circle_2));
            XS : Real;
            YS : Real;

         begin
            Self.Parallel  := False;
            Self.Identical := False;
            Self.Number    := 1;

            if Radius (Circle_1) < Radius (Circle_2) then
               A := -A;
            end if;

            XS :=
              (X (Center (Circle_1)) * R2 - X (Center (Circle_2)) * R1)
                 / (R2 - R1);
            YS :=
              (Y (Center (Circle_1)) * R2 - Y (Center (Circle_2)) * R1)
                 / (R2 - R1);

            Self.Points (1) := Create_Point_2D (XS, YS);
         end;

      else
         Self.Parallel  := False;
         Self.Identical := False;
         Self.Number    := 0;
      end if;
   end Perform;

end CGK.Primitives.Intersections;
