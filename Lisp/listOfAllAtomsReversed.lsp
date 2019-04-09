;list of all atoms on any level reverse order

(defun listOfAllAtoms(L)
  (cond
       ((null L) nil)
       ((atom (car L)) (append (listOfAllAtoms (cdr L)) (list (car L))))
       (T (append (listOfAllAtoms (cdr L)) (listOfAllAtoms (car L))))
  )
)
