#lang racket



;;Aufgabe 1
(println "Aufgabe 1")


(define x (* (- (/ (+ 9 6) (* (- 3 1) 5)) (- (/ 7 8) 2)) 4))  

x
(newline)

;;Aufgabe 2
(println "Aufgabe 2")

(define (g u v w)
  (+ (/ (- v (* 7 u)) (- u w)) (/ (+ u v) (- (* w 6) v ))))

(g 1 2 3)
(g 3 11 2)
(newline)

;;Aufgabe 3 
(println "Aufgabe 3")

(define (my-max x y)
  (cond
    [(> x y) x]
    [(> y x) y]
    [else x]))

(my-max 5 2)
(my-max 10 23)
(my-max 4 4)
(newline)

;;Aufgabe 4
(println "Aufgabe 4")

(define (groesser-zehn? x)
  (cond
    [(> x 10) #t]
    [(= x 10) x]
    [(< x 10) #f]))
(groesser-zehn? 4)
(groesser-zehn? 10)
(groesser-zehn? 15)
(newline)

;;Aufgabe 5
(println "Aufgabe 5")

(define (groesserp? x y z)
  (cond
    [(> (+ x y) z) #t ]
    [(= (+ x y) z) z  ]
    [(< (+ x y) z) #f]))

(groesserp? 4 5 6)
(groesserp? -3 12 10)
(groesserp? 3 3 6)
(newline)

;;Aufgabe 6
(println "Aufgabe 6")

(define (squared-max x y z)
  (if (> (expt x 2) (expt y 2))
      (if (> (expt x 2) (expt z 2)) (expt x 2)
          (expt z 2))
      (if (> (expt y 2) (expt z 2)) (expt y 2)
          (expt z 2))))

(squared-max 2 -3 5)
(squared-max 2  7 5)
(squared-max 6 -3 5)
(newline)








