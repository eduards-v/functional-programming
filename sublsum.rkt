#lang racket
; Function sublsum that takes a list (of integers)
; as input and returns a list of sublists of it that sum to zero.

(define(sublsum l)
  (collect-sum-zero-lists(combinations l)))

; Collector function that traversing combinations list
; and returns only those with sum product of all its containing
; numbers evaluates to 0.

(define(collect-sum-zero-lists l)
  (cond
    [(null? l) null] ; do recursion until the end of product list of combinations function
    [(sum-zero-list? (car l) 0) ; check if current list values adds up to 0
     ; if true, add this list to returning collection and continue to the next iteration
     (cons (car l) (collect-sum-zero-lists(cdr l)))]
    ; if here, current list is not a candidate for returning, skip it and continue to next iteration
    [else (collect-sum-zero-lists(cdr l))]))

; Function to check if list values adds up to 0 in total.
; Returns true or false.
(define(sum-zero-list? l sumUp)
  (if(null? l)
     (= sumUp 0)
     (sum-zero-list? (cdr l)(+ sumUp (car l)))))


(sublsum (list 0 4 5 3 6 -3 2 -7))


; Version with map, works similarly,
; but can not skip adding to the product list
; and force to add empty list if list did not
; pass sum zero check. Requires extra function
; to remove all null lists before return final product.

(define(mapsublsum l)
  (find-sum-zero-lists(combinations l)))


(define (find-sum-zero-lists l)

  ; Map work flow: for every elemnt of the list l, product of (combinations some-list),
  ; do the condition inside lambda function to evaluate if current sublist of l
  ; is sum zero list, if yes, return it to the map, else return empty list.
  ; Once lambda execute condition for every sublist, map will return a list
  ; of what we returned in conditions, including a lists that sum up to zero
  ; and null lists for any other that not pass condition.
  ; Wrap returned list from the map with function to remove nulls.
  (remove-nulls(map (lambda(subl)
       (cond[(sum-zero-list? subl 0) subl][else '()]))
        l)))

; Remove nulls by conditioning each element of the passed list
; for null value and do not add them to the returning list. 
(define (remove-nulls l)
  (if(null? l)
     null
     (if (null? (car l))
          (remove-nulls (cdr l))
          (cons (car l)(remove-nulls (cdr l))))))


(mapsublsum (list 0 4 5 3 6 -3 2 -7))