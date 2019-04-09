max([E],E).
max([H|T],H):-
    max(T,M),
    H>M.
max([H|T],M):-
    max(T,M),!,
    H=<M.

insert([],_,_,_,_,[]):-!.
insert([H|T],Poz,Put,PozN,E,Rez):-
    Poz=\=PozN,
    Poz2 is Poz+1,
    insert(T,Poz2,Put,PozN,E,R),
    Rez=[H|R],!.
insert([H|T],Poz,Put,PozN,E,Rez):-
    Poz=:=PozN,
    Poz2 is Poz+1,
    Put2 is Put*3,
    PozN2 is Put2,
    insert(T,Poz2,Put2,PozN2,E,R),
    Rez=[E,H|R].

main([],[]).
main([H|T],Rez):-
    max([H|T],M),
    insert([H|T],1,1,1,M,Rez),!.
