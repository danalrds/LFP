;Write a function to compute the result of an arithmetic expression memorised in preorder on a stack

(defun compute(Op E1 E2)
  (cond
       ((equal Op *) (* E1 E2))
       ((equal Op +) (+ E1 E2))
       ((equal Op -) (- E1 E2))
       ((equal Op /) (/ E1 E2))
  )
)


(defun replaceWithValue(L Op E1 E2)
  (cond
       ((null L) nil)
       ((and (equal (car L) Op) (and (equal (cadr L) E1) (equal (caddr L) E2))) 
                                         (cons (funcall Op E1 E2) (cdddr L)))
       (T (cons (car L) (replaceWithValue (cdr L) Op E1 E2)))
  )
)

(defun mainEval(L Col)
  (cond
       (( and (null L) (not (null Col))) (mainEval Col nil))
       ((and (null (cdr L)) (null Col)) (car L))
       ((and (not (numberp (car L))) (and (numberp (cadr L)) (numberp ( caddr L))))
                                          (mainEval (replaceWithValue L (car L) (cadr L) (caddr L)) Col))
       (T (mainEval (cdr L) (append Col (list (car L)))))
  )
)


(defun mainEvaluation(L)
  (mainEval L nil)
)