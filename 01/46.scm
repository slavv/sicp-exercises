(define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

(define tolerance 0.000001)

(define (iterative-improve good-ehough improve)
  (define rec-improve (guess) 
    (if (good-ehough guess)
        guess
        (rec-improve (improve guess))))
  rec-improve)

(define tolerance 0.000001)

(define (sqrt x)
  ((iterative-improve 
    (lambda (guess) 
      (< (abs (- (* guess guess) x)) tolerance))
    (lambda (guess) 
      (/ (+ x guess) 2)))
  1.0))

(define (fixed-point f first-guess)
  ((iterative-improve 
    (lambda (guess) 
      (< (abs (- guess (f guess))) tolerance))
    f)
   first-guess))