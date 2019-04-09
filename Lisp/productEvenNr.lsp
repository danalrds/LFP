;product of even element on any level

(defun productEvenNr(L)
  (cond
       ((numberp L)(cond
                        ((= (mod L 2)0) L)
                        (T 1)
                    )
       )
       (T (apply '* (mapcar 'productEvenNr L)))
  )
)