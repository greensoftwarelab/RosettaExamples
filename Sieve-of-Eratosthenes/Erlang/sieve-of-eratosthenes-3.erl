-module(sieve_of_eratosthenes).
-export([main/0]).

sieve(Candidates,SearchList,Primes,_Maximum) when length(SearchList) == 0 ->
    ordsets:union(Primes,Candidates);
sieve(Candidates,SearchList,Primes,Maximum)  ->
     H = lists:nth(1,string:substr(Candidates,1,1)),
     Reduced1 = ordsets:del_element(H, Candidates),
     {Reduced2, ReducedSearch} = remove_multiples_of(H, Reduced1, SearchList),
     NewPrimes = ordsets:add_element(H,Primes),
     sieve(Reduced2, ReducedSearch, NewPrimes, Maximum).

remove_multiples_of(Number,Candidates,SearchList) ->
    NewSearchList = ordsets:filter( fun(X) -> X >= Number * Number end, SearchList),
    RemoveList = ordsets:filter( fun(X) -> X rem Number == 0 end, NewSearchList),
    {ordsets:subtract(Candidates, RemoveList), ordsets:subtract(NewSearchList, RemoveList)}.

main() ->
    N = 100000,
    CandidateList = lists:seq(3,N,2),
    Candidates = ordsets:from_list(CandidateList),
    ResultSet = ordsets:add_element(2,sieve(Candidates,Candidates,ordsets:new(),N)),
    io:fwrite("~w~n",[ResultSet]),
    halt(0).
