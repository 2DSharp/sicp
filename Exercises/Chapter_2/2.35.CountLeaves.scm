(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
	  (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate + 0
	      (map (lambda (x)
		     (cond ((null? x) 0)
			   ((pair? x)
			   (count-leaves x)) ;; Wishful thinking
			   (else 1)))
		   t)))
