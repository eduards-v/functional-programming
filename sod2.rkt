#lang racket

; Function that outputs a list where:
; value 1 is placed if 3 input lists contains
; odd number of 1s at the same index, otherwise value 0 is placed.

(define (sod2 x y z)
  (if (null? x)
      null
      (cons (odd? (car x)(car y)(car z))(sod2 (cdr x)(cdr y)(cdr z)))))

;   0 0 0
;   0 0 1 -> return 1
;   0 1 0 -> return 1
;   1 0 0 -> return 1
;   0 1 1
;   1 0 1
;   1 1 0
;   1 1 1 -> return 1

; Check if x == y, if so result will be z.
; Else check if z is 0 or 1,
; return 0 if z == 1, else return 1.

(define (odd? x y z)
  (if(= x y)
     z
     (if(= z 1)
        0
        1)))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

