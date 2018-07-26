Program GreatestCommonDivisorDemo(output);

function gcd_recursive(u, v: longint): longint;
  begin
    if u mod v <> 0 then
        gcd_recursive := gcd_recursive(v, u mod v)
    else
        gcd_recursive := v;
  end;




begin
  writeln ('GCD of 2147483646,1143271457 is ', gcd_recursive(2147483646,1143271457));

end.
