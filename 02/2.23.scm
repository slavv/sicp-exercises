(define (for-each  function l)
  (if (null? l) #t
      ((lambda ()
        (function (car l))
        (for-each  function (cdr l))
        ))
      ))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))