remove([],_,[]).
remove([H|T],E,R):-
    H=\=E,
    remove(T,E,R2),
    R=[H|R2],!.
remove([H|T],E,R):-
    H=:=E,
    remove(T,E,R).
