(in-package :cl-user)

(defpackage :com.github.flpa.minidms
  (:use :common-lisp)
  (:export :create))

(in-package :com.github.flpa.minidms)


(defvar *docs* nil)

(defun create (doc)
  "Creates a new document and returns it.")
; needs ID generation, assigns date using get-time-of-day

(defun search (query)
  "Searches documents")
;gets predicate, maxcount, type?, order, return props

(defun search-async ()
  )



(defun get (id)
  "Retrieves document info")

(defun update (doc)
  "Updates a document")

(defun delete (id)
  )

(defclass doc ()
  ((id)
   (title       :initarg :title       :initform (error "title is mandatory"))
   (description :initarg :description :initform "")
   (creation-timestamp)))
