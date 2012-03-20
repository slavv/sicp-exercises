(define (cont-frac n d k)
  (define (finit-cont-frac i)
    (if (= k i)
      (/ (n i) (d i))
      (/ (n i) (+ (d i) (finit-cont-frac (+ i 1))))))
  (finit-cont-frac 1))

(define (cont-frac-1 n d k)
  (define (finit-cont-frac i result)
    (if (= i 0)
        result
        (finit-cont-frac (- i 1)
              (/ (n i) (+ (d i) result)))))
  (finit-cont-frac k 0))

(cont-frac-1 (lambda (i) 1.0)
           (lambda (i) 1.0)
           4)