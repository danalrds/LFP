
(defun replaceListWithLast(L)
  (cond
       ((null L) nil)
       ((atom (car L)) (cons (car L) (replaceListWithLast (cdr L))))
       (T (cons (lastElement (car L)) (replaceListWithLast (cdr L))))
  )
)

(defun lastElement(L)
  (cond
       ((null L) nil)
       ((and (atom (car L)) (null (cdr L))) (car L))
       ((atom (car L)) (lastElement (cdr L)))
       (T (cond
               ((null (cdr L)) (lastElement (car L)))
               (T (lastElement (cdr L)))
          )
        )
  )
)
