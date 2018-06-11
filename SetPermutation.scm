(load "lib/FlatMap.scm")
;; Custom remove
(define (remove item seq)
  (filter (lambda (x) (not (= item x))) seq))
;; main
(define (permutations set)
  (if (null? set)
      (list '())
      (flatmap (lambda (x)
		 (map (lambda (p) (cons x p))
		      (permutations (remove x set))))
	       set)))
