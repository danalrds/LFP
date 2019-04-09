vale([],1).
vale([_],1).
vale([H1,H2|T],0):-
    H1>H2,
    vale([H2|T],0),!.
vale([H1,H2|T],0):-
    H1<H2,
    vale([H2|T],1),!.
vale([H1,H2|T],1):-
    H1<H2,
    vale([H2|T],1).

main([H1,H2|T]):-
    H1>H2,
    vale([H1,H2|T],0).


munte([],1).
munte([_],1).
munte([H1,H2|T],0):-
    H1<H2,
    munte([H2|T],0),!.
munte([H1,H2|T],0):-
    H1>H2,
    munte([H2|T],1),!.
munte([H1,H2|T],1):-
    H1>H2,
    munte([H2|T],1).

main2([H1,H2|T]):-
    H1<H2,
    munte([H1,H2|T],0).
