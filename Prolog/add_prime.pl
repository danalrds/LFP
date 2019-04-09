prim(2):-!.
prim(N):-
    N>2,
    not(divisible(N,2)).

divisible(N,D):-
    0 is N mod D,!.
divisible(N,D):-
    N>D+1,
    D1 is D+1,
    divisible(N,D1),!.

prim2(2):-!.
prim2(N):-
    prim2(N,2).
prim2(N,C):-
    C<N,!,
    mod(N,C)=\=0,
    C2 is C+1,
    prim2(N,C2).
prim2(N,N).


dubl([],[]):-!.
dubl([H|T],Rez):-
    not(prim(H)),
    dubl(T,R),
    Rez=[H|R],!.
dubl([H|T],Rez):-
    prim(H),
    dubl(T,R),
    Rez=[H,H|R].

main([],[]).
main([H|T],Rez):-
    number(H),
    main(T,R),
    Rez=[H|R],!.
main([H|T],Rez):-
    is_list(H),
    dubl(H,R2),
    main(T,R),
    Rez=[R2|R].






