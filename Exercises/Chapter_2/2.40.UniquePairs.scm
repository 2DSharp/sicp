(load "$SICP/lib/FlatMap.scm")
(load "$SICP/lib/IsPrime.scm")

(define (unique-pairs n)
  (flatmap (lambda (i)
	     (map (lambda (j) (list i j))
		  (enumerate-interval 1 (- i 1))))
	   (enumerate-interval 1 n)))

(define (prime-sum? pair)
  (is-prime? (+ (car pair) (cadr pair))))

(define (make-triple pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
  (map make-triple (filter prime-sum? (unique-pairs n))))
