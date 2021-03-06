

(define (square x)
  (* x x))

(define (even? n)
  (=  (remainder n 2) 0))


;;; caculate (remainder base^n m) 
;; (define (expmod base expt m)
;;   (cond ((= expt 0) 1)
;; 	((even? expt) (remainder (square (expmod base (/ expt 2) m)) m))
;; 	 (else
;; 	  (remainder (* base (expmod base (- expt 1) m))  m))))

(define (expmod base expt m)
  (if (= expt 0)
      1
      (remainder (* base (expmod base (- expt 1) m)) m)))

;; (ex pmod 3 2 4)
;; (remainder (* 3 (expmod 3 1 4)) 4)
;; (remaider (* 3 (remainder (* 3 (expmod 3 0 4)) 4)) 4)
;; (remainder (* 3 (remainder (* 3 1) 4)) 4)
;; (remainder (* 3 (remainder 3 4)) 4)
;; (remainder (* 3 3) 4)
;; (remainder 9 4)
;; 1


;;; one time random test
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
    


(define (fast-prime-test num times)
  (cond ((= times 0) true)
	((fermat-test num)  (fast-prime-test  num (- times 1)))
	(else false)))
	
  
