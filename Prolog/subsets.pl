%Math_Model
%subset(l1..ln)=[], n=0;
%               subset(l2..ln)
%               l1 U subset(l2...ln)
%subset(L:list,R:list) flowmodel (i,o)

%sum(l1..ln,Col)=Col,n=0
%                sum(l2...ln,Col+l1), otherwise

%predicate that generates the subsets of a list
subset([],[]).
subset([_|T],R):-
    subset(T,R).
subset([H|T],[H|R]):-
    subset(T,R).

sum([],Col,Col).
sum([H|T],Col,Sum):-
    Col1 is Col+H,
    sum(T,Col1,Sum).

isEqual(N,N).

%predicate that returns a sol=a subset of the given list with the sum= S
oneSol(List,S,R):-
    subset(List,R),
    sum(R,0,Sum),
    isEqual(Sum,S).

%predicate that finds all subsets of sum S
allSol(List,S,Rez):-
    findall(Rp,oneSol(List,S,Rp),Rez).














