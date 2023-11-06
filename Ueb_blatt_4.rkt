#lang racket

;; Aufgabe 1
(define (ganzzahlige-wuerzel? n )
  (if (integer? (sqrt n)) #t #f))

;;erledigt

;; Aufgabe 2

(define (fakt n)
  (define a (sqrt n) )
  (define (b) (sqrt (- (* a a) n)))
  (define (foo a) (- (* a a) n))
  
  (if (integer? b)
      (println "Fehler")
      (if (integer? (sqrt (foo (+ a 1))))
          (- a (sqrt (* b b)))
          (fakt n ) )))

;; Aufgabe 3
(define (kubiksumme x)
(define (summer x sum )
  (define (cuber x) (* x x x))
  (define (foo x sum )
    (if (= (remainder x 10) 0)
        (summer (quotient x 10) sum)
     (summer (quotient x 10) (+ sum (remainder x 10)))))

  (if (> x 10) (foo x sum) (if (= x 10) (cuber (+ sum 1)) (cuber (+ x sum))) ))
  (summer x 0))

(kubiksumme 101402)
(kubiksumme 34567)

;;erledigt
