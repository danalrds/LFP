loves(romeo,juliet).
loves(juliet,romeo) :- loves(romeo,juliet).

mySum(0,0):-!.
mySum(N,R):-
    N>0,
    N2 is N-1,
    mySum(N2,R2),
    R is R2+N.
sumList([E],E).
sumList([H|T],R):-
    sumList(T,R2),!,
    R is R2 + H.

isInside([E|_],EL):-
    E=:=EL,!.
isInside([H|T],EL):-
    H=\=EL,
    isInside(T,EL).
isSet([]).
isSet([H|T]):-
    not(isInside(T,H)),
    isSet(T).

gcd(A,A,A):-A>0,!.
gcd(0,A,A):-A>0,!.
gcd(A,0,A):-A>0,!.
gcd(A,B,R):-
    A>=B,
    B>0,!,
    A1 is A-B,
    gcd(A1,B,R).
gcd(A,B,R):-
    B>A,
    A>0,
    B1 is B-A,
    gcd(A,B1,R).

lcm(A,B,R):-
    gcd(A,B,RR),
    R is A*B/RR.


gcdList([],R,R).
gcdList([H|T],RC,R):-
    gcd(H,RC,R2),
    gcdList(T,R2,R).

lcmList([],R,R).
lcmList([H|T],RC,R):-
    lcm(H,RC,R2),
    lcmList(T,R2,R).



fibo(1,0):-!.
fibo(2,1):-!.
fibo(N,R):-
    N>2,
    N2 is N-1,
    N3 is N-2,
    fibo(N2,R2),
    fibo(N3,R3),
    R is R2+R3.

nr([],_,0):-!.
nr([H|T],H,R):-
    nr(T,H,R1),!,
    R is R1+1.
nr([_|T],E,R):-
    nr(T,E,R).


add1aftereven([],[]).
add1aftereven([H|T],Rez):-
    H mod 2 =:=1,
    add1aftereven(T,R),
    Rez=[H|R].
add1aftereven([H|T],Rez):-
    H mod 2 =:=0,
    add1aftereven(T,R),
    Rez=[H,1|R].


















