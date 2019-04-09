;Return the level of a node in a tree of type (1).

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

(defun levelOf(L K E)
  (cond
       ((null L) nil)
       ((equal (car L) E) K)
       (T (or (levelOf (stanga (cddr L) 0 0) (+ 1 K) E) (levelOf (dreapta (cddr L) 0 0) (+ 1 K) E)))
  )
)
  
(defun mainLevelOf(L E)
  (levelOf L 0 E)
)
