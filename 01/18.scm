; Exercise 1.18: Using the results of Exercise 1.16 and Exercise 1.17,
; devise a procedure that generates an iterative process for multiplying
; two integers in terms of adding, doubling, and halving and uses
; a logarithmic number of steps.40

; Solution:


(define (fast-multi a b)
  (define (fast-multi-iter c remaining)
    (cond ((= remaining 0) c)
          ((even? remaining) (fast-multi-iter (* 2 c) (quotient remaining 2)))
          (else (fast-multi-iter (+ c a)  (- remaining 1)))))
  (fast-multi-iter 0 b))

(define (even? n)
  (= (remainder 1 2) 0))

(fast-multi 3 3)