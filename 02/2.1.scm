; Exercise 2.1:
; Define a better version of make-rat that handles both
; positive and negative arguments. Make-rat should normalize the
; sign so that if the rational number is positive, both the numerator
; and denominator are positive, and if the rational number is negative,
; only the numerator is negative.


(define (sign x)
  (if (< x 0) -1 1))

(define (make-rat n d)
  (let ((g (gcd n d))
        (sign-d (sign d)))
    (cons (* (/ n g) sign-d) (* (/ d g) sign-d))))

(make-rat 10 6)
