#lang racket/base

(require rackunit)

(define (square n) (* n n))
(define (min p q) (if (< p q) p q))

(define (answer x y z)
    (-
        (+
            (square x)
            (square y)
            (square z))
        (square (min (min x y) z))))

(check-equal? (answer 5 4 3) 41 "x > y > z")
(check-equal? (answer 5 4 3) 41 "x > z > y")
(check-equal? (answer 3 5 4) 41 "y > z > x")
(check-equal? (answer 5 4 3) 41 "y > x > z")
(check-equal? (answer 4 3 5) 41 "z > x > y")
(check-equal? (answer 5 4 3) 41 "z > y > x")
