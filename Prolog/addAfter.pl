addAfter([],_,_,_,[]).
addAfter([H|T],E,Poz,PozD,R):-
    Poz=PozD,
    Poz1 is Poz+1,
    PozD1 is PozD*2,
    addAfter(T,E,Poz1,PozD1,R2),
    R=[H,E|R2],!.
addAfter([H|T],E,Poz,PozD,R):-
    Poz=\=PozD,
    Poz1 is Poz+1,
    addAfter(T,E,Poz1,PozD,R2),
    R=[H|R2].

