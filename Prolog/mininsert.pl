mininsert([],E,[E]).
mininsert([H|T],E,[E,H|T]).
mininsert([H|T],E,[H|TR]):-
    mininsert(T,E,TR).

perm([],[]).
perm([H|T],Rez):-
    perm(T,RT),
    mininsert(RT,H,Rez).

comb(_,0,[]).
comb([_|T],K,Rez):-
    K>0,
    comb(T,K,Rez).
comb([H|T],K,[H|TR]):-
    K>0,
    K1 is K-1,
    comb(T,K1,TR).

arr(List,K,Rez):-
    comb(List,K,R),
    perm(R,Rez).

doit(List,R):-
    findall(RL,arr(List,4,RL),R).

produs([],Col,Col).
produs([H|T],Col,R):-
    Col1 is Col* H,
    produs(T,Col1,R).

suma([],Col,Col).
suma([H|T],Col,Suma):-
    Col1 is Col+H,
    suma(T,Col1,Suma).
