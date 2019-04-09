removeNToN([],_,_,[]).
removeNToN([H|T],Poz,PozD,R):-
    Poz=\=PozD,
    Poz1 is Poz + 1,
    removeNToN(T,Poz1,PozD,RR),
    R=[H|RR],!.
removeNToN([_|T],Poz,PozD,R):-
    Poz=:=PozD,
    Poz1 is Poz + 1,
    PozD1 is PozD * 2,
    removeNToN(T,Poz1,PozD1,R).

mainRemove(L,N,R):-
    removeNToN(L,1,N,R).
