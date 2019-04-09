(defun myincf(x)
(setq x (+ 1 x)))
(defmacro myinc (x)
(list 'setq x (list '+ 1 x)))



