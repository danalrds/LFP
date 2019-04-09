;add E after each palindrom


(defun addAfterPal(L E)
  (cond
       ((null L) nil)
       ((isPal (car L)) (cons (car L) (cons E (addAfterPal (cdr L) E))))
       (T (cons (car L) (addAfterPal (cdr L) E)))
  )
)
  

(defun invers(N Col)
  (cond
       ((= N 0) Col)
       (T (invers (floor N 10) (+ (mod N 10) (* Col 10))))
  )
)

(defun isPal(N)
  (cond
       ((= (invers N 0) N) T)
       (T nil)
  )
)

