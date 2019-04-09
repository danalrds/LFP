(defun flatten(L)
  (cond
       ((atom L) (cond
                      ((numberp L) (list L))
                      (T nil)
                  )
       )
       (T (mapcan 'flatten L))
  )
)

(defun last2(L)
  (cond
       ((null (cdr L)) (car L))
       (T (last2 (cdr L)))
  )
)


(defun mainF(L)
  (cond
        ((atom L) 0)
        ((checkOdd(last2(flatten L))) (apply '+ 1 (mapcar 'mainF L)))
        (T (apply '+ (mapcar 'mainF L)))
  )
)

(defun checkOdd(N)
  (cond
       ((= (mod N 2) 1) T)
       (T nil)
  )
)


