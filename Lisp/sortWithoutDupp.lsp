;sort a linear list without keeping the double values

(defun addGood(L E)
  (cond
       ((null L) (list E))
       ((> (car L) E) (cons E (cons (car L) (cdr L))))
       (T (cons (car L) (addGood (cdr L) E)))
  )
)

(defun sortList(L Col)
  (cond 
       ((null L) Col)
       (T (sortList (cdr L)(addGood Col (car L))))
  )
)

(defun remove_dupp(L Last)
  (cond
       ((null L) nil)
       ((= Last (car L)) (remove_dupp (cdr L) (car L)))
       (T (cons (car L) (remove_dupp (cdr L) (car L))))
  )
)

(defun mainSort(L)
  (remove_dupp (sortList L nil) -1)
)