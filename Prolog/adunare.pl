append([],E,[E]):-!.
append([H|T],E,[HR|Rez]):-
    HR is H,
    append(T,E,Rez),!.

reverse3([],[]):-!.
reverse3([E],[E]):-!.
reverse3([H|T],Rez):-
    reverse3(T,R),
    append(R,H,Rez).

aduna([],[],0,[]):-!.
aduna([],[],Minte,Rez):-
    aduna([],[],0,R),
    Rez=[Minte|R],!.
aduna([],[H|T],Minte,Rez):-
    Suma is H+Minte,
    Minte2 is Suma div 10,
    aduna([],T,Minte2,R),
    H2 is Suma mod 10,
    Rez=[H2|R],!.

aduna([H|T],[],Minte,Rez):-
    Suma is H+Minte,
    Minte2 is Suma div 10,
    aduna(T,[],Minte2,R),
    H2 is Suma mod 10,
    Rez=[H2|R],!.

aduna([H|T],[H2|T2],Minte,Rez):-
    Suma is H+H2+Minte,
    Minte2 is Suma div 10,
    aduna(T,T2,Minte2,R),
    HN is Suma mod 10,
    Rez=[HN|R],!.

main([],[],[]):-!.
main([H|T],[],[H|T]):-!.
main([],[H|T],[H|T]):-!.
main([H|T],[H2|T2],Rez):-
    reverse3([H|T],List1),
    reverse3([H2|T2],List2),
    aduna(List1,List2,0,R),
    reverse3(R,Rez).

mainlist([],[]):-!.
mainlist([H|T],Rez):-
    number(H),
    mainlist(T,Rez),!.
mainlist([H|T],Rez):-
    is_list(H),
    mainlist(T,R),
    main(H,R,Rez).

















