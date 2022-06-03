#lang racket
(require rackunit "p1.33.rkt")

(check-equal? (sum-sq-prime 2 10) 87 "2^2 + 3^2 + 5^2 + 7^2")
(check-equal? (mult-pos-prime-n 10) 189 "1 * 3 * 7 * 9")