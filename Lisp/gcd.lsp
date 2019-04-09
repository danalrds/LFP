;greatest common divisor of all elements from a list


(defun gcDivisor(a b)
  (cond
       ((=(mod a b) 0) b)
       (T (gcDivisor b (mod a b)))
  )
)

(defun mainGcd (a b)
  (cond
       ((> a b) (gcDivisor a b))
       (T (gcDivisor b a))
  )
)