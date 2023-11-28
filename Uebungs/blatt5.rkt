#lang racket


;;Aufgabe 1
(define (euler-n n)
  (define (fakt n total)
    (if (<= n 0) total (fakt (- n 1.0) (* total n)))
    )
  (define (eu-iter n neuN e)
    (if (< neuN 0) e (eu-iter n (- neuN 1.0) (+ e (/ 1.0 (fakt neuN 1.0)))))
    )
  (eu-iter n n 0)
  )


(euler-n 0) 
(euler-n 1)
(euler-n 2)

(euler-n 27) 

;;erl


;;Aufgabe 2





 