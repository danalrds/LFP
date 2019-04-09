max([E],E):-!.
max([H|T],H):-
    max(T,M),
    H>M,!.
max([H|T],M):-
    max(T,M),
    H=<M.


isIns([E|_],E):-!.
isIns([H|T],E):-
    H=\=E,
    isIns(T,E).


