(defun prim(N)
  (cond
       ((< N 2 ) nil)
       (T (not(hasDivisors N 2)))
  )
)

(defun hasDivisors(N D)
  (cond
       ((> D (floor N 2)) nil)
       ((=(mod N D)0) T)
       (T (hasDivisors N (+ 1 D)))
  )
)
