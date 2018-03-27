#lang racket

; Function that place 1st element of the list
; to the end of the list.
(define (lcycle l)
  null)


; Function that place last element of the list
; to the front of the list.
(define (rcycle l)
  null)

; Higher order function to reverse the list.
; This function can be used to do
; left and right cycles of the list elements.
(define (rev l)
  (rev-impl l null))

; Reverse functionality implementation function.
; Recursively performs list reversing.
(define (rev-impl l m)
  (if (null? l)
      m
      (rev-impl(cdr l)(cons(car l)m))))

(rev (list 1 2 3 4 5))