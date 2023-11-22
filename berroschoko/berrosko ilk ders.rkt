#lang racket
#|(+ 5 8)
(- 100 334)
(* 5 99)
(/ 10 5)

5+ (8 * 8) 
(+ 5 (* 8 8 ))|#
(sin 2)
(expt 10 4)
(sqrt 16)
(abs -23)

(define x (* 5 100))

#|Berechnung der Flaeche
eines Kreises|#

#| pi* r * r|#
(define pi 3.14159)
(define r 5)
(define umfang (* pi r r))
umfang
pi
r

(define (quadrat x)(* x x ))
(* (quadrat 2) 2)

(define (quadratsumme x y)
  (+ (quadrat x)(quadrat y)))

(quadratsumme 6 8)

(define (iter x)
  (define (printer x) (println x) + (+ x 1))
  (if (> 100 x)
      (iter (printer x))
      (println x)))

(define (fonksiyon x)
  (* x x))

(fonksiyon 5)
