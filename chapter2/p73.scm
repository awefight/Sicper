
;; ��һ������ϵĲ���

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))


(define x (cons (list 1 2 4  5 6 6) (list 3  6 4)))
(define y (cons x (list 1 2)))

(length x)


;;  һ�����ר�Ŵ��� ���֧ ��һ�����ר�Ŵ��� �ҷ�֧
;; (define (count-leaves items)
;;   (if (null? items)
;;       0
;;       (+ (if (pair? items)
;; 	     (count-leaves (car items))
;; 	     1)
;; 	 (if (pair? items)
;; 	     (count-leaves (cdr items))
;; 	     0))))

;;���Ӽ���д��
;;�����������ǰ

(define (count-leaves x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else
	 (+ (count-leaves (car x))
	    (count-leaves (cdr x))))))
;;test
(count-leaves y)



;; �����ַ��� ��������
(define (identity items)
  (cond ((not (pair? items))  items)
	(else (cons (identity (car items))
	      (identity (cdr items))))))
	      
	 
(identity y)
	 
