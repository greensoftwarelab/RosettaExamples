-module(fib).
-export([main/0]).

main() ->
	io:format("~w~n", [fib(46)]),
	halt().

fib(0) -> 0;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).

