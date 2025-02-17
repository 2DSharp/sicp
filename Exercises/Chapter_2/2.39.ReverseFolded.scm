(define (reverse-right sequence)
  (fold-right (lambda (x y)
		(append y (list x))) '() sequence))

(define (reverse-left sequence)
  (fold-left (lambda (x y)
	       (append (list x) y)) '() sequence))
