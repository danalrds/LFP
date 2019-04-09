;conversion between type 2 and 1

(defun countLists(L)
  (cond
       ((null L) 0)
       ((listp (car L)) (+ 1 (countLists (cdr L))))
       (T (countlists (cdr L)))
  )
)

(defun convTypes(L)
  (cond
       ((null L) nil)
       ((atom (car L)) (cons (car L) (cons (countLists (cdr L)) (convTypes (cdr L)))))
       ((listp (car L)) (append (convTypes (car L)) (convTypes (cdr L))))
  )
)