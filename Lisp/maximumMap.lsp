(defun maximum(L)
  (cond
       ((numberp L) L)
       ((atom L) nil)
       (T (apply 'max (mapcar 'maximum L)))
  )
)