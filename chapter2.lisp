; chapter2 exercises
; 1.
; (a)
;; i. numbers are evaluated in the inner lists from left to right and they are passed to the operators of each:
(+ 4 10)
;; ii. outermost function is passed them:
14
; (b)
;; i.
(list 1 5)
;; ii.
(1 5)
; (c)
;; i. second element is evaluated. it returned nil:
NIL
;; ii. so third element is not evaluated and the fourth element is evaluated:
7
;(d)
;; i.
(list (and nil t) (+ 1 2))
;; ii.
(list nil (+ 1 2))
;; iii.
(list nil 3)
;; iv.
(nil 3)

; 2.
; (a)
(cons 'a (cons 'b (cons 'c nil))))
; (b)
(cons 'a (cons 'b '(c)))
; (c)
(cons 'a '(b c))

; 3.
(defun fourth (lst)
  (car (cdr (cdr (cdr lst)))))

; 4.
(defun greater (a b)
  (if (> a b) a b))

; 5.
; (a) returns true, t, if the function has an element nil.
; (b)

; 6.
; (a) car
; (b) or
; (c) apply

; 7.
(defun nested-listp (lst)
  (if (null lst)
      nil
    (if (listp (car lst))
	t
      (nested-listp (cdr lst)))))
; alternate
(defun nested-listp1 (lst)
  (and (not (null lst))
       (or (listp (car lst))
	   (nestedp (cdr lst)))))
