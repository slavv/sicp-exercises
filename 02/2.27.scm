(define (deep-reverse l)
  (define (reverse-iter l result)
    (if (null? l)
        result
        (reverse-iter (cdr l) (cons (deep-reverse (car l)) result))))
 (if (pair? l) 
     (reverse-iter l (list))
     l))

(define x (list (list 1 2) (list 3 4)))
(deep-reverse x)