;lowest common multiple

(defun gcDiv(A B)
  (cond
       ((= B 0 ) A)
       (T (gcDiv B (mod A B)))
   )
)

(defun cmmdc(A B)
  (cond 
       ((> A B) (gcDiv A B))
       (T (gcDiv B A))
  )
)



(defun cmmmc (A B)
  (/ (* A B) (cmmdc A B))
)


(defun gcdList(L Gcd)
  (cond
       ((null L) Gcd)
       (T (gcdList (cdr L) (cmmdc (car L) Gcd)))
  )
)

(defun mainGcdList(L)
  (gcdList L 0)
)