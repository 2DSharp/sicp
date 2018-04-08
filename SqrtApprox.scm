;; This is based on Heron of Alexandria's method of calculating an
;; approximation to square-root of a numeric value
;;
;; The idea goes as follows:
;;
;; Make a guess.
;; Improve the guess by averaging guess and x/guess.
;; Keep improving till it's good enough

;; Defining a new square root procedure
;; Block structure
(define (new-sqrt x)
  (define (square a)
    (* a a))
  (define (avg x y)
    (/ (+ x y) 2))

  (define (improve guess x)
    (avg guess
	 (/ x guess)))
  ;; Although I had ideas to do an equals check with square of guess and x
  ;; And avg(g,x/g) = g
  ;; This one seems to work on everything better
  ;; Way to go MIT!
  (define (good-enough? guess x)

    (< (abs (- x (square guess)))
       0.001))

  (define (try guess x)
    (if (good-enough? guess x)
	guess
	(try (improve guess x) x)))
  (try 1 x))
