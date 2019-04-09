maxim([E],E):-!.
maxim([H|T],H):-
    maxim(T,M),
    H>M,!.
maxim([_|T],M):-
    maxim(T,M).

buildList([],_,_,[]).
buildList([E|T],E,Poz,R):-!,
    Poz1 is Poz +1,
    buildList(T,E,Poz1,RR),
    R=[Poz|RR].
buildList([_|T],E,Poz,R):-
    Poz1 is Poz +1,
    buildList(T,E,Poz1,R).



mainBuild([],[]).
mainBuild([H|T],R):-
    number(H),!,
    mainBuild(T,RR),
    R=[H|RR].
mainBuild([H|T],R):-
    is_list(H),
    maxim(H,Max),
    buildList(H,Max,1,RN),
    mainBuild(T,RR),
    R=[RN|RR].
