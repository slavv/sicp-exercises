; Exercise 2.41: Write a procedure to find all ordered triples of distinct
; positive integers i , j , and k less than or equal to a given integer
; n that sum to a given integer s.

; Solution:
(define (unique-triples n)
  (flatmap (lambda (pair) 
             (map (lambda (k)(cons k pair))
                  (enumerate-interval 1 (- (car pair) 1))))  
           (unique-pairs n))) 

(define (triples-with-sum n s)
  (filter (lambda (triple) (= s (sum triple)))
          (unique-triples n)))

; Helpers:

(define (unique-pairs n)
  (flatmap (lambda (i) 
             (map (lambda (j) (list j i))
                  (enumerate-interval 1 (- i 1))))  
           (enumerate-interval 1 n)))  
 
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

(define (filter cond? l)
  (cond
    ((null? l) '())
    ((cond? (car l)) (cons (car l) (filter cond? (cdr l))))
    (else (filter cond? (cdr l)))))

(define (sum l)
  (accumulate + 0 l))


