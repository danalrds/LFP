;5.
;a) Write twice the n-th element of a linear list. Example: for (10 20 30 40 50) and n=3 will produc;e (10 20 30 30 40 50).
;b) Write a function to return an association list with the two lists given as parameters.
;Example: (A B C) (X Y Z) --> ((A.X) (B.Y) (C.Z)).
;c) Write a function to determine the number of all sublists of a given list, on any level.
;A sublist is either the list itself, or any element that is a list, at any level. Example:
;(1 2 (3 (4 5) (6 7)) 8 (9 10)) => 5 lists:
;(list itself, (3 ...), (4 5), (6 7), (9 10)).
;d) Write a function to return the number of all numerical atoms in a list at superficial level.
;part a)
;model math
;write(l1,l2..ln,p)=[], n=0;
;                    l1Ul2U()l2,..ln,) p=k
;                    l1Uwrite(l2...ln,p+1),  p<>k 
(defun doit(L K P)
  (cond
      ((null L) nil)
      ((not(equal P K )) (cons (CAR L) (doit (CDR L) K (+ P 1))))
      (T (cons(CAR L)(cons (CAR L) (CDR L))))
  )
)
       

(defun mainfirst(L K)
   (doit L K 1)
)


;part b)
;model math
;associate(l1,l2..ln,s1,s2...sm)=[], n=0 or m=0
;                               =(l1.s1)U associate(l2..ln, s2..sm)
(defun associate(L1 L2)
  (cond
      ((null L1) nil)
      ((null L2) nil)
      ((cons (append (list (CAR L1)) (CAR L2)) 
             (associate (CDR L1) (CDR L2))))
  )
)

;part c)
;model math
;getNumber(l1..ln,nr)=nr+1, n=0;
;                     =getNumber(l2..ln,nr), l1<>list
;                     getNumber(l2...ln,nr+getNumber(l1,0)), l=list
(defun nrlists(L Nr)
  (cond
      ((null L) (+ Nr 1))
      ((listp (CAR L)) (nrlists (CDR L) (+ Nr (nrlists (CAR L) 0))))
      (T (nrlists (CDR L) Nr))
   )
)

(defun mainNrLists(L)
  (nrlists L 0)
)

;part d)
;model math
;nrAtoms(l1...ln, nr)= nr, n=0;
;                    =nrAtoms(l2...ln,nr+1), l1=number
;                    =nrAtoms(l2...ln,nr),otherwise
(defun numericalAtoms(L Nr)
  (cond
      ((null L) Nr)
      ((numberp (CAR L)) (numericalAtoms (CDR L) (+ Nr 1)))
      (T (numericalAtoms (CDR L) Nr))
   )
)

(defun mainNumerical(L)
  (numericalAtoms L 0)
)
