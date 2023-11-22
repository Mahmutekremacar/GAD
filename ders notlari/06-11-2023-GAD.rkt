#lang racket


#;(define (ggt a b )
  (if (= b 0)
      a
      (ggt b (remainder a b))))

;;(ggt 40 6)
;;(ggt 6 4)

#;(define (quotient/remainder a b)
  (values (quotient a b) (remainder a b )) )
;(quotient/remainder 40 3)

#;(define (groesser-als-fuenf a)
  (define (foo a )
    (groesser-als-fuenf (+ a 1))+ (println"nich gross genug"))
  (if (<= a 5)
      (foo a)
      (println a)))

;(groesser-als-fuenf 1)

(define (quadrat x)
  (* x x))

(define (expmod-pow b e m)
(cond ((= e 1) (modulo b m))
((odd? e) (modulo (* b (expmod-pow b (- e 1) m)) m))
(else (expmod-pow (modulo (quadrat b) m) (/ e 2) m))))

(define (fermat-test n)
(define (versuch a)
(= (expmod-pow a n n) a))
(versuch (+ 1 (random (- n 1)))))
(define (schnell-primzahl? n versuche)
(cond ((= versuche 0) #t)
((fermat-test n) (schnell-primzahl? n (- versuche 1)))
(else #f)))

(fermat-test 4000000000)