;; Helper procedures
(load "lib/IsPrime.scm") ;; Prime check procedure
(load "lib/SequenceOps.scm") ;; Sequence ops
;; Make the ordered pair list
(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))
;; Filter the pairs for prime numbers
(define (is-sum-prime? pair)
  (is-prime? (+ (car pair) (cadr pair))))
;; Make the triples
(define (make-triple pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
;; Summing up
(define (prime-sum-triples n)
  (map make-triple (filter
		     is-sum-prime?
		     (flatmap
		      (lambda (i)
			(map (lambda (j) (list i j))
			     (enumerate-interval 1 (- i 1))))
		      (enumerate-interval 1 n)))))
