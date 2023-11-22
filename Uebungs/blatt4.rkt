#lang racket


;; Aufgabe 1

(define (ganzzahlige-wurzel? n)
  (if (integer? (sqrt n)) #t #f))
(ganzzahlige-wurzel? 25)
(ganzzahlige-wurzel? 24)
;erl
(println "----------")

;; Aufgabe 2

#;(define (fakt n)
  (define a (sqrt n))
  (define (b2 a n) (- (* a a) n))
  (define (iter n a b2)
    (if (integer? (sqrt b2)) (- a (sqrt b2)) (iter n (+ a 1) (b2 (+ a 1) n))))
 
  )

#;(fakt 2183) 

;;Aufgabe 4
(define (kubiksumme n )
  (define (zahl-iter n total) 
  (if (= n 0 ) total (zahl-iter (quotient n 10) (+ (remainder n 10) total))))
  (expt (zahl-iter n 0) 3))

(kubiksumme 101042)

(kubiksumme 34567)
(println "----------")
;erl




;; Aufgabe 5

(define (caesar_encrypt n k)
  (define (iter n neuN digit k)
    (if (= n 0) neuN (iter (quotient n 10) (* (remainder n 10) digit)))
    )
  ) 




