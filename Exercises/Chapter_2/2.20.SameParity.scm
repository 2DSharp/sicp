;; SICP- Second Edition
;; Author- Dedipyaman Das (2d@twodee.me)
;; Exercise 2.20
;; Finding arguments with the same even-odd parity as the first one
;; This is probably computationally expensive, see 2.20SameParityV2.scm

(define (same-parity . items)
  ;; I figured I just made a lambda expression without realizing it
  ;; After I was done testing it
  (let ((parity-check? (if (even? (car items))
			   even?
			   odd?)))
    (define (iter new-list old-list)  
      (cond ((null? old-list) new-list)
	    ((parity-check? (car old-list))
	     (iter (append new-list (list (car old-list))) (cdr old-list)))
	    (else (iter new-list (cdr old-list)))))

    (iter '() items)))
    
	
