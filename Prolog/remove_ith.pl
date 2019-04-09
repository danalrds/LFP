removei([],_,[]).
removei([H|T],I,[H|T2]):-
    I>0,!,
    I2 is I-1,
    removei(T,I2,T2).
removei([_|T],0,T):-!.

gcd(A,0,A):-!.
gcd(0,A,A):-!.
gcd(A,B,R):-
    A>B,!,
    A2 is A mod B,
    gcd(B,A2,R).
gcd(A,B,R):-
    B>A,
    B2 is B mod A,
    gcd(A,B2,R).

evprod([],1).
evprod([H|T],R):-
    mod(H,2)=:=0,!,
    evprod(T,R2),
    R is R2*H.
evprod([H|T],R):-
    mod(H,2)=:=1,
    evprod(T,R).

count([],1).
count([_|T],R):-
    count(T,R2),
    R is (-1)*R2.


min([H|T], R) :-
    min(T, H, R).
min([], R,R).
min([H|T], R0, R) :-
    R1 is min(H, R0),!,
    min(T, R1, R).

remove_first_X(X,[X|Xs],Xs).
remove_first_X(X,[Y|Xs],[Y|Ys]) :-
    X \= Y,!,
    remove_first_X(X,Xs,Ys).

do([],[]):-!.
do([H|T],R):-
    min([H|T],Res),
    remove_first_X(Res,[H|T],R).









