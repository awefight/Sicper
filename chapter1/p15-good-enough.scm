
(load "p15-abs.scm")
(load "p15-square.scm")

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))