subst([],_,[],[]).
subst([],_,_,[]).
subst([H|T],E,[H2|T2],Rez):-
    H=\=E,
    subst(T,E,[H2|T2],R),
    Rez=[H|R],!.
subst([H|T],E,List,Rez):-
    H=:=E,
    subst(T,E,List,R),
    append2(R,List,Rez),!.

append2([],[],[]):-!.
append2(List,[],List):-!.
append2(List,[H2|T2],Rez):-
    append2(List,T2,R2),
    Rez=[H2|R2],!.

substhead([],[],[]):-!.
substhead([],[H2|T2],[H2|T2]):-!.
substhead([H|T],[H2|T2],Rez):-
    subst([H|T],H,[H2|T2],Rez).
main([],_,[]):-!.
main([H|T],[H2|T2],Rez):-
    number(H),!,
    main(T,[H2|T2],R),
    Rez=[H|R].
main([H|T],[H2|T2],Rez):-
    is_list(H),
    substhead(H,[H2|T2],R),
    main(T,[H2|T2],R2),
    Rez=[R|R2].






app([],E,[E]).
app([H|T],E,[H|Tr]):-
    app(T,E,Tr).




