pragma Source_Reference (000027, "sorting-algorithms-merge-sort-3-saraiva.ada");

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
