;transforms a linear list into a set
;function that checks if an element is in a linear list
(defun isInside(L E)
  (cond
       ((null L) nil)
       ((equal (car L) E) T)
       (T (isInside (cdr L) E))
  )
)


(defun listToSet(L Col)
  (cond
       ((null L) Col)
       ((isInside Col (car L)) (listToSet (cdr L) Col))
       (T (listToSet (cdr L) (cons (car L) Col)))
   )
)

(defun mainListToSet(L)
  (listToSet L nil)
)