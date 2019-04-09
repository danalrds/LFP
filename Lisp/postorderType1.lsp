;Determine the list of nodes accesed in postorder in a tree of type (1).
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

(defun postorderT1(L)
  (cond
       ((null L) nil)
       (T (append (postorderT1 (stanga (cddr L) 0 0)) (postorderT1 (dreapta (cddr L) 0 0)) (list (car L))))
  )
) 