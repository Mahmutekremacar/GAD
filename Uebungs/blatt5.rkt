#lang racket


(display "Aufgabe 1")
(define (euler-n n)
  (define (fakt n total)
    (if (<= n 0) total (fakt (- n 1.0) (* total n)))
    )
  (define (eu-iter n neuN e)
    (if (< neuN 0) e (eu-iter n (- neuN 1.0) (+ e (/ 1.0 (fakt neuN 1.0)))))
    ) 
  (eu-iter n n 0)
  )

(newline)
(euler-n 0) 
(euler-n 1)
(euler-n 2)

(euler-n 27) 

;;erl

(display "Aufgabe 2")

(define (ackermann n m)
  (cond ((= n 0) (+ m 1))
        ((= m 0) (ackermann (- n 1) 1))
        (else (ackermann (- n 1) (ackermann n (- m 1)))))
  )

(newline)
(ackermann 0 0) ;1
(ackermann 0 1) ;2
(ackermann 4 0) ;13
(ackermann 3 1) ;13
(ackermann 3 9) ;4093

#;(define (schritt n sch)
    (cond
      [(> n 0) (schritt (quotient n 10) (+ 1 sch))]
      [else sch ]))
(display "Aufgabe 4")

(define (maxziffer n)
  (define (max-iter n ans)
   (if (> (remainder n 10) ans) (max-iter ( quotient n 10) (remainder n 10)) ans))
  (max-iter (quotient n 10) (remainder n 10)))
(newline)
(maxziffer 3475376) 
 