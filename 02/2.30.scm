(define (square x)
  (* x x))

(define (square-tree1 items)
  (cond 
    ((null? items) '())
    ((pair? items) (cons (square-tree1 (car items)) (square-tree1 (cdr items))))
    (else (square items))))

(define (square-tree2 items)
  (if (pair? items)
      (map square-tree2 items)
      (square items)))

(square-tree2
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))