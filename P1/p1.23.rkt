#lang racket
(require "p1.22.rkt")

(define (runtime) (current-milliseconds))

(define (timed-prime-test-v2 n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (cond ((prime? n) (report-prime (- (runtime) start-time)))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
;----------------------------------------------------
(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= n (smallest-divisor n)))

(define (next n) (if (= n 2) 3 (+ n 2)))

;-----------------------------------------------------
;(timed-prime-test 100000007)
;(timed-prime-test-v2 100000007)
;(timed-prime-test 100000037)
;(timed-prime-test-v2 100000037)
;(timed-prime-test 100000039)
;(timed-prime-test-v2 100000039)
(timed-prime-test 1000000007)
(timed-prime-test-v2 1000000007)
(timed-prime-test 1000000009)
(timed-prime-test-v2 1000000009)
(timed-prime-test 1000000021)
(timed-prime-test-v2 1000000021)
(timed-prime-test 10000000019)
(timed-prime-test-v2 10000000019)
(timed-prime-test 10000000033)
(timed-prime-test-v2 10000000033)
(timed-prime-test 10000000061)
(timed-prime-test-v2 10000000061)
(timed-prime-test 100000000003)
(timed-prime-test-v2 100000000003)
(timed-prime-test 100000000019)
(timed-prime-test-v2 100000000019)
(timed-prime-test 100000000057)
(timed-prime-test-v2 100000000057)
(timed-prime-test 1000000000039)
(timed-prime-test-v2 1000000000039)
(timed-prime-test 1000000000061)
(timed-prime-test-v2 1000000000061)
(timed-prime-test 1000000000063)
(timed-prime-test-v2 1000000000063)