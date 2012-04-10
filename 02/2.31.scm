(define (square x)
  (* x x))

(define (tree-map1 function tree)
  (cond 
    ((null? tree) '())
    ((pair? tree) (cons (tree-map1 function (car tree)) (tree-map1 function (cdr tree))))
    (else (function tree))))

(define (tree-map2 function tree)
  (if (pair? tree)
      (map (lambda (x) (tree-map2 function x)) tree)
      (function tree)))

(define (square-tree tree) 
  (tree-map2 square tree))

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))

