reverse([E],[E]).
reverse([H|T],R):-
    reverse(T,R2),
    addF(R2,H,R),!.

addB([],_,[]).
addB([H|T],E,[E,H|T]).

addF([],E,[E]).
addF([H|T],E,R):-
    addF(T,E,R2),
    R=[H|R2].

mainHeter([],[]).
mainHeter([H|T],R):-
    number(H),
    mainHeter(T,R2),
    R=[H|R2],!.
mainHeter([H|T],R):-
    is_list(H),
    reverse(H,R1),
    mainHeter(T,R2),
    R=[R1|R2].

mainAll([],[]).
mainAll([H|T],R):-
    mainHeter([H|T],R1),
    reverse(R1,R).
