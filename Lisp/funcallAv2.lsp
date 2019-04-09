

(defun F(L)
  (cond
        ((atom L) -1)
        ( T (funcall #'(lambda (G) (cond           
                                ((> G 0) (+ (car L) G (F (cdr L))))
                                (T (F (cdr L)))
                                )) (F(car L))
        ))
  )
)

(defun FF(L)
  (cond
       ((atom L) -1)
       ((> (FF (car L)) 0) (+ (car L) (FF (car L)) (FF (cdr L))))
       (T (FF (cdr L)))
  )
)