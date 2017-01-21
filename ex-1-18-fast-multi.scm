#lang scheme
(define (fast-multi a b)
  (define (iter product number count)
    (cond ((= count 0) product)
          ((even? count) (iter product (double number) (halve count)))
          (else (iter (+ product number) number (- count 1)))))
  (define (double n) (* n 2))
  (define (halve n) (/ n 2))
  (iter 0 a b))

(fast-multi 4 7)
(fast-multi 12 12)
