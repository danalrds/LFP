;depth of a list

(defun depth(L)
  (cond
       ((null L) 0)
       ((atom (car L)) (depth (cdr L)))
       (T (maximum (+ 1 (depth (car L))) (depth (cdr L))))
  )
)

(defun mainDepth(L)
  (+ 1 (depth L))
)

(defun maximum(A B)
  (cond
        ((> A B) A)
        (T B)
  )
)

(defun max-depth (tree)
  (cond
       ((atom tree) 0)
       (T (1+ (reduce #'maximum (mapcar #'max-depth tree))))
  )
)