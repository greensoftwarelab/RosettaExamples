-module( quicksort ).

-export( [main/0] ).

qsort([]) -> [];
qsort([X|Xs]) ->
   qsort([ Y || Y <- Xs, Y < X]) ++ [X] ++ qsort([ Y || Y <- Xs, Y >= X]).


main() ->
    List = [1,2,9,4,6],
    List2 = qsort(List),
    io:format("~p~n",[List2]),
    halt().

