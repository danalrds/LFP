;Return the number of levels of a tree of type (1).
(defun stanga(L nv nm)
	(cond
		((null L) nil)
		((= nv (+ 1 nm)) nil)
		(T (cons (car L) (cons (cadr L) (stanga (cddr L) ( + 1 nv) (+ (cadr L) nm)))))
	)
)

(defun dreapta(L nv nm)
	(cond
		((null L) nil)
		((= nv (+ 1 nm)) L)
		(T (dreapta (cddr L) ( + 1 nv) (+ (cadr L) nm)))
	)
)

(defun maximum(A B)
  (cond
       ((> A B) A)
       (T B)
  )
)

(defun nrLevels(L)
  (cond
       ((null L) 0)
       (T (maximum (+ 1 (nrLevels (stanga (cddr L) 0 0))) (+ 1 (nrLevels (dreapta (cddr L) 0 0)))))
  )
)
