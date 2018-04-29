;; SICP- Second Edition
;; Exercise 2.28
;; Fringe implementation - to return all leaves of a tree
;; Author- Dedipyaman Das (2d@twodee.me)

(define (fringe x)
  (cond ((null? x) '())
	;; Return the leaf as a list to stuff to it and not form a tree
	((not (pair? x)) (list x))
	(else (append (fringe (car x)) (fringe (cdr x))))))
