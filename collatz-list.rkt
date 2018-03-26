#lang racket

; Function that takes in positive number as a parameter
; and return a list that builds up until input parameter
; value becomes 1. Function calls itself recursively until
; this condition is met.
(define (collatz-list x)
  (if (= x 1) ; Check if value of x is 1
      ; If initial x is 1, return list (1).
      ; Else this statement is terminating recursion
      ; and 1 is added to the list of previouse recursions.
      (cons x null) ; null is just a filler for cons function, as there is no other parameter
      ; Check if x is even or odd
      (if (odd? x)
          ; Construct a list with x as a first parameter and
          ; recursively get subsiquent list with values as a second parameter.
          (cons x (collatz-list(+ (* x 3) 1)))
          (cons x (collatz-list(/ x 2))))))

(define (odd? x)
  (if (= (modulo x 2) 0)
      #f
      #t))

(collatz-list 5)
(collatz-list 9)
(collatz-list 2)
