#lang racket
(require rackunit "p1.11.rkt")

(check-equal? (funk-v1 0) 0 "recursive 0")
(check-equal? (funk-v2 0) 0 "iterative 0")

(check-equal? (funk-v1 5) 11 "recursive 5")
(check-equal? (funk-v2 5) 11 "iterative 5")