
(define (make-account balance password)
  (lambda(psw operation)
    (cond ((eq? psw password)
	   (cond((eq? operation 'withdraw)
		 (lambda(amount) (begin (set! balance (- balance amount)) balance)))
		((eq? operation 'deposit)
		 (lambda(amount) (begin (set! balance (+ balance amount)) balance)))))
	  (else (lambda(amount) 'incorrect-password)))))
		
(define peter-acc (make-account 100 'secrect-psw))

((peter-acc 'secrect-psw 'withdraw) 10)


(define (make-joint account origin-password -password)
  (lambda (given-password operation)
    (if (eq? given-password new-password)
	(account given-password mode)
	(display "Incorrect another password"))))
	





