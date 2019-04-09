combi(_,0,[]).
combi([H|T],K,[H|TR]):-
    K>0,
    K1 is K-1,
    combi(T,K1,TR).
combi([_|T],K,R):-
    K>0,
    combi(T,K,R).
