#lang racket
(require rackunit "p1.27.rkt")
;561 1105 1729 2465 2821 6601

(check-equal? (fermat-test 561) true "561")
(check-equal? (fermat-test 1105) true "1105")
(check-equal? (fermat-test 1729) true "1729")
(check-equal? (fermat-test 2465) true "2465")
(check-equal? (fermat-test 2821) true "2821")
(check-equal? (fermat-test 6601) true "6601")

(check-equal? (fermat-test 16) false "16")
(check-equal? (fermat-test 17) true "17")
