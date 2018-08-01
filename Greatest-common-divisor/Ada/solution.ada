with Ada.Text_Io; use Ada.Text_Io;

procedure Gcd_Test is
   function Gcd (A, B : Long_Integer) return Long_Integer is
      M : Long_Integer := A;
      N : Long_Integer := B;
      T : Long_Integer;
   begin
      while N /= 0 loop
         T := M;
         M := N;
         N := T mod N;
      end loop;
      return M;
   end Gcd;

begin
   Put_Line("GCD of 2147483646,1143271457 is" & Long_Integer'Image(Gcd(2147483646, 1143271457)));
end Gcd_Test;
