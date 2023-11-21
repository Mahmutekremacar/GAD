#lang racket
#;(define (double v)
  ((if (string? v) string-append +) v v))

#;(define (divOrmul v)
  ((if (> v 5) / *) v v))

(define (twice f v )
  (f (f v)))

#;(define (louder s)
  (string-append s "!"))

#;(twice louder "hello")



#;(lambda (s) (string-append s "!"))

#;(twice (lambda (s) (string-append s "!"))
         "hello")
#;(twice (lambda (s) (string-append s "?!"))
         "hello")


(define (converse s)
  (define (starts? s2) ; local to converse
    (define spaced-s2 (string-append s2 " ")) ; local to starts?
    (string-prefix? s spaced-s2))
  (cond
    [(starts? "hello") "hi!"]
    [(starts? "goodbye") "bye!"]
    [else "huh?"]))

(define (make-add-suffix s2)
  (lambda (s) (string-append s s2)))

(define louder (make-add-suffix "!"))

(define less-sure (make-add-suffix "?"))
;;--------

;(twice less-sure "really")

;(twice louder "really")

;;--------

;(converse "hello world")

;(converse "hellonearth")

;(converse "goodbye friends")

;(converse "urp")

;;--------

(map sqrt (list 1 4 9 16))

(map (lambda (i)
         (string-append i "!"))
       (list "peanuts" "popcorn" "crackerjack"))




