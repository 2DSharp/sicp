;; SICP- Second edition
;; Exercise 2.31
;; Abstracting 2.30 and forming tree-map
;; Author- Dedipyaman Das (2d@twodee.me)

(define (tree-map proc tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (tree-map proc sub-tree)
	     (proc sub-tree)))
       tree))

(define (square-tree tree) (tree-map square tree))
