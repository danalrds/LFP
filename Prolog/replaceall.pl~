%replace all apearances of E with New in the list
replace([],_,_,[]):-!.
replace([H|T],E,New,Rez):-
    H=\=E,
    replace(T,E,New,R),
    Rez=[H|R],!.
replace([H|T],E,New,Rez):-
    H=:=E,
    replace(T,E,New,R),
    Rez=[New|R].

%finds the max value from the numbers of the list
maxnr([E],E):-
    number(E),!.
maxnr([H|T],H):-
    number(H),
    maxnr(T,M),
    H>M,!.
maxnr([H|T],M):-
    number(H),
    maxnr(T,M),
    H=<M,!.
maxnr([H|T],M):-
    is_list(H),
    maxnr(T,M),!.

%finds the max of a list of numbers
max([E],E):-!.
max([H|T],H):-
    max(T,M),
    H>M,!.
max([H|T],M):-
    max(T,M),
    H=<M.

modify([],_,[]):-!.
modify([H|T],E,Rez):-
    number(H),
    modify(T,E,R),
    Rez=[H|R],!.
modify([H|T],E,Rez):-
    is_list(H),
    max(H,Max),
    replace(H,E,Max,R2),
    modify(T,E,R),
    Rez=[R2|R].

% replace the value of maxnr in all sublists with the max from that sublist
main([],[]):-!.
main([H|T],Rez):-
    maxnr([H|T],Maxnr),
    modify([H|T],Maxnr,Rez).
















