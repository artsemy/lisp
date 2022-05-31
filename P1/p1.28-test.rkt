#lang racket
(require rackunit "p1.28.rkt")
;561 1105 1729 2465 2821 6601

(check-equal? (miller-test 561) false "561")
(check-equal? (miller-test 1105) false "1105")
(check-equal? (miller-test 1729) false "1729")
(check-equal? (miller-test 2465) false "2465")
(check-equal? (miller-test 2821) false "2821")
(check-equal? (miller-test 6601) false "6601")

(check-equal? (miller-test 16) false "16")
(check-equal? (miller-test 17) true "17")