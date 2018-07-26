
-module(mergesort).
-export([main/0]).

mergeSort(L) when length(L) == 1 -> L;
mergeSort(L) when length(L) > 1 ->
    {L1, L2} = lists:split(length(L) div 2, L),
    lists:merge(mergeSort(L1), mergeSort(L2)).


main() ->
    List = [1,2,9,4,6],
    List2 = mergeSort(List),
    io:format("~p~n",[List2]),
    halt().
