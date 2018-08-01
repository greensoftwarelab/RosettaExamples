Program Ackerman;

function ackermann(m, n: Integer) : Integer;
begin
   if m = 0 then
      ackermann := n+1
   else if n = 0 then
      ackermann := ackermann(m-1, 1)
   else
      ackermann := ackermann(m-1, ackermann(m, n-1));
end;

var
   m, n	: Integer;

begin
   for m := 0 to 3 do
      for n := 0 to 13 do
	 WriteLn(ackermann(m,n));
end.
