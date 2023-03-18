--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

private with Ada.Finalization;

generic
   type Index_Type is range <>;

   type Element_Type is private;

package CGK.Internals.Generic_Sequences is

   pragma Preelaborate;

   subtype Count_Type is Index_Type'Base range 0 .. Index_Type'Last;

   type Sequence is tagged private with Constant_Indexing => Element;

   function First (Self : Sequence'Class) return Index_Type with Inline;

   function Last (Self : Sequence'Class) return Index_Type'Base with Inline;

   function Length (Self : Sequence'Class) return Count_Type with Inline;

   function First_Element
     (Self : Sequence'Class) return Element_Type with Inline;

   function Last_Element
     (Self : Sequence'Class) return Element_Type with Inline;

   function Element
     (Self  : Sequence'Class;
      Index : Index_Type) return Element_Type with Inline;

   procedure Set_Capacity (Self : in out Sequence'Class; To : Index_Type'Base);

   procedure Clear (Self : in out Sequence'Class);

   procedure Append (Self : in out Sequence'Class; Item : Element_Type);

   procedure Delete (Self : in out Sequence'Class; Index : Index_Type);

   procedure Delete_Last (Self : in out Sequence'Class);

private

   type Element_Array_Type is array (Index_Type range <>) of Element_Type;

   type Element_Array_Access is access all Element_Array_Type;

   type Sequence is new Ada.Finalization.Controlled with record
      Capacity : Index_Type'Base := 0;
      Data     : Element_Array_Access;
      Length   : Index_Type'Base := 0;
   end record;

   overriding procedure Adjust (Self : in out Sequence);

   overriding procedure Finalize (Self : in out Sequence);

end CGK.Internals.Generic_Sequences;
