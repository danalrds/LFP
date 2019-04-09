;substitutes an element with another one at any level of the list

(defun substEl(L E New)
  (cond
       ((atom L) (cond
                      ((equal L E) New)
                      (T L)
                  )      
       )
       (T (mapcar #'(lambda (X) (substEl X E New)) L))
  )
)


;OTHER FUNCTIONS
(defun addtwo(X)
  (+ 2 X)
)

(defun addTwoTheBig(L)
  (cond
       ((numberp L) (+ 2 L))
       ((atom L) L)
       (T (mapcar 'addTwoTheBig L))
  )
)