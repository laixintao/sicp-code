#lang scheme
(define (fast-expt number n)
  (define (iter product number count)
    (cond ((= count 0) product)
          ((even? count) (iter product (* number number) (/ count 2)))
          (else (iter (* product number) number (- count 1)))))
  (iter 1 number n))

(fast-expt 2 10)
(fast-expt 3 3)
