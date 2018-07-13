with Ada.Text_Io;

procedure Greatest_Element_Of_A_List is
   -- substitute any array type with a scalar element
   type Flt_Array is array (Natural range <>) of Float;

   -- Create an exception for the case of an empty array
   Empty_Array : Exception;

   function Max(Item : Flt_Array) return Float is
      Max_Element : Float := Float'First;
   begin
      if Item'Length = 0 then
         raise Empty_Array;
      end if;

      for I in Item'range loop
         if Item(I) > Max_Element then
            Max_Element := Item(I);
         end if;
      end loop;
      return Max_Element;
   end Max;

   Buf : Flt_Array := (1.0,2.0,3.0,1.0,4.0,2.0,1.0);
begin
   Ada.Text_IO.Put_Line(Float'Image(Max(Buf)));
end Greatest_Element_Of_A_List;
