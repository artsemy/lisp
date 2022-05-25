#lang racket
(require rackunit "p1.19.rkt")

(check-equal? (fib 0) 0 "fib(0)")
(check-equal? (fib 1) 1 "fib(1)")
(check-equal? (fib 2) 1 "fib(2)")
(check-equal? (fib 3) 2 "fib(3)")
(check-equal? (fib 4) 3 "fib(4)")
(check-equal? (fib 5) 5 "fib(5)")
(check-equal? (fib 6) 8 "fib(6)")
(check-equal? (fib 7) 13 "fib(7)")
(check-equal? (fib 8) 21 "fib(8)")
(check-equal? (fib 9) 34 "fib(9)")
(check-equal? (fib 10) 55 "fib(10)")