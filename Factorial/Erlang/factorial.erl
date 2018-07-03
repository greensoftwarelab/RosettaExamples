-module(factorial).
-export([main/0]).

fac(1) -> 1;
fac(N) -> N * fac(N-1).


main() ->
    io:fwrite("~w~n", [fac(15)]),
    halt(0).
