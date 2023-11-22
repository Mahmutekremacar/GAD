#lang racket
(konstr-rat <z> <n>)

;(zaehler <x>)

;(nenner <x>)

#;(define (+rat x y)
(konstr-rat (+ (* (zaehler x) (nenner y))
(* (zaehler y) (nenner x)))
(* (nenner x) (nenner y))))
#;(define (-rat x y)
(konstr-rat (- (* (zaehler x) (nenner y))
(* (zaehler y) (nenner x)))
(* (nenner x) (nenner y))))
#;(define (*rat x y)
(konstr-rat (* (zaehler x) (zaehler y))
(* (nenner x) (nenner y))))
#;(define (/rat x y)
(konstr-rat (* (zaehler x) (nenner y))
(* (nenner x) (zaehler y))))
#;(define (=rat? x y)
(= (* (zaehler x) (nenner y))
(* (zaehler y) (nenner x))))

;;
(define x '(a b c d e f g))
(cdr (car x))