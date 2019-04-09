genericIns([],E,[E]).
genericIns([H|T],E,[E,H|T]).
genericIns([H|T],E,[H|RR]):-
    genericIns(T,E,RR).

perm([],[]).
perm([H|T],R):-
    perm(T,RR),
    genericIns(RR,H,R).
