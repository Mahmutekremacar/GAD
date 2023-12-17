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

(define (expandiere sym-liste)
  (define (expandiere-iter sym-liste num)
    (cond
      [(number? (car sym-liste))]))
  )
