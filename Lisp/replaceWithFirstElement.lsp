;counts elements at superficial level
(defun countSup(L)
  (cond
       ((null L) 0)
       (T (+ 1 (countSup (cdr L))))
  )
)

(defun thelistYouSearch(L)
  (cond
       ((null L) nil)
       ((atom (car L)) (thelistYouSearch (cdr L)))
       (T (cond
               ((= (mod (countSup (car L)) 2)1) (append (list(firstElement (car L))) (theListYouSearch (cdr L))))
               (T (theListYouSearch (cdr L)))
          ) 
       )
  )
)

(defun mainThis(L)
  (cond
        ((atom (car L)) (append (list (car L)) (thelistYouSearch L)))
        (T (thelistYouSearch L))
  )
)

(defun  firstElement(L)
  (cond
       ((atom (car L)) (car L))
       (T (firstElement (car L)))
  )
)
