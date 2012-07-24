(define (make-accumulator sum)
  (lambda (amount)
    (set! sum (+ sum amount))
               sum))

(define accum (make-accumulator 5))
(accum 10)
(accum 15)