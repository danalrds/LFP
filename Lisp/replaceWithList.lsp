;replace an element E with a list L1 at all leveles of the given list

(defun replaceWithList(L E L2)
  (cond
       ((null L) nil)
       ((listp (car L)) (cons (replaceWithList (car L) E L2) (replaceWithList (cdr L) E L2)))
       ((equal E (car L)) (cons L2 (replaceWithList (cdr L) E L2)))
       (T (cons (car L) (replaceWithList (cdr L) E L2)))
  )
)
