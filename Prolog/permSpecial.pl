build(N,Limit,R):-
    N<Limit,!,
    N1 is N+1,
    build(N1,Limit,RR),
    R=[N|RR].
build(N,Limit,[]):-
    N>=Limit.

verif([]).
verif([_]):-!.
verif([H1,H2|T]):-
    abs(H2-H1)=<2,
    verif([H2|T]).

genericInsert([],E,[E]).
genericInsert([H|T], E,[E,H|T]).
genericInsert([H|T],E,[H|RR]):-
    genericInsert(T,E,RR).


perm([],[]).
perm([H|T],R):-
    perm(T,RR),
    genericInsert(RR,H,R).

onesol(L,R):-
    perm(L,R),
    verif(R).

allsol(L,Rez):-
    findall(Rp,onesol(L,Rp),Rez).


mainn(N,R):-
    NL is N*2,
    build(N,NL,RL),
    allsol(RL,R).












