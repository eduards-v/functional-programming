#lang racket

; Function that place 1st element of the list
; to the end of the list.
; How it works: 1. Get 1st element of an input list, (car l)
;                  Output: (1)
;               2. Get reverse list of the rest of the elements
;                  from an input list, (rev(cdr l))
;                  Output: (5 4 3 2)
;               3. Concat lists from step 1 and 2, (cons(car l)(rev(cdr l)))
;                  Output: (1 5 4 3 2)
;               4. Revererse the product list of step 3, (rev(cons(car l)(rev(cdr l))))
;                  Output: (2 3 4 5 1)
(define (lcycle l)
  (rev(cons(car l)(rev(cdr l)))))


; Function that place last element of the list
; to the front of the list.
; How it works: 1. Reverse an input list and define a name for it, (define l-rev(rev l))
;                  Output: (5 4 3 2 1)
;               2. Get first element of the reversed list, (car l-rev)
;                  Output: (5)
;               3. Reverse back the rest of the elements from reversed
;                  input list, (rev(cdr l-rev))
;                  Output: (1 2 3 4)
;               4. Concat lists from step 2 and 3, (cons(car l-rev)(rev(cdr l-rev)))
;                  Output: (5 1 2 3 4)
(define (rcycle l)
  (define l-rev(rev l))
  (cons(car l-rev)(rev(cdr l-rev))))

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
(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))