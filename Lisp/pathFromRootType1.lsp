;For a given tree of type (1) return the path from the root node to a certain given node X.

(defun removeLast(L)
  (cond
       ((null (cdr L)) nil)
       (T (cons (car L) (removeLast (cdr L))))
  )
)

(defun pathToX(L Last Col X)
  (cond 
       ((null L) nil)
       ((equal (car L) X) (append Col (list (car L))))
       (T (cond
               ((= (cadr L) 0)(cond
                               ((= Last 1) (pathToX (cdr (cdr L)) 0 (removeLast Col) X))
                               (T  (cond
                                        ((and (not (equal (caddr L) X))
                                         (=(cadddr L) 0)) (pathToX (cdr(cdr (cdr (cdr L)))) 0 (removeLast(removeLast Col)) X))
                                        (T (pathToX (cdr (cdr L)) Last Col X))
                                   ) 
                               )
                              ) 
               )
               (T (pathToX (cdr (cdr L)) (cadr L) (append Col (list (car L))) X))
          ) 
        )
  )
)