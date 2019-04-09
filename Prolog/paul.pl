addition([],0,[]):-!.
addition([],1,Rez):-
    addition([],0,R),
    Rez=[1|R],!.
addition([H|T],Minte,Rez):-
    H<9,
    addition(T,0,R),
    H1 is H+Minte,
    Rez=[H1|R],!.
addition([H|T],_,Rez):-
    H=:=9,
    addition(T,1,R),
    HN is 0,
    Rez=[HN|R],!.


append2([],E,[E]):-!.
append2([H|T],E,[HR|Rez]):-
    HR is H,
    append2(T,E,Rez),!.





reverse2([],[]):-!.
reverse2([H],[H]):-!.
reverse2([H|T],R):-
    reverse2(T,Rez),
    append2(Rez,H,R).

















