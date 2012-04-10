(define (filter  pred? l)
    (cond ((null? l) (list))
          ((pred? (car l)) (cons (car l) (filter pred? (cdr l))))
          (else (filter pred? (cdr l)))))


(define (same-parity first . others)
  (define (same-parity? n)
    (= (remainder first 2) (remainder n 2)))
  (filter same-parity? other))