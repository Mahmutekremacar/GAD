#lang racket
;;Aufgabe 1
#;(define (werte-aus term zuweisung)
  (define (prozedur term)
    (cond ((equal? (car term) '+) +)
          ((equal? (car term) '-) -)
          ((equal? (car term) '*) *)
          ((equal? (car term) '/) /)
          )
    )
   
  (define (werte-aus-iter term zuweisung summe) 
    (if (empty? zuweisung) summe
        (if (equal? (car (cdr term)) (car (car zuweisung)))
            (if (equal? (cddr term) (cdr (cadr zuweisung)))
                (werte-aus-iter term '() ((prozedur term) (car (car zuweisung)) (cdr (cadr zuweisung)) ))
                (werte-aus-iter term '() ((prozedur term) (car (car zuweisung)) (cddr term) )))
            (werte-aus-iter term '() ((prozedur  term) (car (cdr term)) (cdr (cadr term)) )))))
            
           
            
  (werte-aus-iter term zuweisung 0)
  )

(define (werte-aus term zuweisung)
  (define (prozedur term)
    (cond ((equal? (car term) '+) +)
          ((equal? (car term) '-) -)
          ((equal? (car term) '*) *)
          ((equal? (car term) '/) /)
          )
    )

  (define (getValue var zuweisung)
    (if (number? var)
      var
      (if (equal? var (car (car zuweisung)))
        (cadr (car zuweisung))
        (getValue var (cdr zuweisung))
        )
      )
    )

  (define (werte-aus-iter operator term zuweisung result)
    (if (empty? term)
      result
      (if (null? result)
        (werte-aus-iter operator (cdr term) zuweisung (getValue (car term) zuweisung))
        (werte-aus-iter operator (cdr term) zuweisung (operator result (getValue (car term) zuweisung)))
        )
      )
    )

  (werte-aus-iter (prozedur term) (cdr term) zuweisung '())
  )
(werte-aus '(+ x 2) '((x 7)))
(werte-aus '(* x y) '((x 3) (y 5)))

;;Aufgabe 2

#;(define (deep-memq list value)
 (cond
  [(empty? list) false]
  [(= (first list) value) true]
  [else (deep-memq (rest list) value)])) 

(define (deep-memq element liste)
  (if (empty? liste)
    false
    (if (list? liste)
      (or (deep-memq element (car liste)) (deep-memq element (cdr liste)))
      (if (eq? element liste)
        true
        false
        )
      )
    )
  )
(deep-memq 2 '(1 2 3))
(deep-memq 3 '(1 (2 (4 5) 3)))
(deep-memq 3 '((1 5) (2 (7 2 6 4 (4 5) (2 4)))))

;;Aufgabe 3
(define (alle-kleineren grenze liste)
    (if (empty? liste)
      '()
      (if (list? liste)
        (append (alle-kleineren grenze (car liste)) (alle-kleineren grenze (cdr liste)))
        (if (< liste grenze)
          (list liste)
          '()
          )
        )
      )
  )

(alle-kleineren 4 '((7 2 (3 40)) (3 4 (2 3 (9)))))
(alle-kleineren 3 '((3 4 (6 3 (9)) 8))) 
(alle-kleineren 22 '((19 20) (21 22) (23 24))) 