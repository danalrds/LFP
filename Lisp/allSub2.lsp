(defun allSublists(L)
  (cond
       ((null L) nil)
       ((atom (car L)) (allSublists (cdr L)))
       (T (cons (car L) (append (allSublists (car L)) (allSublists (cdr L)))))
  )
)


(defun mainAll(L)
  (cond
       ((null L) nil)
       (T (cons L (allSublists L)))
  )
)