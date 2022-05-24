#lang racket
(require rackunit "p1.16.rkt")

(check-equal? (expt 2 0) 1 "2^0")
(check-equal? (expt 2 1) 2 "2^1")

(check-equal? (expt 2 5) 32 "2^5")
(check-equal? (expt 2 6) 64 "2^6")
(check-equal? (expt 2 7) 128 "2^7")
(check-equal? (expt 2 8) 256 "2^8")