;problem 8
;part a) 7
;difference of 2 sets
;function that returns 1 if E is in L and 0 otherwise
(defun isInside(L E)
  (cond
      ((null L) 0)
      ((= (CAR L) E) 1)
      ( (not (=(CAR L) E)) (isInside (CDR L) E))
  )
)
;function that does the job
(defun differenceSets(L1 L2)
  (cond
      ((null L1) nil)
      ((null L2) L1)
      ((=(isInside L2 (CAR L1)) 0) (cons (CAR L1) 
                                         (differenceSets (CDR L1) L2)))
      ((=(isInside L2 (CAR L1)) 1) (differenceSets (CDR L1) L2))
  )
)

;part b)
;reverse a list with all its sublists at any level
(defun reverseList(L)
  (cond 
      ((null L) nil)
      ((listp (CAR L)) (append (reverseList (CDR L))(reverseList (CAR L))))
      (T (append (reverseList (CDR L)) (list(CAR L))))
  )
)

;part c)
;build a list of all the first elements from the lists with odd nr of elements at superficial level



;part d)
;sum of all numerical atoms at superficial level
(defun sumNumerical(L)
  (cond
      ((NULL L) 0)
      ((numberp (CAR L)) (+(CAR L) (sumNumerical (CDR L))))
      (T (sumNumerical(CDR L)))
  )
)