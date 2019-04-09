(defun f(L)
  (cond
       ((null L) nil)
       ((listp (car L)) (funcall #'(lambda (G) (append G (f (cdr L)) (car G))) (f (car L))))
       (T (list (car L)))
  )
)


(defun f1(L)
  (cond
       ((null L) nil)
       ((listp (car L)) (append (f1(car L)) (f1(cdr L)) (car (f1 (car L)))))
       (T (list (car L)))
  )
)
