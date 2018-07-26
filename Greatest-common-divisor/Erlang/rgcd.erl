% Implemented by Arjun Sunel
-module(rgcd).
-export([main/0]).

main() ->
	%i -> gcd(922,7436),
	io:format("GCD of 9223372036854775,743697089154135 is  ~p", [gcd(9223372036854775,743697089154135)]).
	
gcd(A, 0) -> A;

gcd(A, B) -> gcd(B, A rem B).
