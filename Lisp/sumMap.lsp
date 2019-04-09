(defun sumAll(L)
  (cond
       ((numberp L) L)
       ((atom L) 0)
       ((listp L) (apply '+ (mapcar 'sumAll L)))
  )
)