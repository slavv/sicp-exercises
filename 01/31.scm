(define (inc x) (+ x 1))
(define (indent x) x)

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (product1 term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (factorial n)
  (product1 indent 1 inc n))

(define (pi n)
  (product1 indent 1 inc n))