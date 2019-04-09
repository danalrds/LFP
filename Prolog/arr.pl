insert_everywhere([], E, [E]).
insert_everywhere([H|T], E, [E,H|T]).
insert_everywhere([H|L], E, [H|R]) :-
	insert_everywhere(L, E, R).

% arr(L:list, N:int, R:list)
% flow model: (i i o), (i i i)

arr([E|_], 1, [E]).
arr([_|L], N, R) :-
	arr(L, N, R).
arr([A|L], N, R) :-
	N =\= 1,
	N1 is N - 1,
	arr(L, N1, R1),
	insert_everywhere(R1, A, R).

arrangements(L, N, R) :-
	findall(X, arr(L, N, X), R).
