gcDivisor(A,0,A).
gcDivisor(A,B,Rez):-
    R is A mod B,
    gcDivisor(B, R,Rez).
