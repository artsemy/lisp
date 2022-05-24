#lang racket
(require rackunit "p1.12.rkt")

(check-equal? (p-triangle 0 0) 1 "[0, 0]")
(check-equal? (p-triangle 4 0) 1 "[4, 0]")
(check-equal? (p-triangle 0 3) 0 "[0, 3]")
(check-equal? (p-triangle 3 (- 5)) 0 "[0, -5]")
(check-equal? (p-triangle (- 1) 0) 0 "[-1, 0]")
(check-equal? (p-triangle 5 5) 1 "[5, 5]")
(check-equal? (p-triangle 4 2) 6 "[4, 2]")