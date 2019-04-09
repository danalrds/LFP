list(A,B,R):-
   R=[A,B] .


do([E],A,[A,E]):-!.
do([H|T],A,R):-
    do(T,A,RR),
    list(A,H,RL),
    R=[RL|RR].

mainFunction([],[]).
mainFunction([_],[]):-!.
mainFunction([H|T],R):-
    do(T,H,RP),
    mainFunction(T,RR),
    R=[RP|RR].

