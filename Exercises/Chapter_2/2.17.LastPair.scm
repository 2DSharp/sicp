;; SICP- Second Edition
;; Author- Dedipyaman Das (2d@twodee.me)
;; Exercise 2.17
;; Procedure to show the last element of a non-empty list
;; Recursive process

(define (last-pair items)
  (if (null? (cdr items))
      items
      (last-pair (cdr items))))
