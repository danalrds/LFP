combi(_,0,[]).
combi([_|T],K,R):-
    K>0,
    combi(T,K,R).
combi([H|T],K,[H|RR]):-
    K>0,
    K1 is K -1,
    combi(T,K1,RR).
