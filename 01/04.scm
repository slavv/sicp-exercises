; Exercise 1.4: Observe that our model of evaluation allows for combinations
; whose operators are compound expressions. Use this
; observation to describe the behavior of the following procedure:
; (define (a-plus-abs-b a b)
; ((if (> b 0) + -) a b))


; Solution:

; As '+' and '-' are just symbols included in the global environment,
; they are valid evaluation of an expression.
; They are associated with the sequences of machine instructions
; that are applied to the values of the operands.