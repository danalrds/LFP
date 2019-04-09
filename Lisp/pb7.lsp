;problem 7
;part a)
;eliminate the n th element from a linear list
 
(defun elimin(L N Poz)
  (cond
      ((null L) nil)
      ((= Poz N) (CDR L))
      (T (cons (CAR L) (elimin (CDR L) N (+ Poz 1))))
  )
)

(defun mainElimin(L N)
  (elimin L N 1)
)

;part c)
;the set of all atoms from the list(defun setAtoms(L)
(defun setAtoms(L)
  (cond
      ((null L) nil)
      ((listp (CAR L)) (append (setAtoms (CAR L)) (setAtoms (CDR L))))
      ((atom (CAR L))( cons (CAR L) (setAtoms (CDR L))))
  )
)

(defun eliminateDuplicates (L)
  (cond ((null L) L)
        ((member (car L) (cdr L))
         (eliminateDuplicates (cdr L)))
        (t (cons (car L) (eliminateDuplicates (cdr L))))))
 

(defun solveAtoms(L)
  (eliminateDuplicates (setAtoms L))
)
;part d)
;returns the set of all atoms from the list
 
(defun frequency(L E)
  (cond
      ((null L) 0)
      ((= (CAR L) E) (+ 1 (frequency (CDR L) E)))
      ((not (= (CAR L) E)) (frequency (CDR L) E))
  )
)

(defun isSet(L)
  (cond
      ((null L) 1)
      ((> (frequency L (CAR L)) 1) 0)
      (T (isSet (CDR L)))
  )
)


