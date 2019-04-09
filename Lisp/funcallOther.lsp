(defun f(L)
  (cond
       ((null L)0)
       ((>(f (car L)) 2) (+ (car L) (f (cdr L))))
       (T (f (car L)))
  )
)


(defun ff(L)
  (cond
       ((null L) nil)
       ((funcall #'(lambda (G) (cond
                               ((> G 2) (+ (car L) (ff (cdr L))))
                               (T G) 
                               )
                     ) (ff (car L))
                ))
  )
)