;Determine the list of nodes accesed in postorder in a tree of type (2).

(defun postorder(L)
  (cond
       ((null L) nil)
       (T (append (postorder (cadr L)) (append (postorder (caddr L)) (list (car L)))))
  )
)