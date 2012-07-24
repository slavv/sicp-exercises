(define (rand)
  (let ((x random-init))
    (lambda (m)
      (cond ((eq? m `generate) (begin (set! x (rand-update x))
                                        x))
            ((eq? m `reset)(lambda(seed)(set! x seed)))
            (else (error "Unknown request - RAND"
                       m))))))