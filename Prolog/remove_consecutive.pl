remove([],_,[]):-!.
remove([E],Last,[E]):-
    E=\=Last+1.
remove([E],Last,[]):-
    E=:=Last+1.
remove([H1,H2|T],_,Rez):-
    H2=:=H1 +1,
    Last is H1,
    remove([H2|T],Last,Rez),!.
remove([H1|T],Last,Rez):-
    H1=:=Last+1,
    Last2 is H1,
    remove(T,Last2,Rez),!.

remove([H1,H2|T],Last,Rez):-
    H2=\=H1+1,
    H1=\=Last+1,
    Last2 is H1,
    remove([H2|T],Last2,R),
    Rez=[H1|R].

main([],[]):-!.
main([H|T],Rez):-
    number(H),
    main(T,R),
    Rez=[H|R],!.
main([H|T],Rez):-
    is_list(H),
    remove(H,-999,R2),
    main(T,R),
    Rez=[R2|R].






