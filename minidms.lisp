(in-package :cl-user)

(defpackage :com.github.flpa.minidms
  (:use :common-lisp)
  (:export :create :make-doc :search-docsi))

(in-package :com.github.flpa.minidms)

(defparameter *docs* nil)

(defun create (doc)
  "Creates a new document and returns it."
  (let ((new-doc (finalize-new-doc doc)))
    (store-doc new-doc)
    new-doc))
; needs ID generation, assigns date using get-time-of-day

(defun store-doc(doc)
  (unless (typep doc `doc) (error "Won't store anything that's not a doc"))
  (setf *docs* (append *docs* (list doc))))

(defun finalize-new-doc (doc)
  "Finalizes a new document by setting properties not to be set by the user."
  (setf (slot-value doc `id) (new-uuid-string))
  (setf (slot-value doc `creation-timestamp) (get-universal-time))
  doc)

(defun new-uuid-string ()
  (format nil "~a" (get-universal-time)))

;gets predicate, maxcount, type?, order, return props, wrapping in object prevents breaking api? should this be the api?
(defun search-docs (predicate)
  "Searches documents"
  (remove-if-not predicate *docs*))

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

(defun make-doc (title)
   (make-instance `doc :title title))
