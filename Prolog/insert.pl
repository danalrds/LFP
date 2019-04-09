insert([],_,Poz,This,[]):-
    Poz>This,!.
insert([],E,This,This,[E]):-!.
insert([H|T],E,This,This,Rez):-
    Poz is This+1,
    insert(T,E,Poz,This,R),
    Rez=[E,H|R].
insert([H|T],E,Poz,This,Rez):-
    Poz2 is Poz+1,
    insert(T,E,Poz2,This,R),
    Rez=[H|R],!.
