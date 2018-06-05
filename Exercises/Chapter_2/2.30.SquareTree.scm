;; SICP- Second edition
;; Exercise 2.30
;; Procedures to square the leaves of a tree
;; Author- Dedipyaman Das (2d@twodee.me)

;; Direct method
(define (square-tree tree)
  (cond ((null? tree) '())
	((not (pair? tree)) (square tree))
	(else (cons (square-tree (car tree))
		    (square-tree (cdr tree))))))
;; Using map and recursion
(define (square-tree tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (square-tree sub-tree)
	     (square sub-tree)))
       tree))
