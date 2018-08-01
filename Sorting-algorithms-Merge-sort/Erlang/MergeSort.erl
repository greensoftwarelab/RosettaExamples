
-module(MergeSort).
-export([main/0]).

mergeSort(L) when length(L) == 1 -> L;
mergeSort(L) when length(L) > 1 ->
    {L1, L2} = lists:split(length(L) div 2, L),
    lists:merge(mergeSort(L1), mergeSort(L2)).


main(_) ->
    List = [1,2,9,4,6],
    mergeSort(List),
    io:format("Done").
