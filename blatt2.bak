#lang racket
#|
the given number must be diminished step by step
|#

#;(define (nat-wuerzel summe y x)
  
  (if (>= summe (* x x))
       summe
       (nat-wuerzel (+ summe (- (* 2 y) 1)) (+ y 1) x)))

#;(nat-wuerzel 0 1 6)

#|Unter ist die richtige antwort|#

(define (nat-wuerzel x)
  (define (nat-iter summe y x)
  
  (if (>= summe (* x x))
       summe
       (nat-iter (+ summe (- (* 2 y) 1)) (+ y 1) x)))
  (nat-iter 0 1 x))

(nat-wuerzel 6)

#;(define (zahl-umdrehen x)
  (define digit 1)
  (define (foo x)
    (ziff (/ x 10)) + (+ 1 digit))
  (define (ziff x )
    
      ((if (> x 9)
           (foo x)
           1)))
  
  (define (rev x y mal)
    (ziff x)
    +
    (if (= mal 1)
        (+  (remainder x 10)  y )
    (+ (* (remainder x 10) mal ) y))
    )
  
  (define (zahl-iter x y mal)
    (if (< x  10 )
        (+ x y)
        (zahl-iter (/ (- x (remainder x 10) ) 10) (rev x y mal) (* mal 10))))
  (zahl-iter x 0 1))
  

#;(zahl-umdrehen 1234)
;; ziff ters cevire loopa uygula
;;

