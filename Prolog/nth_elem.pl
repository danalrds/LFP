nth([],_,_,[]).
nth([H|_],N,N,H):-!.
nth([_|T],Poz,N,R):-
    Poz2 is Poz+1,
    nth(T,Poz2,N,R).

