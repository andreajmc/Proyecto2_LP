(define lista (cons 1 (cons 2 (cons 3 (cons 4 '())))))

(define aplanar (lambda (lista)
(if (null? lista)
'()
(if (list? (car lista))
(concatenar_listas (aplanar (car lista)) (aplanar (cdr lista)))
(concatenar_listas (list (car lista)) (aplanar (cdr lista)))
);if
);if
);lambda
);define

(define concatenar_listas (lambda (lista1 lista2)
(if (and (null? lista1) (null? lista2))
'()
(if (not (null? lista1))
(cons (car lista1) (concatenar_listas (cdr lista1) lista2))
(if (not (null? lista2))
(cons (car lista2) (concatenar_listas lista1 (cdr lista2)))
'()
);if
);if
);if
);lambda
);define

(aplanar '(1,2,r,t,(4,5,t)(7,8,(a,(b,(c,d))))(9))