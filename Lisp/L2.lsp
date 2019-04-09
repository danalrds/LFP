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

(defun inordine(L)
	(cond
		((null L) nil)
		(T (append (inordine (stanga (cddr L) 0 0)) (list (car L)) (inordine (dreapta (cddr L) 0 0))))
	)
)
