(define (inc x) (+ x 1))

(define (indent x) x)

(define (basic-filter x) #t)

(define (even? n)
  (= 0 (remainder n 2)))

(define (filtered-accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (combiner (if (filter (term a)) (term a) null-value)
         (filtered-accumulate combiner null-value term (next a) next b filter))))

(define (filtered-accumulate1 combiner null-value term a next b filter)
  (define (iter a result)
    (cond 
      ((> a b) result)
      ((filter (term a))  (iter (next a) (combiner (term a) result)))
      (else (iter (next a) result))))
  (iter a null-value))
