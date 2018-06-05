;; SICP- Second Edition
;; Exercise 2.29
;; Binary mobile implementation
;; Author- Dedipyaman Das (2d@twodee.me)

;; The other version has been commented next to the concerned lines
(define (make-mobile left right)
  ;; (cons left right)
  (list left right))
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  ;; (cdr mobile)
  (car (cdr mobile)))

(define (make-branch length structure)
  ;; (cons length structure)
  (list length structure))

(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  ;; (cdr branch)
  (car (cdr branch)))

(define (branch-weight branch)
  (if (pair? (branch-structure branch))
      (total-weight (branch-structure branch))
      (branch-structure branch)))

(define (total-weight mobile)
  (cond ((null? mobile) 0)
	((not (pair? mobile)) mobile)
	(else (+ (total-weight (branch-structure (left-branch mobile)))
		 (total-weight (branch-structure (right-branch mobile)))))))

(define (torque branch)
  (* (branch-length branch) (total-weight (branch-structure branch))))

(define (balanced? mobile)
  (if (not (pair? mobile))
      true
      (and (= (torque (left-branch mobile)) (torque (right-branch mobile)))
	   (balanced? (branch-structure (left-branch mobile)))
	   (balanced? (branch-structure (right-branch mobile))))))
