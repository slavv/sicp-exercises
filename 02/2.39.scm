; Exercise 2.39: Complete the following definitions of reverse
; (Exercise 2.18) in terms of fold-right and fold-left from
; 
; (define (reverse sequence)
;   (fold-right (lambda (x y) h??i) nil sequence))
; (define (reverse sequence)
;   (fold-left (lambda (x y) h??i) nil sequence))

; Solution:


(define (fold-right op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
      (accumulate op initial (cdr sequence)))))

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
        (cdr rest))))
  (iter initial sequence))


(define (reverse1 sequence)
  (fold-right (lambda (x y) (cons x y)) nil sequence))

(define (reverse2 sequence)
  (fold-left (lambda (x y) (cons y x)) nil sequence))

(reverse1 (list 1 2 3))
