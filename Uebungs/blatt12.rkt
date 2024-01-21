#lang racket
;;Aufgabe 1((define (wort-sortieren wort)
(define (wort-sortieren wort)
  (define (wort-sortieren-iter wort liste)
    (if (empty? wort)
      liste
      (wort-sortieren-iter (cdr wort) (addChar (car wort) liste))
      )
    )

(define (addChar c liste)
  (if (empty? liste)
    (list c)
    (if (char>? (char-downcase (car liste)) (char-downcase c))
      (append (list c) liste)
      (append (list (car liste)) (addChar c (cdr liste)))
      )
    )
  )

  (list->string (wort-sortieren-iter (string->list wort) '()))
  )

(wort-sortieren "Guten Tag")
;;Aufgabe2

(define (string-enthalten satz wort)
 (define (string-enthalten-iter satz wort satz-length wort-length)
  (if (< satz-length wort-length)
      #f
      (if (equal? wort (substring satz 0 wort-length))
          #t
          (string-enthalten-iter (substring satz 1) wort (- satz-length 1) wort-length)
          )
      )
  )
  (string-enthalten-iter satz wort (length (string->list satz)) (length (string->list wort)))
)
(string-enthalten "Heute ist Dienstag" "Dienstag")

;;Aufgabe 3

(define (tokenizer satz token)
  (define (tokenizer-iter satz token temp liste)
    (if (empty? satz)
      (if (empty? temp)
        liste
        (append liste (list (list->string temp)))
        )
      (if (char=? (car satz) (car token))
        (tokenizer-iter (cdr satz) token '() (append liste (list (list->string temp))))
        (tokenizer-iter (cdr satz) token (append temp (list (car satz))) liste)
        )
      )
    )
  (tokenizer-iter (string->list satz) (string->list token) '() '())
  )

(tokenizer "Happy new year!" "e")

;;Aufgabe 4

(define (vector-add vector1 vector2)
  
  
  
  

  (define (vector-add-iter vector1 vector2  )
    (if (> (vector-length vector1) (vector-length vector2))
        (vector-add-iter vector1 (vector-append vector2 #(0)))
        (if (< (vector-length vector1) (vector-length vector2))
            (vector-add-iter (vector-append vector1 #(0)) vector2 )
            (vector-map + vector1 vector2))))
  
  (vector-add-iter vector1 vector2))

(vector-add #(1 2 3) #(4 5 6))

;;Aufgabe 5

(define (bubble-sort vec comparator)
  (vector-sort vec comparator))

(bubble-sort
(vector 9 1 8 4 8 1 5 9 23 3 22 0) >)
(bubble-sort
(vector 9 1 8 4 8 1 5 9 23 3 22 0) <)


;;Aufgabe 6

(define (vector-apply start operator vecVal vecIndecies)
  (define (iter start operator vecVal vecIndecies times sum)
    (if (= 0 times)
         sum
         (iter start operator vecVal vecIndecies (- times 1) (operator sum start (vector-ref))))))
