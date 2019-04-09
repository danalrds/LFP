building(N,Limit,R):-
    N=<Limit,!,
    N1 is N +1,
    building(N1,Limit,RR),
    R=[N|RR].
building(N,Limit,[]):-
    N>Limit.

subsets([],[]).
subsets([_|T],R):-
    subsets(T,R).
subsets([H|T],[H|RR]):-
    subsets(T,RR).

suma([],0).
suma([H|T],R):-
    suma(T,RR),
    R is RR + H.

oneSol(L,S,R):-
    subsets(L,R),
    suma(R,Sum),
    S=:=Sum.

allSol(L,S,Rez):-
    findall(Rp,oneSol(L,S,Rp),Rez).

mainSubsets(N,R):-
    N1 is N+1,
    building(1,N1,L),
    allSol(L,N,R).
