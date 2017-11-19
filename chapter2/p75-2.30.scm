

(load "basic.scm")

(define (square-tree tree)
  (cond ((null? tree) '())
	((not (pair? tree)) (square tree))
	(else (cons (square-tree (car tree))
		    (square-tree (cdr tree))))))



 ;;map ��������ǶԲ�ΪNULL���б�Ԫ�ؽ��в���
(define (square-tree-map tree)
  (map (lambda (subtree)
	 (cond ((pair? subtree) (square-tree-map subtree))
	       (else (square subtree))))

       tree))

(square-tree-map (list 2 3 5 (list 5 6) 5 (list 22 3)))



