#lang scheme
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(expt 3 3)
(expt 2 10)
