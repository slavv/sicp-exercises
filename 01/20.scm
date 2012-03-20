; Exercise 1.20. 
; The process that a procedure generates is of course dependent on the rules used by the
; interpreter. As an example, consider the iterative gcd procedure given above. Suppose we were to
; interpret this procedure using normal-order evaluation, as discussed in section 1.1.5. (The normal-orderevaluation
; rule for if is described in exercise 1.5.) Using the substitution method (for normal order),
; illustrate the process generated in evaluating (gcd 206 40) and indicate the remainder operations
; that are actually performed. How many remainder operations are actually performed in the normalorder
; evaluation of (gcd 206 40)? In the applicative-order evaluation?

; Solution:

; normal-order evaluation:
; (gcd 206 40)
; (gcd 40 (remainder 206 40))
; (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
; (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
; (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))

; applicative-order evaluation:
; (gcd 206 40)
; (gcd 40 (remainder 206 40))
; (gcd 6 (remainder 40 6))
; (gcd 4 (remainder 6 4))
; (gcd 2 (remainder 4 2))
;  2