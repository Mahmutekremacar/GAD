#lang racket

#|How to use define-struct: |#

(define-struct card (type value))

(define demo (make-card 'hearts 7))

demo
(newline)
(card-type demo)
(newline)
(card-value demo)
(newline)

(define (create-card type value)
  (make-card type value))


(newline)
(equal? (create-card 'hearts 7) demo )