insertWell([],E,[E]).
insertWell([H|T],E,R):-
    H<E,
    insertWell(T,E,R2),
    R=[H|R2],!.
insertWell([H|T],E,R):-
    H>=E,
    R=[E,H|T].


sortIt([],Col,Col).
sortIt([H|T],Col,R):-
    insertWell(Col,H,Col2),
    sortIt(T,Col2,R).


sortHet([],[]).
sortHet([H|T],R):-
    number(H),
    sortHet(T,R2),
    R=[H|R2],!.
sortHet([H|T],R):-
    is_list(H),
    sortIt(H,[],R1),
    sortHet(T,R2),
    R=[R1|R2].
