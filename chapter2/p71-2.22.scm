

;; ��ȡ������ ������������
;; ����
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons (square (car things))
		    answer))))
  (iter items '()))


;;����ʹ�����ڶ���, ��ȡ���ı������ڲ㣬 ������˵���
(define (reverse items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things) (cons (car things) answer))))
  (iter items '()))

;; ����reverse
(define (identity items)
  (reverse (reverse items)))




