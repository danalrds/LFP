count([],_,0).
count([H|T],E,R):-
    H=:=E,
    count(T,E,R2),
    R is 1+R2,!.
count([H|T],E,R):-
    H=\=E,
    count(T,E,R).


isEqual([H|_],H).

find([],_):-false.
find([H|_],E):-
    isEqual(H,E),!.
find([H|T],E):-
    not(isEqual(H,E)),
    find(T,E),!.


solve([],Col,Col).
solve([H|T],Col,R):-
    not(find(Col,H)),
    count([H|T],H,R2),
    R3=[H|R2],
    add(R3,Col,Col2),
    solve(T,Col2,R).
solve([H|T],Col,R):-
    find(Col,H),
    solve(T,Col,R).
solve([H|T],[],R):-
    count([H|T],H,R2),
    R3=[H|R2],
    Col2=R3,
    solve(T,Col2,R).

add(X,[],[X]).
add(X,[Y|Tail],[Y|Tail1]):-
    add(X,Tail,Tail1).
