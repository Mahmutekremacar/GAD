#lang racket

(define aufgabe1x
  (- (/ (+ 9 6) (*(- 3 1) 5)) (* (- (/ 7 8) 2) 4)))
aufgabe1x

(define (g u v w)
  (+ (/ (- v (* 7 u)) (- u w ) (/ (+ u v) (- (* w 6) v )))))
(println "--------------")
(g 1 2 3)
(g 3 11 2)


(define (my-max x y)
 (if (> x y)
     x
     y)) 

(println "--------------")
(my-max 5 2)
(my-max 10 23)
(my-max 4 4)

(define (groesser-zehn? x)
  (if (> x 10)
      #t
      #f))
(println "--------------")
(groesser-zehn? 4)
(groesser-zehn? 10)
(groesser-zehn? 15)

(define (groesserp? x y z)
  (if (> (+ x y ) z )
      #t
      #f))
(println "--------------")

(groesserp? 4 5 6)
(groesserp? 2 12 10)
(groesserp? 3 3 6)


(define (squared-max x y z)
  (define (quadrat b)
    (* b b))
  (if (> (quadrat x) (quadrat y) )
      (if (> (quadrat x) (quadrat z)) (quadrat x) ( quadrat z))
      (if (> (quadrat y) (quadrat z)) (quadrat y) ( quadrat z))))

(println "--------------")
(squared-max 10 21 -11)
(squared-max 25 26 10)


(define (max3 x y z)
(my-max (my-max x y) z))


(println "--------------")
(max3 17 22 16)

