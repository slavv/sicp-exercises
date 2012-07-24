(define (make-account balance password)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  
  (define (dispatch m)
    (cond ((eq? m `withdraw) withdraw)
          ((eq? m `deposit) deposit)
          (else (error "Unknown request - MAKE-ACCOUNT"
                       m))))
  
  (define (protected-dispatch password-try m)
      (if (eq? password-try password)
          (dispatch m)
          (lambda(x)(display "Incorrect password"))))
  protected-dispatch)

(define (make-joint account password new-password)
  (define (protected-dispatch password-try m)
      (if (eq? password-try new-password)
          (account password m)
          (lambda(x)(display "Incorrect password"))))
  protected-dispatch)

(define acc (make-account 100 `open-sesame))
(define new-acc
  (make-joint acc `open-sesame `rosebud))
((new-acc `rosebud `deposit) 50)
((acc `open-sesame `deposit) 50)


