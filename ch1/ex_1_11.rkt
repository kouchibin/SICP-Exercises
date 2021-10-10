#lang racket
(define (f n)
    (define (f-iter n-1 n-2 n-3 counter n)
        (if (> counter n)
            n-1
            (f-iter (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ counter 1) n)
        )
    )

    (if (< n 3)
        n
        (f-iter 2 1 0 3 n)
    )
)