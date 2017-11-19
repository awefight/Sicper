


(define (scale-tree tree factor)
  (cond ((null? tree) '())
	((not (pair? tree)) (* tree factor))
	(else (cons (scale-tree (car tree) factor)
		    (scale-tree (cdr tree) factor)))))
	 
	 
;;�������Ƕ��ε�����
;; ����map ������ ���� ֪�� ������������(
;; (map (map tree))�ǵݹ��

(define (scale-tree-map tree factor)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	     (scale-tree-map sub-tree factor)
	     (* sub-tree factor)))
       tree))

;;�����ķ�ʽ
(define (list-identity items)
  (cond ((null? items) items)
	(else (cons (car items) (list-identity (cdr items))))))

(define (map-func func items)
  (cond ((null? items) items)
	(else (cons (func (car items)) (map-func func (cdr items))))))

(map-func (lambda (x) (cube x)) (list 2 3 5))      

;;(scale-tree-map (list 1 2 (list 3 5) 5) 10) 
