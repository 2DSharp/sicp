;; SICP- Second Edition
;; Exercise 2.18
;; Reverse the elements in a list
;; Author- Dedipyaman Das (2d@twodee.me)

(define (reverse items)
  (if (null? (cdr items))
      items
      (append (reverse (cdr items)) (list (car items)))))
