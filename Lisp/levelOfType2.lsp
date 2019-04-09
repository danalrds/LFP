;Return the level of a node X in a tree of type (2). The level of the root element is 0.

(defun levelOf(L K E)
  (cond
       ((null L) nil)
       ((equal (car L) E) K)
       (T (or (levelOf (cadr L) (+ 1 K) E) (levelOf (caddr L) (+ 1 K) E)))
  )
)
  
(defun mainLevelOf(L E)
  (levelOf L 0 E)
)