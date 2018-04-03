;; This is based on Heron of Alexandria's method of calculating an
;; approximation to square-root of a numeric value
;;
;; The idea goes as follows:
;;
;; Make a guess.
;; Improve the guess by averaging guess and x/guess.
;; Keep improving till it's good enough

(define (avg x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (avg guess
	(/ x guess)))

(define (good-enough? guess x)
  (= (/ x guess) guess))

(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))

(print (try 1 25))
