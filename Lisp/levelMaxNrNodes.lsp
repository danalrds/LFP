;the level and corresp nodes of the levl with max nr of nodes

(defun levelNodes(L K Level)
  (cond
       ((null L) nil)
       ((= K Level) (cons (car L) (append (levelNodes (cadr L) (+ K 1) Level)(levelNodes (caddr L) (+ K 1) Level))))
        (T (append (levelNodes (cadr L) (+ K 1) Level)(levelNodes (caddr L) (+ K 1) Level)))
  )
)

(defun lengthOf(L)
  (cond
       ((null L) 0)
       (T (+ 1 (lengthOf(cdr L))))
  )
)

(defun maxLevel(L K Max)
  (cond
       ((= (lengthOf (levelNodes L 0 K)) 0) (cons (lengthOf Max) Max))
       ((>(lengthOf (levelNodes L 0 K)) (lengthOf Max)) (maxLevel L (+ 1 K) (levelNodes L 0 K)))
       (T (maxLevel L (+ 1 K) Max))
  )
)

(defun mainMaxLevel (L)
  (maxLevel L 0 nil)
)
