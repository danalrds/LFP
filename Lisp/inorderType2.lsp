;Return the list of nodes of a tree of type (2) accessed inorder.

(defun inorder(L)
  (cond 
       ((null L) nil)
       (T (append (inorder (cadr L)) (cons (car L) (inorder (caddr L)))))
  )
)