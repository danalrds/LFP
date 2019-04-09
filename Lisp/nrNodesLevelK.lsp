;Write a function to determine the number of nodes on the level k from a n-tree represented as follows: ;(root list_nodes_subtree1 ... list_nodes_subtreen)
;Eg: tree is (a (b (c)) (d) (e (f))) and k=1 => 3 nodes
(defun nrNodes(L K Level)
  (cond
       ((atom L) (cond
                      ((= K Level) 1)
                      (T 0)
                  )
       )
       (T (apply '+ (mapcar #'(lambda (X) (nrNodes X (+ 1 K) Level)) L)))
  )
)

(defun mainNrNodes(L Level)
  (nrNodes L 0 Level)
)