maxim([E],E).
maxim([H|T],H):-
    maxim(T,M2),
    H>M2,!.
maxim([H|T],M):-
    maxim(T,M),
    M>=H,!.

removeAll([],_,[]).
removeAll([H|T],E,R):-
    H=:=E,
    removeAll(T,E,R),!.
removeAll([H|T],E,R):-
    H=\=E,
    removeAll(T,E,R2),
    R=[H|R2].

removeAllMax([],[]).
removeAllMax([H|T],R):-
    maxim([H|T],Max),
    removeAll([H|T],Max,R).
