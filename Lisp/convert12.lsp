;Convert a tree of type (1) to type (2).

(defun convert(L)
  (cond
       ((null L) nil)
       ((= (cadr L) 0) (cons (list (car L)) (convert (cdr (cdr L)))))
       (T (cons (car L) (convert (cdr (cdr L)))))
  )
)
        