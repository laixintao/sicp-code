#lang scheme
(define (count-change amount)
  (cc amount 5))

(define (cc amount kind-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kind-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kind-of-coins 1))
                 (cc (- amount
                        (first-denomination kind-of-coins))
                     kind-of-coins)))))

(define (first-denomination kinds-of-icons)
  (cond ((= kinds-of-icons 1) 1)
        ((= kinds-of-icons 2) 5)
        ((= kinds-of-icons 3) 10)
        ((= kinds-of-icons 4) 25)
        ((= kinds-of-icons 5) 50)))

(count-change 100)
