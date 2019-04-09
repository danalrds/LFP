isInsid([E|_],E).
isInsid([_|T],E):-
    isInsid(T,E).

listToSet([],[]).
listToSet([H|T],R):-
    isInsid(T,H),!,
    listToSet(T,R).
listToSet([H|T],[H|RR]):-
    listToSet(T,RR).


listSet([],Col,Col).
listSet([H|T],Col,R):-
    isInsid(Col,H),!,
    listSet(T,Col,R).
listSet([H|T],Col,R):-
    Col1=[H|Col],
    listSet(T,Col1,R).

mainS(L,R):-
    listSet(L,[],R).
