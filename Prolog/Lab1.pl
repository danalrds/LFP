%count(l1,l2,...ln)=1,  if n=0
%                  =(-1)*count(l2....ln), otherwise
count([],1).
count([_|T],R):-
    count(T,R2),
    R is (-1)*R2.

%min(l1,l2..ln,Min)=min(l2,l3...ln,l1), if l1<Min
%                  =min(l2,l3..ln,Min), otherwise
min([H|T], R) :-
    min(T, H, R).
min([], R,R).
min([H|T], R0, R) :-
    R1 is min(H, R0),
    min(T, R1, R).

%remove_first(X,l1,l2..ln)=[], if n=0
%                         =l1Uremove_first(X,l2,l3..ln), if l1 <> X
%                         =remove_first(X,l2,l3..ln), otherwise
remove_first(X,[X|Xs],Xs).
remove_first(X,[Y|Xs],[Y|Ys]) :-
    X \= Y,
    remove_first(X,Xs,Ys).

%do(l1,l2..ln)=[], if n=0
%             =remove_first(Res,l1,..ln), where Res=min(l1...ln), if n>0
do([],[]).
do([H|T],R):-
    min([H|T],Res),
    remove_first(Res,[H|T],R).
