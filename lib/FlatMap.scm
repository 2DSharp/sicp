(load "$SICP/lib/SequenceOps.scm")
;; Make the ordered pair list
(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))
