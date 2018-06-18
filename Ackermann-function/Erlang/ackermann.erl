-module(ackermann_function).
-export([ackermann/2]).
-export([main/0]).

main() ->
    loop(0,0),
    halt(0).

loop(4, _) -> noop;
loop(M, 13) -> loop(M+1, 0);
loop(M, N) -> io:write(ackermann(M, N)),
              io:nl(),
              loop(M, N+1).

ackermann(0, N) ->
  N+1;
ackermann(M, 0) ->
  ackermann(M-1, 1);
ackermann(M, N) when M > 0 andalso N > 0 ->
  ackermann(M-1, ackermann(M, N-1)).
