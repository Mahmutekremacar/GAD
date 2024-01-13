#lang racket
;;Aufgabe 1
#;(define (removeFirstLast string)
  (define (removeIter string lst)
    (if (= string))))


(define (removeFirstLast string)
  (define n (string-length string))
  (substring string 1 (- n 1)))

(removeFirstLast "Hallo Welt")
(removeFirstLast "Algorithmik")

;;er

(define (sicheresPasswort passwort)
  (define (spec-char lstpass num) 
    (if (char-alphabetic? (first lstpass)) (spec-char (rest lstpass) num ) (spec-char (rest lstpass) (+ num 1))))
  (define (passIter passwort lstpass)
    (if (>= (length lstpass) 8 )
        (if (>= (spec-char (string->list passwort) 0) 2) #t #f) #f))
  (passIter passwort (string->list passwort)))

(sicheresPasswort "aUljsb!f/KasDhf")

;nicht erl