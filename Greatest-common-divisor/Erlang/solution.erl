% Implemented by Arjun Sunel
-module(rgcd).
-export([main/0]).

main() ->
	%i -> gcd(922,7436),
	io:format("GCD of 2147483646,1143271457 is ~p", [gcd(2147483646, 1143271457)]).
	
gcd(A, 0) -> A;

gcd(A, B) -> gcd(B, A rem B).
