#lang racket

; List x determines if output list elements are from y or z.
; If element of x = 1, return value from y at same position,
; otherwise return value from z.

(define (chse x y z)
  (if(null? x)
     null
     ; Concatinate result from determine function with result of recursion call.
     ; Stop recursion when list x is null and return output list.
     (cons (determine (car x)(car y)(car z))(chse (cdr x)(cdr y)(cdr z)))))

; Compare x to 1, return y if equal, otherwise z
(define(determine x y z)
  (if(= x 1)
     y
     z))

(chse (list 0 1 0 1 0 1 0 1) (list 1 1 1 1 1 1 1 1) (list 0 0 0 0 0 0 0 0))
