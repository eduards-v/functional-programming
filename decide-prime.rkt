#lang racket

; Higher order function.
; Takes a single natural number.
(define (decide-prime x)
  ; Recursion application function.
  (decide-prime-helper x (- x 1)))

; Function that controls itteration and
; boolean logic for deciding prime.
; Takes 2 parameters, target number (x) to check
; for prime and divider number (y) that is less than
; a target number.
(define (decide-prime-helper x y)
  ; Check if y decremented to 1 via recursion,
  ; if so return true, target number is a prime.
  (if (= y 1)
      #t
      ; Check if modulus of x and y is 0, i.e.,
      ; no remainder is left after deviding x by y.
      ; If remainder is 0, target number is not prime,
      ; return false.
      (if (= 0 (modulo x y))
          #f
          ; Recursive function call is a way of looping
          ; until certain condition is met, i.e.,
          ; finds that target number is not prime
          ; or devider reaches value of 1 indicating
          ; that number is prime.
          (decide-prime-helper x (- y 1)))))


; Calling higher order function
(decide-prime 13)
(decide-prime 23)
(decide-prime 24)