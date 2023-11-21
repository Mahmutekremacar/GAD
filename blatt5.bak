#lang racket


(define (euler-n n)
  (define wert 1)
  (define (euler-iter n)
    (* wert n) + (euler-n (- n 1)))
  (if (>= n 0)  (euler-iter n) (/ 1 wert))
