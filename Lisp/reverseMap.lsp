(defun rev(L)
  (cond
       ((atom L) L)
       (T (reverse (mapcar 'rev L)))
  )
)