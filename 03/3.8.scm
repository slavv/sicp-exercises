(define f
  (let ((result 1))
    (lambda (multiplier)
      (set! result (* result multiplier))
       result)))

(f 0)
(f 1)