(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc x) (+ x 1))

(define (even? n)
  (= 0 (remainder n 2)))

(define (c index n) 
  (cond
    ((or (= index 0) (= index n)) 1)
    ((even? index) 2)
    (else 4)))

(define (integral f a b n)
  (define (h) (/ (- b a) n))
  (define (y k) 
    (* (c k n)
       (f (+ a (* k (h))))))
  (/ (* (sum y 0 inc n) (h)) 3.0))

(define (cube x) (* x x x))

(integral cube 0 1 1000)