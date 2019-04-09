max([E],E):-!.
max([H|T],H):-
    max(T,M1),
    H>M1,!.
max([H|T],M):-
    max(T,M),
    H=<M,!.

build([],_,_,[]):-!.
build([H|T],Poz,M,Rez):-
    H=:=M,
    Poz2 is Poz+1,
    build(T,Poz2,M,Rez2),
    Rez=[Poz|Rez2],!.
build([H|T],Poz,M,Rez):-
    H=\=M,
    Poz2 is Poz+1,
    build(T,Poz2,M,Rez),!.

main([],[]):-!.
main([H|T],Rez):-
    max([H|T],Max),
    build([H|T],1,Max,Rez),!.

mainlist([],[]):-!.
mainlist([H|T],Rez):-
    number(H),
    mainlist(T,R),
    Rez=[H|R],!.
mainlist([H|T],Rez):-
    is_list(H),
    main(H,Result),
    mainlist(T,R),
    Rez=[Result|R],!.

maxglobal([E],E):-
    number(E),!.
maxglobal([E],M):-
    is_list(E),
    max(E,M),!.
maxglobal([H|T],H):-
    number(H),
    maxglobal(T,M2),
    H>=M2,!.
maxglobal([H|T],M):-
    number(H),
    maxglobal(T,M),
    H<M,!.
maxglobal([H|T],M2):-
    is_list(H),
    max(H,M2),
    maxglobal(T,M),
    M2>=M,!.
maxglobal([H|T],M):-
    is_list(H),
    max(H,M2),
    maxglobal(T,M),
    M2<M,!.




