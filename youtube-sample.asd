;; (require \'asdf)
 
 (in-package :cl-user)
 (defpackage youtube-sample-asd
 (:use :cl :asdf))
 (in-package :youtube-sample-asd)
 
 (defsystem :youtube-sample
 :version "1.0.0"
 :author "wasu"
 :license "MIT"
 :components ((:file "package")
 (:module "src" :components ((:file "youtube-sample")))))

