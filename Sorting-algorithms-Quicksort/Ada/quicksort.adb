pragma Source_Reference (000001, "sorting-algorithms-quicksort-2-saraiva.ada");
-----------------------------------------------------------------------
-- Generic Quicksort procedure
-----------------------------------------------------------------------

with Ada.Text_Io;       use Ada.Text_Io;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
-- with Ada.Element;       use Ada.Element;

procedure QuickSort is

procedure Sort (Item : in out Element_Type) is

   procedure Swap(Left, Right : in out Element_Type) is
      Temp : Element_Type := Left;
   begin
      Left := Right;
      Right := Temp;
   end Swap;

   Pivot_Index : Index_Type;
   Pivot_Value : Element_Type;
   Right       : Index_Type := Item'Last;
   Left        : Index_Type := Item'First;

begin
   if Item'Length > 1 then
      Pivot_Index := Index_Type'Val((Index_Type'Pos(Item'Last) + 1 +
                                    Index_Type'Pos(Item'First)) / 2);
      Pivot_Value := Item(Pivot_Index);

      Left  := Item'First;
      Right := Item'Last;
      loop
         while Left < Item'Last and then Item(Left) < Pivot_Value loop
            Left := Index_Type'Succ(Left);
         end loop;
         while Right > Item'First and then Item(Right) > Pivot_Value loop
            Right := Index_Type'Pred(Right);
         end loop;
         exit when Left >= Right;
         Swap(Item(Left), Item(Right));
         if Left < Item'Last then
            Left := Index_Type'Succ(Left);
         end if;
         if Right > Item'First then
            Right := Index_Type'Pred(Right);
         end if;
      end loop;
      if Right > Item'First then
         Sort(Item(Item'First..Index_Type'Pred(Right)));
      end if;
      if Left < Item'Last then
         Sort(Item(Left..Item'Last));
      end if;
   end if;
end Sort;

begin
  Sort ((1,2,3));
  Put ("ola");

end QuickSort; 