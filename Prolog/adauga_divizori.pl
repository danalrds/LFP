%finds the list of divisors of a number
find_div(0,_,[]):-!.
find_div(1,_,[]):-!.
find_div(N,N,[]):-!.
find_div(N,X,Rez):-
    N mod X =\=0,
    X2 is X+1,
    find_div(N,X2,Rez),!.
find_div(N,X,Rez):-
    N mod X =:=0,
    X2 is X+1,
    find_div(N,X2,R),
    Rez=[X|R].

find(N,Rez):-
    find_div(N,2,Rez).

%appends a list to the end of another list
append([],List2,List2):-!.
append(List1,[],List1):-!.
append([H|T],List2,[HR|Rez]):-
    HR is H,
    append(T,List2,Rez).

%adds after each number its divisors
build([],[]).
build([H|T],Rez):-
    find(H,R),
    append([H],R,R2),
    build(T,RR),
    append(R2,RR,Rez).

%for heterogeneous list
main([],[]):-!.
main([H|T],Rez):-
    number(H),
    main(T,R),
    Rez=[H|R],!.
main([H|T],Rez):-
    is_list(H),
    build(H,R2),
    main(T,R),
    Rez=[R2|R].














