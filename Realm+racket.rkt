#lang racket
(require 2htdp/universe 2htdp/image)

#;(define (+rat x y)
(konstr-rat (+ (* (zaehler x) (nenner y))
(* (zaehler y) (nenner x)))
(* (nenner x) (nenner y))))

(struct student (name id# dorm) )

(define freshman1 (student 'joe 0.001 'dormA))


;(student-id# freshman1)

(define mimi (student 'Mimi 1234 'NewHall))
(define nicole (student 'Nicole 5678 'NewHall))
(define rose (student 'Rose 8765 'NewHall))
(define eric (student 'Eric 4321 'NewHall))
(define in-class (list mimi nicole rose eric))
;(student-id# (third in-class))




