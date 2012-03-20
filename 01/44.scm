(define (compose f g) 
  (lambda (x)
    (f (g x))))

(define (repeated f n) 
  (if (= n 1)
   f
   (compose f (repeated f (- n 1)))))

(define (smooth f dx)
  (lambda (x) 
    (/ (+ (f x) (f (+ x dx)) (f (- x dx)))
       3)))

(define (n-fold-smooth f n dx)
  ((repeated smooth n dx) f))