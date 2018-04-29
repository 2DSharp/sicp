;; SICP- Second Edition
;; Exercise 2.23
;; Implementing for-each procedure
;; Author- Dedipyaman Das (2d@twodee.me)

(define (for-each proc items)
  (cond ((null? items) true)
	(else (proc (car items))
	      (for-each proc (cdr items)))))
	
      
