(defun lungime(L)
  (cond
       ((null L) 0)
       (T (+ 1 (lungime (cdr L)))) 
  )
)


(defun isLinear(L)
  (cond
       ((null L) T)
       ((atom (car L)) (isLinear (cdr L)))
       ((listp (car L)) nil)
  )
)

(defun removeIt(L)
  (cond
       ((null L) nil)
       ((atom (car L)) (cons (car L) (removeIt (cdr L))))
       (( and (and (listp (car L)) (isLinear (car L))) (=(mod (lungime (car L)) 2) 0))
                           (removeIt (cdr L)))
       (( and (and (listp (car L)) (isLinear (car L))) (=(mod (lungime (car L)) 2) 0))
              (cons (car L) (removeIt (cdr L))))
       (T (cons (removeIt (car L)) (removeIt (cdr L))))
  )
)
