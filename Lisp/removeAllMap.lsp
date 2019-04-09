(defun removeAllMap(L E)
  (cond
       ((atom L) (cond
                      ((equal L E) nil)
                      (T L)
                 )
       )
       (T (mapcar #'(lambda (X) (removeAllMap X E)) L))
  )
)
