subtraction([],0,[]):-!.
subtraction([H|T],Minte,Rez):-
    Uc is H mod 10,
    Uc>=Minte,
    subtraction(T,0,R),
    H1 is H-Minte,
    Rez=[H1|R],!.
subtraction([H|T],Minte,Rez):-
    Uc is H mod 10,
    Uc<Minte,
    HN is 10+Uc-Minte,
    subtraction(T,1,R),
    Rez=[HN|R],!.

checkit([0|T],T):-!.
checkit([H|T],[H|T]):-
    H=\=0,!.

append2([],E,[E]):-!.
append2([H|T],E,[HR|Rez]):-
    HR is H,
    append2(T,E,Rez),!.


reverse2([],[]):-!.
reverse2([H],[H]):-!.
reverse2([H|T],R):-
    reverse2(T,Rez),
    append2(Rez,H,R).


main([H|T],R):-
    reverse2([H|T],List),
    subtraction(List,1,R2),
    reverse2(R2,RR),
    checkit(RR,R).
