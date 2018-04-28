;; SICP- Second Edition
;; Author- Dedipyaman Das (2d@twodee.me)
;; An implementation of list-ref
;; Looks like a linked list or an array tbh

(define (list-ref item-list n)
  (if (= n 0)
      (car item-list)
      (list-ref (cdr item-list) (- n 1))))
