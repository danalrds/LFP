;Return the list of nodes on the k-th level of a tree of type (1).

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

(defun levelK(L K Level)
  (cond
       ((null L) nil)
       ((= K Level) (cons (car L) (append (levelK (stanga (cddr L) 0 0) (+ K 1) Level) (levelK (dreapta (cddr L) 0 0) (+ K 1) Level))))
       (T (append (levelK (stanga (cddr L) 0 0) (+ K 1) Level) (levelK (dreapta (cddr L) 0 0) (+ K 1) Level)))
  )
)

(defun mainLevelK(L Level)
  (levelK L 0 Level)
)

;Math Model
;stanga(l1..ln, nv, nm)=[], n=0
;                       [], nv=nm+1
;                       l1 U l2 U stanga(l3...ln, nv +1, nm + l2), otherwise

;dreapta(l1..ln, nv, nm)=[], n=0
;                        l1..ln, nv=nm+1
;                        dreapta(l3..ln, nv + 1, nm + l2), otherwise


;levelK(l1..ln, K, Level)=[], n=0
;                         l1 U levelK(stanga(l3..ln, 0, 0))U levelK(dreapta(l3..ln, 0, 0)), K=Level
;                         levelK(stanga(l3..ln, 0, 0))U levelK(dreapta(l3..ln, 0, 0)), otherwise 


;mainLevelK(l1..ln, Level)= levelK(l1..ln, 0, Level) 
