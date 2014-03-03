(in-package :cl-user)

(defpackage :com.github.flpa.minidms-test
  (:use :common-lisp :com.github.flpa.minidms :lisp-unit))

(in-package :com.github.flpa.minidms-test)

(define-test create-test
  (let ((old-count (all-docs-count)))
    (create (make-doc "ein doc"))
    (assert-number-equal
     (all-docs-count)
     (+ 1 old-count))))

(defun all-docs ()
  (search-docs #'(lambda (x) t)))

(defun all-docs-count ()
  (length (all-docs)))
