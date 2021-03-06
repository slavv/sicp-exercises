; Exercise 2.4. 
; Here is an alternative procedural representation of pairs. For this representation, verify that
; (car (cons x y)) yields x for any objects x and y.
;
; (define (cons x y)
;    (lambda (m) (m x y)))
;
; (define (car z)
;    (z (lambda (p q) p)))

; Solution:

; (car (cons x y)) -> 
; ((cons x y) (lambda (p q) p)) ->
; (lambda (m) (m x y) (lambda (p q) p)) ->
; ((lambda (p q) p) x y) ->
; x

(define (cdr z)
  (z (lambda (p q) q)))