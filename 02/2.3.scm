(define (average x y)
  (/ (+ x y) 2))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (make-rectangle top-right-point bottom-left-point)
  (cons top-right-point bottom-left-point))

(define (top-right-point rectangle)
  (car rectangle))

(define (bottom-left-point rectangle)
  (cdr rectangle))

(define (width rectagle)
  (- (x-point (top-right-point rectangle)) (x-point ((bottom-left-point rectangle)))))

(define (height rectagle)
  (- (y-point (top-right-point rectangle)) (y-point ((bottom-left-point rectangle)))))




(define (make-rectangle bottom-left-point size)
  (cons top-right-point bottom-left-point))

(define (size width height)
  (cons width height))

(define (width rectangle)
  (car (size rectangle)))

(define (height rectangle)
  (cdr (size rectangle)))




