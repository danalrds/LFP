;inserts after 2 nd 4 th 6 th...an element E

(defun insertAfter(L K E)
  (cond
       ((null L) nil)
       ((= (mod K 2) 0) (cons (car L) (cons E (insertAfter (cdr L) (+ 1 K) E))))
       (T (cons (car L) (insertAfter (cdr L) (+ 1 K) E)))
  )
)
  
(defun mainInsertAfter(L E)
  (insertAfter L 1 E)
)