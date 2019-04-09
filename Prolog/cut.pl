a.
b.
c.
r1:-a,not(b),c.


predicat(a, b).
predicat(c, d).
predicat(e, f).
toate :-
predicat(X, Y),!,
write(X),write(Y),nl.
toate1 :-
predicat(X, Y),
write(X),write(Y),nl.
