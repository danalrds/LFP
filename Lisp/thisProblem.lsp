(defun flattenOdd(L K)
  (cond
       ((and (= K 1) (numberp L)) (list L))
       ((atom L) nil)
       (T (mapcan #'(lambda (X) (flattenOdd X (- 1 K))) L))
  )
)


(defun checkMaxOdd(L)
  (cond
       ((null (flattenOdd L 0)) nil)
       (T (=(mod (reduce #'max (flattenOdd L 0)) 2)0))
  )
)

(defun  mainF(L)
  (cond
       ((atom L) 0)
       ((checkMaxOdd L) (apply '+ 1 (mapcar 'mainF L)))
       (T (apply '+ (mapcar 'mainF L)))
  )
)

