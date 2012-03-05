; Exercise 1.3: 
; Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.


; Solution:

(define (sum-of-squares a b)
  (+ (* a a) 
     (* b b)))

(define (max a b)
   (if (> a b) 
       a
       b))

(define (min a b)
   (if (< a b) 
       a
       b))


(define (sum-of-largest-two-squares a b c)
  (sum-of-squares (max a b)
                  (max (min a b)
                       c)))

  