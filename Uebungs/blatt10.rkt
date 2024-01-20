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
;;Aufgabe 2

(define (sicheresPasswort passwort)
  (define (sicheresPasswortIter passwort i lower upper sym)
    (if (empty? passwort)
      (and (>= i 8) (> lower 0) (> upper 0) (>= sym 2))
      (cond ((char-upper-case? (car passwort)) (sicheresPasswortIter (cdr passwort) (+ i 1) lower (+ upper 1) sym))
            ((char-lower-case? (car passwort)) (sicheresPasswortIter (cdr passwort) (+ i 1) (+ lower 1) upper sym))
            (else (sicheresPasswortIter (cdr passwort) (+ i 1) lower upper (+ sym 1)))
            )
      )
    )
  (sicheresPasswortIter (string->list passwort) 0 0 0 0)
  )

(sicheresPasswort "aUljsb!f/KasDhf")
(sicheresPasswort "ABC123")

; erl

;;Aufgabe 3

(define (isAnagramm anagramm string2)
  (define (isAnagrammIter anagramm string2)
    (equal?
      (cleanList (sort (map (lambda (x) (char-downcase x)) anagramm) char<?))
      (cleanList (sort (map (lambda (x) (char-downcase x)) string2) char<?))
      ) 
    )

    (define (cleanList list)
        (if (empty? list)
          '()
          (if (char=? (car list) #\space)
            (cleanList (cdr list))
            (cons (car list) (cleanList (cdr list)))
            )
          )
      )
    (isAnagrammIter (string->list anagramm) (string->list string2))
  )

(isAnagramm "Desperation" "A rope ends it")
(isAnagramm "Eleven plus two" "Twelve plus one")


;;Aufgabe 4
(define (vektor-add . vektoren)
  (define (vektor-add-iter summe vektoren)
    (if (empty? vektoren)
      summe
      (if (empty? summe)
        (vektor-add-iter (car vektoren) (cdr vektoren))
        (vektor-add-iter (map (lambda (summen-vektor vektor) (+ summen-vektor vektor)) summe (car vektoren)) (cdr vektoren))
        )
      )
    )
  (vektor-add-iter '() vektoren)
  )
(vektor-add '(1 2) '(1 2) '(1 2 ))

(vektor-add '(1 2 3) '(4 5 6) '(7 8 9))

