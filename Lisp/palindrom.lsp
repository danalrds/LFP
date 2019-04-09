;decides if a nr is palindrome

(defun  isPal(N)
  (cond
       ((= N (invers N 0)) T)
       (T nil)
  )
)

(defun invers(N Col)
  (cond
       ((= N 0) Col)
       (T (invers (floor N 10) (+ (mod N 10) (* Col 10))))
  )
)
