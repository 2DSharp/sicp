;; SICP- Second Edition
;; Author- Dedipyaman Das (2d@twodee.me)
;; Exercise 2.23
;; Implementing for-each procedure

(define (for-each proc items)
  (cond ((null? items) true)
	(else (proc (car items))
	      (for-each proc (cdr items)))))
	
      
