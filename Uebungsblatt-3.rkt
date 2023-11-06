#lang racket
(define (sinus-approx x)
  (if (< x 0.1)
      x
      (- (* 3 (sinus-approx (/ x 3))) (* 4 (* (sinus-approx (/ x 3)) (sinus-approx (/ x 3)) (sinus-approx (/ x 3)))))))


(sinus-approx 0.01)
(sinus-approx 45)