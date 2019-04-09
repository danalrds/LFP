(defun f(X &optional Y)
  (cond
       ((null Y) X)
       (T (+ X Y))
  )
)



(defun g(X &rest Y)
  (+ X (apply '+ Y))
)