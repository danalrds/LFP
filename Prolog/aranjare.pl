genIns([],E,[E]).
genIns([H|T],E,[E,H|T]).
genIns([H|T],E,[H|RR]):-
    genIns(T,E,RR).


arrang([E|_],1,[E]).
arrang([_|T],K,R):-
    arrang(T,K,R).
arrang([H|T],K,R):-
    K1 is K-1,
    arrang(T,K1,RR),
    genIns(RR,H,R).
