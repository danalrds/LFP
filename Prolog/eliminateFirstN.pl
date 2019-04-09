lungime([],0).
lungime([_|T],N):-
    lungime(T,N1),
    N is N1 +1.

checkEven(N):-
    N mod 2 =:=0.

removeLists([],_,_,[]).
removeLists([H|T],K,N,R):-
    K<N,
    is_list(H),
    lungime(H,Lung),
    Lung mod 2 =:= 0,
    K1 is K + 1,
    removeLists(T,K1,N,R),!.
removeLists([H|T],K,N,[H|RR]):-
    removeLists(T,K,N,RR).

mainRemove2(L,N,R):-
    removeLists(L,0,N,R).

