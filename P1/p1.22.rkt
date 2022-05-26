#lang racket
(define (runtime) (current-milliseconds))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (cond ((prime? n) (report-prime (- (runtime) start-time)))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
;---------------------------------------------------
(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n) (= n (smallest-divisor n)))
;----------------------------------------------------
(define (search-for-primes value counter)
  (cond ((> counter 0)
         (cond ((prime? value) (timed-prime-test value)
                               (search-for-primes (+ value 2) (- counter 1)))
               (else (search-for-primes (+ value 2) counter))))))

;(search-for-primes 100000001 3)
;(search-for-primes 1000000001 3)
;(search-for-primes 10000000001 3)
;(search-for-primes 100000000001 3)
;(search-for-primes 1000000000001 3)

(provide timed-prime-test)