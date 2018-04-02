#lang racket

; Function that returns a list of majority elements of each index from 3 input lists.
(define (maj x y z)
  (if (null? x)
      null
      ; Build a list to return. Call function compare-three to get common element
      ; from first element of each list. Concatinate it with recursive call
      ; of this function with the remainder of the list.
      (cons (compare-three (car x)(car y)(car z)) (maj (cdr x)(cdr y)(cdr z)))
  )) 

; Function that compares 3 values for majority.
; There is 8 possibilities for comparing 3 numbers of 0 and 1 to get majority:
;   0 0 0
;   0 0 1
;   0 1 0
;   1 0 0
;   0 1 1
;   1 0 1
;   1 1 0
;   1 1 1
; It is enough to compare first and second to determine what to return.
; If x is equal to y, return x because 2 out of 3 input numbers are same.
; If x is not equal to y, then return z which will in anyone indicate the majority number.
(define (compare-three x y z)
  (if (= x y)
      x
      z))

; Call the function for test.
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))




