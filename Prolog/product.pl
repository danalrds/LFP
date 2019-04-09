f([],0).
f([H|T],P):-!,
    H mod 2 =:=0,
    f(T,P1),
    P is P1*H.
f([_|T],P):-
    f(T,P1),
    P is P1.


product([],1).
product([H|T],P):-
    H mod 2 =:= 1,!,
    product(T,P1),
    P is P1 * H.
product([_|T],P):-
    product(T,P).
