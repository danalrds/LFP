;Determine if a tree of type (2) is ballanced (difference between subtrees depth is 1)

(defun balanced(L)
   (cond
       ((null L) T)
       ((> (abs (-(depth (cadr L)) (depth (caddr L)))) 1) nil) 
       (T (and (balanced (cadr L)) (balanced (caddr L))))
       
  )
)


(defun depth(L)
  (cond
       ((null L) 0)
       (T (+ 1 (max (depth (cadr L)) (depth (caddr L)))))
  )
)