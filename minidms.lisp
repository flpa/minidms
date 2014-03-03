(in-package :cl-user)

(defpackage :com.github.flpa.minidms
  (:use :common-lisp)
  (:export :create))

(in-package :com.github.flpa.minidms)

(defvar *docs* nil)

(defun create (doc)
  "Creates a new document and returns it.")
; needs ID generation, assigns date using get-time-of-day

(defun finalize-new-doc (doc)
  "Finalizes a new document by setting properties not to be set by the user."
  (setf (slot-value doc `id) (new-uuid-string))
  (setf (slot-value doc `creation-timestamp) (get-universal-time)))

(defun new-uuid-string ()
  (format nil "~a" (get-universal-time)))

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
