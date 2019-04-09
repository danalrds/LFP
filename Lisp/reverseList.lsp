;reverse a linear list
(defun reverseL(L)
  (cond
       ((null L) nil)
       (T (append (reverseL (cdr L)) (list (car L))))
  )
)


;reverse a nonlinear list
(defun reverseList(L)
  (cond
       ((null L) nil)
       ((and(atom (car L)) (null (cdr L))) (list (car L)))
       ((and(atom (car L)) (not (null (cdr L)))) (append (reverseList (cdr L)) (list (car L))))
       ((and(listp (car L)) (not (null (cdr L)))) (append (reverseList (cdr L)) (list (reverselist (car L)))))
       ((and (listp (car L)) (null (cdr L))) (list(reverseList (car L))))
  )
)


