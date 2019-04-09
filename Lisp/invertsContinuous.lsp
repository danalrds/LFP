
(defun inverts(L Col)
  (cond
       ((null L) Col)
       ((atom (car L)) (setq Col (cons (car L) Col)) (inverts (cdr L) Col))
       (T (append Col (cons (inverts (car L) nil) (inverts (cdr L) nil))))
  )
)