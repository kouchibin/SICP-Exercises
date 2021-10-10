#lang racket
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))
(define (* a b)
  (define (*-iter a b accu)
    (cond [(= b 0) accu]
          [(even? b) (*-iter (double a) (halve b) accu)]
          [else (*-iter a (- b 1) (+ accu a))])
  )
  (*-iter a b 0))