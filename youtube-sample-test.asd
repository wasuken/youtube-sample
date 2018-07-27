;; (require \'asdf)
 
 (in-package :cl-user)
 (defpackage youtube-sample-test-asd
 (:use :cl :asdf))
 (in-package :youtube-sample-test-asd)
 
 (defsystem youtube-sample-test
 :depends-on (:youtube-sample)
 :version "1.0.0"
 :author "wasu"
 :license "MIT"
 :components ((:module "t" :components ((:file "youtube-sample-test"))))
 :perform (test-op :after (op c)
 (funcall (intern #.(string :run) :prove) c)))

