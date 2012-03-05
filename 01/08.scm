; Exercise 1.8: 
; Newton’s method for cube roots is based on the fact
; that if y is an approximation to the cube root of x, then a better
; 54
; approximation is given by the value
; (x/y2 + 2y)/3
; Use this formula to implement a cube-root procedure analogous
; to the square-root procedure. (In Section 1.3.4 we will see how to
; implement Newton’s method in general as an abstraction of these
; square-root and cube-root procedures.)


; Solution:
(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
                 x)))

(define (improve y x)
  (/ (+ (/ x 
           (* y y)) 
        (* y 2)) 
     3))

(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- 1 (/ x (cube guess)))) 0.001))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 8)