(define (reverse l)
  (define (reverse-iter l result)
    (if (null? l)
        result
        (iter (cdr l) (cons (car l) result))))
  (iter l (list)))

