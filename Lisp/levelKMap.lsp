(defun levelOfK(L K Level)
  (cond
       ((atom L) (cond
                      ((= K Level) (list L))
                      (T nil)
                 )
       )
       ((listp L) (mapcan #'(lambda (X) (levelOfK X K (+ 1 Level))) L))
  )
)
