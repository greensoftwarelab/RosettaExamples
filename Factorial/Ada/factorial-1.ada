with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Factorial is

   function Get_Factorial (N : Positive) return Positive is
      Result : Positive := N;
      Counter : Natural := N - 1;
   begin
      for I in reverse 1..Counter loop
         Result := Result * I;
      end loop;
      return Result;
   end Get_Factorial;
   Val : Positive;
   Fact : Positive;
begin
   Val := 15;
   Fact := Get_Factorial(Val);
   Put( Fact );
end Factorial;
