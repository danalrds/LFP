;function that returns the number of atoms in a list at any level
;Math Model
;nrAtoms(L)=1       , L=atom
;          =Sigma from 1 to n(nrAtoms (L)), L=list where n is the length of L
(defun nrAtoms(L)
  (cond
       ((atom L) 1)
       ((listp L) (apply '+ (mapcar 'nrAtoms L)))
  )
)