; Exercise 1.7: 
; The good-enough? test used in computing square
; roots will not be very effective for finding the square roots of very
; small numbers. Also, in real computers, arithmetic operations are
; almost always performed with limited precision. This makes our
; test inadequate for very large numbers. Explain these statements,
; with examples showing how the test fails for small and large numbers.
; An alternative strategy for implementing good-enough? is to
; watch how guess changes from one iteration to the next and to
; stop when the change is a very small fraction of the guess. Design
; a square-root procedure that uses this kind of end test. Does this
; work better for small and large numbers?


; Solution
;
; For example, the square of 0.000001 is 0.001 which is equal to the 
; allowed mistake. So if we guess that the square of 0.000001 is almost 
; twice bigger than it is, {{{good-enough?}}} will evaluate to #t.
; 
; With big numbers the problem is different. As the precision is not good the distance 
; between the two closest presentable numbers can be bigger than 0.001 so the 
; program will never find solution(endless recursion).

; Working version of good-enough?:
; (define (good-enough? guess x)
;   (< (abs (- 1 (/ x (square guess)))) 0.001))
 
