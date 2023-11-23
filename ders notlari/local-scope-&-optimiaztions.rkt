#lang racket
#|Local refers to the scope of the function|#
(define (sum x y )
  (local
    [(define ans (+ x y))
     (define a 3)] ans))

(sum 2 3)

(define (max-val lon)
  (cond
    [(empty? (rest lon)) (first lon)]
    [else (max (first lon) (max-val (rest lon)))]))

(max-val (list 9 2 3 5 12))
  