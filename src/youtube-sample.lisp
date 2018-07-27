(in-package #:youtube-sample)
(defvar *api-main-url* "https://www.googleapis.com/youtube/v3/search")

(defun create-url (url param-name value &optional (firstp nil))
  (let ((conj (if firstp "?" "&")))
	(format nil "~A~A~A=~A" url conj param-name value)))

;;; 動画の情報とるとき
;; (dex:get (create-url
;; 		  (create-url
;; 		   (create-url
;; 			(create-url *api-main-url*
;; 						"key" (mylib:read-file-to-first-line "apikey") t)
;; 			"part" "snippet")
;; 		   "relatedToVideoId" "38xt0FU99Qk")
;; 		  "type" "video"))

;;; 検索するとき
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
