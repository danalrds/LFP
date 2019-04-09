 ;For a given tree of type (2) return the path from the root node to a certain given node X.

(defun path(L Col E)
  (cond
       ((null L) nil)
       ((equal (car L) E) (append Col (list E)))
       (T (or (path (cadr L) (append Col (list (car L))) E) (path (caddr L) (append Col (list (car L))) E)))
  )
)

(defun mainPath(L E)
  (path L nil E)
)