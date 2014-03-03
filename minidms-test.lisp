(in-package :cl-user)

(defpackage :com.github.flpa.minidms-test
  (:use :common-lisp :com.github.flpa.minidms :lisp-unit))

(in-package :com.github.flpa.minidms-test)

(define-test testtest
  (assert-true nil))
