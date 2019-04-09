;intersection of 2 sets
(defun isInside(L E)
  (cond 
       ((null L) nil)
       ((equal (car L) E) T)
       (T (isInside (cdr L) E))
  )
)

(defun intersectSets(L1 L2)
  (cond
       ((null L1) nil)
       ((null L2) nil)
       ((isInside L2 (car L1)) (cons (car L1) (intersectSets (cdr L1) L2)))
       (T (intersectSets (cdr L1) L2))
  )
)
