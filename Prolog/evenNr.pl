even([]).
even([_,_|T]):-
    even(T).

odd([_]):-!.
odd([_,_|T]):-
    odd(T).

