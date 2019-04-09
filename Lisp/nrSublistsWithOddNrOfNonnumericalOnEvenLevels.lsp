(defun flattenEven(L K)
  (cond
       ((atom L) (cond
                      ((and (= K 0) (not (numberp L))) (list L))
                      (T nil)
                 )
       )
       (T (mapcan #'(lambda (X) (flattenEven X (- 1 K))) L))
  )
)


(defun checkOddCounter(L)
  (cond
       ((=(mod (theLength L) 2) 1) T)
       (T nil)
  )
)

(defun mainF(L)
  (cond
       ((atom L) 0)
       ((checkOddCounter (flattenEven L 0)) (apply '+ 1 (mapcar 'mainF L)))
       (T (apply '+ (mapcar 'mainF L)))
  )
)


(defun theLength(L)
  (cond
       ((null L) 0)
       (T (+ 1 (theLength (cdr L))))
  )
)

