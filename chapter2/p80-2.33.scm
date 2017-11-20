


(define (accumulate operation initial seqs)
  (cond ((null? seqs) initial)
	(else
	 (operation
	  (car seqs)
	  (accumulate operation initial (cdr seqs))))))
	 


(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x)  y))
	      '()
	      sequence))

(define (append seq1 seq2)
  (accumulate cons
	      seq2
	      seq1))
			     


;; (define (append sq1 sq2)
;;   (cond ((null? sq1) sq2)
;; 	(else
;; 	 (cons (car sq1) (append (cdr sq1) sq2)))))


;;;�� (cdr sq = null) , �����һ���ݹ麯�� ����˵���ݹ鵽��(x, null)����һ��Ԫ��
(define (length sequence)
  (accumulate (lambda(x y)
		(cond((null? y) 1)
		     (else(+ 1 y))))
	      0
	      sequence))

(append (list 1 2 3) (list 5 6))


