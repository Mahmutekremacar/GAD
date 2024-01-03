#lang racket

#||#
#;(define (compress liste )
  (define (compress-iter liste num )
    (cond
      [(equal? (car liste) (car (cdr liste))) (compress-iter (cdr liste) (+ num 1))]
      [else (compress-iter (cons  (cdr liste) num ) 0)]) 
    )
  (compress-iter liste 0))

(println "Aufgabe 1")

(define (compress liste)
  (define (compress-iter liste vorher anzahl)
    (if (empty? liste)
        (if (= anzahl 1)
            (cons vorher '())
            (cons anzahl (cons vorher '()))
            )
        (if (equal? (car liste) vorher)
            (compress-iter (cdr liste) (car liste) (+ anzahl 1))
            (if (= anzahl 1)
                (cons vorher (compress-iter (cdr liste) (car liste) 1))
                (cons anzahl (cons vorher (compress-iter (cdr liste) (car liste) 1)))
                )
            )
        )
    )
  (if (empty? liste)
      '()
      (compress-iter (cdr liste) (car liste) 1))
  )




(compress '(a b c))
(compress '(a b b c c c))
(compress '(a b b c c c a b c))
(compress '(a a a a a a a a a a))

(newline)

(println "Aufgabe 2")

#;(define (expandiere sym-liste)
  (define (iter liste neuListe num)  
    (if (integer? (car liste))
     (if (>= num 0) (iter liste (cons (cadr liste ) neuListe ) (- (car liste) 1)) neuListe) (iter (cdr liste) neuListe num)))
  (iter sym-liste '() 0))



(define (expandiere sym-liste)
  (define (expandiere-iter sym-liste anzahl symbol)
    (if (empty? sym-liste)
        '()
        (if (= anzahl 1)
            (if (number? (car sym-liste))
                (expandiere-iter (cdr sym-liste) (car sym-liste) (cadr sym-liste))
                (cons (car sym-liste) (expandiere-iter (cdr sym-liste) 1 symbol))
                )
            (cons symbol (expandiere-iter sym-liste (- anzahl 1) symbol))
            )
        )
    )

  (expandiere-iter sym-liste 1 '())
  )

(expandiere '(7 b a 3 c))
(expandiere '(2 b 2 b c))

(display "Aufgabe 3")
(define (loeschen liste n)
  (if (> n 0) (loeschen (cdr liste) (- n 1)) liste))
(newline)
(loeschen '(2 3 4 5 6 7) 3)