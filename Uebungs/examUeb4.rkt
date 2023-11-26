#lang racket

(println "Aufgabe 1")

(define (ganzzahlige-wurzel? n)
  (if (integer? (sqrt n)) #t #f))
(ganzzahlige-wurzel? 25)
(ganzzahlige-wurzel? 24)
(newline)

(println "Aufgabe 2")

(define (fakt n)
  (define (fakt-iter n b2)
    (cond
      [(integer? (sqrt b2)) (- (ceiling (sqrt n)) (sqrt b2))]
      [else (fakt-iter n (- (expt (+ (ceiling (sqrt n )) 1) 2) n))]))
  (fakt-iter n (- (expt (ceiling (sqrt n)) 2) n))) 

(fakt 2183)
(fakt 25)
(fakt 100)
(newline)
;;nicht erl

(println "Aufgabe 3")

(define (primzahl? n)
  (cond
    [(= n 2) #t]
    [(= n 3) #t]
    [(= n 5) #t]
    [(= n 7) #t]
    [(= n 11) #t]
    [(even? n) #f]
    [(= (remainder n 3) 0) #f]
    [(= (remainder n 5) 0) #f]
    [(= (remainder n 7) 0) #f]
    [(= (remainder n 11) 0) #f]
    [else #t]))

(primzahl? 11) 
(primzahl? 26737) 
(primzahl? 200) 
(primzahl? 121)
(newline)

(println "Aufgabe 4")

(define (caesar-encrypt n k)
  (define (find-digit n  ans)
    (cond
      [(> n 0) (find-digit (quotient n 10) (+ ans 1))]
      [else ans]))
  
  (define (encrypt-iter n neu-n k  current-digit)
    
    (if (>  current-digit   (find-digit n  2)) neu-n
        (if (= (remainder (+ (remainder n 10) k) 10) 0) (encrypt-iter (quotient n 10) neu-n k  (+ current-digit 1) )
            (encrypt-iter (quotient n 10) (+ neu-n (* (remainder (+ (remainder n 10) k) 10) (expt 10 current-digit))) k  (+ current-digit 1)))))
  (encrypt-iter n 0 k  0))  

(caesar-encrypt 1234 1) 
(caesar-encrypt 7901 2) 
(caesar-encrypt 987 1)
(caesar-encrypt 987694 1)




