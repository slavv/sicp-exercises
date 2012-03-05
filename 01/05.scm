; Exercise 1.5:
; Ben Bitdiddle has invented a test to determine
; whether the interpreter he is faced with is using applicative-order
; evaluation or normal-order evaluation. He defines the following
; two procedures:

; (define (p) (p))
; (define (test x y)
; (if (= x 0) 0 y))

; Then he evaluates the expression

; (test 0 (p))

; What behavior will Ben observe with an interpreter that uses
; applicative-order evaluation? What behavior will he observe with
; an interpreter that uses normal-order evaluation? Explain your
; answer. (Assume that the evaluation rule for the special form if
; is the same whether the interpreter is using normal or applicative
; order: The predicate expression is evaluated first, and the result
; determines whether to evaluate the consequent or the alternative
; expression.)


; Solution:

;(test 0 (p))

; With applicative-order evaluation:
;  * evaluates test - I can make it up, but I am not sure (some kind of lambda??).
;  * evaluates 0 -> 0
;  * evaluates (define (p) (p)) - endless recursion

; With normal-order evaluation:
;  * evaluates (test 0 (p)) 
;  * evaluates (if (= 0 0) 0 (p)) 
;  * evaluates 0
;  * the result is 0