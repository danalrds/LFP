;returns the n th element of a list
(defun nthElement(L N Poz)
  (cond
       ((null L) nil)
       ((= N Poz) (car L))
       (T (nthElement (cdr L) N (+ Poz 1)))
  )
)

(defun nthMain(L N)
  (nthElement L N 1)
)