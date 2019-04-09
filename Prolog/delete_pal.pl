inv(0,Col,Col):-!.
inv(N,Col,Rez):-
    N>0,
    Uc is N mod 10,
    Col1 is Col*10+Uc,
    N1 is N div 10,
    inv(N1,Col1,Rez).

pal(N,N).

is_Pal(N):-
    inv(N,0,R),
    pal(R,N).

delete([],[]).
delete([H|T],Rez):-
    not(is_Pal(H)),
    delete(T,R),
    Rez=[H|R].
delete([H|T],Rez):-
    is_Pal(H),
    delete(T,Rez),!.

