merge1([],[],[]).
merge1([H1|T1],[],[H1|T1]):-!.
merge1([],[H2|T2],[H2|T2]):-!.
merge1([H1|T1],[H2|T2],Rez):-
    H1=<H2,
    merge1(T1,[H2|T2],R),
     Rez=[H1|R],!.
merge1([H1|T1],[H2|T2],Rez):-
    H2<H1,  %%here
    merge1([H1|T1],T2,R),
     Rez=[H2|R],!.


no_dupp([],_,[]):-!.
no_dupp([H|T],Last,R):-
    H =\=Last,
    no_dupp(T,H,R2),
    R=[H|R2],!.
no_dupp([H|T],Last,R):-
    H=:=Last,
     no_dupp(T,Last,R),!.

main1([],[],[]):-!.
main1([H1|T1],[H2|T2],R):-
    merge1([H1|T1],[H2|T2],Rez),
    no_dupp(Rez,0,R).

merges([],[]):-!.
merges([H|T],Rez):-
    number(H),
    merges(T,Rez),!.
merges([H|T],Rez):-
    is_list(H),
    merges(T,R),
    merge1(H,R,Rez).

main2([],[]):-!.
main2([H|T],Rez):-
    merges([H|T],R),
    no_dupp(R,0,Rez).


