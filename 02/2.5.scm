; Exercise 2.5. 
; Show that we can represent pairs of nonnegative integers using only numbers and arithmetic
; operations if we represent the pair a and b as the integer that is the product 2a 3b. Give the corresponding
; definitions of the procedures cons, car, and cdr.

; Solution:

(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (car pair)
  (count-power pair 2))

(define (cdr pair)
  (count-power pair 3))

(define (count-power n base)
  (define (count-power-iter count remaining)
    (if (not (= (remainder remaining base) 0))
        count
        (count-power-iter (+ count 1) (/ remaining base))))
  (count-power-iter 0 n))


