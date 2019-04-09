inv(0,Col,Col):-!.
inv(N,Col,Rez):-
    N>0,
    Uc is N mod 10,
    Col1 is Col*10+Uc,
    N1 is N div 10,
    inv(N1,Col1,Rez).

aparitii([],_,Col,Col):-!.
aparitii([H|T],H,Col,Rez):-
    Col1 is Col+1,!,
    aparitii(T,H,Col1,Rez).
aparitii([H|T],E,Col,Rez):-
    H =\= E,
    aparitii(T,E,Col,Rez).
