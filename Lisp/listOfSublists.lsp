;returns the list of all sublists

(defun listSub(L)
  (cond
       ((null L) nil)
       ((listp (car L)) (cons (car L)(append (listSub (car L)) (listSub (cdr L)))))
       (T (listSub (cdr L)))
  )
)

(defun listSubMain (L)
  (cons L (listSub L))
)
