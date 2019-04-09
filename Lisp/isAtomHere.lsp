;check if an atom E is in a list which is not necessarily linear

(defun isAtomHere(L E)
  (cond
       ((null L) nil)
       ((and (atom (car L))(equal E (car L))) T)
       ((listp (car L)) (or (isAtomHere (car L) E) (isAtomHere (cdr L) E)))
       (T (isAtomHere (cdr L) E))
  )
)