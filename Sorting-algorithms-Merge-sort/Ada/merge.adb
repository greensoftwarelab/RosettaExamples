pragma Source_Reference (000001, "sorting-algorithms-merge-sort-3-saraiva.ada");
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
