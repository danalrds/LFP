insert([],E,[E]):-!.
insert([H|T],E,Rez):-
    H=<E,
    insert(T,E,R),
    Rez=[H|R].
insert([H|T],E,Rez):-
    H>E,
    Rez=[E,H|T].

sortare([],[]).
sortare([H|T],Rez):-
    sortare(T,R),
    insert(R,H,Rez),!.
