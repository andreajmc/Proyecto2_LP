;LEONARDO MONTOYA 11741303
(define menorf
    (lambda (templ x)
      (cond ((null? templ) x)
            ((< (car templ) x) (set! x (car templ)) (menorf (cdr templ) x))
            (else (menorf (cdr templ) x)))))
(define remover
    (lambda (templ x)
      (cond ((null? templ) (quote ()))
            ((= x (car templ)) (cdr templ))
            (else (cons (car templ) (remover (cdr templ) x))))))
(define (sort list)
  (cond ((null? list) '()) ; or (quote ()) - whichever you prefer
    (else (let ((menor (menorf list (car list))))
            (cons menor
                  (sort (remover list menor)))))))
(define (recorrer lst)
  (define (rec resto-lst valora count acc)
    (if (pair? resto-lst)
        (let ((valorn (car resto-lst)))
          (if (eq? valorn valora)
              (rec (cdr resto-lst) valora (+ count 1) acc)
              (rec (cdr resto-lst) valorn 1 (cons (cons valora count) acc))))
        (cons (cons valora count) acc)))
  (if (pair? lst)
      (reverse (rec (cdr lst) (car lst) 1 '()))
      '()))

(define (crearpar list)
  (define (normalize pr)
    (cons (car pr) (cdr pr)))
  (map normalize list))

(define (contarlist lst)
  (crearpar (recorrer (sort lst)) (length lst)))

(contarlist (list  2 3 1 3 2 2 2 3 4 6 6 6 7 1))