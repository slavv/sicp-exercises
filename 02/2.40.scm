; Exercise 2.40: Define a procedure unique-pairs that, given an integer
; n, generates the sequence of pairs (i , j ) with 1 < j < i < n.
; Use unique-pairs to simplify the definition of prime-sum-pairs
; given above.

; Solution:


(define (unique-pairs n)
  (flatmap (lambda (i) 
             (map (lambda (j) (list j i))
                  (enumerate-interval 1 (- i 1))))  
           (enumerate-interval 1 n)))

(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum? (unique-pairs n))))

; Helpers:

(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
      (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append null (map proc seq)))

(define (enumerate-interval a b)
  (if (> a b)
      null
      (cons a (enumerate-interval (+ a 1) b))))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))


(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (square x) (* x x))

(define (divides? a b)
  (= (remainder b a) 0))

(define (filter cond? l)
  (cond
    ((null? l) '())
    ((cond? (car l)) (cons (car l) (filter cond? (cdr l))))
    (else (filter cond? (cdr l)))))
