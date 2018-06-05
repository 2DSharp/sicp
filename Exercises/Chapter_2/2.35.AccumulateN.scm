(define (enumerate-first seqs)
  (cond ((null? (car seqs) '())
	 ((not (pair? (car seqs)))  seqs)
	 (else (cons (enumerate-first (car seqs))
		     (enumerate-first (cdr seqs)))))))
	     
