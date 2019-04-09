(defun yuhuu(X)
  (+ 1 X)
)

(defmacro yuhu2(X)
  (list 'setq X (list '+ 1 X))
)