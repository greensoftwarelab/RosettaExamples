with Ada.Text_IO;  use Ada.Text_IO;

procedure Ackermann_Function is
   function Ackermann (M, N : Natural) return Natural is
   begin
      if M = 0 then
         return N + 1;
      elsif N = 0 then
         return Ackermann (M - 1, 1);
      else
         return Ackermann (M - 1, Ackermann (M, N - 1));
      end if;
   end Ackermann;
begin
   for M in 0..3 loop
      for N in 0..13 loop
         Put (Natural'Image (Ackermann (M, N)));
         New_Line;
      end loop;
   end loop;
end Ackermann_Function;
