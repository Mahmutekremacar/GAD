#lang racket
;;Aufgabe 1

(define (sin-approx x)
  (define (sonst x) (lambda (x) (- (* 3 (sin-approx (/ x 3))) (* 4 ( expt((sin-approx (/ x 3)) 3))))))
  (if (> x 0.1) (sonst x) x ))

(sin-approx 30)

;;Aufgabe 2

(define (count-perm x)
  (define (count-perm-iter x total)
    (if (> x 0) (count-perm-iter (- x 1) (* total x)) total))
  (count-perm-iter x 1))

(count-perm 2)
(count-perm 3)
(count-perm 5)
;erl

;;Aufgabe 3