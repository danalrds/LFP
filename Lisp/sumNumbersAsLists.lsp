;sum of 2 numbers in list representation

(defun reverseLinear(L)
  (cond
       ((null L) nil)
       (T (append (reverseLinear (cdr L))(list (car L))))
  )
)

(defun sumList(L1 L2 Minte)
  (cond
       ((and (and (null L1) (null L2)) (not(= Minte 0))) (list Minte))
       ((and (null L1) (null L2)) nil)
       ((null L1) (cons (mod (+ (car L2) Minte) 10) (sumList L1 (cdr L2) (floor (+ (car L2) Minte) 10))))
       ((null L2) (cons (mod (+ (car L1) Minte) 10) (sumList (cdr L1) L2 (floor (+ (car L1) Minte) 10))))
       (T (cons (mod (+ (car L1) (car L2) Minte) 10) (sumList (cdr L1) (cdr L2) 
                                                     (floor (+ (car L1) (car L2) Minte) 10) )))
  )
)

(defun mainSumList(L1 L2)
  (reverseLinear (sumList (reverseLinear L1) (reverseLinear L2) 0))
)