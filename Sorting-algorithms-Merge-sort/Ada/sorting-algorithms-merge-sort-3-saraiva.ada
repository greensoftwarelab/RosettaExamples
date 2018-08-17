with Ada.Text_Io; use Ada.Text_Io;

  function Merge(Left, Right : Collection_Type) return Collection_Type is
      Result : Collection_Type(Left'First..Right'Last);
      Left_Index : Index_Type := Left'First;
      Right_Index : Index_Type := Right'First;
      Result_Index : Index_Type := Result'First;
   begin
      while Left_Index <= Left'Last and Right_Index <= Right'Last loop
         if Left(Left_Index) <= Right(Right_Index) then
            Result(Result_Index) := Left(Left_Index);
            Left_Index := Index_Type'Succ(Left_Index); -- increment Left_Index
         else
            Result(Result_Index) := Right(Right_Index);
            Right_Index := Index_Type'Succ(Right_Index); -- incr Right_Inde
         end if;
         Result_Index := Index_Type'Succ(Result_Index); -- incr Result_Inde
      end loop;
      if Left_Index <= Left'Last then
         Result(Result_Index..Result'Last) := Left(Left_Index..Left'Last);
      end if;
      if Right_Index <= Right'Last then
         Result(Result_Index..Result'Last) := Right(Right_Index..Right'Last);
      end if;
      return Result;
   end Merge;

   ----------
   -- Sort --
   ----------

   function Sort (Item : Collection_Type) return Collection_Type is
      Result : Collection_Type(Item'range);
      Middle : Index_Type;
   begin
      if Item'Length <= 1 then
         return Item;
      else
         Middle := Index_Type'Val((Item'Length / 2) + Index_Type'Pos(Item'First)
);
         declare
            Left : Collection_Type(Item'First..Index_Type'Pred(Middle));
            Right : Collection_Type(Middle..Item'Last);
         begin
            for I in Left'range loop
               Left(I) := Item(I);
            end loop;
            for I in Right'range loop
               Right(I) := Item(I);
            end loop;
            Left := Sort(Left);
            Right := Sort(Right);
            Result := Merge(Left, Right);
         end;
         return Result;
      end if;
   end Sort;



procedure Mergesort_Test is
   type List_Type is array(Positive range <>) of Integer;
   package List_Sort is new Mergesort(Integer, Positive, List_Type);
   procedure Print(Item : List_Type) is
   begin
      for I in Item'range loop
         Put(Integer'Image(Item(I)));
      end loop;
      New_Line;
   end Print;

   List : List_Type := (1, 5, 2, 7, 3, 9, 4, 6);
begin
   Print(List);
   Print(List_Sort.Sort(List));
end Mergesort_Test;
