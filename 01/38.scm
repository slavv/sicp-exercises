(define (cont-frac n d k)
  (define (finit-cont-frac i)
    (if (= k i)
      (/ (n i) (d i))
      (/ (n i) (+ (d i) (finit-cont-frac (+ i 1))))))
  (finit-cont-frac 1))

(define (e)
  (+ (cont-frac (lambda (i) 1.0)
           (lambda (i) 
             (if (= (remainder i 3) 2)
                 (* 2 (+ 1 (quotient i 3)))
                 1))
           5)
     2)