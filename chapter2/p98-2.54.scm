
(define (equal? x y)
    (cond ((and (symbol? x) (symbol? y))
            (symbol-equal? x y))
          ((and (list? x) (list? y))
            (list-equal? x y))
          (else
            (error "wrong type" x y))))

(define (symbol-equal? x y)
    (eq? x y))


(define (list-equal? x y)
  (cond((and (null? x) (null? y)) true)
       ((or (null? x) (null? y)) false)
       ((eq? (car x) (car y)) (list-equal? (cdr x) (cdr y)))
       (else false)))


