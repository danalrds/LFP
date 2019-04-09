;Determine the list of nodes accesed in preorder in a tree of type (2).

(defun preorder(L)
  (cond
       ((null L) nil)
       (T (cons (car L) (append (preorder (cadr L)) (preorder (caddr L)))))
  )
)