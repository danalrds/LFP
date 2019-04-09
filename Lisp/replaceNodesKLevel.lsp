(defun replaceNodesK(L Level K E)
  (cond
       ((atom L) (cond
                      ((= Level K) E)
                      (T L)
                 )
        )
       (T (mapcar #'(lambda (X) (replaceNodesK X (+ 1 Level) K E)) L))
  )
)