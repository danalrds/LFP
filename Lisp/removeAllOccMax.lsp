;remove all occurences of maximum element from a nonlinear list
(defun maximum(A B)
  (cond 
       ((> A B) A)
       (T B)
  )
)
(defun maxList(L Max)
  (cond 
       ((null L) Max)
       ((numberp (car L)) (maxList (cdr L) (maximum (car L) Max)))
       ((listp (car L)) (maxList (cdr L) (maximum (maxList (car L) -99999) Max))) 
  )
)

(defun findMax(L)
  (maxList L -9999999)
)

(defun removeAll(L E)
  (cond
       ((null L) nil)
       ((atom (car L)) (cond
                            ((equal (car L) E) (removeAll (cdr L) E))
                            (T (cons (car L) (removeAll (cdr L) E)))
                        )
       )
       ((listp (car L)) (append (list (removeAll (car L) E)) (removeAll (cdr L) E)))
  )
)


(defun removeAllOfMax(L)
  (removeAll L (findMax L))
)






      
