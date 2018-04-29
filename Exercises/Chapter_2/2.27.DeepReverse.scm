;; SICP- Second Edition
;; Exercise 2.27
;; Deep reversing a list
;; Author- Dedipyaman Das (2d@twodee.me)
;;
;; If (car x) is a pair, append (cdr x) and (car x)
;; Otherwise append (cdr x) and x
(define (deep-reverse x)
  (cond ((null? x) '())
	((pair? (car x)) (append (deep-reverse (cdr x)) (deep-reverse (car x))))
	(else (append (deep-reverse (cdr x)) (list (car x))))))

