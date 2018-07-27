(in-package #:youtube-sample)
(defvar *api-main-url* "https://www.googleapis.com/youtube/v3/search")

(defun create-url (url param-name value &optional (firstp nil))
  (let ((conj (if firstp "?" "&")))
	(format nil "~A~A~A=~A" url conj param-name value)))

;;; $BF02h$N>pJs$H$k$H$-(B
;; (dex:get (create-url
;; 		  (create-url
;; 		   (create-url
;; 			(create-url *api-main-url*
;; 						"key" (mylib:read-file-to-first-line "apikey") t)
;; 			"part" "snippet")
;; 		   "relatedToVideoId" "38xt0FU99Qk")
;; 		  "type" "video"))

;;; $B8!:w$9$k$H$-(B
;; (dex:get (create-url
;; 		  (create-url
;; 		   (create-url *api-main-url*
;; 					   "key" (mylib:read-file-to-first-line "apikey") t)
;; 		   "part" "snippet")
;; 		  "q" "common lisp"))
;; (create-url
;;  (create-url
;;   (create-url
;;    (create-url *api-main-url*
;; 			   "key" (mylib:read-file-to-first-line "apikey") t)
;;    "part" "snippet")
;;   "q" "common lisp")
;;  "order" "date")
