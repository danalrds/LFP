(defun myOr(L &rest Y)
  (cond
       ((null Y) L)
       ((or L (apply 'myOr Y)))
  )
)