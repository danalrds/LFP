
(defun linearList(L)
  (cond
       ((atom L) (list L))
       ((listp L) (mapcan 'linearList L))
  )
)
