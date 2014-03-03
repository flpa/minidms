(in-package :cl-user)

(defpackage :com.github.flpa.minidms
  (:use :common-lisp))

(in-package :com.github.flpa.minidms)


(defvar *docs* nil)

(defun create (obj)
  "Creates a new document")
; needs ID generation

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
