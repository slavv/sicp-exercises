(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (runtime) 
  (current-inexact-milliseconds))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x)
  (* x x))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (even? n)
  (= 0 (remainder n 2)))

(define (search-for-primes lower-limit primes-count)
  (cond 
    ((= primes-count 0) (newline)
                      (newline))
    ((even? lower-limit) 
     (search-for-primes (+ lower-limit 1) primes-count))
    ((timed-prime-test lower-limit)
     (search-for-primes (+ lower-limit 2) (- primes-count 1)))
    (else (search-for-primes (+ lower-limit 2) primes-count))))

(search-for-primes 100000 3)