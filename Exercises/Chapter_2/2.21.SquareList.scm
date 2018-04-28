;; SICP- Second Edition
;; Author- Dedipyaman Das (2d@twodee.me)
;; Exercise 2.21
;; Square a list of numbers
;; Suppressing details with mappings

(define nil '())
(define (square-list-1 items)
  (if (null? items)
      nil
      (cons (square (car items)) (square-list-1 (cdr items)))))

(define  (square-list-2 items)
  (map square items))
