(define (cont-frac n d k)
  (define (finit-cont-frac i)
    (if (= k i)
      (/ (n i) (d i))
      (/ (n i) (+ (d i) (finit-cont-frac (+ i 1))))))
  (finit-cont-frac 1))

(define (tan-cf x k)
  (/ (cont-frac (lambda (i) (* x x))
                (lambda (i) 
                  (- (* 2 i) 1.0))
                5)
     x))

