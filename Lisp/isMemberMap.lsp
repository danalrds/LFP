(defun isMember(L E)
  (cond
       ((equal L E) 1)
       ((not (equal L E)) 0)
       ;((listp L) (apply 'or (mapcar 'isMember L E)))
       ((listp L)(apply '+ (mapcar #'(lambda (b) (isMember b e)) L)))
  )
)

(defun membru(e l)
  (cond
    ((null l) 0)
    ((and (atom l) (equal e l)) 1)
    ((atom l) 0)
    ((apply '+ (mapcar '(lambda (ll) (membru e ll)) l)))
  )
)

(defun is-member (l e)
  (cond

   ((equal e l)
    t)

   ((atom l)
    nil)

   (t
    (some #'(lambda (a)
              (equal t a))(mapcar #'(lambda (b) (is-member b e)) l)))))
