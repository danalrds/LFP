;returns the depth of a list

(defun maxdepth(L Crt Max)
  (cond
       ((null L) (max Crt Max))
       ((listp (car L)) (max (maxdepth (car L)(+ 1 Crt) Max ) (maxdepth (cdr L) Crt Max)))
       (T (maxdepth (cdr L) Crt Max))
  )
)
       
       