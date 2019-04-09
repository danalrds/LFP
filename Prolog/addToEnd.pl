addToEnd([],E,[E]).
addToEnd([H|T],E,[H|RR]):-
    addToEnd(T,E,RR).


addToBegin([],E,[E]):-!.
addToBegin(L,E,[E|L]).
