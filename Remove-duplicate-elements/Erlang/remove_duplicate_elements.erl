
-module(remove_duplicate_elements).
-export([main/0]).

main() ->
    List = [1, 2, 3, 2, 2, 4, 5, 5, 4, 6, 6, 5],
    UniqueList = gb_sets:to_list(gb_sets:from_list(List)),
    io:fwrite("~w~n", [UniqueList]),
    halt(0).
